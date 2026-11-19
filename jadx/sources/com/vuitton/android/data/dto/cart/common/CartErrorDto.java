package com.vuitton.android.data.dto.cart.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.fj;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBC\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;", "", "Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;", "errorCode", "", "message", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "scope", "Lkotlinx/serialization/json/JsonElement;", "details", "<init>", "(Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CartErrorDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45079e = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(5)), null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartErrorCodeDto f45080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45082c;
    public final JsonElement d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/common/CartErrorDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartErrorDto> serializer() {
            return CartErrorDto$$serializer.f45083a;
        }
    }

    public /* synthetic */ CartErrorDto(int i2, CartErrorCodeDto cartErrorCodeDto, String str, String str2, JsonElement jsonElement, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45080a = null;
        } else {
            this.f45080a = cartErrorCodeDto;
        }
        if ((i2 & 2) == 0) {
            this.f45081b = null;
        } else {
            this.f45081b = str;
        }
        if ((i2 & 4) == 0) {
            this.f45082c = null;
        } else {
            this.f45082c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = jsonElement;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0028  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartErrorDto)) {
            return false;
        }
        CartErrorDto cartErrorDto = (CartErrorDto) obj;
        if (this.f45080a != cartErrorDto.f45080a || !Intrinsics.c(this.f45081b, cartErrorDto.f45081b)) {
            return false;
        }
        String str = cartErrorDto.f45082c;
        String str2 = this.f45082c;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        return zC && Intrinsics.c(this.d, cartErrorDto.d);
    }

    public final int hashCode() {
        int iHashCode;
        CartErrorCodeDto cartErrorCodeDto = this.f45080a;
        int iHashCode2 = (cartErrorCodeDto == null ? 0 : cartErrorCodeDto.hashCode()) * 31;
        String str = this.f45081b;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45082c;
        if (str2 == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str2.hashCode();
        }
        int i2 = (iHashCode3 + iHashCode) * 31;
        JsonElement jsonElement = this.d;
        return i2 + (jsonElement != null ? jsonElement.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f45082c;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        return "CartErrorDto(errorCode=" + this.f45080a + ", message=" + this.f45081b + ", scope=" + str + ", details=" + this.d + ")";
    }

    public CartErrorDto(CartErrorCodeDto cartErrorCodeDto, String str, String str2, JsonElement jsonElement, DefaultConstructorMarker defaultConstructorMarker) {
        this.f45080a = cartErrorCodeDto;
        this.f45081b = str;
        this.f45082c = str2;
        this.d = jsonElement;
    }

    public /* synthetic */ CartErrorDto(CartErrorCodeDto cartErrorCodeDto, String str, String str2, JsonElement jsonElement, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : cartErrorCodeDto, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : jsonElement, null);
    }
}
