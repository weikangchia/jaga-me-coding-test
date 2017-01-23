/* Returns true if the user is already login */
function isLogin() {
    var access_token = localStorage.getItem('access_token')

    if (null == access_token) {
        return false
    } else {
        return true
    }
}

function storeToken(accessToken, profile) {
    localStorage.setItem('access_token', accessToken)
    localStorage.setItem('profile', JSON.stringify(profile))
}

function storeProfile(profile) {
    profile = JSON.stringify(profile)
    localStorage.setItem('profile', profile)
}

function signOut() {
  clearLocalStorage()
  redirectToLogin()
}

function clearLocalStorage() {
  localStorage.removeItem('access_token')
  localStorage.removeItem('profile')
}

function redirectToLogin() {
    window.location.href = "/"
}

function redirectToMainApp () {
    window.location.href = "app/starter.html#"
}
