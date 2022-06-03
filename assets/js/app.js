// We import the CSS which is extracted to its own file by esbuild.
// Remove this line if you add a your own CSS build pipeline (e.g postcss).
//import "../css/app.css"

// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import {Socket} from "phoenix"
import {LiveSocket} from "phoenix_live_view"
import topbar from "../vendor/topbar"

import "@fortawesome/fontawesome-free/js/all"
import $ from 'jquery';
window.jQuery = $;
window.$ = $;

//import './check_load';

/*
if ($('body')) {
  console.log('jquery works!');
  alert("Yeah! 222222222 jquery workds");
}
*/
//////////////////////
/*
window.onload = function() {
  if (window.jQuery) {  
      // jQuery is loaded  
      alert("Yeah! jquery workds");
  } else {
      // jQuery is not loaded
      alert("jquery Doesn't Work");
  }
}
*/
/////////////////

///////////@import "../node_modules/@fortawesome/fontawesome-free/scss/fontawesome.scss";

//import tinymce from '../node_modules/tinymce/tinymce.min.js';

//import './node_modules/tinymce/themes/silver/theme.min.js';
//import 'tinymce/plugins/advlist';
////import 'tinymce/plugins/colorpicker';
//import 'tinymce/plugins/textcolor';
//import 'tinymce/plugins/paste';
//import 'tinymce/plugins/link';
//import 'tinymce/skins/lightgray/skin.min.css';
//import 'tinymce/skins/ui/oxide-dark/skin.min.css';
 //import 'tinymce/skins/ui/oxide/skin.min.css';

////////////////////////////
//////////////////////////////


tinymce.init({
    forced_root_block : "",
    selector: '.textarea',
    themes: "modern",  
    height: 200,
    menubar: false,
    plugins: [
      'advlist autolink lists link image charmap print preview anchor',
      'searchreplace visualblocks code fullscreen textcolor',
      'insertdatetime media table paste code help wordcount'
    ],
    force_p_newlines: false,
    toolbar: 'undo redo | formatselect | ' +
    'bold italic backcolor | alignleft aligncenter ' +
    'alignright alignjustify | link | textcolor| table |link_image |bullist numlist outdent indent | ' +
    'removeformat |  help',
    content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:18px }'
  });

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {params: {_csrf_token: csrfToken}})

// Show progress bar on live navigation and form submits
topbar.config({barColors: {0: "#29d"}, shadowColor: "rgba(0, 0, 0, .3)"})
window.addEventListener("phx:page-loading-start", info => topbar.show())
window.addEventListener("phx:page-loading-stop", info => topbar.hide())

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket

