for i in {1..5500}
do
   echo "Welcome $i times"
	# echo "Press [CTRL+C] to stop.."
	curl 'https://api.github.com/graphql' \
	-H 'authority: api.github.com' \
	-H 'accept: */*' \
	-H 'accept-language: en-US,en;q=0.9' \
	-H 'authorization: Bearer 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' \
	-H 'cache-control: no-cache' \
	-H 'content-type: application/json' \
	-H 'origin: https://saadpasta.github.io' \
	-H 'pragma: no-cache' \
	-H 'referer: https://saadpasta.github.io/' \
	-H 'sec-ch-ua: "Chromium";v="106", "Microsoft Edge";v="106", "Not;A=Brand";v="99"' \
	-H 'sec-ch-ua-mobile: ?0' \
	-H 'sec-ch-ua-platform: "Windows"' \
	-H 'sec-fetch-dest: empty' \
	-H 'sec-fetch-mode: cors' \
	-H 'sec-fetch-site: cross-site' \
	-H 'user-agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47' \
	--data-raw '{"operationName":null,"variables":{},"query":"{\n  repository(owner: \"saadpasta\", name: \"react-blog-github\") {\n    issues(first: 100, states: OPEN, filterBy: {labels: \"blog\"}, orderBy: {direction: DESC, field: CREATED_AT}) {\n      nodes {\n        title\n        body\n        bodyHTML\n        bodyText\n        number\n        labels(first: 100) {\n          nodes {\n            color\n            name\n            id\n            __typename\n          }\n          __typename\n        }\n        author {\n          url\n          avatarUrl\n          login\n          __typename\n        }\n        updatedAt\n        id\n        __typename\n      }\n      __typename\n    }\n    __typename\n  }\n}\n"}' \
	--compressed
	clear
done
