package com.vuitton.foundation.model.domain.model.account.orders;

import com.vuitton.foundation.model.domain.model.common.StringResource;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0097\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\b\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\r¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;", "", "", "identifier", "Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;", "timeline", "Lcom/vuitton/foundation/model/domain/model/account/orders/Price;", "priceWithoutVAT", "", "eligibleForExchange", "name", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "", "images", "price", "", "quantity", "color", "size", "isReturned", "eligibleForReturn", "Lcom/vuitton/foundation/model/domain/model/common/StringResource;", "disclaimer", "Lcom/vuitton/foundation/model/domain/model/account/orders/Customization;", "customizations", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/common/StringResource;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TransactionItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Timeline f66349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Price f66350c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66352f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Price f66353h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f66354i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66355j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66356k;
    public final boolean l;
    public final boolean m;
    public final StringResource n;
    public final List o;

    public TransactionItem(String str, Timeline timeline, Price price, boolean z, String str2, String str3, List list, Price price2, int i2, String str4, String str5, boolean z2, boolean z3, StringResource stringResource, List list2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        price.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        price2.getClass();
        this.f66348a = str;
        this.f66349b = timeline;
        this.f66350c = price;
        this.d = z;
        this.f66351e = str2;
        this.f66352f = str3;
        this.g = list;
        this.f66353h = price2;
        this.f66354i = i2;
        this.f66355j = str4;
        this.f66356k = str5;
        this.l = z2;
        this.m = z3;
        this.n = stringResource;
        this.o = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransactionItem)) {
            return false;
        }
        TransactionItem transactionItem = (TransactionItem) obj;
        if (!Intrinsics.c(this.f66348a, transactionItem.f66348a) || !Intrinsics.c(this.f66349b, transactionItem.f66349b) || !Intrinsics.c(this.f66350c, transactionItem.f66350c) || this.d != transactionItem.d || !Intrinsics.c(this.f66351e, transactionItem.f66351e)) {
            return false;
        }
        String str = transactionItem.f66352f;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f66352f, str) && Intrinsics.c(this.g, transactionItem.g) && Intrinsics.c(this.f66353h, transactionItem.f66353h) && this.f66354i == transactionItem.f66354i && Intrinsics.c(this.f66355j, transactionItem.f66355j) && Intrinsics.c(this.f66356k, transactionItem.f66356k) && this.l == transactionItem.l && this.m == transactionItem.m && Intrinsics.c(this.n, transactionItem.n) && Intrinsics.c(this.o, transactionItem.o);
    }

    public final int hashCode() {
        int iHashCode = this.f66348a.hashCode() * 31;
        Timeline timeline = this.f66349b;
        int iB = fc.b(o60.b((this.f66350c.hashCode() + ((iHashCode + (timeline == null ? 0 : timeline.hashCode())) * 31)) * 31, 31, this.d), 31, this.f66351e);
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB2 = tr.b(this.f66354i, (this.f66353h.hashCode() + n00.a(fc.b(iB, 31, this.f66352f), 31, this.g)) * 31, 31);
        String str = this.f66355j;
        int iHashCode2 = (iB2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66356k;
        int iB3 = o60.b(o60.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.l), 31, this.m);
        StringResource stringResource = this.n;
        int iHashCode3 = (iB3 + (stringResource == null ? 0 : stringResource.hashCode())) * 31;
        List list = this.o;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sb = new StringBuilder("TransactionItem(identifier=");
        sb.append(this.f66348a);
        sb.append(", timeline=");
        sb.append(this.f66349b);
        sb.append(", priceWithoutVAT=");
        sb.append(this.f66350c);
        sb.append(", eligibleForExchange=");
        sb.append(this.d);
        sb.append(", name=");
        cj.C(sb, this.f66351e, ", skuId=", this.f66352f, ", images=");
        sb.append(this.g);
        sb.append(", price=");
        sb.append(this.f66353h);
        sb.append(", quantity=");
        sb.append(this.f66354i);
        sb.append(", color=");
        sb.append(this.f66355j);
        sb.append(", size=");
        pq0.A(this.f66356k, ", isReturned=", ", eligibleForReturn=", sb, this.l);
        sb.append(this.m);
        sb.append(", disclaimer=");
        sb.append(this.n);
        sb.append(", customizations=");
        return a.o(sb, this.o, ")");
    }

    public /* synthetic */ TransactionItem(String str, Timeline timeline, Price price, boolean z, String str2, String str3, List list, Price price2, int i2, String str4, String str5, boolean z2, boolean z3, StringResource stringResource, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, timeline, price, (i3 & 8) != 0 ? false : z, str2, str3, list, price2, i2, str4, str5, z2, z3, stringResource, list2, null);
    }
}
