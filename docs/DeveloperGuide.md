# Developer Guide

## Tech Used
### Riot
In this project, we used [riot.js](http://riotjs.com/) to build our front-end UI component.

#### Routes
All the Routes can be found in `app/starter.html`.

e.g. to route to the User Profile profile

1. Include the tag<br>
   ```javascript
   <script src="user-profile.tag" type="riot/tag"></script>
   <script src="https://rawgit.com/riot/riot/master/riot%2Bcompiler.min.js"></script>
   <script src="https://rawgit.com/riot/route/master/dist/route.min.js"></script>
   ```
2. Make your app start listening to url change<br>
   ```javascript
   route.stop()
   route.start(true)
   route.base('#')
   ```
3. Mount the specific tag<br>
   ```javascript
   route('/profile', function() {
     riot.mount('#main', 'user-profile', {
       upcomings: [
         {
           patientName: 'Sim Ah Huay',
           nurseName: 'Jane Lim',
           date: '2-2-2017'
         },
         {
           patientName: 'Sim Ah Huay',
           nurseName: 'Jane Lim',
           date: '9-2-2017'
         },
         {
           patientName: 'Sim Ah Huay',
           nurseName: 'Xiao Ming',
           date: '16-2-2017'
         }
       ]
     })
   })
   ```

### Auth0
We used [Auth0](https://auth0.com/) to add authentication to our web.

### Moment
We used [Moment.js](https://momentjs.com/) to parse and display dates.

## Files
- index.html - to run our auth0 authentication
- app/*.tag - all the custom tags used to build complex views with HTML.
- app/starter.html - main app web page
