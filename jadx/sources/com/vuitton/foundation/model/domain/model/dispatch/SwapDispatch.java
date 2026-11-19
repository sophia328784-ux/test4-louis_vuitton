package com.vuitton.foundation.model.domain.model.dispatch;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;", "", "", "localeKey", "countryKey", "displayName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SwapDispatch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67490c;

    public SwapDispatch(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.f67488a = str;
        this.f67489b = str2;
        this.f67490c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwapDispatch)) {
            return false;
        }
        SwapDispatch swapDispatch = (SwapDispatch) obj;
        return Intrinsics.c(this.f67488a, swapDispatch.f67488a) && Intrinsics.c(this.f67489b, swapDispatch.f67489b) && Intrinsics.c(this.f67490c, swapDispatch.f67490c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67488a.hashCode() * 31, 31, this.f67489b);
        String str = this.f67490c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return n00.r(this.f67490c, ")", fc.s("SwapDispatch(localeKey=", this.f67488a, ", countryKey=", this.f67489b, ", displayName="));
    }
}
