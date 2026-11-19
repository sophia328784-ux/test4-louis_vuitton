package com.vuitton.android.presentation.screen.catalog.models;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;", "", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;", "sections", "<init>", "(Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CatalogUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetUiModel f55352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f55353b;

    public CatalogUiModel(AssetUiModel assetUiModel, List<SectionUiModel> list) {
        assetUiModel.getClass();
        list.getClass();
        this.f55352a = assetUiModel;
        this.f55353b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CatalogUiModel)) {
            return false;
        }
        CatalogUiModel catalogUiModel = (CatalogUiModel) obj;
        return Intrinsics.c(this.f55352a, catalogUiModel.f55352a) && Intrinsics.c(this.f55353b, catalogUiModel.f55353b);
    }

    public final int hashCode() {
        return this.f55353b.hashCode() + (this.f55352a.hashCode() * 31);
    }

    public final String toString() {
        return "CatalogUiModel(asset=" + this.f55352a + ", sections=" + this.f55353b + ")";
    }
}
