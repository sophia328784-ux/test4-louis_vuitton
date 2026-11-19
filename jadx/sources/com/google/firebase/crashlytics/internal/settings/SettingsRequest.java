package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.InstallIdProvider;

/* JADX INFO: loaded from: classes2.dex */
class SettingsRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f35058c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InstallIdProvider f35059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f35060f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f35061h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f35062i;

    public SettingsRequest(String str, String str2, String str3, String str4, InstallIdProvider installIdProvider, String str5, String str6, String str7, int i2) {
        this.f35056a = str;
        this.f35057b = str2;
        this.f35058c = str3;
        this.d = str4;
        this.f35059e = installIdProvider;
        this.f35060f = str5;
        this.g = str6;
        this.f35061h = str7;
        this.f35062i = i2;
    }
}
