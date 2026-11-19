package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "name", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceProductDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageDto f44945c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceProductDto> serializer() {
            return CareServiceProductDto$$serializer.f44946a;
        }
    }

    public /* synthetic */ CareServiceProductDto(int i2, String str, String str2, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, CareServiceProductDto$$serializer.f44946a.getF19850b());
            throw null;
        }
        this.f44943a = str;
        this.f44944b = str2;
        if ((i2 & 4) == 0) {
            this.f44945c = null;
        } else {
            this.f44945c = assetImageDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceProductDto)) {
            return false;
        }
        CareServiceProductDto careServiceProductDto = (CareServiceProductDto) obj;
        String str = careServiceProductDto.f44943a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f44943a, str) && Intrinsics.c(this.f44944b, careServiceProductDto.f44944b) && Intrinsics.c(this.f44945c, careServiceProductDto.f44945c);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(this.f44943a.hashCode() * 31, 31, this.f44944b);
        AssetImageDto assetImageDto = this.f44945c;
        return iB + (assetImageDto == null ? 0 : assetImageDto.hashCode());
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CareServiceProductDto(sku=", this.f44943a, ", name=", this.f44944b, ", image=");
        sbS.append(this.f44945c);
        sbS.append(")");
        return sbS.toString();
    }

    public CareServiceProductDto(String str, String str2, AssetImageDto assetImageDto, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f44943a = str;
        this.f44944b = str2;
        this.f44945c = assetImageDto;
    }

    public /* synthetic */ CareServiceProductDto(String str, String str2, AssetImageDto assetImageDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : assetImageDto, null);
    }
}
