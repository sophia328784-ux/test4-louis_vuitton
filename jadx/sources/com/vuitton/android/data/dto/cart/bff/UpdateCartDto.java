package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBA\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;", "", "", "giftMessage", "", "isBlank", "Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;", "shoppingBag", "Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;", "samples", "<init>", "(Ljava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class UpdateCartDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f45069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShoppingBagDto f45070c;
    public final UpdateCartSampleDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UpdateCartDto> serializer() {
            return UpdateCartDto$$serializer.f45071a;
        }
    }

    public /* synthetic */ UpdateCartDto(int i2, String str, boolean z, ShoppingBagDto shoppingBagDto, UpdateCartSampleDto updateCartSampleDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, UpdateCartDto$$serializer.f45071a.getF19838b());
            throw null;
        }
        this.f45068a = str;
        this.f45069b = z;
        this.f45070c = shoppingBagDto;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = updateCartSampleDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateCartDto)) {
            return false;
        }
        UpdateCartDto updateCartDto = (UpdateCartDto) obj;
        return Intrinsics.c(this.f45068a, updateCartDto.f45068a) && this.f45069b == updateCartDto.f45069b && Intrinsics.c(this.f45070c, updateCartDto.f45070c) && Intrinsics.c(this.d, updateCartDto.d);
    }

    public final int hashCode() {
        int iHashCode = (this.f45070c.hashCode() + o60.b(this.f45068a.hashCode() * 31, 31, this.f45069b)) * 31;
        UpdateCartSampleDto updateCartSampleDto = this.d;
        return iHashCode + (updateCartSampleDto == null ? 0 : updateCartSampleDto.f45073a.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = d21.s("UpdateCartDto(giftMessage=", this.f45068a, ", isBlank=", ", shoppingBag=", this.f45069b);
        sbS.append(this.f45070c);
        sbS.append(", samples=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public UpdateCartDto(String str, boolean z, ShoppingBagDto shoppingBagDto, UpdateCartSampleDto updateCartSampleDto) {
        str.getClass();
        shoppingBagDto.getClass();
        this.f45068a = str;
        this.f45069b = z;
        this.f45070c = shoppingBagDto;
        this.d = updateCartSampleDto;
    }

    public /* synthetic */ UpdateCartDto(String str, boolean z, ShoppingBagDto shoppingBagDto, UpdateCartSampleDto updateCartSampleDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, shoppingBagDto, (i2 & 8) != 0 ? null : updateCartSampleDto);
    }
}
