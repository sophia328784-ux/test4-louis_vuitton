package com.vuitton.android.presentation.screen.thankyou.models;

import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.android.presentation.screen.orders.models.TimelineUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\b\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\b\u0012\u0006\u0010\u001b\u001a\u00020\u0013\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;", "", "", "orderId", "cartId", "email", "Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;", "shippingMethod", "", "displayDeliveryAddress", "displayBillingAddress", "shippingCountry", "shippingState", "Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;", "items", "", "itemsQuantity", "Lcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;", "cartPriceInfo", "", "shoppingBag", "giftMessage", "paymentMethod", "Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;", "timeline", "Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;", "perfumeSamples", "isClickAndCollect", "cid", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Ljava/util/List;ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CheckoutConfirmationDetailUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65257c;
    public final ShippingMethodUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f65258e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f65259f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f65260h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f65261i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f65262j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CartPriceInfoUiModel f65263k;
    public final boolean l;
    public final String m;
    public final String n;
    public final TimelineUiModel o;
    public final List p;
    public final boolean q;
    public final String r;

    public CheckoutConfirmationDetailUiModel(String str, String str2, String str3, ShippingMethodUiModel shippingMethodUiModel, List<String> list, List<String> list2, String str4, String str5, List<CheckoutItemUiModel> list3, int i2, CartPriceInfoUiModel cartPriceInfoUiModel, boolean z, String str6, String str7, TimelineUiModel timelineUiModel, List<PerfumeSampleUiModel> list4, boolean z2, String str8) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        shippingMethodUiModel.getClass();
        list.getClass();
        list2.getClass();
        str4.getClass();
        list3.getClass();
        cartPriceInfoUiModel.getClass();
        str7.getClass();
        timelineUiModel.getClass();
        list4.getClass();
        this.f65255a = str;
        this.f65256b = str2;
        this.f65257c = str3;
        this.d = shippingMethodUiModel;
        this.f65258e = list;
        this.f65259f = list2;
        this.g = str4;
        this.f65260h = str5;
        this.f65261i = list3;
        this.f65262j = i2;
        this.f65263k = cartPriceInfoUiModel;
        this.l = z;
        this.m = str6;
        this.n = str7;
        this.o = timelineUiModel;
        this.p = list4;
        this.q = z2;
        this.r = str8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutConfirmationDetailUiModel)) {
            return false;
        }
        CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel = (CheckoutConfirmationDetailUiModel) obj;
        return Intrinsics.c(this.f65255a, checkoutConfirmationDetailUiModel.f65255a) && Intrinsics.c(this.f65256b, checkoutConfirmationDetailUiModel.f65256b) && Intrinsics.c(this.f65257c, checkoutConfirmationDetailUiModel.f65257c) && Intrinsics.c(this.d, checkoutConfirmationDetailUiModel.d) && Intrinsics.c(this.f65258e, checkoutConfirmationDetailUiModel.f65258e) && Intrinsics.c(this.f65259f, checkoutConfirmationDetailUiModel.f65259f) && Intrinsics.c(this.g, checkoutConfirmationDetailUiModel.g) && Intrinsics.c(this.f65260h, checkoutConfirmationDetailUiModel.f65260h) && Intrinsics.c(this.f65261i, checkoutConfirmationDetailUiModel.f65261i) && this.f65262j == checkoutConfirmationDetailUiModel.f65262j && Intrinsics.c(this.f65263k, checkoutConfirmationDetailUiModel.f65263k) && this.l == checkoutConfirmationDetailUiModel.l && Intrinsics.c(this.m, checkoutConfirmationDetailUiModel.m) && Intrinsics.c(this.n, checkoutConfirmationDetailUiModel.n) && Intrinsics.c(this.o, checkoutConfirmationDetailUiModel.o) && Intrinsics.c(this.p, checkoutConfirmationDetailUiModel.p) && this.q == checkoutConfirmationDetailUiModel.q && Intrinsics.c(this.r, checkoutConfirmationDetailUiModel.r);
    }

    public final int hashCode() {
        int iB = fc.b(n00.a(n00.a((this.d.hashCode() + fc.b(fc.b(this.f65255a.hashCode() * 31, 31, this.f65256b), 31, this.f65257c)) * 31, 31, this.f65258e), 31, this.f65259f), 31, this.g);
        String str = this.f65260h;
        int iB2 = o60.b((this.f65263k.hashCode() + tr.b(this.f65262j, n00.a((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f65261i), 31)) * 31, 31, this.l);
        String str2 = this.m;
        int iB3 = o60.b(n00.a((this.o.hashCode() + fc.b((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.n)) * 31, 31, this.p), 31, this.q);
        String str3 = this.r;
        return iB3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CheckoutConfirmationDetailUiModel(orderId=", this.f65255a, ", cartId=", this.f65256b, ", email=");
        sbS.append(this.f65257c);
        sbS.append(", shippingMethod=");
        sbS.append(this.d);
        sbS.append(", displayDeliveryAddress=");
        a.C(sbS, this.f65258e, ", displayBillingAddress=", this.f65259f, ", shippingCountry=");
        cj.C(sbS, this.g, ", shippingState=", this.f65260h, ", items=");
        sbS.append(this.f65261i);
        sbS.append(", itemsQuantity=");
        sbS.append(this.f65262j);
        sbS.append(", cartPriceInfo=");
        sbS.append(this.f65263k);
        sbS.append(", shoppingBag=");
        sbS.append(this.l);
        sbS.append(", giftMessage=");
        cj.C(sbS, this.m, ", paymentMethod=", this.n, ", timeline=");
        sbS.append(this.o);
        sbS.append(", perfumeSamples=");
        sbS.append(this.p);
        sbS.append(", isClickAndCollect=");
        sbS.append(this.q);
        sbS.append(", cid=");
        sbS.append(this.r);
        sbS.append(")");
        return sbS.toString();
    }
}
