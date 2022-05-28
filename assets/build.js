const esbuild = require('esbuild')
//const copyStaticFiles = require('esbuild-copy-static-files')

const args = process.argv.slice(2)
const watch = args.includes('--watch')
const deploy = args.includes('--deploy')
const bundle = true
const logLevel = process.env.ESBUILD_LOG_LEVEL || 'silent'
//const watch = !!process.env.ESBUILD_WATCH

const loader = {
  // Add loaders for images/fonts/etc, e.g. { '.svg': 'file' }
  ".svg": "dataurl",
}

const plugins = [
  // Add and configure plugins here
  /*
  copyStaticFiles({
    dest: '../priv/static/images',
    dereference: true,
    errorOnExist: false,
    preserveTimestamps: true,
    recursive: true,
  })
*/

]

let opts = {
  entryPoints: ['js/app.js'],
  bundle: true,
  target: 'es2017',
  outdir: '../priv/static/assets',
  logLevel: 'info',
  loader,
  plugins
}

if (watch) {
  opts = {
    ...opts,
    watch,
    sourcemap: 'inline'
  }
}

if (deploy) {
  opts = {
    ...opts,
    minify: true
  }
}

const promise = esbuild.build(opts)

if (watch) {
  promise.then(_result => {
    process.stdin.on('close', () => {
      process.exit(0)
    })

    process.stdin.resume()
  })
}

// Start esbuild with previously defined options
// Stop the watcher when STDIN gets closed (no zombies please!)
esbuild.build(opts).then((result) => {
  if (mode === 'watch') {
    process.stdin.pipe(process.stdout);
    process.stdin.on('end', () => { result.stop(); });
  }
}).catch((error) => {
  process.exit(1);
});