package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;", "", "", "name", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ColorUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetImageUiModel f62160b;

    public ColorUiModel(String str, AssetImageUiModel assetImageUiModel) {
        str.getClass();
        assetImageUiModel.getClass();
        this.f62159a = str;
        this.f62160b = assetImageUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorUiModel)) {
            return false;
        }
        ColorUiModel colorUiModel = (ColorUiModel) obj;
        return Intrinsics.c(this.f62159a, colorUiModel.f62159a) && Intrinsics.c(this.f62160b, colorUiModel.f62160b);
    }

    public final int hashCode() {
        return this.f62160b.hashCode() + (this.f62159a.hashCode() * 31);
    }

    public final String toString() {
        return "ColorUiModel(name=" + this.f62159a + ", image=" + this.f62160b + ")";
    }
}
