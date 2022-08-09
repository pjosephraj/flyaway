
document.addEventListener('DOMContentLoaded', () => {
  const pathHref = window.location.href;
  const qryParam = window.location.search.replaceAll('?', '');
  const params = qryParam.split('&') || [];
  const paramsObj = {};
  const errMsgKey = 'errmsg';
  const alertBox = document.createElement('div');
  const alertMsg = document.createElement('p');
  alertBox.classList.add('alert-box');

  params.forEach(itm => {
    const item = itm.split('=');
    paramsObj[item[0]] = item[1] || '';
  });

  let errorMsg;
  if(pathHref.indexOf(errMsgKey) > -1) {
    errorMsg = 'Error!!'
    if(paramsObj[errMsgKey] === 'cp') {
      errorMsg = 'Please login to change the password!';
    }
  }
  if(errorMsg) {
    alertMsg.innerHTML = errorMsg;
    alertBox.appendChild(alertMsg);
    document.body.appendChild(alertBox);
    setTimeout(() => {
      alertBox.classList.add('active');
      setTimeout(() => {
        alertBox.classList.remove('active');
      }, 3000);
    });
  }
});