package com.vuitton.foundation.model.domain.model.account.orders;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\tB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/Price;", "", "", "amount", "", "display", "currency", "<init>", "(DLjava/lang/String;Ljava/lang/String;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Price {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f66326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66328c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/Price$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        new Price(-1.0d, "", null, 4, null);
    }

    public Price(double d, String str, String str2) {
        str.getClass();
        this.f66326a = d;
        this.f66327b = str;
        this.f66328c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Price)) {
            return false;
        }
        Price price = (Price) obj;
        return Double.compare(this.f66326a, price.f66326a) == 0 && Intrinsics.c(this.f66327b, price.f66327b) && Intrinsics.c(this.f66328c, price.f66328c);
    }

    public final int hashCode() {
        int iB = fc.b(Double.hashCode(this.f66326a) * 31, 31, this.f66327b);
        String str = this.f66328c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Price(amount=");
        sb.append(this.f66326a);
        sb.append(", display=");
        sb.append(this.f66327b);
        return d21.p(sb, ", currency=", this.f66328c, ")");
    }

    public /* synthetic */ Price(double d, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(d, str, (i2 & 4) != 0 ? null : str2);
    }
}
