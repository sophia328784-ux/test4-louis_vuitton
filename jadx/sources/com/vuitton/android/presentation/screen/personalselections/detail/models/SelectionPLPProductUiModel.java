package com.vuitton.android.presentation.screen.personalselections.detail.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionPLPProductUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "isLiked", "", "token", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionPLPProductUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f62580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f62581c;

    public SelectionPLPProductUiModel(String str, boolean z, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f62579a = str;
        this.f62580b = z;
        this.f62581c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionPLPProductUiModel)) {
            return false;
        }
        SelectionPLPProductUiModel selectionPLPProductUiModel = (SelectionPLPProductUiModel) obj;
        String str = selectionPLPProductUiModel.f62579a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f62579a.equals(str) && this.f62580b == selectionPLPProductUiModel.f62580b && this.f62581c.equals(selectionPLPProductUiModel.f62581c);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f62581c.hashCode() + o60.b(this.f62579a.hashCode() * 31, 31, this.f62580b);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return n00.r(this.f62581c, ")", d21.s("SelectionPLPProductUiModel(sku=", this.f62579a, ", isLiked=", ", token=", this.f62580b));
    }
}
