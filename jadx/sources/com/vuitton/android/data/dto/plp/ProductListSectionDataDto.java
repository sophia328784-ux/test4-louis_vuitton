package com.vuitton.android.data.dto.plp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.editorial.RatioDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import defpackage.d21;
import defpackage.fc;
import defpackage.yp0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \b2\u00020\u0001:\b\t\n\u000b\f\r\u000e\u000f\bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0001\u0007\u0010\u0011\u0012\u0013\u0014\u0015\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "<init>", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "ProductsDto", "ProductHighlightDto", "HalfEditoDto", "ProductSliderDto", "ProductFullscreenDto", "CuratedTextDto", "UnknownSectionDataDto", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public abstract class ProductListSectionDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f46357a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(10));

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductListSectionDataDto> serializer() {
            return (KSerializer) ProductListSectionDataDto.f46357a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class UnknownSectionDataDto extends ProductListSectionDataDto {
        public static final UnknownSectionDataDto INSTANCE = new UnknownSectionDataDto(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f46382b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(17));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnknownSectionDataDto);
        }

        public final int hashCode() {
            return -541683475;
        }

        public final KSerializer<UnknownSectionDataDto> serializer() {
            return (KSerializer) f46382b.getF71699b();
        }

        public final String toString() {
            return "UnknownSectionDataDto";
        }
    }

    public /* synthetic */ ProductListSectionDataDto(int i2, SerializationConstructorMarker serializationConstructorMarker) {
    }

    public ProductListSectionDataDto(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "product", "<init>", "(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ProductSliderDto extends ProductListSectionDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ProductShortDto f46377b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ProductSliderDto> serializer() {
                return ProductListSectionDataDto$ProductSliderDto$$serializer.f46378a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ProductSliderDto(int i2, ProductShortDto productShortDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, ProductListSectionDataDto$ProductSliderDto$$serializer.f46378a.a());
                throw null;
            }
            this.f46377b = productShortDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductSliderDto) && Intrinsics.c(this.f46377b, ((ProductSliderDto) obj).f46377b);
        }

        public final int hashCode() {
            return this.f46377b.hashCode();
        }

        public final String toString() {
            return "ProductSliderDto(product=" + this.f46377b + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductSliderDto(ProductShortDto productShortDto) {
            super(null);
            productShortDto.getClass();
            this.f46377b = productShortDto;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "productList", "<init>", "(Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ProductsDto extends ProductListSectionDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Lazy[] f46379c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(16))};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f46380b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ProductsDto> serializer() {
                return ProductListSectionDataDto$ProductsDto$$serializer.f46381a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ProductsDto(int i2, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, ProductListSectionDataDto$ProductsDto$$serializer.f46381a.a());
                throw null;
            }
            this.f46380b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductsDto) && Intrinsics.c(this.f46380b, ((ProductsDto) obj).f46380b);
        }

        public final int hashCode() {
            return this.f46380b.hashCode();
        }

        public final String toString() {
            return d21.o("ProductsDto(productList=", ")", this.f46380b);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductsDto(List<ProductShortDto> list) {
            super(null);
            list.getClass();
            this.f46380b = list;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0003\u0010\u0011\u000fB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;", "title", "", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "LabelDto", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CuratedTextDto extends ProductListSectionDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LabelDto f46358b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f46359c;
        public final AssetImageDto d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CuratedTextDto> serializer() {
                return ProductListSectionDataDto$CuratedTextDto$$serializer.f46360a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CuratedTextDto(int i2, LabelDto labelDto, String str, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, ProductListSectionDataDto$CuratedTextDto$$serializer.f46360a.a());
                throw null;
            }
            this.f46358b = labelDto;
            this.f46359c = str;
            if ((i2 & 4) == 0) {
                this.d = null;
            } else {
                this.d = assetImageDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CuratedTextDto)) {
                return false;
            }
            CuratedTextDto curatedTextDto = (CuratedTextDto) obj;
            return Intrinsics.c(this.f46358b, curatedTextDto.f46358b) && Intrinsics.c(this.f46359c, curatedTextDto.f46359c) && Intrinsics.c(this.d, curatedTextDto.d);
        }

        public final int hashCode() {
            int iB = fc.b(this.f46358b.hashCode() * 31, 31, this.f46359c);
            AssetImageDto assetImageDto = this.d;
            return iB + (assetImageDto == null ? 0 : assetImageDto.hashCode());
        }

        public final String toString() {
            return "CuratedTextDto(title=" + this.f46358b + ", description=" + this.f46359c + ", image=" + this.d + ")";
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0003\u000e\u000f\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;", "", "", "value", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;", "font", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "FontDto", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        @Serializable
        public static final /* data */ class LabelDto {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final Lazy[] f46361c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(11))};

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f46362a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final FontDto f46363b;

            @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                }

                public final KSerializer<LabelDto> serializer() {
                    return ProductListSectionDataDto$CuratedTextDto$LabelDto$$serializer.f46364a;
                }
            }

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;", "", "Companion", "SMALL", "MEDIUM", "LARGE", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
            @Serializable
            public static final class FontDto {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ FontDto[] $VALUES;
                private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE;

                @SerialName
                public static final FontDto LARGE;

                @SerialName
                public static final FontDto MEDIUM;

                @SerialName
                public static final FontDto SMALL;

                @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final class Companion {
                    public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    }

                    public final KSerializer<FontDto> serializer() {
                        return (KSerializer) FontDto.$cachedSerializer$delegate.getF71699b();
                    }
                }

                static {
                    FontDto fontDto = new FontDto("SMALL", 0);
                    SMALL = fontDto;
                    FontDto fontDto2 = new FontDto("MEDIUM", 1);
                    MEDIUM = fontDto2;
                    FontDto fontDto3 = new FontDto("LARGE", 2);
                    LARGE = fontDto3;
                    FontDto[] fontDtoArr = {fontDto, fontDto2, fontDto3};
                    $VALUES = fontDtoArr;
                    $ENTRIES = EnumEntriesKt.a(fontDtoArr);
                    INSTANCE = new Companion(null);
                    $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(12));
                }

                public static FontDto valueOf(String str) {
                    return (FontDto) Enum.valueOf(FontDto.class, str);
                }

                public static FontDto[] values() {
                    return (FontDto[]) $VALUES.clone();
                }
            }

            public /* synthetic */ LabelDto(int i2, String str, FontDto fontDto, SerializationConstructorMarker serializationConstructorMarker) {
                if (3 != (i2 & 3)) {
                    PluginExceptionsKt.b(i2, 3, ProductListSectionDataDto$CuratedTextDto$LabelDto$$serializer.f46364a.a());
                    throw null;
                }
                this.f46362a = str;
                this.f46363b = fontDto;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof LabelDto)) {
                    return false;
                }
                LabelDto labelDto = (LabelDto) obj;
                return Intrinsics.c(this.f46362a, labelDto.f46362a) && this.f46363b == labelDto.f46363b;
            }

            public final int hashCode() {
                return this.f46363b.hashCode() + (this.f46362a.hashCode() * 31);
            }

            public final String toString() {
                return "LabelDto(value=" + this.f46362a + ", font=" + this.f46363b + ")";
            }

            public LabelDto(String str, FontDto fontDto) {
                str.getClass();
                fontDto.getClass();
                this.f46362a = str;
                this.f46363b = fontDto;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CuratedTextDto(LabelDto labelDto, String str, AssetImageDto assetImageDto) {
            super(null);
            labelDto.getClass();
            str.getClass();
            this.f46358b = labelDto;
            this.f46359c = str;
            this.d = assetImageDto;
        }

        public /* synthetic */ CuratedTextDto(LabelDto labelDto, String str, AssetImageDto assetImageDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(labelDto, str, (i2 & 4) != 0 ? null : assetImageDto);
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "product", "Lcom/vuitton/android/data/dto/common/editorial/RatioDto;", "ratio", "<init>", "(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ProductFullscreenDto extends ProductListSectionDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(15))};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ProductShortDto f46371b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final RatioDto f46372c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ProductFullscreenDto> serializer() {
                return ProductListSectionDataDto$ProductFullscreenDto$$serializer.f46373a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ProductFullscreenDto(int i2, ProductShortDto productShortDto, RatioDto ratioDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, ProductListSectionDataDto$ProductFullscreenDto$$serializer.f46373a.a());
                throw null;
            }
            this.f46371b = productShortDto;
            this.f46372c = ratioDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductFullscreenDto)) {
                return false;
            }
            ProductFullscreenDto productFullscreenDto = (ProductFullscreenDto) obj;
            return Intrinsics.c(this.f46371b, productFullscreenDto.f46371b) && this.f46372c == productFullscreenDto.f46372c;
        }

        public final int hashCode() {
            return this.f46372c.hashCode() + (this.f46371b.hashCode() * 31);
        }

        public final String toString() {
            return "ProductFullscreenDto(product=" + this.f46371b + ", ratio=" + this.f46372c + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductFullscreenDto(ProductShortDto productShortDto, RatioDto ratioDto) {
            super(null);
            productShortDto.getClass();
            ratioDto.getClass();
            this.f46371b = productShortDto;
            this.f46372c = ratioDto;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "product", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "<init>", "(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/AssetDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ProductHighlightDto extends ProductListSectionDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ProductShortDto f46374b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetDto f46375c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ProductHighlightDto> serializer() {
                return ProductListSectionDataDto$ProductHighlightDto$$serializer.f46376a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ProductHighlightDto(int i2, ProductShortDto productShortDto, AssetDto assetDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, ProductListSectionDataDto$ProductHighlightDto$$serializer.f46376a.a());
                throw null;
            }
            this.f46374b = productShortDto;
            this.f46375c = assetDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductHighlightDto)) {
                return false;
            }
            ProductHighlightDto productHighlightDto = (ProductHighlightDto) obj;
            return Intrinsics.c(this.f46374b, productHighlightDto.f46374b) && Intrinsics.c(this.f46375c, productHighlightDto.f46375c);
        }

        public final int hashCode() {
            int iHashCode = this.f46374b.hashCode() * 31;
            AssetDto assetDto = this.f46375c;
            return iHashCode + (assetDto == null ? 0 : assetDto.hashCode());
        }

        public final String toString() {
            return "ProductHighlightDto(product=" + this.f46374b + ", asset=" + this.f46375c + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductHighlightDto(ProductShortDto productShortDto, AssetDto assetDto) {
            super(null);
            productShortDto.getClass();
            this.f46374b = productShortDto;
            this.f46375c = assetDto;
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0003\u0014\u0015\u0013B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rBW\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", "", "title", "surtitle", "description", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;", "alignment", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "product", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/productshort/ProductShortDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "AlignmentDto", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class HalfEditoDto extends ProductListSectionDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Lazy[] f46365h = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(13)), null, null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f46366b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f46367c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AlignmentDto f46368e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AssetDto f46369f;
        public final ProductShortDto g;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;", "", "Companion", "LEFT", "CENTER", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        @Serializable
        public static final class AlignmentDto {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ AlignmentDto[] $VALUES;
            private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

            @SerialName
            public static final AlignmentDto CENTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;

            @SerialName
            public static final AlignmentDto LEFT;

            @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                }

                public final KSerializer<AlignmentDto> serializer() {
                    return (KSerializer) AlignmentDto.$cachedSerializer$delegate.getF71699b();
                }
            }

            static {
                AlignmentDto alignmentDto = new AlignmentDto("LEFT", 0);
                LEFT = alignmentDto;
                AlignmentDto alignmentDto2 = new AlignmentDto("CENTER", 1);
                CENTER = alignmentDto2;
                AlignmentDto[] alignmentDtoArr = {alignmentDto, alignmentDto2};
                $VALUES = alignmentDtoArr;
                $ENTRIES = EnumEntriesKt.a(alignmentDtoArr);
                INSTANCE = new Companion(null);
                $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(14));
            }

            public static AlignmentDto valueOf(String str) {
                return (AlignmentDto) Enum.valueOf(AlignmentDto.class, str);
            }

            public static AlignmentDto[] values() {
                return (AlignmentDto[]) $VALUES.clone();
            }
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<HalfEditoDto> serializer() {
                return ProductListSectionDataDto$HalfEditoDto$$serializer.f46370a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HalfEditoDto(String str, String str2, String str3, AlignmentDto alignmentDto, AssetDto assetDto, ProductShortDto productShortDto) {
            super(null);
            str.getClass();
            str2.getClass();
            str3.getClass();
            alignmentDto.getClass();
            assetDto.getClass();
            productShortDto.getClass();
            this.f46366b = str;
            this.f46367c = str2;
            this.d = str3;
            this.f46368e = alignmentDto;
            this.f46369f = assetDto;
            this.g = productShortDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HalfEditoDto)) {
                return false;
            }
            HalfEditoDto halfEditoDto = (HalfEditoDto) obj;
            return Intrinsics.c(this.f46366b, halfEditoDto.f46366b) && Intrinsics.c(this.f46367c, halfEditoDto.f46367c) && Intrinsics.c(this.d, halfEditoDto.d) && this.f46368e == halfEditoDto.f46368e && Intrinsics.c(this.f46369f, halfEditoDto.f46369f) && Intrinsics.c(this.g, halfEditoDto.g);
        }

        public final int hashCode() {
            return this.g.hashCode() + ((this.f46369f.hashCode() + ((this.f46368e.hashCode() + fc.b(fc.b(this.f46366b.hashCode() * 31, 31, this.f46367c), 31, this.d)) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("HalfEditoDto(title=", this.f46366b, ", surtitle=", this.f46367c, ", description=");
            sbS.append(this.d);
            sbS.append(", alignment=");
            sbS.append(this.f46368e);
            sbS.append(", asset=");
            sbS.append(this.f46369f);
            sbS.append(", product=");
            sbS.append(this.g);
            sbS.append(")");
            return sbS.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ HalfEditoDto(int i2, String str, String str2, String str3, AlignmentDto alignmentDto, AssetDto assetDto, ProductShortDto productShortDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (63 != (i2 & 63)) {
                PluginExceptionsKt.b(i2, 63, ProductListSectionDataDto$HalfEditoDto$$serializer.f46370a.a());
                throw null;
            }
            this.f46366b = str;
            this.f46367c = str2;
            this.d = str3;
            this.f46368e = alignmentDto;
            this.f46369f = assetDto;
            this.g = productShortDto;
        }
    }
}
