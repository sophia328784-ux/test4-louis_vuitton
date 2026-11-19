package com.google.firebase.crashlytics.internal.common;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/google/firebase/crashlytics/internal/common/FirebaseInstallationId;", "", "", "fid", "authToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "com.google.firebase-firebase-crashlytics"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class FirebaseInstallationId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34560b;

    public FirebaseInstallationId(String str, String str2) {
        this.f34559a = str;
        this.f34560b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FirebaseInstallationId)) {
            return false;
        }
        FirebaseInstallationId firebaseInstallationId = (FirebaseInstallationId) obj;
        return Intrinsics.c(this.f34559a, firebaseInstallationId.f34559a) && Intrinsics.c(this.f34560b, firebaseInstallationId.f34560b);
    }

    public final int hashCode() {
        String str = this.f34559a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f34560b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FirebaseInstallationId(fid=");
        sb.append(this.f34559a);
        sb.append(", authToken=");
        return fc.l(sb, this.f34560b, ')');
    }
}
