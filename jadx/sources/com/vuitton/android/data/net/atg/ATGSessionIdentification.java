package com.vuitton.android.data.net.atg;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;", "", "", "sessionId", "confirmationNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ATGSessionIdentification {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46996b;

    public ATGSessionIdentification(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f46995a = str;
        this.f46996b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ATGSessionIdentification)) {
            return false;
        }
        ATGSessionIdentification aTGSessionIdentification = (ATGSessionIdentification) obj;
        return Intrinsics.c(this.f46995a, aTGSessionIdentification.f46995a) && Intrinsics.c(this.f46996b, aTGSessionIdentification.f46996b);
    }

    public final int hashCode() {
        return this.f46996b.hashCode() + (this.f46995a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("ATGSessionIdentification(sessionId=", this.f46995a, ", confirmationNumber=", this.f46996b, ")");
    }
}
