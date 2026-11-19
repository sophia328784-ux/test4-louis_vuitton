package com.vuitton.android.data.dto.account.checkoutconfirmationdetail;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.orders.TimelineDto;
import com.vuitton.android.data.dto.address.AddressDto;
import com.vuitton.android.data.dto.cart.bff.CartSampleItemDto;
import defpackage.cj;
import defpackage.cm;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 %2\u00020\u0001:\u0002&%B½\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b\u0012\u0006\u0010\u0018\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fBã\u0001\b\u0010\u0012\u0006\u0010!\u001a\u00020 \u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000b\u0012\u0006\u0010\u0018\u001a\u00020\u0010\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000b\u0012\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000b\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\b\u0010#\u001a\u0004\u0018\u00010\"¢\u0006\u0004\b\u001e\u0010$¨\u0006'"}, d2 = {"Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;", "", "", "orderId", "cartId", "email", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;", "shippingMethod", "Lcom/vuitton/android/data/dto/address/AddressDto;", "deliveryAddress", "billingAddress", "", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;", "items", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;", "cartPriceInfo", "", "shoppingBag", "giftMessage", "paymentMethod", "Lcom/vuitton/android/data/dto/account/orders/TimelineDto;", "timeline", "Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;", "samples", "isClickAndCollect", "displayName", "displayDeliveryAddress", "displayBillingAddress", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;", "user", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;Lcom/vuitton/android/data/dto/address/AddressDto;Lcom/vuitton/android/data/dto/address/AddressDto;Ljava/util/List;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;Lcom/vuitton/android/data/dto/address/AddressDto;Lcom/vuitton/android/data/dto/address/AddressDto;Ljava/util/List;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CheckoutConfirmationDetailDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44294c;
    public final ShippingMethodDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AddressDto f44295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AddressDto f44296f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CartPriceInfoDto f44297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f44298i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44299j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44300k;
    public final TimelineDto l;
    public final List m;
    public final boolean n;
    public final String o;
    public final List p;
    public final List q;
    public final CheckoutConfirmationUserDataDto r;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CheckoutConfirmationDetailDto> serializer() {
            return CheckoutConfirmationDetailDto$$serializer.f44301a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        s = new Lazy[]{null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new cm(12)), null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new cm(13)), null, null, LazyKt.a(lazyThreadSafetyMode, new cm(14)), LazyKt.a(lazyThreadSafetyMode, new cm(15)), null};
    }

    public /* synthetic */ CheckoutConfirmationDetailDto(int i2, String str, String str2, String str3, ShippingMethodDto shippingMethodDto, AddressDto addressDto, AddressDto addressDto2, List list, CartPriceInfoDto cartPriceInfoDto, boolean z, String str4, String str5, TimelineDto timelineDto, List list2, boolean z2, String str6, List list3, List list4, CheckoutConfirmationUserDataDto checkoutConfirmationUserDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (114171 != (i2 & 114171)) {
            PluginExceptionsKt.b(i2, 114171, CheckoutConfirmationDetailDto$$serializer.f44301a.getF19838b());
            throw null;
        }
        this.f44292a = str;
        this.f44293b = str2;
        if ((i2 & 4) == 0) {
            this.f44294c = null;
        } else {
            this.f44294c = str3;
        }
        this.d = shippingMethodDto;
        this.f44295e = addressDto;
        this.f44296f = addressDto2;
        this.g = list;
        this.f44297h = cartPriceInfoDto;
        this.f44298i = z;
        if ((i2 & 512) == 0) {
            this.f44299j = null;
        } else {
            this.f44299j = str4;
        }
        this.f44300k = str5;
        this.l = timelineDto;
        this.m = list2;
        this.n = z2;
        this.o = (i2 & 16384) == 0 ? "" : str6;
        this.p = list3;
        this.q = list4;
        if ((i2 & 131072) == 0) {
            this.r = null;
        } else {
            this.r = checkoutConfirmationUserDataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutConfirmationDetailDto)) {
            return false;
        }
        CheckoutConfirmationDetailDto checkoutConfirmationDetailDto = (CheckoutConfirmationDetailDto) obj;
        return Intrinsics.c(this.f44292a, checkoutConfirmationDetailDto.f44292a) && Intrinsics.c(this.f44293b, checkoutConfirmationDetailDto.f44293b) && Intrinsics.c(this.f44294c, checkoutConfirmationDetailDto.f44294c) && Intrinsics.c(this.d, checkoutConfirmationDetailDto.d) && Intrinsics.c(this.f44295e, checkoutConfirmationDetailDto.f44295e) && Intrinsics.c(this.f44296f, checkoutConfirmationDetailDto.f44296f) && Intrinsics.c(this.g, checkoutConfirmationDetailDto.g) && Intrinsics.c(this.f44297h, checkoutConfirmationDetailDto.f44297h) && this.f44298i == checkoutConfirmationDetailDto.f44298i && Intrinsics.c(this.f44299j, checkoutConfirmationDetailDto.f44299j) && Intrinsics.c(this.f44300k, checkoutConfirmationDetailDto.f44300k) && Intrinsics.c(this.l, checkoutConfirmationDetailDto.l) && Intrinsics.c(this.m, checkoutConfirmationDetailDto.m) && this.n == checkoutConfirmationDetailDto.n && Intrinsics.c(this.o, checkoutConfirmationDetailDto.o) && Intrinsics.c(this.p, checkoutConfirmationDetailDto.p) && Intrinsics.c(this.q, checkoutConfirmationDetailDto.q) && Intrinsics.c(this.r, checkoutConfirmationDetailDto.r);
    }

    public final int hashCode() {
        int iB = fc.b(this.f44292a.hashCode() * 31, 31, this.f44293b);
        String str = this.f44294c;
        int iB2 = o60.b((this.f44297h.hashCode() + n00.a((this.f44296f.hashCode() + ((this.f44295e.hashCode() + ((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31, 31, this.g)) * 31, 31, this.f44298i);
        String str2 = this.f44299j;
        int iA = n00.a(n00.a(fc.b(o60.b(n00.a((this.l.hashCode() + fc.b((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f44300k)) * 31, 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q);
        CheckoutConfirmationUserDataDto checkoutConfirmationUserDataDto = this.r;
        return iA + (checkoutConfirmationUserDataDto != null ? checkoutConfirmationUserDataDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CheckoutConfirmationDetailDto(orderId=", this.f44292a, ", cartId=", this.f44293b, ", email=");
        sbS.append(this.f44294c);
        sbS.append(", shippingMethod=");
        sbS.append(this.d);
        sbS.append(", deliveryAddress=");
        sbS.append(this.f44295e);
        sbS.append(", billingAddress=");
        sbS.append(this.f44296f);
        sbS.append(", items=");
        sbS.append(this.g);
        sbS.append(", cartPriceInfo=");
        sbS.append(this.f44297h);
        sbS.append(", shoppingBag=");
        cj.A(", giftMessage=", this.f44299j, ", paymentMethod=", sbS, this.f44298i);
        sbS.append(this.f44300k);
        sbS.append(", timeline=");
        sbS.append(this.l);
        sbS.append(", samples=");
        sbS.append(this.m);
        sbS.append(", isClickAndCollect=");
        sbS.append(this.n);
        sbS.append(", displayName=");
        d21.z(this.o, ", displayDeliveryAddress=", ", displayBillingAddress=", sbS, this.p);
        sbS.append(this.q);
        sbS.append(", user=");
        sbS.append(this.r);
        sbS.append(")");
        return sbS.toString();
    }

    public CheckoutConfirmationDetailDto(String str, String str2, String str3, ShippingMethodDto shippingMethodDto, AddressDto addressDto, AddressDto addressDto2, List<CheckoutItemDto> list, CartPriceInfoDto cartPriceInfoDto, boolean z, String str4, String str5, TimelineDto timelineDto, List<CartSampleItemDto> list2, boolean z2, String str6, List<String> list3, List<String> list4, CheckoutConfirmationUserDataDto checkoutConfirmationUserDataDto) {
        str.getClass();
        str2.getClass();
        shippingMethodDto.getClass();
        addressDto.getClass();
        addressDto2.getClass();
        list.getClass();
        cartPriceInfoDto.getClass();
        str5.getClass();
        timelineDto.getClass();
        list2.getClass();
        str6.getClass();
        list3.getClass();
        list4.getClass();
        this.f44292a = str;
        this.f44293b = str2;
        this.f44294c = str3;
        this.d = shippingMethodDto;
        this.f44295e = addressDto;
        this.f44296f = addressDto2;
        this.g = list;
        this.f44297h = cartPriceInfoDto;
        this.f44298i = z;
        this.f44299j = str4;
        this.f44300k = str5;
        this.l = timelineDto;
        this.m = list2;
        this.n = z2;
        this.o = str6;
        this.p = list3;
        this.q = list4;
        this.r = checkoutConfirmationUserDataDto;
    }

    public /* synthetic */ CheckoutConfirmationDetailDto(String str, String str2, String str3, ShippingMethodDto shippingMethodDto, AddressDto addressDto, AddressDto addressDto2, List list, CartPriceInfoDto cartPriceInfoDto, boolean z, String str4, String str5, TimelineDto timelineDto, List list2, boolean z2, String str6, List list3, List list4, CheckoutConfirmationUserDataDto checkoutConfirmationUserDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, shippingMethodDto, addressDto, addressDto2, list, cartPriceInfoDto, z, (i2 & 512) != 0 ? null : str4, str5, timelineDto, list2, z2, (i2 & 16384) != 0 ? "" : str6, list3, list4, (i2 & 131072) != 0 ? null : checkoutConfirmationUserDataDto);
    }
}
