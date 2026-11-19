package com.vuitton.android.presentation.screen.personalselections.detail.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "name", "imageURL", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductInteractionUiModel;", "interaction", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductInteractionUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionProductUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f62586c;
    public final SelectionProductInteractionUiModel d;

    public SelectionProductUiModel(String str, String str2, String str3, SelectionProductInteractionUiModel selectionProductInteractionUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f62584a = str;
        this.f62585b = str2;
        this.f62586c = str3;
        this.d = selectionProductInteractionUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionProductUiModel)) {
            return false;
        }
        SelectionProductUiModel selectionProductUiModel = (SelectionProductUiModel) obj;
        String str = selectionProductUiModel.f62584a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f62584a.equals(str) && this.f62585b.equals(selectionProductUiModel.f62585b) && this.f62586c.equals(selectionProductUiModel.f62586c) && Intrinsics.c(this.d, selectionProductUiModel.d);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(fc.b(this.f62584a.hashCode() * 31, 31, this.f62585b), 31, this.f62586c);
        SelectionProductInteractionUiModel selectionProductInteractionUiModel = this.d;
        return iB + (selectionProductInteractionUiModel == null ? 0 : selectionProductInteractionUiModel.hashCode());
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("SelectionProductUiModel(sku=", this.f62584a, ", name=", this.f62585b, ", imageURL=");
        sbS.append(this.f62586c);
        sbS.append(", interaction=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
