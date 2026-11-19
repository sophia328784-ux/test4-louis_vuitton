package com.vuitton.android.data.dto.spotlight;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "productSku", "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;", "detail", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SpotlightHotspotContentDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SpotlightHotspotDetailDto f46804b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SpotlightHotspotContentDto> serializer() {
            return SpotlightHotspotContentDto$$serializer.f46805a;
        }
    }

    public /* synthetic */ SpotlightHotspotContentDto(int i2, String str, SpotlightHotspotDetailDto spotlightHotspotDetailDto, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46803a = null;
        } else {
            this.f46803a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46804b = null;
        } else {
            this.f46804b = spotlightHotspotDetailDto;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightHotspotContentDto)) {
            return false;
        }
        SpotlightHotspotContentDto spotlightHotspotContentDto = (SpotlightHotspotContentDto) obj;
        String str = spotlightHotspotContentDto.f46803a;
        String str2 = this.f46803a;
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
        return zC && Intrinsics.c(this.f46804b, spotlightHotspotContentDto.f46804b);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f46803a;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int i2 = iHashCode * 31;
        SpotlightHotspotDetailDto spotlightHotspotDetailDto = this.f46804b;
        return i2 + (spotlightHotspotDetailDto != null ? spotlightHotspotDetailDto.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f46803a;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        return "SpotlightHotspotContentDto(productSku=" + str + ", detail=" + this.f46804b + ")";
    }

    public SpotlightHotspotContentDto(String str, SpotlightHotspotDetailDto spotlightHotspotDetailDto, DefaultConstructorMarker defaultConstructorMarker) {
        this.f46803a = str;
        this.f46804b = spotlightHotspotDetailDto;
    }

    public /* synthetic */ SpotlightHotspotContentDto(String str, SpotlightHotspotDetailDto spotlightHotspotDetailDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : spotlightHotspotDetailDto, null);
    }
}
