package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/RangeTypeUiModel;", "", "", "minimum", "maximum", "<init>", "(II)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RangeTypeUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f62998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f62999b;

    public RangeTypeUiModel(int i2, int i3) {
        this.f62998a = i2;
        this.f62999b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RangeTypeUiModel)) {
            return false;
        }
        RangeTypeUiModel rangeTypeUiModel = (RangeTypeUiModel) obj;
        return this.f62998a == rangeTypeUiModel.f62998a && this.f62999b == rangeTypeUiModel.f62999b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f62999b) + (Integer.hashCode(this.f62998a) * 31);
    }

    public final String toString() {
        return fc.f(this.f62998a, this.f62999b, "RangeTypeUiModel(minimum=", ", maximum=", ")");
    }
}
