package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import defpackage.yp0;
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
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0004\u0003\u0004\u0005\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;", "", "Companion", "Range", "Simple", "UnknownProductFilterDataTypeDto", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = ProductFilterDataTypeDtoSerializer.class)
public abstract class ProductFilterDataTypeDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductFilterDataTypeDto> serializer() {
            return ProductFilterDataTypeDtoSerializer.f46604c;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class UnknownProductFilterDataTypeDto extends ProductFilterDataTypeDto {
        public static final UnknownProductFilterDataTypeDto INSTANCE = new UnknownProductFilterDataTypeDto(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f46603a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(2));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnknownProductFilterDataTypeDto);
        }

        public final int hashCode() {
            return 910181699;
        }

        public final KSerializer<UnknownProductFilterDataTypeDto> serializer() {
            return (KSerializer) f46603a.getF71699b();
        }

        public final String toString() {
            return "UnknownProductFilterDataTypeDto";
        }
    }

    public ProductFilterDataTypeDto(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB=\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;", "", "Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;", "values", "", "multiSelect", "", "clearAllFiltersId", "<init>", "(Ljava/util/List;ZLjava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Simple extends ProductFilterDataTypeDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public static final Lazy[] d = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(1)), null, null};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f46599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f46600b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f46601c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Simple> serializer() {
                return ProductFilterDataTypeDto$Simple$$serializer.f46602a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Simple(int i2, List list, boolean z, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (7 != (i2 & 7)) {
                PluginExceptionsKt.b(i2, 7, ProductFilterDataTypeDto$Simple$$serializer.f46602a.getF19850b());
                throw null;
            }
            this.f46599a = list;
            this.f46600b = z;
            this.f46601c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Simple)) {
                return false;
            }
            Simple simple = (Simple) obj;
            return Intrinsics.c(this.f46599a, simple.f46599a) && this.f46600b == simple.f46600b && Intrinsics.c(this.f46601c, simple.f46601c);
        }

        public final int hashCode() {
            return this.f46601c.hashCode() + o60.b(this.f46599a.hashCode() * 31, 31, this.f46600b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Simple(values=");
            sb.append(this.f46599a);
            sb.append(", multiSelect=");
            sb.append(this.f46600b);
            sb.append(", clearAllFiltersId=");
            return n00.r(this.f46601c, ")", sb);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Simple(List<ProductFilterValueDto> list, boolean z, String str) {
            super(null);
            list.getClass();
            str.getClass();
            this.f46599a = list;
            this.f46600b = z;
            this.f46601c = str;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nBA\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\t\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;", "Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;", "totalRange", "selectedRange", "", "stepValue", "", "unit", "<init>", "(Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;ILjava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/productshort/RangeTypeDto;Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Range extends ProductFilterDataTypeDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RangeTypeDto f46595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final RangeTypeDto f46596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f46597c;
        public final String d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<Range> serializer() {
                return ProductFilterDataTypeDto$Range$$serializer.f46598a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Range(int i2, RangeTypeDto rangeTypeDto, RangeTypeDto rangeTypeDto2, int i3, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (13 != (i2 & 13)) {
                PluginExceptionsKt.b(i2, 13, ProductFilterDataTypeDto$Range$$serializer.f46598a.getF19850b());
                throw null;
            }
            this.f46595a = rangeTypeDto;
            if ((i2 & 2) == 0) {
                this.f46596b = null;
            } else {
                this.f46596b = rangeTypeDto2;
            }
            this.f46597c = i3;
            this.d = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Range)) {
                return false;
            }
            Range range = (Range) obj;
            return Intrinsics.c(this.f46595a, range.f46595a) && Intrinsics.c(this.f46596b, range.f46596b) && this.f46597c == range.f46597c && Intrinsics.c(this.d, range.d);
        }

        public final int hashCode() {
            int iHashCode = this.f46595a.hashCode() * 31;
            RangeTypeDto rangeTypeDto = this.f46596b;
            return this.d.hashCode() + tr.b(this.f46597c, (iHashCode + (rangeTypeDto == null ? 0 : rangeTypeDto.hashCode())) * 31, 31);
        }

        public final String toString() {
            return "Range(totalRange=" + this.f46595a + ", selectedRange=" + this.f46596b + ", stepValue=" + this.f46597c + ", unit=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Range(RangeTypeDto rangeTypeDto, RangeTypeDto rangeTypeDto2, int i2, String str) {
            super(null);
            rangeTypeDto.getClass();
            str.getClass();
            this.f46595a = rangeTypeDto;
            this.f46596b = rangeTypeDto2;
            this.f46597c = i2;
            this.d = str;
        }

        public /* synthetic */ Range(RangeTypeDto rangeTypeDto, RangeTypeDto rangeTypeDto2, int i2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(rangeTypeDto, (i3 & 2) != 0 ? null : rangeTypeDto2, i2, str);
        }
    }
}
