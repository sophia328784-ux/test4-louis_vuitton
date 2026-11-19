package com.batch.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.batch.android.e.t;

/* JADX INFO: loaded from: classes.dex */
public class BatchPushMessageDismissReceiver extends com.batch.android.d.b {
    private static final String d = "BatchPushMessageDismissReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            t.c(d, "Null intent");
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null || extras.isEmpty()) {
            t.c(d, "Intent extras were empty, stop dispatching event");
            return;
        }
        try {
            com.batch.android.p.c cVar = new com.batch.android.p.c(BatchPushPayload.payloadFromBundle(extras));
            com.batch.android.n.i.a().b(context);
            com.batch.android.n.i.a().a(Batch.EventDispatcher.Type.NOTIFICATION_DISMISS, cVar);
        } catch (BatchPushPayload.ParsingException unused) {
            t.c(d, "Invalid payload, skip dispatchers");
        }
    }
}
