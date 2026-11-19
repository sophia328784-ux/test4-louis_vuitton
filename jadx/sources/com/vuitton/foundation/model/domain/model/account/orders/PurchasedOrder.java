package com.vuitton.foundation.model.domain.model.account.orders;

import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.time.LocalDateTime;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;", "", "Ljava/time/LocalDateTime;", "purchaseUtcDate", "", "amountWithVat", "", "Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;", "transactions", "identifier", "Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;", "channel", "", "isOngoing", "locationId", "isOrderReturnEnabled", "<init>", "(Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;ZLjava/lang/String;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PurchasedOrder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocalDateTime f66334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f66336c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Channel f66337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f66338f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f66339h;

    public PurchasedOrder(LocalDateTime localDateTime, String str, List<Transaction> list, String str2, Channel channel, boolean z, String str3, boolean z2) {
        localDateTime.getClass();
        str.getClass();
        list.getClass();
        str2.getClass();
        this.f66334a = localDateTime;
        this.f66335b = str;
        this.f66336c = list;
        this.d = str2;
        this.f66337e = channel;
        this.f66338f = z;
        this.g = str3;
        this.f66339h = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchasedOrder)) {
            return false;
        }
        PurchasedOrder purchasedOrder = (PurchasedOrder) obj;
        return Intrinsics.c(this.f66334a, purchasedOrder.f66334a) && Intrinsics.c(this.f66335b, purchasedOrder.f66335b) && Intrinsics.c(this.f66336c, purchasedOrder.f66336c) && Intrinsics.c(this.d, purchasedOrder.d) && this.f66337e == purchasedOrder.f66337e && this.f66338f == purchasedOrder.f66338f && Intrinsics.c(this.g, purchasedOrder.g) && this.f66339h == purchasedOrder.f66339h;
    }

    public final int hashCode() {
        int iB = fc.b(n00.a(fc.b(this.f66334a.hashCode() * 31, 31, this.f66335b), 31, this.f66336c), 31, this.d);
        Channel channel = this.f66337e;
        int iB2 = o60.b((iB + (channel == null ? 0 : channel.hashCode())) * 31, 31, this.f66338f);
        String str = this.g;
        return Boolean.hashCode(this.f66339h) + ((iB2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PurchasedOrder(purchaseUtcDate=");
        sb.append(this.f66334a);
        sb.append(", amountWithVat=");
        sb.append(this.f66335b);
        sb.append(", transactions=");
        o60.B(", identifier=", this.d, ", channel=", sb, this.f66336c);
        sb.append(this.f66337e);
        sb.append(", isOngoing=");
        sb.append(this.f66338f);
        sb.append(", locationId=");
        sb.append(this.g);
        sb.append(", isOrderReturnEnabled=");
        sb.append(this.f66339h);
        sb.append(")");
        return sb.toString();
    }
}
