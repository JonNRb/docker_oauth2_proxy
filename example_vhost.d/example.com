
location /oauth2/auth {
	internal;
	proxy_pass http://oauth2_proxy:4180;
}

location /oauth2/ {
	proxy_pass http://oauth2_proxy:4180;
	proxy_set_header Host $host;
	proxy_set_header X-Real-IP $remote_addr;
	proxy_set_header X-Scheme $scheme;
}

