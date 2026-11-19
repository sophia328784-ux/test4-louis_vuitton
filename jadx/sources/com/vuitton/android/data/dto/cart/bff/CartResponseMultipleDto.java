package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.common.CartErrorDto;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;", "", "Lcom/vuitton/android/data/dto/cart/bff/CartDto;", "cart", "", "Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;", "errors", "<init>", "(Lcom/vuitton/android/data/dto/cart/bff/CartDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/cart/bff/CartDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CartResponseMultipleDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45006c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(10))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartDto f45007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45008b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartResponseMultipleDto> serializer() {
            return CartResponseMultipleDto$$serializer.f45009a;
        }
    }

    public /* synthetic */ CartResponseMultipleDto(int i2, CartDto cartDto, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, CartResponseMultipleDto$$serializer.f45009a.getF19838b());
            throw null;
        }
        this.f45007a = cartDto;
        if ((i2 & 2) == 0) {
            this.f45008b = null;
        } else {
            this.f45008b = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartResponseMultipleDto)) {
            return false;
        }
        CartResponseMultipleDto cartResponseMultipleDto = (CartResponseMultipleDto) obj;
        return Intrinsics.c(this.f45007a, cartResponseMultipleDto.f45007a) && Intrinsics.c(this.f45008b, cartResponseMultipleDto.f45008b);
    }

    public final int hashCode() {
        int iHashCode = this.f45007a.hashCode() * 31;
        List list = this.f45008b;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        return "CartResponseMultipleDto(cart=" + this.f45007a + ", errors=" + this.f45008b + ")";
    }

    public CartResponseMultipleDto(CartDto cartDto, List<CartErrorDto> list) {
        cartDto.getClass();
        this.f45007a = cartDto;
        this.f45008b = list;
    }

    public /* synthetic */ CartResponseMultipleDto(CartDto cartDto, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(cartDto, (i2 & 2) != 0 ? null : list);
    }
}
