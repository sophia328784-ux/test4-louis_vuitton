package com.batch.android;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.batch.android.e.r;
import com.batch.android.e.t;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23428c = "IntentParser";
    private static final String d = "com.batch.messaging.push.shown";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f23429e = "com.batch.open.tracked";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23430f = "com.batch.from_push";
    private static final String g = "fromPush";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f23431h = "com.batch.push_id";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f23432i = "pushId";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Intent f23433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BatchPushPayload f23434b;

    public h(Intent intent) {
        Bundle bundle;
        this.f23434b = null;
        this.f23433a = intent;
        try {
            Bundle extras = intent.getExtras();
            if (extras == null || (bundle = extras.getBundle(Batch.Push.PAYLOAD_KEY)) == null) {
                return;
            }
            this.f23434b = new BatchPushPayload(bundle);
        } catch (Exception e2) {
            t.c(f23428c, "Unexpected error while parsing BatchPushPayload from intent", e2);
        }
    }

    public static void a(Bundle bundle, Bundle bundle2) {
        Bundle bundle3;
        String string;
        if (bundle == null || bundle2 == null) {
            return;
        }
        if (bundle.containsKey(f23430f)) {
            boolean z = bundle.getBoolean(f23430f, false);
            bundle2.putBoolean(f23430f, z);
            bundle2.putBoolean(g, z);
        }
        if (bundle.containsKey(f23431h) && (string = bundle.getString(f23431h, null)) != null) {
            bundle2.putString(f23431h, string);
            bundle2.putString(f23432i, string);
        }
        if (bundle.containsKey(Batch.Push.PAYLOAD_KEY) && (bundle3 = bundle.getBundle(Batch.Push.PAYLOAD_KEY)) != null) {
            bundle2.putBundle(Batch.Push.PAYLOAD_KEY, bundle3);
        }
        if (bundle.containsKey(f23429e)) {
            bundle2.putBoolean(f23429e, bundle.getBoolean(f23429e, false));
        }
        if (bundle.containsKey(d)) {
            bundle2.putBoolean(d, bundle.getBoolean(d, false));
        }
    }

    public BatchMessage b() {
        BatchPushPayload batchPushPayload = this.f23434b;
        if (batchPushPayload != null) {
            return batchPushPayload.getLandingMessage();
        }
        t.c(f23428c, "getLanding : No valid payload in intent");
        return null;
    }

    public Bundle c() {
        if (g()) {
            return this.f23434b.getPushBundle();
        }
        return null;
    }

    public r d() {
        try {
            if (this.f23433a != null) {
                return this.f23434b.a();
            }
            t.c(f23428c, "getPushData : No intent found");
            return null;
        } catch (Exception e2) {
            t.c(f23428c, "Error while retrieving push data", e2);
            return null;
        }
    }

    public String e() {
        try {
            Intent intent = this.f23433a;
            if (intent != null) {
                return intent.getStringExtra(f23431h);
            }
            t.c(f23428c, "getPushId : No intent found");
            return null;
        } catch (Exception e2) {
            t.c(f23428c, "Error while retrieving push id", e2);
            return null;
        }
    }

    public boolean f() {
        BatchPushPayload batchPushPayload = this.f23434b;
        if (batchPushPayload != null) {
            return batchPushPayload.getLandingMessage() != null;
        }
        t.c(f23428c, "hasLandingMessage : No valid payload in intent");
        return false;
    }

    public boolean g() {
        return this.f23434b != null;
    }

    public boolean h() {
        Intent intent = this.f23433a;
        if (intent != null) {
            return intent.getBooleanExtra(d, false);
        }
        t.c(f23428c, "isLandingAlreadyShown : No intent found");
        return false;
    }

    public boolean i() {
        Intent intent = this.f23433a;
        if (intent != null) {
            return intent.getBooleanExtra(f23429e, false);
        }
        t.c(f23428c, "isOpenAlreadyTracked : No intent found");
        return false;
    }

    public void j() {
        Intent intent = this.f23433a;
        if (intent == null) {
            t.c(f23428c, "markLandingAsAlreadyShown : No intent found");
        } else {
            intent.putExtra(d, true);
        }
    }

    public void k() {
        if (a()) {
            this.f23433a.putExtra(f23429e, true);
        } else {
            t.c(f23428c, "Trying to consume an open that does not come from a push");
        }
    }

    public h(Activity activity) {
        this(activity.getIntent());
    }

    public static void a(Bundle bundle, r rVar, Intent intent) {
        intent.putExtra(f23430f, true);
        intent.putExtra(g, true);
        if (bundle != null && !bundle.isEmpty()) {
            intent.putExtra(Batch.Push.PAYLOAD_KEY, bundle);
        }
        String strR = rVar.r();
        if (strR != null) {
            intent.putExtra(f23431h, strR);
            intent.putExtra(f23432i, strR);
        }
    }

    public static void a(Intent intent, Intent intent2) {
        if (intent == null || intent2 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        a(intent.getExtras(), bundle);
        intent2.putExtras(bundle);
    }

    public boolean a() {
        Intent intent = this.f23433a;
        if (intent == null) {
            t.c(f23428c, "intentComesFromPush : No intent found");
            return false;
        }
        return intent.getBooleanExtra(f23430f, false);
    }
}
