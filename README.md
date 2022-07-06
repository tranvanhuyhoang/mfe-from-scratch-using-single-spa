# Build a project Micro Frontend using Single Spa from Scratch

<br>
<img src="/public/images/micro-frontend-single-spa.png" alt="idea logo"/>
Architecture:<br>

| App Name       | Tech (Frameworks, language...) |
| -------------- | :----------------------------: |
| root-html      |              html              |
| product-detail |              Vue2              |
| product-relate |              Vue2              |

How to using this repository:
After clone this repository, you need to get some sub repository of micro app:

Because we use file start.sh to start project, so we must grant permission to this file:

```
sudo chmod +x start.sh
```

Then enter your PC password

Run

```
./start.sh
```

to run the applications

### How I approach this project?

1. In the html file, we need remember the concept of root-file, have 2 work very important:

   - Import your micro-app (using import-map or webpack..., in this case I using import-map)

   ```
       <script type="systemjs-importmap">
       {
           "imports": {
               "product-relate": "http://localhost:9001/js/app.js",
               "product-detail": "http://localhost:9002/js/app.js",
               ...
           }
       }
       </script>
   ```

   - Register your micro-app with SingleSpa

   ```
       singleSpa.registerApplication({
           name: 'product-detail',
           app: () => System.import('product-detail'),
           activeWhen: '/',
           customProps: {
               store
           },
       })

       singleSpa.registerApplication({
           name: 'product-relate',
           app: () => System.import('product-relate'),
           activeWhen: '/',
           customProps: {
               store,
           }
       })
   ```

---

_Preferences:_
<br>
[Research Architectural Overview] *https://single-spa.js.org/docs/getting-started-overview/*
<br>
[Research concept of Root file config] *https://single-spa.js.org/docs/configuration*
<br>
[Research concept of mirco applications] *https://single-spa.js.org/docs/building-applications*
