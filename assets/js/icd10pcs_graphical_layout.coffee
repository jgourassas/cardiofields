
# Defining a function
#polygon = (sides, size, radius, center) ->
#    circle = 2 * Math.PI
#    angle = circle / sides
#    points = []
#
#    for i in [0..sides-1]
#        x = (Math.cos(angle * i) * size) + center[0]
#        y = (Math.sin(angle * i) * size) + center[1]
#        points[i] = {"x": x, "y": y, "r": radius}
#
#    return points
#
#fill = () -> 
#    return d3.scale.category20c()
#
#poly_data = polygon(7, 40, 10, [200,200])
#
#
#svg1 = d3.select("#shapes")
#    .append("svg")
#    .style("background-color","black")
#    .attr("width", 800)
#    .attr("height", 800)
#
#circles = svg1.selectAll("circle")
#    .data(poly_data)
#    .enter()
#    .append("circle")
#    .style("fill", "none")
#    .style("stroke", "yellow")
#
#circleAttributes = circles
#    .attr("cx",  (d) -> (d.x))
#    .attr("cy",  (d) -> (d.y))
#    .attr("r",  (d) -> (d.r))
#
#code_group = svg1.append("svg:g")
#
#char_1 = code_group.append("svg:path")
#  .attr("d","M 265.74803,609.4488 C 265.74803,609.4488 187.59757,616.22755 173.02424,617.67231 C 152.41444,619.71548 121.61989,612.70217 103.92739,601.93584 C 91.416921,594.32288 73.036487,578.00796 75.731721,566.17352 C 78.426964,554.33905 102.05955,547.59242 116.63288,546.14767 C 137.24268,544.10448 168.03724,551.11779 185.72972,561.88414 C 198.2402,569.49709 265.74803,609.4488 265.74803,609.4488 C 265.74803,609.4488 265.74803,609.4488 265.74803,609.4488 z")
#  .style("stroke-width", 1)
#  .style("stroke", "red")
#  .style("fill", "none")
#
###################################
######## compile###################
# coffee --compile icd10pcs_graphical_layout.coffee 
# #################################3

 class Setup
   
    svg: () ->  d3.select("#icd10pcs_graphical_layout")
            .append("svg:svg")
            .attr({"width": "100%","height": "100%" })
            .attr("viewBox", "0 0 " + 900 + " " + 800 )
            .attr("preserveAspectRatio", "xMidYMid meet")
            .attr("pointer-events", "all")
            .style("margin-left","0%")
            .style("margin-right","0%")
            .style("margin-top","20px")
            .style("border", "2px solid green")
            .style("background-color","black")
            .style("cursor","move")
            .call(d3.behavior.zoom().on("zoom", @redraw ))
    
    vis: ()  ->  @svg()
          .append('svg:g')
    

    redraw: ()  ->
          #console.log("redraw-----------------------")
          trans=d3.event.translate
          scale=d3.event.scale
          #console.log("here", d3.event.translate, d3.event.scale);
          vis.attr("transform",
            "translate(" + trans + ")" + " scale(" + scale + ")")


 class Gradients
    radial: (group,id,color_1,color_2) -> 
        
        gradient_radial = group.append("svg:defs")
                .append("svg:radialGradient")
                .attr("id", id)
                .attr("cx", "50%")
                .attr("cy", "50%")
                .attr("fx", "50%")
                .attr("fy", "80%")
                .attr("spreadMethod", "pad")
    
        gradient_radial.append("svg:stop")
                .attr("offset", "0%")
                .attr("stop-color", color_1)
                .attr("stop-opacity", 1);
 
        gradient_radial.append("svg:stop")
                .attr("offset", "100%")
                .attr("stop-color", color_2)
                .attr("stop-opacity",0.7)
    
    linear: (group,id,color_1,color_2) ->
        gradient_linear = group.append("svg:defs")
                .append("svg:linearGradient")
                .attr("id", id)
                .attr("x","0%")
                .attr("y","0%")
                .attr("x2","100%")
                .attr("y2","100%")

        gradient_linear.append("svg:stop")
                .attr("offset", "0%")
                .attr("stop-color", color_1)
                .attr("stop-opacity", 1);
 
        gradient_linear.append("svg:stop")
                .attr("offset", "100%")
                .attr("stop-color", color_2)
                .attr("stop-opacity",0.7)


    virtual_light: (group,id,color_1,color_2) ->
          
        light = group.append("svg:defs")
                  .append("svg:linearGradient")
                  .attr("id", id)
                  .attr("x","0%")
                  .attr("y","0%")
                  .attr("x2","0%")
                  .attr("y2","100%")
    
        light.append("svg:stop")
                .attr("offset", "0%")
                .attr("stop-color", color_1)
                .attr("stop-opacity",1)


        light.append("svg:stop")
                .attr("offset", "0.4")
                .attr("stop-color", color_2)
                .attr("stop-opacity",0)
        
         

#  <linearGradient id="virtual_light" gradientUnits="objectBoundingBox"
#      x1="0" x2="0" y1="0" y2="1">
#      <stop stop-color="#EEEEEE" offset="0" stop-opacity="1"/>
#      <stop stop-color="#EEEEEE" offset="0.4" stop-opacity="0"/>
#    </linearGradient>

 class Pcs_commands
    show_defs: (d) ->
        utility = new Utility();
        fill = utility.fill()

        jQuery("#icd10_graphical_layout_info").html('')
        defs = show_from_code('../icd10pcs/show_icd10pcs_definitions.php',
                                 'icd10_graphical_layout_info',d.code)
        return null
    
    show_record: (d) ->
        jQuery("#icd10_graphical_layout_info").html('')
        ##jQuery("#info_defs").html('')

        record = show_from_code('../icd10pcs/show_icd10pcs_from_code.php',
                                 'icd10_graphical_layout_info',d.code)
        return null
    
    hide_details: (d) ->
      jQuery("#icd10_graphical_layout_info").html('')
      return null

    search_name:  (searchTerm,node) ->
           searchRegEx = new RegExp("\\b" + searchTerm.toLowerCase() + "\\b","g")
           node.each (d) ->
               element = d3.select(this)
               match = d.name.toLowerCase().search(searchRegEx)
               if searchTerm.length > 0 and match >= 0
                       elm = element.append("svg:g")
                       circle_trans = elm.append("circle")
                       circle_trans.transition()
                                   .duration(500)
                                   .attr("transform", (d) -> "translate(7,4)")
                                   .attr("r", (d) -> (7 * 4))
                                   .attr('fill', "none" )
                                   .attr('stroke-width', "3.5" )
                                   .attr('stroke', "magenta" )
                                   .each("end", () -> 
                                          circle_trans
                                           .transition()
                                           .duration(1500)
                                           .remove())
                       d.searched = true
               else
                       d.searched = false
    search_code:  (searchTerm,node) ->
           searchRegEx = new RegExp("\\b" + searchTerm + "\\b","g")
           node.each (d) ->
               element = d3.select(this)
               match = d.code.search(searchRegEx)
               if searchTerm.length > 0 and match >= 0
                       elm = element.append("svg:g")
                       circle_trans = elm.append("circle")
                       circle_trans.transition()
                                   .duration(500)
                                   .attr("transform", (d) -> "translate(7,4)")
                                   .attr("r", (d) -> (7 * 4))
                                   .attr('fill', "none" )
                                   .attr('stroke-width', "3.5" )
                                   .attr('stroke', "red" )
                                   .each("end", () -> 
                                          circle_trans
                                           .transition()
                                           .duration(1500)
                                           .remove())
                       d.searched = true
               else
                       d.searched = false




 class Utility
    polygon:  (sides, size, radius, center) ->
      circle = 2 * Math.PI
      angle = circle / sides
      points = []

      for i in [0..sides-1]
          x = (Math.cos(angle * i) * size) + center[0]
          y = (Math.sin(angle * i) * size) + center[1]
          points[i] = {"x": x, "y": y, "r": radius}

      return points

    circle_xy: (angle,radius) ->
       
        points=[]

        x = Math.cos(angle) * radius
        y = Math.sin(angle) * radius
        points = {"x": x,"y": y}
        
        return points




    fill: () ->
      d3.scale.category20()

    rotate_digits: () ->
        d3.select(this).transition()
            .duration(1000)
            .attrTween('transform',  (d) -> 
                d3.interpolateString('rotate(0 40 50)', 'rotate(360 40 50)')) 

    flatten: (json_data) ->
        nodes = [] 
        i = 0 
        recurse = (node) ->
                if (node.children)  
                    node.children.forEach(recurse)
                if (!node.id)
                    node.id = ++i
                nodes.push(node)
   
        recurse(json_data)
        nodes

    collapse_tree:  (d) ->
        if d.children 
            d._children = d.children
            d._children.forEach(Utility::collapse_tree)
            d.children = null

    click: (d) ->
        if (d.children) 
            d._children = d.children
            d.children = null

        else  
            d.children = d._children
            d._children = null
        
        pcs_force.update()

    
 class Pcs_character
    utility = new Utility();
    fill = utility.fill()
    gradients = new Gradients()
    commands= new Pcs_commands()

    # tooltip used to display details
    #tooltip = Tooltip("vis-tooltip", 230)
    unit = 5 
    rect_opacity = 0.6
    
    make_info_group: (axis_group) ->
       
        axis_info_group = axis_group
            .append("svg:g")
            .attr("id","axis_info_group")
        
        

        gradient = gradients.radial(axis_info_group,"central_circle_gradient","cyan","blue")

        axis_info_center_circle = axis_info_group
            .append("svg:circle")
            .style("stroke", "none")
        
        axis_info_center_hallow = axis_info_group
            .append("svg:circle")
            .attr("cx", 0)
            .attr("cy",0)
            .attr("r",12)
            .style("stroke", "white")
            .attr("stroke-width", 2)
            .style('fill', "none" )


        axis_info_center_circle_attr = axis_info_center_circle
            .attr("cx", 0)
            .attr("cy",0)
            .attr("r",6)
            .style('fill', "url(#central_circle_gradient)" )


        axis_info_center_circle_actions = axis_info_center_circle_attr
             .on("mouseover", () -> 
                d3.select(this)
                    .transition()
                    .duration(700)
                    .attr("transform", (d) -> "translate(7,4)")
                    .attr("r", (d) -> (6 * 4))
                    .each("end", () -> 
                     d3.select(this)
                        .transition()
                        .duration(300)
                        .attr("r", (d) -> (6 * 1))
                        .attr("transform", (d) -> "translate(0,0)")
                        .attr("r", (d) -> (6 * 1))))
        
        info_defs = axis_info_group.append('svg:defs')

        info_rect = info_defs.append("svg:rect")
            .attr("id","axis_info_rect")
            .attr("width",  7 )
            .attr("height",7)
            .attr("rx",1.5)
            .attr("ry",1.5)
            .style("cursor","pointer")
            .style("opacity", 1)
       
        defs_rect_xy = utility.circle_xy(-90,16)
        
        defs_gradient = gradients.linear(axis_info_group,"defs_gradient","blue","#32FFFF")
        #defs_light = gradients.virtual_light(axis_info_group,"defs_light_gradient","#EEEEEE","blue")


        defs_rect = axis_info_group.append("use")
            .attr("xlink:href", "#axis_info_rect")
            .attr("id","defs_rect" )
            .attr("x",   defs_rect_xy.x)
            .attr("y",   defs_rect_xy.y)
            .style("stroke","#417DC1")
            .style("fill", "url(#defs_gradient)")
            
#        defs_rect_2 = axis_info_group.append("use")
#            .attr("xlink:href", "#axis_info_rect")
#            .attr("id","defs_rect" )
#            .attr("x",   defs_rect_xy.x+1)
#            .attr("y",   defs_rect_xy.y+1)
#            .style("stroke","white")
#            .style("stroke-opacity",0.4)
#            .style("fill", "url(#defs_light_gradient)")

        defs_rect_actions = defs_rect
            .on("mouseover",commands.show_defs)
        
        record_rect_xy = utility.circle_xy(-135,16)

        record_gradient = gradients.linear(axis_info_group,"record_gradient","#32FFFF","blue")

        record_rect = axis_info_group.append("use")
            .attr("xlink:href", "#axis_info_rect")
            .attr("id","defs_rect" )
            .attr("x",   record_rect_xy.x )
            .attr("y",   record_rect_xy.y)
            .style("stroke","#56A0D3")
            .style("fill", "url(#record_gradient)")

        record_rect_actions = record_rect.on("mouseover",commands.show_record)

#        poly_data = utility.polygon(7, 18, 2.5, [0,0])
#        
#
#        satellite_circles = axis_info_group.selectAll("circle")
#              .data(poly_data)
#              .enter()
#              .append("circle")
#              .style("fill", "url(#gradient)")
#              .style("stroke", "none")
#              .style("opacity", 0.8)
#
#        satellite_attributes = satellite_circles
#              .attr("cx",  (d) -> (d.x))
#              .attr("cy",  (d) -> (d.y))
#              .attr("r",  (d) -> (d.r))
      
    
    make_digit: (group,div,pos_1,pos_2) ->
             text =  @text(group,pos_1,pos_2);
             title = @title(group);

    character_group: (previous_group, id, step) ->
            char_unit = 3
            system_group = previous_group.append("svg:g")
                .attr("id",id)
                .attr("transform", (d) ->  return "translate(" + char_unit*step + "," + 0 + ")" )
     
        
    text: (group,pos_1,pos_2) ->
              text = group.append("svg:text")
                .attr("class", "nodetext")
                .attr("text-anchor", "middle")
                .attr("dy", 3)
                .style("fill","#9BD1FA")
                .attr("stroke-width", 0)
                .style("font", "Arial")
                .style("font-size", "10px")
                .style("font-weight","bold")
                .style("opacity","1.0")
                .text( (d) -> return  d.code.substring(pos_1,pos_2)  )
    
    title: (group) ->
            title = group.append("title")
                  .text( (d) ->
                   if d.code.length > 0
                        data = d.name + " [" + d.code + "] " 
                        return data
                   else
                        return null )
         
            
    
    
 class Pcs_build_codes
    pcs_char = new Pcs_character()
    utility = new Utility()
   
    unit = 5 
    step = 5
    rect_opacity = 0.6
    fill = utility.fill()

    draw: (axis_group) ->
        pcs_char.make_info_group(axis_group)      
        digits = @make_all_digits(axis_group)
 
    make_all_digits: (axis_group) ->
        
        digits_group = axis_group.append("svg:g")
            .attr("id","digits_group")
            .attr("transform", (d) -> "translate(" + 2 + "," + 0 + ")" )
            #.on("mouseover",utility.rotate_digits)
        
        
        section_group = pcs_char.character_group(digits_group, "section_group", step*1)
        section_digit = pcs_char.make_digit(section_group,'#digits_square',0,1)
            #make body_system 
        body_system_group = pcs_char.character_group(digits_group, "body_system_group", step*2)
        body_system_digit = pcs_char.make_digit(body_system_group,'#digits_square',1,2)
           #make ROOT OPERATION#
        operation_group = pcs_char.character_group(digits_group, "operation_group", step*3)
        operation_digit = pcs_char.make_digit(operation_group,'#digits_square',2,3)
            #make BODY PART#
        body_part_group = pcs_char.character_group(digits_group, " body_part_group", step*4)
        body_part_digit = pcs_char.make_digit( body_part_group,'#digits_square',3,4)
            ##make approach character#
        approach_group = pcs_char.character_group(digits_group, "approach_group", step*5)
        approach_digit = pcs_char.make_digit(approach_group,'#digits_square',4,5)
            #make device#
        device_group  = pcs_char.character_group(digits_group, "device_group", step*6)
        device_digit = pcs_char.make_digit(device_group,'#digits_square',5,6)
            ##make qualifier character#
        qualifier_group = pcs_char.character_group(digits_group, "qualifier_group", step*7)
        qualifier_digit = pcs_char.make_digit(qualifier_group,'#digits_square',6,7)

 
    
 


 class Pcs_force
    json = []
    utility = new Utility();
    fill = utility.fill()
    
    commands = new Pcs_commands()
    
    node = null
    nodes = null
    link = null
    links = null
    width =  900
    height = 800
    
   
  # tooltip used to display details
        #tooltip = Tooltip("vis-tooltip", 230)

    pcs_codes = new Pcs_build_codes()
    
    
        
    init: ->
        d3.json "../data/icd10pcs_2014.json", (data) ->
            pcs_force.json = data
            pcs_force.json.children.forEach(utility.collapse_tree)
            pcs_force.update()

    
    
    update:  ->
        @nodes = utility.flatten(@json)
    
        @links = d3.layout.tree().links(@nodes)
        
#       force = self.d3.layout.force()
#              .gravity(0.05)
#              .charge(-100)
#              .linkDistance(50)
#              .friction(0.3)
#              .linkStrength( (l, i) -> return 1)
#              .size([width, height])

        force =  self.d3.layout.force()
                .distance(150)
                .charge(-300)
                .gravity(0.07)
                .size([width, height])
 
        force.on("tick", -> 
            vis.selectAll("g.node")
                .attr("transform", (d) ->  return "translate(" + d.x + "," + d.y + ")" )
 
            vis.selectAll("line.link")
               .attr("x1", (d) -> return d.source.x)
               .attr("y1", (d) ->  return d.source.y)
               .attr("x2", (d) ->  return d.target.x)
               .attr("y2", (d) ->  return d.target.y) )
 
        

        link = vis.selectAll("line.link")
                   .style("stroke-width", (d) ->   Math.sqrt(d.source.axis*1))
                   .data(@links, (d) ->  d.source.id + "." + d.target.id )
 
        

        link.enter().insert("svg:line", "g.node")
                    .attr("class", "link")
                    .attr("id","path")
                    .style("stroke-linecap","round")
                    .style("stroke-linejoin","round")
                    .style("stroke", (d) ->  fill(d.source.axis))

     
        link.exit().remove()

        node = vis.selectAll("g.node")
            .data(@nodes, (d) ->   d.id)
                
        nodeEnter = node.enter()
            .append("svg:g")
            .attr("class", "node")
            .on("click", utility.click)
            .call(force.drag)
   

        axis_group = nodeEnter
             .append("svg:g")
             .attr("id","axis_group")
             .style("cursor","pointer")
 
        code_draw = pcs_codes
           .draw(axis_group)

        jQuery("#search_code").keyup () ->
            searchCode = jQuery(this).val()
            commands.search_code(searchCode,node)


        jQuery("#search_name").keyup () ->
            searchName = jQuery(this).val()
            commands.search_name(searchName,node)



        node.exit()
          .remove()

        force.nodes(@nodes)
          .links(@links)
          .start()

    


 
 setup = new Setup()
 vis = setup.vis()
 pcs_force = new Pcs_force()
 pcs_force.init()
 

    
