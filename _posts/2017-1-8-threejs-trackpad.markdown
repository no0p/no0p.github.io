---
layout: post
title:  Pan Default With Three.js Trackpad Controls
categories: [threejs]
---

<script src="/js/three.min.js"></script>
<script src="/js/TrackballControls.js"></script>

# {{ page.title }}

### Jan 10, 2017 - Portland

You can easily tweak the Three.js Trackpad Control to provide 2d planar pan functionality with left mouse button dragging.

#### Demo of Behavior
<br/>
<center>
<div id="demo-container" style="height: 400px; width: 800px;"></div>
</center>
<script>
  document.addEventListener("DOMContentLoaded", function() {
      var w = 800;
      var h = 400;

			var container, stats;

			var camera, controls, scene, renderer;

			var cross;

			init();
			animate();

			function init() {
        container = document.getElementById( 'demo-container' );

				camera = new THREE.PerspectiveCamera( 60, w / h, 1, 1000 );
				camera.position.z = 500;

				controls = new THREE.TrackballControls( camera, container );

				controls.rotateSpeed = 1.0;
				controls.zoomSpeed = 1.2;
				controls.panSpeed = 0.8;

				controls.noZoom = false;
				controls.noPan = false;

				controls.staticMoving = true;
				controls.dynamicDampingFactor = 0.3;

				controls.keys = [ 65, 83, 68 ];

				controls.addEventListener( 'change', render );

				// world

				scene = new THREE.Scene();
				scene.fog = new THREE.FogExp2( 0xcccccc, 0.002 );

				var geometry = new THREE.CylinderGeometry( 0, 10, 30, 4, 1 );
				var material =  new THREE.MeshPhongMaterial( { color:0xffffff, shading: THREE.FlatShading } );

				for ( var i = 0; i < 500; i ++ ) {

					var mesh = new THREE.Mesh( geometry, material );
					mesh.position.x = ( Math.random() - 0.5 ) * 1000;
					mesh.position.y = ( Math.random() - 0.5 ) * 1000;
					mesh.position.z = ( Math.random() - 0.5 ) * 1000;
					mesh.updateMatrix();
					mesh.matrixAutoUpdate = false;
					scene.add( mesh );

				}


				// lights

				light = new THREE.DirectionalLight( 0xffffff );
				light.position.set( 1, 1, 1 );
				scene.add( light );

				light = new THREE.DirectionalLight( 0x002288 );
				light.position.set( -1, -1, -1 );
				scene.add( light );

				light = new THREE.AmbientLight( 0x222222 );
				scene.add( light );


				// renderer

				renderer = new THREE.WebGLRenderer( { antialias: false } );
				renderer.setClearColor( scene.fog.color );
				renderer.setPixelRatio( window.devicePixelRatio );
				renderer.setSize( w, h );


				container.appendChild( renderer.domElement );


				//

				window.addEventListener( 'resize', onWindowResize, false );
				//

				render();

			}

			function onWindowResize() {

				camera.aspect = w / h;
				camera.updateProjectionMatrix();

				renderer.setSize( w, h );

				controls.handleResize();

				render();

			}

			function animate() {

				requestAnimationFrame( animate );
				controls.update();

			}

			function render() {

				renderer.render( scene, camera );

			}
  });
</script>

<br/>
See the official <a href="https://threejs.org/examples/#misc_controls_trackball">trackball controls demo</a> to compare pan vs. rotate behavior.

#### Motivation

Some visualizations simultaneously benefit from a 3d representation yet present a challenge for users new to 3d environment manipulation.

In these situations left-click rotation of the scene may be of limited utility and more likely to confuse or frustrate the user.

#### Code Changes

Fortunately the TrackpadControls are well instrumented and the code changes required are trivial.

```
// Original STATE variable
var STATE = { NONE: - 1, ROTATE: 0, ZOOM: 1, PAN: 2, TOUCH_ROTATE: 3, TOUCH_ZOOM_PAN: 4 };
```

Is changed to...

```
var STATE = { NONE: - 1, ROTATE: 2, ZOOM: 1, PAN: 0, TOUCH_ROTATE: 3, TOUCH_ZOOM_PAN: 4 };
```

Just swapping out the codes for the mouse button involved, zoom &lt;-&gt; pan.  Please feel free to download the <a href="/js/TrackballControls.js">modified controls</a> used in the demo above.

It's too bad these aren't configuration options or attributes on the controls object.







