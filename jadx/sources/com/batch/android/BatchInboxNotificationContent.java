package com.batch.android;

import android.content.Context;
import com.batch.android.e.t;
import com.batch.android.n.v;
import com.batch.android.n.z;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BatchInboxNotificationContent {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f22776c = "BatchInboxNotificationContent";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.batch.android.q.g f22777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BatchPushPayload f22778b = null;

    public BatchInboxNotificationContent(com.batch.android.q.g gVar) {
        this.f22777a = gVar;
    }

    public void displayLandingMessage(Context context) {
        if (context == null) {
            t.c(f22776c, "Context cannot be null.");
            return;
        }
        if (v.a().c(context)) {
            t.b(f22776c, "Ignoring as Batch has been Opted Out from");
            return;
        }
        com.batch.android.v0.g gVarA = com.batch.android.n.t.a();
        if (gVarA.a(true)) {
            if (!z.a().h()) {
                t.c(f22776c, "Trying to present landing message while application is in background.");
            }
            try {
                BatchPushPayload pushPayload = getPushPayload();
                if (!pushPayload.hasLandingMessage()) {
                    t.c(f22776c, "No landing message present.");
                    return;
                }
                BatchLandingMessage batchLandingMessage = new BatchLandingMessage(pushPayload.getPushBundle(), pushPayload.a().k());
                batchLandingMessage.a(true);
                gVarA.a(context, (BatchMessage) batchLandingMessage, true);
            } catch (BatchPushPayload.ParsingException unused) {
                t.c("Parsing push payload has failed, cannot display landing message.");
            }
        }
    }

    public String getBody() {
        return this.f22777a.f23941b;
    }

    public Date getDate() {
        return (Date) this.f22777a.f23944f.clone();
    }

    public String getNotificationIdentifier() {
        return this.f22777a.f23945h.f23950a;
    }

    public synchronized BatchPushPayload getPushPayload() throws BatchPushPayload.ParsingException {
        try {
            if (this.f22778b == null) {
                this.f22778b = new BatchPushPayload(this.f22777a.a());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f22778b;
    }

    public Map<String, String> getRawPayload() {
        return new HashMap(this.f22777a.g);
    }

    public BatchNotificationSource getSource() {
        return this.f22777a.f23942c;
    }

    public String getTitle() {
        return this.f22777a.f23940a;
    }

    public boolean hasLandingMessage() {
        try {
            return getPushPayload().hasLandingMessage();
        } catch (BatchPushPayload.ParsingException unused) {
            return false;
        }
    }

    public boolean isSilent() {
        try {
            return this.f22777a.f23941b == null || getPushPayload().a().F();
        } catch (BatchPushPayload.ParsingException unused) {
        }
    }

    public boolean isUnread() {
        return this.f22777a.d;
    }
}
