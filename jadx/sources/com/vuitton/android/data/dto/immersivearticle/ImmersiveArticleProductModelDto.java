package com.vuitton.android.data.dto.immersivearticle;

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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto;", "", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleProductModelDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetDto f45885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45886b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleProductModelDto> serializer() {
            return ImmersiveArticleProductModelDto$$serializer.f45887a;
        }
    }

    public /* synthetic */ ImmersiveArticleProductModelDto(int i2, AssetDto assetDto, String str, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (2 != (i2 & 2)) {
            PluginExceptionsKt.b(i2, 2, ImmersiveArticleProductModelDto$$serializer.f45887a.a());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45885a = null;
        } else {
            this.f45885a = assetDto;
        }
        this.f45886b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductModelDto)) {
            return false;
        }
        ImmersiveArticleProductModelDto immersiveArticleProductModelDto = (ImmersiveArticleProductModelDto) obj;
        if (!Intrinsics.c(this.f45885a, immersiveArticleProductModelDto.f45885a)) {
            return false;
        }
        String str = immersiveArticleProductModelDto.f45886b;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f45886b, str);
    }

    public final int hashCode() {
        AssetDto assetDto = this.f45885a;
        int iHashCode = assetDto == null ? 0 : assetDto.hashCode();
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f45886b.hashCode() + (iHashCode * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return "ImmersiveArticleProductModelDto(asset=" + this.f45885a + ", sku=" + this.f45886b + ")";
    }

    public ImmersiveArticleProductModelDto(AssetDto assetDto, String str, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        this.f45885a = assetDto;
        this.f45886b = str;
    }

    public /* synthetic */ ImmersiveArticleProductModelDto(AssetDto assetDto, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : assetDto, str, null);
    }
}
