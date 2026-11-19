package com.vuitton.foundation.model.domain.model.cart;

import defpackage.a;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CartSample;", "", "", "Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;", "perfumeSamples", "", "maxSamples", "", "allowed", "<init>", "(Ljava/util/List;IZ)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartSample {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f66927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f66928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f66929c;

    public CartSample(List<PerfumeSample> list, int i2, boolean z) {
        list.getClass();
        this.f66927a = list;
        this.f66928b = i2;
        this.f66929c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartSample)) {
            return false;
        }
        CartSample cartSample = (CartSample) obj;
        return Intrinsics.c(this.f66927a, cartSample.f66927a) && this.f66928b == cartSample.f66928b && this.f66929c == cartSample.f66929c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f66929c) + tr.b(this.f66928b, this.f66927a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CartSample(perfumeSamples=");
        sb.append(this.f66927a);
        sb.append(", maxSamples=");
        sb.append(this.f66928b);
        sb.append(", allowed=");
        return a.p(sb, this.f66929c, ")");
    }
}
