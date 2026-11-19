package com.batch.android;

import android.content.Intent;
import android.os.Bundle;
import com.batch.android.json.JSONObject;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public abstract class BatchMessage implements UserActionSource {
    public static final String MESSAGING_EXTRA_PAYLOAD_KEY = "com.batch.messaging.payload";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22791a = "kind";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f22792b = "data";

    public static BatchMessage getMessageForBundle(Bundle bundle) throws BatchPushPayload.ParsingException {
        Bundle bundle2;
        if (bundle == null) {
            md.n("Bundle cannot be null");
            return null;
        }
        Bundle bundle3 = bundle.getBundle(MESSAGING_EXTRA_PAYLOAD_KEY);
        if (bundle3 == null) {
            throw new BatchPushPayload.ParsingException("Bundle doesn't contain the required elements for reading BatchMessage");
        }
        String string = bundle3.getString("kind");
        if (BatchLandingMessage.KIND.equals(string)) {
            Bundle bundle4 = bundle3.getBundle("data");
            if (bundle4 != null) {
                return BatchPushPayload.payloadFromBundle(bundle4).getLandingMessage();
            }
        } else if (BatchInAppMessage.KIND.equals(string) && (bundle2 = bundle3.getBundle("data")) != null) {
            return BatchInAppMessage.a(bundle2);
        }
        throw new BatchPushPayload.ParsingException("Unknown BatchMessage kind");
    }

    public abstract Bundle a();

    public abstract JSONObject b();

    public abstract JSONObject c();

    public abstract String d();

    public void writeToBundle(Bundle bundle) {
        if (bundle == null) {
            md.n("bundle cannot be null");
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("kind", d());
        bundle2.putBundle("data", a());
        bundle.putBundle(MESSAGING_EXTRA_PAYLOAD_KEY, bundle2);
    }

    public void writeToIntent(Intent intent) {
        if (intent == null) {
            md.n("intent cannot be null");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("kind", d());
        bundle.putBundle("data", a());
        intent.putExtra(MESSAGING_EXTRA_PAYLOAD_KEY, bundle);
    }
}
