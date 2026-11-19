package com.vuitton.android.presentation.screen.personalselections.detail.models;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;", "", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "annotation", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "relatedSkus", "<init>", "(Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionAssetUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetUiModel f62576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f62578c;

    public SelectionAssetUiModel(AssetUiModel assetUiModel, String str, List<SkuIdUiModel> list) {
        assetUiModel.getClass();
        list.getClass();
        this.f62576a = assetUiModel;
        this.f62577b = str;
        this.f62578c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionAssetUiModel)) {
            return false;
        }
        SelectionAssetUiModel selectionAssetUiModel = (SelectionAssetUiModel) obj;
        return Intrinsics.c(this.f62576a, selectionAssetUiModel.f62576a) && Intrinsics.c(this.f62577b, selectionAssetUiModel.f62577b) && Intrinsics.c(this.f62578c, selectionAssetUiModel.f62578c);
    }

    public final int hashCode() {
        int iHashCode = this.f62576a.hashCode() * 31;
        String str = this.f62577b;
        return this.f62578c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionAssetUiModel(asset=");
        sb.append(this.f62576a);
        sb.append(", annotation=");
        sb.append(this.f62577b);
        sb.append(", relatedSkus=");
        return a.o(sb, this.f62578c, ")");
    }
}
