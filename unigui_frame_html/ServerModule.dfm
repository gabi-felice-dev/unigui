object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  CustomCSS.Strings = (
    '.card {'
    '  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);'
    '  transition: 0.3s;'
    '  width: 30%;'
    '  border-radius: 5px;'
    '}'
    ''
    '.card:hover {'
    '  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);'
    '}'
    ''
    'img {'
    '  border-radius: 5px 5px 0 0;'
    '}'
    ''
    '.container {'
    '  padding: 2px 16px;'
    '}')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 150
  Width = 215
end
