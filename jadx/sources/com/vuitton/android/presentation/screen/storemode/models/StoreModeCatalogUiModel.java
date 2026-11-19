package com.vuitton.android.presentation.screen.storemode.models;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;", "", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;", "categoryList", "<init>", "(Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeCatalogUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetUiModel f65040a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f65041b;

    public StoreModeCatalogUiModel(AssetUiModel assetUiModel, List<StoreModeCategoryL1UiModel> list) {
        assetUiModel.getClass();
        list.getClass();
        this.f65040a = assetUiModel;
        this.f65041b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeCatalogUiModel)) {
            return false;
        }
        StoreModeCatalogUiModel storeModeCatalogUiModel = (StoreModeCatalogUiModel) obj;
        return Intrinsics.c(this.f65040a, storeModeCatalogUiModel.f65040a) && Intrinsics.c(this.f65041b, storeModeCatalogUiModel.f65041b);
    }

    public final int hashCode() {
        return this.f65041b.hashCode() + (this.f65040a.hashCode() * 31);
    }

    public final String toString() {
        return "StoreModeCatalogUiModel(asset=" + this.f65040a + ", categoryList=" + this.f65041b + ")";
    }
}
