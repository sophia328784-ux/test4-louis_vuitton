package com.batch.android;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.TaskStackBuilder;
import com.batch.android.e.t;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;

/* JADX INFO: loaded from: classes.dex */
public class BatchActionActivity extends Activity {
    public static final String EXTRA_DEEPLINK_KEY = "deeplink";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22726a = "BatchActionActivity";

    private void a(Intent intent, String str) throws com.batch.android.a.f {
        Bundle bundleExtra = intent.getBundleExtra(Batch.Push.PAYLOAD_KEY);
        BatchDeeplinkInterceptor batchDeeplinkInterceptorI = com.batch.android.n.a.a().i();
        if (batchDeeplinkInterceptorI != null) {
            try {
                try {
                    TaskStackBuilder taskStackBuilder = batchDeeplinkInterceptorI.getTaskStackBuilder(this, str);
                    if (taskStackBuilder != null) {
                        a(taskStackBuilder, bundleExtra).f();
                        return;
                    }
                    try {
                        Intent intent2 = batchDeeplinkInterceptorI.getIntent(this, str);
                        if (intent2 != null) {
                            startActivity(a(intent2, bundleExtra));
                            return;
                        }
                    } catch (RuntimeException e2) {
                        t.a(f22726a, "Interceptor has thrown a runtime exception. Aborting deeplink opens by rethrowing", e2);
                        throw new com.batch.android.a.f(e2);
                    }
                } catch (RuntimeException e3) {
                    t.a(f22726a, "Interceptor has thrown a runtime exception. Aborting deeplink opens by rethrowing", e3);
                    throw new com.batch.android.a.f(e3);
                }
            } catch (com.batch.android.a.f e4) {
                throw e4;
            } catch (Exception e5) {
                t.a(f22726a, "Error when trying to open deeplink from interceptor. Using fallback intent.", e5);
                try {
                    Intent fallbackIntent = batchDeeplinkInterceptorI.getFallbackIntent(this);
                    if (fallbackIntent != null) {
                        startActivity(a(fallbackIntent, bundleExtra));
                        return;
                    }
                    return;
                } catch (RuntimeException e6) {
                    t.a(f22726a, "Interceptor has thrown a runtime exception. Aborting deeplink opens by rethrowing", e6);
                    throw new com.batch.android.a.f(e6);
                }
            }
        }
        startActivity(a(com.batch.android.e.f.a(str, false, true), bundleExtra));
    }

    @Override // android.app.Activity
    public void onDestroy() {
        Batch.onDestroy(this);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        Batch.onStart(this);
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra(EXTRA_DEEPLINK_KEY);
            if (TextUtils.isEmpty(stringExtra)) {
                Intent intent2 = new Intent(this, (Class<?>) BatchActionService.class);
                intent2.setAction(intent.getAction());
                intent2.putExtras(intent);
                startService(intent2);
            } else {
                try {
                    a(intent, stringExtra);
                } catch (ActivityNotFoundException unused) {
                    t.a(f22726a, "Could not open deeplink: no activity found to handle Intent. Is it valid and your manifest well-formed? URL: " + stringExtra);
                } catch (com.batch.android.a.f e2) {
                    throw e2.a();
                } catch (Exception e3) {
                    t.a(f22726a, "Error while trying to open a deeplink", e3);
                }
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public void onStop() {
        Batch.onStop(this);
        super.onStop();
    }

    private Intent a(Intent intent, Bundle bundle) {
        if (bundle != null) {
            intent.putExtra(Batch.Push.PAYLOAD_KEY, bundle);
        }
        return intent;
    }

    private TaskStackBuilder a(TaskStackBuilder taskStackBuilder, Bundle bundle) {
        Intent intent;
        if (bundle != null && taskStackBuilder.f12006b.size() > 0 && (intent = (Intent) taskStackBuilder.f12006b.get(0)) != null) {
            a(intent, bundle);
        }
        return taskStackBuilder;
    }
}
