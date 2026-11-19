package com.batch.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.batch.android.e.r;
import com.batch.android.json.JSONObject;
import com.google.firebase.messaging.RemoteMessage;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BatchPushPayload implements PushUserActionSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r f22838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bundle f22839b;

    public BatchPushPayload(Bundle bundle) throws ParsingException {
        r rVarA = r.a(bundle);
        this.f22838a = rVarA;
        if (rVarA == null) {
            throw new ParsingException("Payload does not contain required Batch push data");
        }
        this.f22839b = new Bundle(bundle);
    }

    public static BatchPushPayload payloadFromBundle(Bundle bundle) throws ParsingException {
        if (bundle == null) {
            md.n("Extras cannot be null");
            return null;
        }
        Bundle bundle2 = bundle.getBundle(Batch.Push.PAYLOAD_KEY);
        if (bundle2 != null) {
            return new BatchPushPayload(bundle2);
        }
        throw new ParsingException("Given bundle does not contain push information in Batch.Push.PAYLOAD_KEY");
    }

    public static BatchPushPayload payloadFromFirebaseMessage(RemoteMessage remoteMessage) throws ParsingException {
        if (remoteMessage != null) {
            return new BatchPushPayload(remoteMessage);
        }
        md.n("RemoteMessage cannot be null");
        return null;
    }

    public static BatchPushPayload payloadFromReceiverExtras(Bundle bundle) throws ParsingException {
        if (bundle != null) {
            return new BatchPushPayload(bundle);
        }
        md.n("Extras cannot be null");
        return null;
    }

    public static BatchPushPayload payloadFromReceiverIntent(Intent intent) throws ParsingException {
        if (intent == null) {
            md.n("Intent cannot be null");
            return null;
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            return new BatchPushPayload(extras);
        }
        md.n("Invalid intent");
        return null;
    }

    public r a() {
        return this.f22838a;
    }

    public List<BatchNotificationAction> getActions() {
        List<BatchNotificationAction> listA = this.f22838a.a();
        return listA != null ? listA : new ArrayList();
    }

    public String getBigPictureURL(Context context) {
        String strG = this.f22838a.g();
        if (strG == null) {
            return null;
        }
        return f.a(context, strG, this.f22838a.f());
    }

    public String getChannel() {
        return this.f22838a.c();
    }

    public String getCustomLargeIconURL(Context context) {
        String strE = this.f22838a.e();
        if (strE == null) {
            return null;
        }
        return f.a(context, strE, this.f22838a.d());
    }

    public String getDeeplink() {
        return this.f22838a.v();
    }

    public String getGroup() {
        return this.f22838a.i();
    }

    public BatchMessage getLandingMessage() {
        JSONObject jSONObjectK = this.f22838a.k();
        if (jSONObjectK == null) {
            return null;
        }
        return new BatchLandingMessage(this.f22839b, jSONObjectK);
    }

    @Override // com.batch.android.PushUserActionSource
    public Bundle getPushBundle() {
        return new Bundle(this.f22839b);
    }

    public boolean hasBigPicture() {
        return this.f22838a.z();
    }

    public boolean hasCustomLargeIcon() {
        return this.f22838a.y();
    }

    public boolean hasDeeplink() {
        return this.f22838a.B();
    }

    public boolean hasLandingMessage() {
        return this.f22838a.A();
    }

    public boolean isGroupSummary() {
        return this.f22838a.C();
    }

    public void writeToBundle(Bundle bundle) {
        if (bundle != null) {
            bundle.putBundle(Batch.Push.PAYLOAD_KEY, this.f22839b);
        } else {
            md.n("Bundle cannot be null");
        }
    }

    public void writeToIntentExtras(Intent intent) {
        if (intent != null) {
            intent.putExtra(Batch.Push.PAYLOAD_KEY, this.f22839b);
        } else {
            md.n("Intent cannot be null");
        }
    }

    public static class ParsingException extends Exception {
        public ParsingException() {
        }

        public ParsingException(String str) {
            super(str);
        }

        public ParsingException(String str, Throwable th) {
            super(str, th);
        }
    }

    public BatchPushPayload(RemoteMessage remoteMessage) throws ParsingException {
        Bundle bundleA = d.a(remoteMessage);
        this.f22839b = bundleA;
        r rVarA = r.a(bundleA);
        this.f22838a = rVarA;
        if (rVarA == null) {
            throw new ParsingException("Payload does not contain required Batch push data");
        }
    }
}
