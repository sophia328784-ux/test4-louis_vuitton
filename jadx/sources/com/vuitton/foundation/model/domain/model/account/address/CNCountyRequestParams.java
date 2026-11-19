package com.vuitton.foundation.model.domain.model.account.address;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/address/CNCountyRequestParams;", "", "", "province", "city", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CNCountyRequestParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66264b;

    public CNCountyRequestParams(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f66263a = str;
        this.f66264b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CNCountyRequestParams)) {
            return false;
        }
        CNCountyRequestParams cNCountyRequestParams = (CNCountyRequestParams) obj;
        return Intrinsics.c(this.f66263a, cNCountyRequestParams.f66263a) && Intrinsics.c(this.f66264b, cNCountyRequestParams.f66264b);
    }

    public final int hashCode() {
        return this.f66264b.hashCode() + (this.f66263a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("CNCountyRequestParams(province=", this.f66263a, ", city=", this.f66264b, ")");
    }
}
