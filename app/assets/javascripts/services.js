// document.addEventListener("turbolinks:load", function() {

//   var serviceImage = document.querySelector('.service-image');

//   function handleFileSelect(evt) {
//     var files = evt.target.files; 
//     for (var i = 0, f; f = files[i]; i++) {
//       if (!f.type.match('image.*')) {
//         continue;
//       }

//       var reader = new FileReader();
//       reader.onload = (function(theFile) {
//         return function(e) {
//           var span = document.createElement('span');
//           span.innerHTML = ['<img class="service-preview-thumb" src="', e.target.result,
//             '" title="', escape(theFile.name), '"/>'
//           ].join('');
//           document.getElementById('list').insertBefore(span, null);
//         };
//       })(f);
//       reader.readAsDataURL(f);
//     }
//   }
//   if (serviceImage) {
//     this.addEventListener('change', handleFileSelect, false);
//   }
// });