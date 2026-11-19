package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;", "", "Range", "Simple", "Unknown", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Range;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Unknown;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ProductFilterDataTypeUiModel {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Range;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;", "totalRange", "selectedRange", "", "stepValue", "", "unit", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;ILjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Range extends ProductFilterDataTypeUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final RangeTypeUiModel f62958a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final RangeTypeUiModel f62959b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f62960c;
        public final String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Range(RangeTypeUiModel rangeTypeUiModel, RangeTypeUiModel rangeTypeUiModel2, int i2, String str) {
            super(null);
            rangeTypeUiModel.getClass();
            str.getClass();
            this.f62958a = rangeTypeUiModel;
            this.f62959b = rangeTypeUiModel2;
            this.f62960c = i2;
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
            return Intrinsics.c(this.f62958a, range.f62958a) && Intrinsics.c(this.f62959b, range.f62959b) && this.f62960c == range.f62960c && Intrinsics.c(this.d, range.d);
        }

        public final int hashCode() {
            int iHashCode = this.f62958a.hashCode() * 31;
            RangeTypeUiModel rangeTypeUiModel = this.f62959b;
            return this.d.hashCode() + tr.b(this.f62960c, (iHashCode + (rangeTypeUiModel == null ? 0 : rangeTypeUiModel.hashCode())) * 31, 31);
        }

        public final String toString() {
            return "Range(totalRange=" + this.f62958a + ", selectedRange=" + this.f62959b + ", stepValue=" + this.f62960c + ", unit=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;", "values", "", "multiSelect", "", "clearAllFiltersId", "<init>", "(Ljava/util/List;ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Simple extends ProductFilterDataTypeUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62961a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f62962b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62963c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Simple(List<ProductFilterValueUiModel> list, boolean z, String str) {
            super(null);
            list.getClass();
            str.getClass();
            this.f62961a = list;
            this.f62962b = z;
            this.f62963c = str;
        }

        public static Simple a(Simple simple, ArrayList arrayList) {
            boolean z = simple.f62962b;
            String str = simple.f62963c;
            simple.getClass();
            str.getClass();
            return new Simple(arrayList, z, str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Simple)) {
                return false;
            }
            Simple simple = (Simple) obj;
            return Intrinsics.c(this.f62961a, simple.f62961a) && this.f62962b == simple.f62962b && Intrinsics.c(this.f62963c, simple.f62963c);
        }

        public final int hashCode() {
            return this.f62963c.hashCode() + o60.b(this.f62961a.hashCode() * 31, 31, this.f62962b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Simple(values=");
            sb.append(this.f62961a);
            sb.append(", multiSelect=");
            sb.append(this.f62962b);
            sb.append(", clearAllFiltersId=");
            return n00.r(this.f62963c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Unknown;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Unknown extends ProductFilterDataTypeUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Unknown f62964a = new Unknown(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Unknown);
        }

        public final int hashCode() {
            return -1689726370;
        }

        public final String toString() {
            return "Unknown";
        }
    }

    public ProductFilterDataTypeUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
