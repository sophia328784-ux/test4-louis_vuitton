package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel;", "", "BrandContentLine", "ProductLine", "Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$BrandContentLine;", "Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
interface GridLineComposeModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$BrandContentLine;", "Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel;", "", "blockIndex", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BrandContentLine implements GridLineComposeModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f62815a;

        public BrandContentLine(int i2) {
            this.f62815a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BrandContentLine) && this.f62815a == ((BrandContentLine) obj).f62815a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f62815a);
        }

        public final String toString() {
            return n00.m(this.f62815a, "BrandContentLine(blockIndex=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;", "Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel;", "", "blockIndex", "", "productIndices", "globalStartIndex", "<init>", "(ILjava/util/List;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductLine implements GridLineComposeModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f62816a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62817b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f62818c;

        public ProductLine(int i2, List<Integer> list, int i3) {
            list.getClass();
            this.f62816a = i2;
            this.f62817b = list;
            this.f62818c = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductLine)) {
                return false;
            }
            ProductLine productLine = (ProductLine) obj;
            return this.f62816a == productLine.f62816a && Intrinsics.c(this.f62817b, productLine.f62817b) && this.f62818c == productLine.f62818c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f62818c) + n00.a(Integer.hashCode(this.f62816a) * 31, 31, this.f62817b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ProductLine(blockIndex=");
            sb.append(this.f62816a);
            sb.append(", productIndices=");
            sb.append(this.f62817b);
            sb.append(", globalStartIndex=");
            return defpackage.a.i(this.f62818c, ")", sb);
        }
    }
}
