package com.vuitton.foundation.model.domain.model.productshortlist;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;", "", "", b.a.f24015b, "title", "", "isSelected", "isEnabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZ)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductSort {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f68141c;
    public final boolean d;

    public ProductSort(String str, String str2, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        this.f68139a = str;
        this.f68140b = str2;
        this.f68141c = z;
        this.d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductSort)) {
            return false;
        }
        ProductSort productSort = (ProductSort) obj;
        return Intrinsics.c(this.f68139a, productSort.f68139a) && Intrinsics.c(this.f68140b, productSort.f68140b) && this.f68141c == productSort.f68141c && this.d == productSort.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + o60.b(fc.b(this.f68139a.hashCode() * 31, 31, this.f68140b), 31, this.f68141c);
    }

    public final String toString() {
        return pq0.p(fc.s("ProductSort(id=", this.f68139a, ", title=", this.f68140b, ", isSelected="), this.f68141c, ", isEnabled=", this.d, ")");
    }
}
