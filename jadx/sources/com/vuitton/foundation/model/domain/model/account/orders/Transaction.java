package com.vuitton.foundation.model.domain.model.account.orders;

import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;", "", "", "identifier", "shippingGroupId", "Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;", "shippingType", "invoiceLink", "", "Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;", "items", "transactionAmount", "Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;", "delivery", "returnDisclaimer", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Transaction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShippingType f66344c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f66345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66346f;
    public final Delivery g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66347h;

    public Transaction(String str, String str2, ShippingType shippingType, String str3, List<TransactionItem> list, String str4, Delivery delivery, String str5) {
        str.getClass();
        str2.getClass();
        shippingType.getClass();
        list.getClass();
        str4.getClass();
        this.f66342a = str;
        this.f66343b = str2;
        this.f66344c = shippingType;
        this.d = str3;
        this.f66345e = list;
        this.f66346f = str4;
        this.g = delivery;
        this.f66347h = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Transaction)) {
            return false;
        }
        Transaction transaction = (Transaction) obj;
        return Intrinsics.c(this.f66342a, transaction.f66342a) && Intrinsics.c(this.f66343b, transaction.f66343b) && this.f66344c == transaction.f66344c && Intrinsics.c(this.d, transaction.d) && Intrinsics.c(this.f66345e, transaction.f66345e) && Intrinsics.c(this.f66346f, transaction.f66346f) && Intrinsics.c(this.g, transaction.g) && Intrinsics.c(this.f66347h, transaction.f66347h);
    }

    public final int hashCode() {
        int iHashCode = (this.f66344c.hashCode() + fc.b(this.f66342a.hashCode() * 31, 31, this.f66343b)) * 31;
        String str = this.d;
        int iB = fc.b(n00.a((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f66345e), 31, this.f66346f);
        Delivery delivery = this.g;
        int iHashCode2 = (iB + (delivery == null ? 0 : delivery.hashCode())) * 31;
        String str2 = this.f66347h;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Transaction(identifier=", this.f66342a, ", shippingGroupId=", this.f66343b, ", shippingType=");
        sbS.append(this.f66344c);
        sbS.append(", invoiceLink=");
        sbS.append(this.d);
        sbS.append(", items=");
        o60.B(", transactionAmount=", this.f66346f, ", delivery=", sbS, this.f66345e);
        sbS.append(this.g);
        sbS.append(", returnDisclaimer=");
        sbS.append(this.f66347h);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ Transaction(String str, String str2, ShippingType shippingType, String str3, List list, String str4, Delivery delivery, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, shippingType, (i2 & 8) != 0 ? null : str3, list, str4, (i2 & 64) != 0 ? null : delivery, (i2 & 128) != 0 ? null : str5);
    }
}
