package com.vuitton.android.presentation.screen.catalog.models;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;", "", "", "title", "", "Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;", "subcategories", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SubcategoryGroupsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f55378b;

    public SubcategoryGroupsUiModel(String str, List<SubcategoryUiModel> list) {
        list.getClass();
        this.f55377a = str;
        this.f55378b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubcategoryGroupsUiModel)) {
            return false;
        }
        SubcategoryGroupsUiModel subcategoryGroupsUiModel = (SubcategoryGroupsUiModel) obj;
        return Intrinsics.c(this.f55377a, subcategoryGroupsUiModel.f55377a) && Intrinsics.c(this.f55378b, subcategoryGroupsUiModel.f55378b);
    }

    public final int hashCode() {
        String str = this.f55377a;
        return this.f55378b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return cj.k("SubcategoryGroupsUiModel(title=", this.f55377a, ", subcategories=", this.f55378b, ")");
    }

    public /* synthetic */ SubcategoryGroupsUiModel(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, list);
    }
}
