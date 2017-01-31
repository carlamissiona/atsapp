  // Client ID and API key from the Developer Console
      var CLIENT_ID = '44908189323-581ggnn44jq7rqaj7aa5gf36jik855b3.apps.googleusercontent.com';

      // Array of API discovery doc URLs for APIs used by the quickstart
      var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/gmail/v1/rest"];

      // Authorization scopes required by the API; multiple scopes can be
      // included, separated by spaces.
      var SCOPES = 'https://www.googleapis.com/auth/gmail.readonly';

      var authorizeButton = document.getElementById('authorize-button');
      var signoutButton = document.getElementById('signout-button');
      var test =document.getElementById('header_inbox_bar');
      /**
       *  On load, called to load the auth2 library and API client library.
       */
      console.log("cmon");
      function handleClientLoad() {
    	  test.onclick = function(){
    		  console.log("click clock");
    	  }
    		  
    		  
        gapi.load('client:auth2', initClient);
      }

      /**
       *  Initializes the API client library and sets up sign-in state
       *  listeners.
       */
      function initClient() {
        gapi.client.init({
          discoveryDocs: DISCOVERY_DOCS,
          clientId: CLIENT_ID,
          scope: SCOPES
        }).then(function () {
          // Listen for sign-in state changes.
          gapi.auth2.getAuthInstance().isSignedIn.listen(updateSigninStatus);

          // Handle the initial sign-in state.
          updateSigninStatus(gapi.auth2.getAuthInstance().isSignedIn.get());
          authorizeButton.onclick = handleAuthClick;
          signoutButton.onclick = handleSignoutClick;
        });
      }

      /**
       *  Called when the signed in status changes, to update the UI
       *  appropriately. After a sign-in, the API is called.
       */
      function updateSigninStatus(isSignedIn) {
        if (isSignedIn) {
          authorizeButton.style.display = 'none';
          signoutButton.style.display = 'block';
          listLabels();
        } else {
          authorizeButton.style.display = 'block';
          signoutButton.style.display = 'none';
        }
      }

      /**
       *  Sign in the user upon button click.
       */
      function handleAuthClick(event) {
    	  console.log("!!!");
        gapi.auth2.getAuthInstance().signIn();
      }

      /**
       *  Sign out the user upon button click.
       */
      function handleSignoutClick(event) {
        gapi.auth2.getAuthInstance().signOut();
      }

      /**
       * Append a pre element to the body containing the given message
       * as its text node. Used to display the results of the API call.
       *
       * @param {string} message Text to be placed in pre element.
       */
      function appendPre(message) {
        var pre = document.getElementById('content');
        var textContent = document.createTextNode(message + '\n');
        pre.appendChild(textContent);
      }

      /**
       * Print all Labels in the authorized user's inbox. If no labels
       * are found an appropriate message is printed.
       */
      function listLabels() {
        gapi.client.gmail.users.labels.list({
          'userId': 'me'
        }).then(function(response) {
          var labels = response.result.labels;
          appendPre('Labels:');

          if (labels && labels.length > 0) {
            for (i = 0; i < labels.length; i++) {
              var label = labels[i];
              appendPre(label.name)
            }
          } else {
            appendPre('No Labels found.');
          }
        });
      }

      
      function listMessages(userId, query , callback) {
    	  var getPageOfMessages = function(request, result) {
    	    request.execute(function(resp) {
    	      result = result.concat(resp.messages);
    	      var nextPageToken = resp.nextPageToken;
    	      if (nextPageToken) {
    	        request = gapi.client.gmail.users.messages.list({
    	          'userId': userId,
    	          'pageToken': nextPageToken,
    	          'q': query
    	        });
    	        getPageOfMessages(request, result);
    	      } else {
    	        callback(result);
    	      }
    	    });
    	  };
    	  var initialRequest = gapi.client.gmail.users.messages.list({
    	    'userId': userId,
    	    'q': query
    	  });
    	  getPageOfMessages(initialRequest, []);
    	}
      
      function getMessage(userId, messageId, callback) {
    	  var request = gapi.client.gmail.users.messages.get({
    	    'userId': userId,
    	    'id': messageId
    	  });
    	  request.execute(callback);
    	}
      