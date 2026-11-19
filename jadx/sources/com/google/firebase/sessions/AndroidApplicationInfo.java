package com.google.firebase.sessions;

import defpackage.fc;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/google/firebase/sessions/AndroidApplicationInfo;", "", "", "packageName", "versionName", "appBuildVersion", "deviceManufacturer", "Lcom/google/firebase/sessions/ProcessDetails;", "currentProcessDetails", "", "appProcessDetails", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/sessions/ProcessDetails;Ljava/util/List;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AndroidApplicationInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f35372c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProcessDetails f35373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f35374f;

    public AndroidApplicationInfo(String str, String str2, String str3, String str4, ProcessDetails processDetails, List<ProcessDetails> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        processDetails.getClass();
        list.getClass();
        this.f35370a = str;
        this.f35371b = str2;
        this.f35372c = str3;
        this.d = str4;
        this.f35373e = processDetails;
        this.f35374f = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidApplicationInfo)) {
            return false;
        }
        AndroidApplicationInfo androidApplicationInfo = (AndroidApplicationInfo) obj;
        return Intrinsics.c(this.f35370a, androidApplicationInfo.f35370a) && Intrinsics.c(this.f35371b, androidApplicationInfo.f35371b) && Intrinsics.c(this.f35372c, androidApplicationInfo.f35372c) && Intrinsics.c(this.d, androidApplicationInfo.d) && Intrinsics.c(this.f35373e, androidApplicationInfo.f35373e) && Intrinsics.c(this.f35374f, androidApplicationInfo.f35374f);
    }

    public final int hashCode() {
        return this.f35374f.hashCode() + ((this.f35373e.hashCode() + fc.b(fc.b(fc.b(this.f35370a.hashCode() * 31, 31, this.f35371b), 31, this.f35372c), 31, this.d)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidApplicationInfo(packageName=");
        sb.append(this.f35370a);
        sb.append(", versionName=");
        sb.append(this.f35371b);
        sb.append(", appBuildVersion=");
        sb.append(this.f35372c);
        sb.append(", deviceManufacturer=");
        sb.append(this.d);
        sb.append(", currentProcessDetails=");
        sb.append(this.f35373e);
        sb.append(", appProcessDetails=");
        return tr.m(sb, this.f35374f, ')');
    }
}
