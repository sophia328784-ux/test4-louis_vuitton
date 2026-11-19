package com.batch.android;

/* JADX INFO: loaded from: classes.dex */
public class BatchWebViewContent implements BatchInAppMessage.Content {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22846a;

    public BatchWebViewContent(com.batch.android.h0.h hVar) {
        this.f22846a = hVar.f23469i;
    }

    public String getURL() {
        return this.f22846a;
    }
}
