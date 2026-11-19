package com.vuitton.foundation.model.domain.model.product.universal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/Size;", "", "", "value", "", "unit", "<init>", "(DLjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Size {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f68026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68027b;

    public Size(double d, String str) {
        this.f68026a = d;
        this.f68027b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return Double.compare(this.f68026a, size.f68026a) == 0 && Intrinsics.c(this.f68027b, size.f68027b);
    }

    public final int hashCode() {
        int iHashCode = Double.hashCode(this.f68026a) * 31;
        String str = this.f68027b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "Size(value=" + this.f68026a + ", unit=" + this.f68027b + ")";
    }
}
