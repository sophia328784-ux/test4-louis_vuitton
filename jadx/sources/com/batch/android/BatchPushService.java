package com.batch.android;

import android.app.IntentService;
import android.content.Intent;
import com.batch.android.e.t;

/* JADX INFO: loaded from: classes.dex */
public class BatchPushService extends IntentService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22843a = "BatchPushService";

    public BatchPushService() {
        super(f22843a);
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        try {
            try {
                if (intent == null) {
                    t.c(f22843a, "Error while handling notification: null intent");
                    com.batch.android.d.b.completeWakefulIntent(intent);
                } else {
                    e.a(this, intent.getExtras());
                    com.batch.android.d.b.completeWakefulIntent(intent);
                }
            } catch (j e2) {
                throw e2.a();
            } catch (Exception e3) {
                t.c(f22843a, "Error while handing notification", e3);
                com.batch.android.d.b.completeWakefulIntent(intent);
            }
        } catch (Throwable th) {
            com.batch.android.d.b.completeWakefulIntent(intent);
            throw th;
        }
    }
}
