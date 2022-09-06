# Rake-iPhone

**Rake** 는 단말에서 서버로 로그를 *쉽고*, *안전하게* 전송할 수 있도록 도와주는 *가벼운* 라이브러리입니다. 자세한 내용은 위키를 참조해주세요.

- [Rake iPhone Manual](https://github.com/skpdi/rake-document/wiki/2.-Rake-iPhone-(%ED%95%9C%EA%B5%AD%EC%96%B4))

## SDK Requirements
- iOS12 이상
- Xcode13 이상
- Objective-C와 Swift 환경 모두 지원합니다.

## Tutorial Requirements
- Xcode13 이상

## Install
 1. Rake.Framework [1.10.3](https://github.com/skpdi/rake-ios-tutorial/raw/master/release/Rake1.10.3.zip)을 다운받으세요.
 2. Rake.framework 을 선택하여 Xcode 프로젝트의 File Navigation에 넣습니다. 이때, Copy items if needed 이 선택된지 확인하고, Finish 버튼을 누릅니다.

----------


## Development Mode

andUseDevServer 를 true로 두면 Rake로그가 개발 서버로 전송 됩니다.
```
[Rake sharedInstanceWithToken: @"your-rake-token" andUseDevServer: true]
```


## ATS Issue
- [Refer this blog](http://www.neglectedpotential.com/2015/06/working-with-apples-application-transport-security/)


## License

**Apache V2** 를 따릅니다. 이는 개발에 사용된 [Mixpanel](https://github.com/mixpanel) 이 Apache V2 를 따르기 때문입니다. 라이센스에 따라, 이를 사용하는 앱에서는 라이브러리 사용 여부를 표시해야 하기 때문에 라이센스 전문을 링크합니다.

- [Apache V2](http://www.apache.org/licenses/LICENSE-2.0.html)
- [Mixpanel: iPhone](https://github.com/mixpanel/mixpanel-iphone)
- [PLCrashReporter](https://www.plcrashreporter.org/)
