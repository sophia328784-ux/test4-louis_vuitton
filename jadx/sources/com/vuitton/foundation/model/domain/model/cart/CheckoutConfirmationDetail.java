package com.vuitton.foundation.model.domain.model.cart;

import com.vuitton.foundation.model.domain.model.account.orders.Timeline;
import com.vuitton.foundation.model.domain.model.profile.Address;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b\u0012\u0006\u0010\u0018\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;", "", "", "orderId", "cartId", "email", "Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;", "shippingMethod", "Lcom/vuitton/foundation/model/domain/model/profile/Address;", "deliveryAddress", "billingAddress", "", "Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;", "items", "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;", "cartPriceInfo", "", "shoppingBag", "giftMessage", "paymentMethod", "Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;", "timeline", "Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;", "perfumeSamples", "isClickAndCollect", "displayName", "displayDeliveryAddress", "displayBillingAddress", "cid", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;Lcom/vuitton/foundation/model/domain/model/profile/Address;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CheckoutConfirmationDetail {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66932c;
    public final ShippingMethod d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Address f66933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Address f66934f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CartPriceInfo f66935h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f66936i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66937j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66938k;
    public final Timeline l;
    public final List m;
    public final boolean n;
    public final String o;
    public final List p;
    public final List q;
    public final String r;

    public CheckoutConfirmationDetail(String str, String str2, String str3, ShippingMethod shippingMethod, Address address, Address address2, List<CheckoutItem> list, CartPriceInfo cartPriceInfo, boolean z, String str4, String str5, Timeline timeline, List<PerfumeSample> list2, boolean z2, String str6, List<String> list3, List<String> list4, String str7) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        shippingMethod.getClass();
        address.getClass();
        address2.getClass();
        list.getClass();
        cartPriceInfo.getClass();
        str5.getClass();
        timeline.getClass();
        list2.getClass();
        str6.getClass();
        list3.getClass();
        list4.getClass();
        this.f66930a = str;
        this.f66931b = str2;
        this.f66932c = str3;
        this.d = shippingMethod;
        this.f66933e = address;
        this.f66934f = address2;
        this.g = list;
        this.f66935h = cartPriceInfo;
        this.f66936i = z;
        this.f66937j = str4;
        this.f66938k = str5;
        this.l = timeline;
        this.m = list2;
        this.n = z2;
        this.o = str6;
        this.p = list3;
        this.q = list4;
        this.r = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutConfirmationDetail)) {
            return false;
        }
        CheckoutConfirmationDetail checkoutConfirmationDetail = (CheckoutConfirmationDetail) obj;
        return Intrinsics.c(this.f66930a, checkoutConfirmationDetail.f66930a) && Intrinsics.c(this.f66931b, checkoutConfirmationDetail.f66931b) && Intrinsics.c(this.f66932c, checkoutConfirmationDetail.f66932c) && Intrinsics.c(this.d, checkoutConfirmationDetail.d) && Intrinsics.c(this.f66933e, checkoutConfirmationDetail.f66933e) && Intrinsics.c(this.f66934f, checkoutConfirmationDetail.f66934f) && Intrinsics.c(this.g, checkoutConfirmationDetail.g) && Intrinsics.c(this.f66935h, checkoutConfirmationDetail.f66935h) && this.f66936i == checkoutConfirmationDetail.f66936i && Intrinsics.c(this.f66937j, checkoutConfirmationDetail.f66937j) && Intrinsics.c(this.f66938k, checkoutConfirmationDetail.f66938k) && Intrinsics.c(this.l, checkoutConfirmationDetail.l) && Intrinsics.c(this.m, checkoutConfirmationDetail.m) && this.n == checkoutConfirmationDetail.n && Intrinsics.c(this.o, checkoutConfirmationDetail.o) && Intrinsics.c(this.p, checkoutConfirmationDetail.p) && Intrinsics.c(this.q, checkoutConfirmationDetail.q) && Intrinsics.c(this.r, checkoutConfirmationDetail.r);
    }

    public final int hashCode() {
        int iB = o60.b((this.f66935h.hashCode() + n00.a((this.f66934f.hashCode() + ((this.f66933e.hashCode() + ((this.d.hashCode() + fc.b(fc.b(this.f66930a.hashCode() * 31, 31, this.f66931b), 31, this.f66932c)) * 31)) * 31)) * 31, 31, this.g)) * 31, 31, this.f66936i);
        String str = this.f66937j;
        int iA = n00.a(n00.a(fc.b(o60.b(n00.a((this.l.hashCode() + fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f66938k)) * 31, 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q);
        String str2 = this.r;
        return iA + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CheckoutConfirmationDetail(orderId=", this.f66930a, ", cartId=", this.f66931b, ", email=");
        sbS.append(this.f66932c);
        sbS.append(", shippingMethod=");
        sbS.append(this.d);
        sbS.append(", deliveryAddress=");
        sbS.append(this.f66933e);
        sbS.append(", billingAddress=");
        sbS.append(this.f66934f);
        sbS.append(", items=");
        sbS.append(this.g);
        sbS.append(", cartPriceInfo=");
        sbS.append(this.f66935h);
        sbS.append(", shoppingBag=");
        cj.A(", giftMessage=", this.f66937j, ", paymentMethod=", sbS, this.f66936i);
        sbS.append(this.f66938k);
        sbS.append(", timeline=");
        sbS.append(this.l);
        sbS.append(", perfumeSamples=");
        sbS.append(this.m);
        sbS.append(", isClickAndCollect=");
        sbS.append(this.n);
        sbS.append(", displayName=");
        d21.z(this.o, ", displayDeliveryAddress=", ", displayBillingAddress=", sbS, this.p);
        sbS.append(this.q);
        sbS.append(", cid=");
        sbS.append(this.r);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ CheckoutConfirmationDetail(String str, String str2, String str3, ShippingMethod shippingMethod, Address address, Address address2, List list, CartPriceInfo cartPriceInfo, boolean z, String str4, String str5, Timeline timeline, List list2, boolean z2, String str6, List list3, List list4, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, shippingMethod, address, address2, list, cartPriceInfo, z, str4, str5, timeline, list2, z2, (i2 & 16384) != 0 ? "" : str6, list3, list4, str7);
    }
}
