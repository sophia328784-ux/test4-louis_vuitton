package com.vuitton.foundation.model.domain.model.productshortlist;

import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;", "", "", "minimum", "maximum", "<init>", "(II)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RangeType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f68144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f68145b;

    public RangeType(int i2, int i3) {
        this.f68144a = i2;
        this.f68145b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RangeType)) {
            return false;
        }
        RangeType rangeType = (RangeType) obj;
        return this.f68144a == rangeType.f68144a && this.f68145b == rangeType.f68145b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f68145b) + (Integer.hashCode(this.f68144a) * 31);
    }

    public final String toString() {
        return fc.f(this.f68144a, this.f68145b, "RangeType(minimum=", ", maximum=", ")");
    }
}
