# sentry_issue_991

This is a demo project to demonstrate that can not serialize errors correctly on android

## Android log output
```Launching lib/main.dart on M2006C3LG in debug mode...
✓  Built build/app/outputs/flutter-apk/app-debug.apk.
Connecting to VM Service at ws://127.0.0.1:52247/MPAFJfRhZDU=/ws
D/Sentry  (32729): SU isn't found on this Device.
I/Sentry  (32729): Initializing SDK with DSN: 'https://xxxxxxxx@sentry.xxxxxxxx.com/3'
W/pool-2-thread-1(32729): type=1400 audit(0.0:8952): avc: denied { read } for name="version" dev="proc" ino=4026532063 scontext=u:r:untrusted_app:s0:c252,c256,c512,c768 tcontext=u:object_r:proc_version:s0 tclass=file permissive=0
I/Sentry  (32729): GlobalHubMode: 'true'
D/Sentry  (32729): UncaughtExceptionHandlerIntegration enabled: true
D/Sentry  (32729): default UncaughtExceptionHandler class='com.android.internal.os.RuntimeInit$KillApplicationHandler'
D/Sentry  (32729): UncaughtExceptionHandlerIntegration installed.
D/Sentry  (32729): ShutdownHookIntegration installed.
D/Sentry  (32729): SendCachedEventFireAndForgetIntegration installed.
D/Sentry  (32729): Started processing cached files from /data/user/0/com.example.sentry_issue_991/cache/sentry
D/Sentry  (32729): NdkIntegration enabled: true
D/Sentry  (32729): Processing dir. /data/user/0/com.example.sentry_issue_991/cache/sentry
D/Sentry  (32729): Processing 0 items from cache dir /data/user/0/com.example.sentry_issue_991/cache/sentry
I/sentry-native(32729): using database path "/data/data/com.example.sentry_issue_991/cache/sentry/.sentry-native"
D/Sentry  (32729): File /data/user/0/com.example.sentry_issue_991/cache/sentry/outbox is not a File.
D/sentry-native(32729): starting backend
D/Sentry  (32729): Finished processing cached files from /data/user/0/com.example.sentry_issue_991/cache/sentry
D/Sentry  (32729): NdkIntegration installed.
D/Sentry  (32729): Registering EnvelopeFileObserverIntegration for path: /data/user/0/com.example.sentry_issue_991/cache/sentry/outbox
D/Sentry  (32729): EnvelopeFileObserverIntegration installed.
D/Sentry  (32729): SendCachedEventFireAndForgetIntegration installed.
D/Sentry  (32729): Started processing cached files from /data/user/0/com.example.sentry_issue_991/cache/sentry/outbox
D/Sentry  (32729): AnrIntegration enabled: false
D/Sentry  (32729): Processing dir. /data/user/0/com.example.sentry_issue_991/cache/sentry/outbox
D/Sentry  (32729): enableSessionTracking enabled: true
D/Sentry  (32729): enableAppLifecycleBreadcrumbs enabled: true
D/Sentry  (32729): Processing 0 items from cache dir /data/user/0/com.example.sentry_issue_991/cache/sentry/outbox
D/Sentry  (32729): Finished processing cached files from /data/user/0/com.example.sentry_issue_991/cache/sentry/outbox
D/Sentry  (32729): AppLifecycleIntegration installed.
D/Sentry  (32729): ActivityLifecycleIntegration enabled: true
D/Sentry  (32729): ActivityLifecycleIntegration installed.
D/Sentry  (32729): UserInteractionIntegration enabled: true
D/Sentry  (32729): UserInteractionIntegration installed.
D/Sentry  (32729): AppComponentsBreadcrumbsIntegration enabled: true
D/Sentry  (32729): AppComponentsBreadcrumbsIntegration installed.
D/Sentry  (32729): SystemEventsBreadcrumbsIntegration enabled: true
D/Sentry  (32729): SystemEventsBreadcrumbsIntegration installed.
D/Sentry  (32729): enableSystemEventsBreadcrumbs enabled: true
I/Sentry  (32729): TYPE_AMBIENT_TEMPERATURE is not available.
D/Sentry  (32729): enableSystemEventBreadcrumbs enabled: true
D/Sentry  (32729): Serializing object: {"sid":"f9c01875-7e24-4b20-9ade-6d3abcd68568","did":"2c8998a6-b079-4afb-b30c-04604ba27b27","init":true,"started":"2022-09-21T07:07:27.943Z","status":"ok","timestamp":"2022-09-21T07:07:27.943Z","attrs":{"release":"com.example.sentry_issue_991@1.0.0+1","environment":"qa"}}
D/Sentry  (32729): Serializing object: {"sid":"f9c01875-7e24-4b20-9ade-6d3abcd68568","did":"2c8998a6-b079-4afb-b30c-04604ba27b27","init":true,"started":"2022-09-21T07:07:27.943Z","status":"ok","timestamp":"2022-09-21T07:07:27.943Z","attrs":{"release":"com.example.sentry_issue_991@1.0.0+1","environment":"qa"}}
D/Sentry  (32729): Adding Envelope to offline storage: /data/user/0/com.example.sentry_issue_991/cache/sentry/4516036e-e58d-40cb-bf9d-7a7d1fabe9d9.envelope
I/Sentry  (32729): No permission (ACCESS_NETWORK_STATE) to check network status.
D/NetworkSecurityConfig(32729): No Network Security Config specified, using platform default
I/System.out(32729): [okhttp]:check permission begin!
I/entry_issue_99(32729): The ClassLoaderContext is a special shared library.
I/System.out(32729): [okhttp]:not MMS!
I/System.out(32729): [okhttp]:not Email!
I/System.out(32729): [socket]:check permission begin!
I/entry_issue_99(32729): The ClassLoaderContext is a special shared library.
[sentry] [debug] release: com.example.sentry_issue_991@1.0.0+1
I/System.out(32729): [OkHttp] sendRequest>>
I/System.out(32729): [OkHttp] sendRequest<<
D/Sentry  (32729): Request failed, API returned 400
D/Sentry  (32729): {"detail":"failed to read request body","causes":["failed to base64 decode payload","Invalid byte 31, offset 0."]}
D/Sentry  (32729): The transport failed to send the envelope with response code 400
E/Sentry  (32729): Envelope submission failed
E/Sentry  (32729): java.lang.IllegalStateException: The transport failed to send the envelope with response code 400
E/Sentry  (32729): 	at io.sentry.transport.AsyncHttpTransport$EnvelopeSender.flush(AsyncHttpTransport.java:220)
E/Sentry  (32729): 	at io.sentry.transport.AsyncHttpTransport$EnvelopeSender.run(AsyncHttpTransport.java:183)
E/Sentry  (32729): 	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:462)
E/Sentry  (32729): 	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
E/Sentry  (32729): 	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1167)
E/Sentry  (32729): 	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:641)
E/Sentry  (32729): 	at java.lang.Thread.run(Thread.java:919)
I/entry_issue_99(32729): ProcessProfilingInfo new_methods=1762 is saved saved_to_disk=1 resolve_classes_delay=8000
D/Sentry  (32729): onEvent fired for EnvelopeFileObserver with event type 8 on path: /data/user/0/com.example.sentry_issue_991/cache/sentry/outbox for file a023ec23-ca64-4781-8411-f6424915cb16.
D/Sentry  (32729): Processing Envelope with 1 item(s)
W/entry_issue_99(32729): Accessing hidden field Lsun/misc/Unsafe;->theUnsafe:Lsun/misc/Unsafe; (greylist, reflection, allowed)
W/entry_issue_99(32729): Accessing hidden method Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object; (greylist, reflection, allowed)
D/Sentry  (32729): Capturing event: f1797c6f34254ff68fac82c18dbbc166
I/Sentry  (32729): No permission (ACCESS_NETWORK_STATE) to check network status.
I/Sentry  (32729): Not possible to read external files directory
I/Sentry  (32729): No permission (ACCESS_NETWORK_STATE) to check network status.
D/Sentry  (32729): Captured Envelope is already cached
D/Sentry  (32729): Item 1 is being captured.
I/Sentry  (32729): No permission (ACCESS_NETWORK_STATE) to check network status.
I/System.out(32729): [okhttp]:check permission begin!
I/System.out(32729): [okhttp]:not MMS!
I/System.out(32729): [okhttp]:not Email!
I/System.out(32729): [socket]:check permission begin!
D/Sentry  (32729): Serializing object: {"exception":{"values":[{"stacktrace":{"frames":[{"abs_path":"dart:isolate-patch/isolate_patch.dart","colno":12,"filename":"isolate_patch.dart","function":"_RawReceivePortImpl._handleMessage","in_app":false,"lineno":192},{"abs_path":"dart:isolate-patch/timer_impl.dart","colno":5,"filename":"timer_impl.dart","function":"_Timer._handleMessage","in_app":false,"lineno":426},{"abs_path":"dart:isolate-patch/timer_impl.dart","colno":19,"filename":"timer_impl.dart","function":"_Timer._runTimers","in_app":false,"lineno":395},{"abs_path":"dart:async-patch/timer_patch.dart","colno":15,"filename":"timer_patch.dart","function":"Timer._createTimer.<fn>","in_app":false,"lineno":18},{"abs_path":"dart:async/zone.dart","colno":23,"filename":"zone.dart","function":"_CustomZone.bindCallback.<fn>","in_app":false,"lineno":1260},{"abs_path":"dart:async/zone.dart","colno":19,"filename":"zone.dart","function":"_CustomZone.run","in_app":false,"lineno":1328},{"abs_path":"dart:async/zone.dart","colno":13,"filename":"zone.dart","function":"_rootRun","in_app":false,"lineno":1426},{"abs_path":"dart:async/zone.dart","colno":23,"filename":"zone.dart","function":"_CustomZone.bindCallbackGuarded.<fn>","in_app":false,"lineno":1276},{"abs_path":"dart:async/zone.dart","colno":7,"filename":"zone.dart","function":"_CustomZone.runGuarded","in_app":false,"lineno":1236},{"abs_path":"dart:async/zone.dart","colno":19,"filename":"zone.dart","function":"_CustomZone.run","in_app":false,"lineno":1328},{"abs_path":"dart:async/zone.dart","colno":47,"filename":"zone.dart","function":"_rootRun","in_app":false,"lineno":1418},{"package":"flutter","abs_path":"package:flutter/src/widgets/binding.dart","colno":7,"filename":"binding.dart","function":"WidgetsBinding.scheduleAttachRootWidget.<fn>","in_app":false,"lineno":924,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/binding.dart","colno":7,"filename":"binding.dart","function":"WidgetsBinding.attachRootWidget","in_app":false,"lineno":944,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/binding.dart","colno":13,"filename":"binding.dart","function":"RenderObjectToWidgetAdapter.attachToRenderTree","in_app":false,"lineno":1111,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/framework.dart","colno":19,"filename":"framework.dart","function":"BuildOwner.buildScope","in_app":false,"lineno":2600,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/binding.dart","colno":18,"filename":"binding.dart","function":"RenderObjectToWidgetAdapter.attachToRenderTree.<fn>","in_app":false,"lineno":1112,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/binding.dart","colno":5,"filename":"binding.dart","function":"RenderObjectToWidgetElement.mount","in_app":false,"lineno":1167,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/binding.dart","colno":16,"filename":"binding.dart","function":"RenderObjectToWidgetElement._rebuild","in_app":false,"lineno":1198,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/framework.dart","colno":18,"filename":"framework.dart","function":"Element.updateChild","in_app":false,"lineno":3540,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/framework.dart","colno":14,"filename":"framework.dart","function":"Element.inflateWidget","in_app":false,"lineno":3790,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/framework.dart","colno":5,"filename":"framework.dart","function":"ComponentElement.mount","in_app":false,"lineno":4729,"unknown":{"package":"flutter"}},{"package":"flutter","abs_path":"package:flutter/src/widgets/framework.dart","colno":57,"filename":"framework.dart","function":"StatefulElement._firstBuild","in_app":false,"lineno":4893,"unknown":{"package":"flutter"}},{"packa
D/Sentry  (32729): Serializing object: {"sid":"f9c01875-7e24-4b20-9ade-6d3abcd68568","did":"2c8998a6-b079-4afb-b30c-04604ba27b27","started":"2022-09-21T07:07:27.943Z","status":"ok","seq":1663744054485,"errors":1,"timestamp":"2022-09-21T07:07:34.485Z","attrs":{"release":"com.example.sentry_issue_991@1.0.0+1","environment":"qa"}}
I/System.out(32729): [OkHttp] sendRequest>>
I/System.out(32729): [OkHttp] sendRequest<<
D/Sentry  (32729): Request failed, API returned 400
D/Sentry  (32729): {"detail":"failed to read request body","causes":["failed to base64 decode payload","Invalid byte 31, offset 0."]}
D/Sentry  (32729): The transport failed to send the envelope with response code 400
E/Sentry  (32729): Envelope submission failed
E/Sentry  (32729): java.lang.IllegalStateException: The transport failed to send the envelope with response code 400
E/Sentry  (32729): 	at io.sentry.transport.AsyncHttpTransport$EnvelopeSender.flush(AsyncHttpTransport.java:220)
E/Sentry  (32729): 	at io.sentry.transport.AsyncHttpTransport$EnvelopeSender.run(AsyncHttpTransport.java:183)
E/Sentry  (32729): 	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:462)
E/Sentry  (32729): 	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
E/Sentry  (32729): 	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1167)
E/Sentry  (32729): 	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:641)
E/Sentry  (32729): 	at java.lang.Thread.run(Thread.java:919)
D/Sentry  (32729): Marking envelope submission result: false
W/Sentry  (32729): Envelope had a failed capture at item 1. No more items will be sent.
D/Sentry  (32729): File '/data/user/0/com.example.sentry_issue_991/cache/sentry/outbox/a023ec23-ca64-4781-8411-f6424915cb16' is done.
Application finished.
Exited (sigterm)
```
