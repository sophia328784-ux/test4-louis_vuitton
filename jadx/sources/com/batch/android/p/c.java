package com.batch.android.p;

import com.batch.android.Batch;
import com.batch.android.BatchMessage;
import com.batch.android.BatchPushPayload;
import com.batch.android.e.r;

/* JADX INFO: loaded from: classes.dex */
public class c implements Batch.EventDispatcher.Payload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BatchPushPayload f23889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f23890b;

    public c(BatchPushPayload batchPushPayload, boolean z) {
        this.f23889a = batchPushPayload;
        this.f23890b = z;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public String getCustomValue(String str) {
        if (r.z.equals(str)) {
            return null;
        }
        return this.f23889a.getPushBundle().getString(str);
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public String getDeeplink() {
        return this.f23889a.getDeeplink();
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public BatchMessage getMessagingPayload() {
        return null;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public BatchPushPayload getPushPayload() {
        return this.f23889a;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public String getTrackingId() {
        return null;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public String getWebViewAnalyticsID() {
        return null;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public boolean isPositiveAction() {
        return this.f23890b;
    }

    public c(BatchPushPayload batchPushPayload) {
        this(batchPushPayload, false);
    }
}
