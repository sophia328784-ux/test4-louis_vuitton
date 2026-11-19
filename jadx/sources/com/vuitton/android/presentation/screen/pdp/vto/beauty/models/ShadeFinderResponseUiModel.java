package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;", "", "", "title", "", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;", "recommendations", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShadeFinderResponseUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f62174b;

    public ShadeFinderResponseUiModel(String str, List<RecommendationUiModel> list) {
        str.getClass();
        list.getClass();
        this.f62173a = str;
        this.f62174b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadeFinderResponseUiModel)) {
            return false;
        }
        ShadeFinderResponseUiModel shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) obj;
        return Intrinsics.c(this.f62173a, shadeFinderResponseUiModel.f62173a) && Intrinsics.c(this.f62174b, shadeFinderResponseUiModel.f62174b);
    }

    public final int hashCode() {
        return this.f62174b.hashCode() + (this.f62173a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("ShadeFinderResponseUiModel(title=", this.f62173a, ", recommendations=", this.f62174b, ")");
    }
}
