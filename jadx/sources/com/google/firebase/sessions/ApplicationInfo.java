package com.google.firebase.sessions;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/google/firebase/sessions/ApplicationInfo;", "", "", "appId", "deviceModel", "sessionSdkVersion", "osVersion", "Lcom/google/firebase/sessions/LogEnvironment;", "logEnvironment", "Lcom/google/firebase/sessions/AndroidApplicationInfo;", "androidAppInfo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/sessions/LogEnvironment;Lcom/google/firebase/sessions/AndroidApplicationInfo;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ApplicationInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f35377c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LogEnvironment f35378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AndroidApplicationInfo f35379f;

    public ApplicationInfo(String str, String str2, String str3, String str4, LogEnvironment logEnvironment, AndroidApplicationInfo androidApplicationInfo) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        logEnvironment.getClass();
        androidApplicationInfo.getClass();
        this.f35375a = str;
        this.f35376b = str2;
        this.f35377c = str3;
        this.d = str4;
        this.f35378e = logEnvironment;
        this.f35379f = androidApplicationInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApplicationInfo)) {
            return false;
        }
        ApplicationInfo applicationInfo = (ApplicationInfo) obj;
        return Intrinsics.c(this.f35375a, applicationInfo.f35375a) && Intrinsics.c(this.f35376b, applicationInfo.f35376b) && Intrinsics.c(this.f35377c, applicationInfo.f35377c) && Intrinsics.c(this.d, applicationInfo.d) && this.f35378e == applicationInfo.f35378e && Intrinsics.c(this.f35379f, applicationInfo.f35379f);
    }

    public final int hashCode() {
        return this.f35379f.hashCode() + ((this.f35378e.hashCode() + fc.b(fc.b(fc.b(this.f35375a.hashCode() * 31, 31, this.f35376b), 31, this.f35377c), 31, this.d)) * 31);
    }

    public final String toString() {
        return "ApplicationInfo(appId=" + this.f35375a + ", deviceModel=" + this.f35376b + ", sessionSdkVersion=" + this.f35377c + ", osVersion=" + this.d + ", logEnvironment=" + this.f35378e + ", androidAppInfo=" + this.f35379f + ')';
    }
}
