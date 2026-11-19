package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;", "", "Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;", "gifting", "Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;", "shoppingBag", "Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;", "packaging", "<init>", "(Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CartContributionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GiftingContributionDto f44970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShoppingBagContributionDto f44971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PackagingContributionDto f44972c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartContributionDto> serializer() {
            return CartContributionDto$$serializer.f44973a;
        }
    }

    public /* synthetic */ CartContributionDto(int i2, GiftingContributionDto giftingContributionDto, ShoppingBagContributionDto shoppingBagContributionDto, PackagingContributionDto packagingContributionDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, CartContributionDto$$serializer.f44973a.a());
            throw null;
        }
        this.f44970a = giftingContributionDto;
        this.f44971b = shoppingBagContributionDto;
        this.f44972c = packagingContributionDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartContributionDto)) {
            return false;
        }
        CartContributionDto cartContributionDto = (CartContributionDto) obj;
        return Intrinsics.c(this.f44970a, cartContributionDto.f44970a) && Intrinsics.c(this.f44971b, cartContributionDto.f44971b) && Intrinsics.c(this.f44972c, cartContributionDto.f44972c);
    }

    public final int hashCode() {
        return this.f44972c.hashCode() + ((this.f44971b.hashCode() + (this.f44970a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "CartContributionDto(gifting=" + this.f44970a + ", shoppingBag=" + this.f44971b + ", packaging=" + this.f44972c + ")";
    }

    public CartContributionDto(GiftingContributionDto giftingContributionDto, ShoppingBagContributionDto shoppingBagContributionDto, PackagingContributionDto packagingContributionDto) {
        giftingContributionDto.getClass();
        shoppingBagContributionDto.getClass();
        packagingContributionDto.getClass();
        this.f44970a = giftingContributionDto;
        this.f44971b = shoppingBagContributionDto;
        this.f44972c = packagingContributionDto;
    }
}
