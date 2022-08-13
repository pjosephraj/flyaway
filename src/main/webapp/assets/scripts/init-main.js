document.addEventListener('DOMContentLoaded', () => {
  const pathHref = window.location.href;
  const qryParam = window.location.search.replaceAll('?', '');
  const params = qryParam.split('&') || [];
  const paramsObj = {};
  const errMsgKey = 'errmsg';
  const alertBox = document.createElement('div');
  const alertMsg = document.createElement('p');
  document.body.appendChild(alertBox);
  alertBox.classList.add('alert-box');
  alertBox.classList.remove('success');

  params.forEach(itm => {
    const item = itm.split('=');
    paramsObj[item[0]] = item[1] || '';
  });

  let errorMsg;
  if (pathHref.indexOf(errMsgKey) > -1) {
    errorMsg = 'Error!!'
    if (paramsObj[errMsgKey] === 'cp') {
      errorMsg = 'Please login to change the password!';
    } else {
      errorMsg = pageError === 'null' ? 'Page is restricted to logged In user only!' : pageError;
    }
  }
  console.log('pageError', pageError);
  if(pageError !== 'null') {
    errorMsg = pageError;
  }
  if (errorMsg) {
    alertMsg.innerHTML = errorMsg;
    alertBox.appendChild(alertMsg);
    setTimeout(() => {
      alertBox.classList.add('active');
      setTimeout(() => {
        alertBox.classList.remove('active');
      }, 3000);
    });
  }
  if (pageSuccess !== 'null') {
    console.log('pageSuccess', pageSuccess);
    alertMsg.innerHTML = pageSuccess;
    alertBox.appendChild(alertMsg);
    alertBox.classList.add('success');
    alertBox.classList.add('active');
    setTimeout(() => {
      alertBox.classList.remove('active');
    }, 3000);
  }

});

window.addEventListener("unload", async () => {
  await fetch("remove-attributes");
});