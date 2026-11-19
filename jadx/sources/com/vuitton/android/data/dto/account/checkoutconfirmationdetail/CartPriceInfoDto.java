package com.vuitton.android.data.dto.account.checkoutconfirmationdetail;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.CartPriceDto;
import defpackage.fj;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nBI\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;", "", "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;", "shippingAmount", "totalAmount", "totalTaxIncludedAmount", "", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto;", "allTaxes", "<init>", "(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CartPriceInfoDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f44287e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(9))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartPriceDto f44288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartPriceDto f44289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartPriceDto f44290c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartPriceInfoDto> serializer() {
            return CartPriceInfoDto$$serializer.f44291a;
        }
    }

    public /* synthetic */ CartPriceInfoDto(int i2, CartPriceDto cartPriceDto, CartPriceDto cartPriceDto2, CartPriceDto cartPriceDto3, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, CartPriceInfoDto$$serializer.f44291a.getF19838b());
            throw null;
        }
        this.f44288a = cartPriceDto;
        this.f44289b = cartPriceDto2;
        this.f44290c = cartPriceDto3;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartPriceInfoDto)) {
            return false;
        }
        CartPriceInfoDto cartPriceInfoDto = (CartPriceInfoDto) obj;
        return Intrinsics.c(this.f44288a, cartPriceInfoDto.f44288a) && Intrinsics.c(this.f44289b, cartPriceInfoDto.f44289b) && Intrinsics.c(this.f44290c, cartPriceInfoDto.f44290c) && Intrinsics.c(this.d, cartPriceInfoDto.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f44290c.hashCode() + ((this.f44289b.hashCode() + (this.f44288a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CartPriceInfoDto(shippingAmount=" + this.f44288a + ", totalAmount=" + this.f44289b + ", totalTaxIncludedAmount=" + this.f44290c + ", allTaxes=" + this.d + ")";
    }

    public CartPriceInfoDto(CartPriceDto cartPriceDto, CartPriceDto cartPriceDto2, CartPriceDto cartPriceDto3, List<TaxInfoDto> list) {
        cartPriceDto.getClass();
        cartPriceDto2.getClass();
        cartPriceDto3.getClass();
        list.getClass();
        this.f44288a = cartPriceDto;
        this.f44289b = cartPriceDto2;
        this.f44290c = cartPriceDto3;
        this.d = list;
    }
}
