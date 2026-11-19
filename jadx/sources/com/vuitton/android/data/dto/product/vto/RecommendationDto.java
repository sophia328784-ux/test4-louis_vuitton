package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/RecommendationDto;", "", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;", "product", "", "description", "Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;", "tryOnProduct", "<init>", "(Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/producttiny/ProductTinyDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class RecommendationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductTinyDto f46540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TryOnProductDto f46542c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/RecommendationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/RecommendationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RecommendationDto> serializer() {
            return RecommendationDto$$serializer.f46543a;
        }
    }

    public /* synthetic */ RecommendationDto(int i2, ProductTinyDto productTinyDto, String str, TryOnProductDto tryOnProductDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, RecommendationDto$$serializer.f46543a.getF19838b());
            throw null;
        }
        this.f46540a = productTinyDto;
        this.f46541b = str;
        if ((i2 & 4) == 0) {
            this.f46542c = null;
        } else {
            this.f46542c = tryOnProductDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecommendationDto)) {
            return false;
        }
        RecommendationDto recommendationDto = (RecommendationDto) obj;
        return Intrinsics.c(this.f46540a, recommendationDto.f46540a) && Intrinsics.c(this.f46541b, recommendationDto.f46541b) && Intrinsics.c(this.f46542c, recommendationDto.f46542c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f46540a.hashCode() * 31, 31, this.f46541b);
        TryOnProductDto tryOnProductDto = this.f46542c;
        return iB + (tryOnProductDto == null ? 0 : tryOnProductDto.hashCode());
    }

    public final String toString() {
        return "RecommendationDto(product=" + this.f46540a + ", description=" + this.f46541b + ", tryOnProduct=" + this.f46542c + ")";
    }

    public RecommendationDto(ProductTinyDto productTinyDto, String str, TryOnProductDto tryOnProductDto) {
        productTinyDto.getClass();
        str.getClass();
        this.f46540a = productTinyDto;
        this.f46541b = str;
        this.f46542c = tryOnProductDto;
    }

    public /* synthetic */ RecommendationDto(ProductTinyDto productTinyDto, String str, TryOnProductDto tryOnProductDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(productTinyDto, str, (i2 & 4) != 0 ? null : tryOnProductDto);
    }
}
