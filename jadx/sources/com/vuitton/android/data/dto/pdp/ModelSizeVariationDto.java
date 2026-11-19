package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.dd0;
import defpackage.fc;
import defpackage.n00;
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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fB]\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "", "name", "mediaUrl", "", "Lcom/vuitton/android/data/dto/pdp/WearingDto;", "wearings", "Lcom/vuitton/android/data/dto/pdp/DimensionsDto;", "dimensions", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ModelSizeVariationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(3)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46225c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DimensionsDto f46227f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ModelSizeVariationDto> serializer() {
            return ModelSizeVariationDto$$serializer.f46228a;
        }
    }

    public /* synthetic */ ModelSizeVariationDto(int i2, String str, String str2, String str3, String str4, List list, DimensionsDto dimensionsDto, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (53 != (i2 & 53)) {
            PluginExceptionsKt.b(i2, 53, ModelSizeVariationDto$$serializer.f46228a.getF19838b());
            throw null;
        }
        this.f46223a = str;
        if ((i2 & 2) == 0) {
            this.f46224b = null;
        } else {
            this.f46224b = str2;
        }
        this.f46225c = str3;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.f46226e = list;
        this.f46227f = dimensionsDto;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0023  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ModelSizeVariationDto)) {
            return false;
        }
        ModelSizeVariationDto modelSizeVariationDto = (ModelSizeVariationDto) obj;
        String str = modelSizeVariationDto.f46223a;
        SkuId.Companion companion = SkuId.INSTANCE;
        if (!Intrinsics.c(this.f46223a, str)) {
            return false;
        }
        String str2 = modelSizeVariationDto.f46224b;
        String str3 = this.f46224b;
        if (str3 == null) {
            if (str2 == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str2 == null) {
            zC = false;
        } else {
            ProductId.Companion companion2 = ProductId.INSTANCE;
            zC = Intrinsics.c(str3, str2);
        }
        return zC && Intrinsics.c(this.f46225c, modelSizeVariationDto.f46225c) && Intrinsics.c(this.d, modelSizeVariationDto.d) && Intrinsics.c(this.f46226e, modelSizeVariationDto.f46226e) && Intrinsics.c(this.f46227f, modelSizeVariationDto.f46227f);
    }

    public final int hashCode() {
        int iHashCode;
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode2 = this.f46223a.hashCode() * 31;
        String str = this.f46224b;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductId.Companion companion2 = ProductId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int iB = fc.b((iHashCode2 + iHashCode) * 31, 31, this.f46225c);
        String str2 = this.d;
        return this.f46227f.hashCode() + n00.a((iB + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.f46226e);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        String str = this.f46224b;
        if (str == null) {
            str = "null";
        } else {
            ProductId.Companion companion2 = ProductId.INSTANCE;
        }
        StringBuilder sbS = fc.s("ModelSizeVariationDto(skuId=", this.f46223a, ", productId=", str, ", name=");
        cj.C(sbS, this.f46225c, ", mediaUrl=", this.d, ", wearings=");
        sbS.append(this.f46226e);
        sbS.append(", dimensions=");
        sbS.append(this.f46227f);
        sbS.append(")");
        return sbS.toString();
    }

    public ModelSizeVariationDto(String str, String str2, String str3, String str4, List list, DimensionsDto dimensionsDto, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str3.getClass();
        list.getClass();
        dimensionsDto.getClass();
        this.f46223a = str;
        this.f46224b = str2;
        this.f46225c = str3;
        this.d = str4;
        this.f46226e = list;
        this.f46227f = dimensionsDto;
    }

    public /* synthetic */ ModelSizeVariationDto(String str, String str2, String str3, String str4, List list, DimensionsDto dimensionsDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, str3, (i2 & 8) != 0 ? null : str4, list, dimensionsDto, null);
    }
}
