package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/SectionEditorialDto;", "", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SectionEditorialDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetDto f46661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46662b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/SectionEditorialDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/SectionEditorialDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SectionEditorialDto> serializer() {
            return SectionEditorialDto$$serializer.f46663a;
        }
    }

    public /* synthetic */ SectionEditorialDto(int i2, AssetDto assetDto, String str, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, SectionEditorialDto$$serializer.f46663a.a());
            throw null;
        }
        this.f46661a = assetDto;
        if ((i2 & 2) == 0) {
            this.f46662b = null;
        } else {
            this.f46662b = str;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0021  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionEditorialDto)) {
            return false;
        }
        SectionEditorialDto sectionEditorialDto = (SectionEditorialDto) obj;
        if (!Intrinsics.c(this.f46661a, sectionEditorialDto.f46661a)) {
            return false;
        }
        String str = sectionEditorialDto.f46662b;
        String str2 = this.f46662b;
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
        return zC;
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2 = this.f46661a.hashCode() * 31;
        String str = this.f46662b;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    public final String toString() {
        String str = this.f46662b;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        return "SectionEditorialDto(asset=" + this.f46661a + ", sku=" + str + ")";
    }

    public SectionEditorialDto(AssetDto assetDto, String str, DefaultConstructorMarker defaultConstructorMarker) {
        assetDto.getClass();
        this.f46661a = assetDto;
        this.f46662b = str;
    }

    public /* synthetic */ SectionEditorialDto(AssetDto assetDto, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(assetDto, (i2 & 2) != 0 ? null : str, null);
    }
}
