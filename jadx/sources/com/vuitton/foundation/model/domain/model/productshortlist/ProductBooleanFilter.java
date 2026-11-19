package com.vuitton.foundation.model.domain.model.productshortlist;

import com.batch.android.s.b;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;", "", "", b.a.f24015b, "title", "toggleFiltersId", "", "isSelected", "isEnabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductBooleanFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68102c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f68103e;

    public ProductBooleanFilter(String str, String str2, String str3, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        this.f68100a = str;
        this.f68101b = str2;
        this.f68102c = str3;
        this.d = z;
        this.f68103e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductBooleanFilter)) {
            return false;
        }
        ProductBooleanFilter productBooleanFilter = (ProductBooleanFilter) obj;
        return Intrinsics.c(this.f68100a, productBooleanFilter.f68100a) && Intrinsics.c(this.f68101b, productBooleanFilter.f68101b) && Intrinsics.c(this.f68102c, productBooleanFilter.f68102c) && this.d == productBooleanFilter.d && this.f68103e == productBooleanFilter.f68103e;
    }

    public final int hashCode() {
        int iB = fc.b(this.f68100a.hashCode() * 31, 31, this.f68101b);
        String str = this.f68102c;
        return Boolean.hashCode(this.f68103e) + o60.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductBooleanFilter(id=", this.f68100a, ", title=", this.f68101b, ", toggleFiltersId=");
        pq0.A(this.f68102c, ", isSelected=", ", isEnabled=", sbS, this.d);
        return a.p(sbS, this.f68103e, ")");
    }
}
