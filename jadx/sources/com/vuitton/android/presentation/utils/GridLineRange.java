package com.vuitton.android.presentation.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/utils/GridLineRange;", "", "ProductRange", "BrandContentLine", "Lcom/vuitton/android/presentation/utils/GridLineRange$BrandContentLine;", "Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
interface GridLineRange {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/GridLineRange$BrandContentLine;", "Lcom/vuitton/android/presentation/utils/GridLineRange;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BrandContentLine implements GridLineRange {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BrandContentLine f65848a = new BrandContentLine();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BrandContentLine);
        }

        public final int hashCode() {
            return -1445091503;
        }

        public final String toString() {
            return "BrandContentLine";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;", "Lcom/vuitton/android/presentation/utils/GridLineRange;", "Lkotlin/ranges/IntRange;", "range", "<init>", "(Lkotlin/ranges/IntRange;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductRange implements GridLineRange {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IntRange f65849a;

        public ProductRange(IntRange intRange) {
            intRange.getClass();
            this.f65849a = intRange;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductRange) && Intrinsics.c(this.f65849a, ((ProductRange) obj).f65849a);
        }

        public final int hashCode() {
            return this.f65849a.hashCode();
        }

        public final String toString() {
            return "ProductRange(range=" + this.f65849a + ")";
        }
    }
}
