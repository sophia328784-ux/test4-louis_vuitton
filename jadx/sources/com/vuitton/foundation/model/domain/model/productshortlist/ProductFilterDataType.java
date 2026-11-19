package com.vuitton.foundation.model.domain.model.productshortlist;

import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;", "", "Range", "Simple", "Unknown", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Unknown;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ProductFilterDataType {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;", "Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;", "totalRange", "selectedRange", "", "stepValue", "", "unit", "<init>", "(Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;ILjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Range extends ProductFilterDataType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RangeType f68104a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final RangeType f68105b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f68106c;
        public final String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Range(RangeType rangeType, RangeType rangeType2, int i2, String str) {
            super(null);
            rangeType.getClass();
            str.getClass();
            this.f68104a = rangeType;
            this.f68105b = rangeType2;
            this.f68106c = i2;
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
            return Intrinsics.c(this.f68104a, range.f68104a) && Intrinsics.c(this.f68105b, range.f68105b) && this.f68106c == range.f68106c && Intrinsics.c(this.d, range.d);
        }

        public final int hashCode() {
            int iHashCode = this.f68104a.hashCode() * 31;
            RangeType rangeType = this.f68105b;
            return this.d.hashCode() + tr.b(this.f68106c, (iHashCode + (rangeType == null ? 0 : rangeType.hashCode())) * 31, 31);
        }

        public final String toString() {
            return "Range(totalRange=" + this.f68104a + ", selectedRange=" + this.f68105b + ", stepValue=" + this.f68106c + ", unit=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;", "", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;", "values", "", "multiSelect", "", "clearAllFiltersId", "<init>", "(Ljava/util/List;ZLjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Simple extends ProductFilterDataType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f68107a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f68108b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f68109c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Simple(List<ProductFilterValue> list, boolean z, String str) {
            super(null);
            list.getClass();
            str.getClass();
            this.f68107a = list;
            this.f68108b = z;
            this.f68109c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Simple)) {
                return false;
            }
            Simple simple = (Simple) obj;
            return Intrinsics.c(this.f68107a, simple.f68107a) && this.f68108b == simple.f68108b && Intrinsics.c(this.f68109c, simple.f68109c);
        }

        public final int hashCode() {
            return this.f68109c.hashCode() + o60.b(this.f68107a.hashCode() * 31, 31, this.f68108b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Simple(values=");
            sb.append(this.f68107a);
            sb.append(", multiSelect=");
            sb.append(this.f68108b);
            sb.append(", clearAllFiltersId=");
            return n00.r(this.f68109c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Unknown;", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Unknown extends ProductFilterDataType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Unknown f68110a = new Unknown(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Unknown);
        }

        public final int hashCode() {
            return 1498412453;
        }

        public final String toString() {
            return "Unknown";
        }
    }

    public ProductFilterDataType(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
