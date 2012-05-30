# beanstalkd cookbook

beanstalkd is a super fast and super simple messaging queue.

## Annotated json

```javascript
{
	beanstalkd: {
		startup: false, // keep beanstalkd back from start during system boot. default is true, so beanstalkd will start during system boot
		opts: {
			p: 13378 // will set the port to 13378
			// Any deamon opts are allowed and converted here
			// e.g. see 'man beanstalkd'
		}
	}
}
```