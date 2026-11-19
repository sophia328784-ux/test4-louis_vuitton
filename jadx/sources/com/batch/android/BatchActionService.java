package com.batch.android;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationManagerCompat;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class BatchActionService extends IntentService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22727a = "BatchActionService";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f22728b = "com.batch.android.action.exec";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f22729c = "actionID";
    static final String d = "args";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final String f22730e = "dismissNotificationID";

    public BatchActionService() {
        super(f22727a);
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        JSONObject jSONObject;
        t.c(f22727a, "Handling intent " + intent);
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return;
        }
        int intExtra = intent.getIntExtra(f22730e, 0);
        if (intExtra != 0) {
            new NotificationManagerCompat(this).f11955b.cancel(Batch.NOTIFICATION_TAG, intExtra);
        }
        String stringExtra = intent.getStringExtra(f22729c);
        if (TextUtils.isEmpty(stringExtra)) {
            t.a(f22727a, "Empty or null action identifier, aborting");
            return;
        }
        String stringExtra2 = intent.getStringExtra(d);
        BatchPushPayload batchPushPayloadPayloadFromBundle = null;
        if (stringExtra2 != null) {
            try {
                jSONObject = new JSONObject(stringExtra2);
            } catch (JSONException e2) {
                t.a(f22727a, "Unexpected error while decoding json action arguments", e2);
                jSONObject = null;
            }
        } else {
            jSONObject = null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            batchPushPayloadPayloadFromBundle = BatchPushPayload.payloadFromBundle(extras);
        } catch (BatchPushPayload.ParsingException e3) {
            t.a(f22727a, "Unexpected error while decoding BatchPushPayload", e3);
        }
        if (com.batch.android.n.a.a().a(this, stringExtra.toLowerCase(Locale.US), jSONObject, batchPushPayloadPayloadFromBundle)) {
            t.c(f22727a, "Action executed");
        }
    }
}
