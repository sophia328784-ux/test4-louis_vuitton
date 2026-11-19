package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.fj;
import defpackage.tr;
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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u0019Bq\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0013\u0010\u0014By\b\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0013\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartDto;", "", "", "cartIdentifier", "", "itemCount", "", "Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;", "items", "Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;", "priceInformation", "giftMessage", "", "blankCard", "Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;", "shoppingBag", "Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;", "samples", "displayTax", "<init>", "(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;Ljava/lang/Boolean;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;ILjava/util/List;Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CartDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Lazy[] f44976j = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(3)), null, null, null, null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f44978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f44979c;
    public final CartPriceInformationDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f44981f;
    public final ShoppingBagDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CartSampleDto f44982h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f44983i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartDto> serializer() {
            return CartDto$$serializer.f44984a;
        }
    }

    public /* synthetic */ CartDto(int i2, String str, int i3, List list, CartPriceInformationDto cartPriceInformationDto, String str2, Boolean bool, ShoppingBagDto shoppingBagDto, CartSampleDto cartSampleDto, Boolean bool2, SerializationConstructorMarker serializationConstructorMarker) {
        if (66 != (i2 & 66)) {
            PluginExceptionsKt.b(i2, 66, CartDto$$serializer.f44984a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44977a = null;
        } else {
            this.f44977a = str;
        }
        this.f44978b = i3;
        if ((i2 & 4) == 0) {
            this.f44979c = null;
        } else {
            this.f44979c = list;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = cartPriceInformationDto;
        }
        if ((i2 & 16) == 0) {
            this.f44980e = null;
        } else {
            this.f44980e = str2;
        }
        if ((i2 & 32) == 0) {
            this.f44981f = null;
        } else {
            this.f44981f = bool;
        }
        this.g = shoppingBagDto;
        if ((i2 & 128) == 0) {
            this.f44982h = null;
        } else {
            this.f44982h = cartSampleDto;
        }
        if ((i2 & 256) == 0) {
            this.f44983i = null;
        } else {
            this.f44983i = bool2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartDto)) {
            return false;
        }
        CartDto cartDto = (CartDto) obj;
        return Intrinsics.c(this.f44977a, cartDto.f44977a) && this.f44978b == cartDto.f44978b && Intrinsics.c(this.f44979c, cartDto.f44979c) && Intrinsics.c(this.d, cartDto.d) && Intrinsics.c(this.f44980e, cartDto.f44980e) && Intrinsics.c(this.f44981f, cartDto.f44981f) && Intrinsics.c(this.g, cartDto.g) && Intrinsics.c(this.f44982h, cartDto.f44982h) && Intrinsics.c(this.f44983i, cartDto.f44983i);
    }

    public final int hashCode() {
        String str = this.f44977a;
        int iB = tr.b(this.f44978b, (str == null ? 0 : str.hashCode()) * 31, 31);
        List list = this.f44979c;
        int iHashCode = (iB + (list == null ? 0 : list.hashCode())) * 31;
        CartPriceInformationDto cartPriceInformationDto = this.d;
        int iHashCode2 = (iHashCode + (cartPriceInformationDto == null ? 0 : cartPriceInformationDto.hashCode())) * 31;
        String str2 = this.f44980e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.f44981f;
        int iHashCode4 = (this.g.hashCode() + ((iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31)) * 31;
        CartSampleDto cartSampleDto = this.f44982h;
        int iHashCode5 = (iHashCode4 + (cartSampleDto == null ? 0 : cartSampleDto.hashCode())) * 31;
        Boolean bool2 = this.f44983i;
        return iHashCode5 + (bool2 != null ? bool2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbR = fc.r(this.f44978b, "CartDto(cartIdentifier=", this.f44977a, ", itemCount=", ", items=");
        sbR.append(this.f44979c);
        sbR.append(", priceInformation=");
        sbR.append(this.d);
        sbR.append(", giftMessage=");
        sbR.append(this.f44980e);
        sbR.append(", blankCard=");
        sbR.append(this.f44981f);
        sbR.append(", shoppingBag=");
        sbR.append(this.g);
        sbR.append(", samples=");
        sbR.append(this.f44982h);
        sbR.append(", displayTax=");
        sbR.append(this.f44983i);
        sbR.append(")");
        return sbR.toString();
    }

    public CartDto(String str, int i2, List<CartItemDto> list, CartPriceInformationDto cartPriceInformationDto, String str2, Boolean bool, ShoppingBagDto shoppingBagDto, CartSampleDto cartSampleDto, Boolean bool2) {
        shoppingBagDto.getClass();
        this.f44977a = str;
        this.f44978b = i2;
        this.f44979c = list;
        this.d = cartPriceInformationDto;
        this.f44980e = str2;
        this.f44981f = bool;
        this.g = shoppingBagDto;
        this.f44982h = cartSampleDto;
        this.f44983i = bool2;
    }

    public /* synthetic */ CartDto(String str, int i2, List list, CartPriceInformationDto cartPriceInformationDto, String str2, Boolean bool, ShoppingBagDto shoppingBagDto, CartSampleDto cartSampleDto, Boolean bool2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, i2, (i3 & 4) != 0 ? null : list, (i3 & 8) != 0 ? null : cartPriceInformationDto, (i3 & 16) != 0 ? null : str2, (i3 & 32) != 0 ? null : bool, shoppingBagDto, (i3 & 128) != 0 ? null : cartSampleDto, (i3 & 256) != 0 ? null : bool2);
    }
}
