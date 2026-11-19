package com.vuitton.android.presentation.screen.options.appinfo.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;", "", "", "title", "body", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AppInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f59750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f59751b;

    public AppInfo(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f59750a = str;
        this.f59751b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppInfo)) {
            return false;
        }
        AppInfo appInfo = (AppInfo) obj;
        return Intrinsics.c(this.f59750a, appInfo.f59750a) && Intrinsics.c(this.f59751b, appInfo.f59751b);
    }

    public final int hashCode() {
        return this.f59751b.hashCode() + (this.f59750a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("AppInfo(title=", this.f59750a, ", body=", this.f59751b, ")");
    }
}
