package com.batch.android;

/* JADX INFO: loaded from: classes2.dex */
public class BatchPushRegistration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f22841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f22842c;
    private final String d;

    public BatchPushRegistration(String str, String str2, String str3, String str4) {
        this.f22840a = str;
        this.f22841b = str2;
        this.f22842c = str3;
        this.d = str4;
    }

    public String getGcpProjectID() {
        return this.d;
    }

    public String getProvider() {
        return this.f22840a;
    }

    public String getSenderID() {
        return this.f22842c;
    }

    public String getToken() {
        return this.f22841b;
    }
}
