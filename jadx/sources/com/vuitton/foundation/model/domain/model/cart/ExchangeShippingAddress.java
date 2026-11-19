package com.vuitton.foundation.model.domain.model.cart;

import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;", "", "", "address1", "address2", "address3", "address4", "city", "country", "postalCode", "province", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExchangeShippingAddress {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66962c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66964f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66965h;

    public ExchangeShippingAddress(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        pq0.z(str, str2, str3, str4, str5);
        str6.getClass();
        str7.getClass();
        this.f66960a = str;
        this.f66961b = str2;
        this.f66962c = str3;
        this.d = str4;
        this.f66963e = str5;
        this.f66964f = str6;
        this.g = str7;
        this.f66965h = str8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeShippingAddress)) {
            return false;
        }
        ExchangeShippingAddress exchangeShippingAddress = (ExchangeShippingAddress) obj;
        return Intrinsics.c(this.f66960a, exchangeShippingAddress.f66960a) && Intrinsics.c(this.f66961b, exchangeShippingAddress.f66961b) && Intrinsics.c(this.f66962c, exchangeShippingAddress.f66962c) && Intrinsics.c(this.d, exchangeShippingAddress.d) && Intrinsics.c(this.f66963e, exchangeShippingAddress.f66963e) && Intrinsics.c(this.f66964f, exchangeShippingAddress.f66964f) && Intrinsics.c(this.g, exchangeShippingAddress.g) && Intrinsics.c(this.f66965h, exchangeShippingAddress.f66965h);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(this.f66960a.hashCode() * 31, 31, this.f66961b), 31, this.f66962c), 31, this.d), 31, this.f66963e), 31, this.f66964f), 31, this.g);
        String str = this.f66965h;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ExchangeShippingAddress(address1=", this.f66960a, ", address2=", this.f66961b, ", address3=");
        cj.C(sbS, this.f66962c, ", address4=", this.d, ", city=");
        cj.C(sbS, this.f66963e, ", country=", this.f66964f, ", postalCode=");
        return tr.l(sbS, this.g, ", province=", this.f66965h, ")");
    }
}
