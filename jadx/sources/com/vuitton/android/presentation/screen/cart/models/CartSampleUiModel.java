package com.vuitton.android.presentation.screen.cart.models;

import defpackage.a;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartSampleUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;", "perfumeSamples", "", "maxSamples", "", "allowed", "<init>", "(Ljava/util/List;IZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartSampleUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f55161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f55162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f55163c;

    public CartSampleUiModel(List<PerfumeSampleUiModel> list, int i2, boolean z) {
        list.getClass();
        this.f55161a = list;
        this.f55162b = i2;
        this.f55163c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartSampleUiModel)) {
            return false;
        }
        CartSampleUiModel cartSampleUiModel = (CartSampleUiModel) obj;
        return Intrinsics.c(this.f55161a, cartSampleUiModel.f55161a) && this.f55162b == cartSampleUiModel.f55162b && this.f55163c == cartSampleUiModel.f55163c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f55163c) + tr.b(this.f55162b, this.f55161a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CartSampleUiModel(perfumeSamples=");
        sb.append(this.f55161a);
        sb.append(", maxSamples=");
        sb.append(this.f55162b);
        sb.append(", allowed=");
        return a.p(sb, this.f55163c, ")");
    }
}
