var script = document.createElement("script");  // create a script DOM node
  script.src = "/plugins/visualizations/js/common.js";
  script.type = "text/javascript"
  script.setAttribute('nonce', window.__webpack_nonce__)
 var head  = document.getElementsByTagName('head')[0];
    var link  = document.createElement('link');
    //link.id   = cssId;
    link.rel  = 'stylesheet';
    link.type = 'text/css';
    link.href = '/css/test.css.md';
    //link.href = './css/test.css.md';

    link.media = 'all';
    head.appendChild(script);
    head.appendChild(link);



looker.plugins.visualizations.add({

    id: "isup_vis",

    label: "isup visualization",

    options: {},

    create: function(element, config){
        console.log("in create")
       test(1,2)

  var css = element.innerHTML = `
    <style>
      .hello-world-vis {
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        text-align: center;
      }
    </style>
  `;

  var container = element.appendChild(document.createElement("div"));
  container.className = "hello-world-vis";

  this._textElement = container.appendChild(document.createElement("div"));

    },

    updateAsync: function(data, element, config, queryResponse, details, done){

      console.log("in update")

fetch('https://jsonplaceholder.typicode.com/todos/1')

        .then(response => response.json())

        .then(json => {




        let html = '<table class="bordertable">';

                        for( let dim of queryResponse.fields.dimensions){
html += `<th>${dim.label}</th>`
}

                for(let row of data) {

html+= '<tr>'
                       for(let i=0; i<queryResponse.fields.dimensions.length; i++){

                        var cell = row[queryResponse.fields.dimensions[i].name];

                        html += `<td class=bordercell>${LookerCharts.Utils.htmlForCell(cell)}</td>` // json.title + "<br>";
                      }
html += '</tr>'
                }


                html += '</table>'
                element.innerHTML = html;



          //element.innerHTML = json.title
          //          r = json.title;
          //
           done()
          //
           })







    }

  });
