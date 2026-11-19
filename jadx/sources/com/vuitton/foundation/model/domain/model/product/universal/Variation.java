package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "name", "iconUrl", "colorFamily", "finish", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Variation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68030c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68031e;

    public /* synthetic */ Variation(String str, String str2, String str3, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Variation)) {
            return false;
        }
        Variation variation = (Variation) obj;
        String str = variation.f68028a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f68028a, str) && Intrinsics.c(this.f68029b, variation.f68029b) && Intrinsics.c(this.f68030c, variation.f68030c) && Intrinsics.c(this.d, variation.d) && Intrinsics.c(this.f68031e, variation.f68031e);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(this.f68028a.hashCode() * 31, 31, this.f68029b);
        String str = this.f68030c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f68031e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("Variation(sku=", this.f68028a, ", name=", this.f68029b, ", iconUrl=");
        cj.C(sbS, this.f68030c, ", colorFamily=", this.d, ", finish=");
        return n00.r(this.f68031e, ")", sbS);
    }

    public Variation(String str, String str2, String str3, String str4, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f68028a = str;
        this.f68029b = str2;
        this.f68030c = str3;
        this.d = str4;
        this.f68031e = str5;
    }
}
