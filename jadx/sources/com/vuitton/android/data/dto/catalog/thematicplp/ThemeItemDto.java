package com.vuitton.android.data.dto.catalog.thematicplp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto;", "", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "product", "Lcom/vuitton/android/data/dto/common/AssetDto;", "brandContent", "<init>", "(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/AssetDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ThemeItemDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductShortDto f45137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetDto f45138b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ThemeItemDto> serializer() {
            return ThemeItemDto$$serializer.f45139a;
        }
    }

    public /* synthetic */ ThemeItemDto(int i2, ProductShortDto productShortDto, AssetDto assetDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ThemeItemDto$$serializer.f45139a.getF19850b());
            throw null;
        }
        this.f45137a = productShortDto;
        this.f45138b = assetDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeItemDto)) {
            return false;
        }
        ThemeItemDto themeItemDto = (ThemeItemDto) obj;
        return Intrinsics.c(this.f45137a, themeItemDto.f45137a) && Intrinsics.c(this.f45138b, themeItemDto.f45138b);
    }

    public final int hashCode() {
        int iHashCode = this.f45137a.hashCode() * 31;
        AssetDto assetDto = this.f45138b;
        return iHashCode + (assetDto == null ? 0 : assetDto.hashCode());
    }

    public final String toString() {
        return "ThemeItemDto(product=" + this.f45137a + ", brandContent=" + this.f45138b + ")";
    }

    public ThemeItemDto(ProductShortDto productShortDto, AssetDto assetDto) {
        productShortDto.getClass();
        this.f45137a = productShortDto;
        this.f45138b = assetDto;
    }
}
