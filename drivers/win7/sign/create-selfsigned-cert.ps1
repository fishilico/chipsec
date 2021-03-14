# Create a certificate like described in http://woshub.com/how-to-sign-an-unsigned-driver-for-windows-7-x64/
$cert = New-SelfSignedCertificate -Subject "CN=Chipsec" -Type CodeSigningCert -CertStoreLocation cert:\LocalMachine\ChipsecCertStore

$CertPassword = ConvertTo-SecureString -String "P@ss0wrd" -Force –AsPlainText

Export-PfxCertificate -Cert $cert -FilePath ChipsecDriverCert.pfx -Password $CertPassword
