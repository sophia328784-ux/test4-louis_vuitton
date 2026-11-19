package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B-\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0006\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "", "quantity", "<init>", "(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;ILkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ItemQuantityDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f45053b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ItemQuantityDto> serializer() {
            return ItemQuantityDto$$serializer.f45054a;
        }
    }

    public ItemQuantityDto(int i2, String str, int i3, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (2 != (i2 & 2)) {
            PluginExceptionsKt.b(i2, 2, ItemQuantityDto$$serializer.f45054a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            SkuId.INSTANCE.getClass();
            this.f45052a = SkuId.f67932b;
        } else {
            this.f45052a = str;
        }
        this.f45053b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ItemQuantityDto)) {
            return false;
        }
        ItemQuantityDto itemQuantityDto = (ItemQuantityDto) obj;
        String str = itemQuantityDto.f45052a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f45052a, str) && this.f45053b == itemQuantityDto.f45053b;
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return Integer.hashCode(this.f45053b) + (this.f45052a.hashCode() * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return "ItemQuantityDto(skuId=" + this.f45052a + ", quantity=" + this.f45053b + ")";
    }

    public ItemQuantityDto(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        this.f45052a = str;
        this.f45053b = i2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ItemQuantityDto(String str, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i3 & 1) != 0) {
            SkuId.INSTANCE.getClass();
            str = SkuId.f67932b;
        }
        this(str, i2, null);
    }
}
