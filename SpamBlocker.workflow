{
    "id": 3,
    "desc": "Turkish Spam Numbers",
    "schedule": {
        "type": "Daily",
        "time": {
            "hour": 0,
            "min": 0
        }
    },
    "actions": [
        {
            "type": "HttpDownload",
            "method": 0,
            "url": "https://github.com/symbuzzer/Turkish-Spam-Numbers/releases/latest/download/SpamBlocker.csv",
            "header": "",
            "body": ""
        },
        {
            "type": "ParseCSV",
            "columnMapping": "{'number': 'pattern'}"
        },
        {
            "type": "ConvertNumber",
            "from": "(\\+90)",
            "flags": 5,
            "to": ""
        },
        {
            "type": "ImportToSpamDB",
            "importReason": "Manually"
        }
    ],
    "enabled": true,
    "workUUID": "369a8a0c-8bc4-4387-86ca-d466af9c1bda"
}
