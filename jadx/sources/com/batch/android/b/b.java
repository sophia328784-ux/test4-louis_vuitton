package com.batch.android.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.batch.android.BatchDeeplinkInterceptor;
import com.batch.android.BatchPushPayload;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b implements UserActionRunnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f22943b = "DeeplinkAction";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22944c = "batch.deeplink";
    public static final String d = "l";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f22945e = "li";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.batch.android.v0.a f22946a;

    public b(com.batch.android.v0.a aVar) {
        this.f22946a = aVar;
    }

    private void a(Context context, String str, boolean z) throws com.batch.android.a.f {
        BatchDeeplinkInterceptor batchDeeplinkInterceptorI = this.f22946a.i();
        if (batchDeeplinkInterceptorI != null) {
            try {
                try {
                    Intent intent = batchDeeplinkInterceptorI.getIntent(context, str);
                    if (intent != null) {
                        context.startActivity(intent);
                        return;
                    }
                } catch (RuntimeException e2) {
                    t.a(f22943b, "Interceptor has thrown a runtime exception. Aborting deeplink opens by rethrowing", e2);
                    throw new com.batch.android.a.f(e2);
                }
            } catch (com.batch.android.a.f e3) {
                throw e3;
            } catch (Exception e4) {
                t.a(f22943b, "Error when trying to open deeplink from interceptor. Using fallback intent.", e4);
                try {
                    Intent fallbackIntent = batchDeeplinkInterceptorI.getFallbackIntent(context);
                    if (fallbackIntent != null) {
                        context.startActivity(fallbackIntent);
                        return;
                    }
                    return;
                } catch (RuntimeException e5) {
                    t.a(f22943b, "Interceptor has thrown a runtime exception. Aborting deeplink opens by rethrowing", e5);
                    throw new com.batch.android.a.f(e5);
                }
            }
        }
        context.startActivity(com.batch.android.e.f.a(str, z, true));
    }

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        if (context == null) {
            t.a(f22943b, "Tried to perform a Deeplink action, but no context was available");
            return;
        }
        String strReallyOptString = jSONObject.reallyOptString(d, null);
        try {
            if (!TextUtils.isEmpty(strReallyOptString)) {
                a(context, strReallyOptString, jSONObject.reallyOptBoolean(f22945e, Boolean.FALSE).booleanValue() && !(userActionSource instanceof BatchPushPayload));
                return;
            }
            t.a(f22943b, "Tried to perform a Deeplink action, but no deeplink was found in the args. (args: " + jSONObject.toString() + ")");
        } catch (ActivityNotFoundException unused) {
            t.a(f22943b, "Could not open deeplink: no activity found to handle Intent. Is it valid and your manifest well-formed? URL: " + strReallyOptString);
        } catch (com.batch.android.a.f e2) {
            throw e2.a();
        } catch (Exception e3) {
            t.c(f22943b, "Could not perform deeplink action", e3);
            t.a(f22943b, "Could not open deeplink: Unknown error.");
        }
    }
}
