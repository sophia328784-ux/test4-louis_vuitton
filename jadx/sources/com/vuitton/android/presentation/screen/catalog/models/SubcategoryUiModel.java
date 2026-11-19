package com.vuitton.android.presentation.screen.catalog.models;

import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;", "redirection", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SubcategoryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SubcategoryRedirectionUiModel f55384c;

    public SubcategoryUiModel(String str, String str2, SubcategoryRedirectionUiModel subcategoryRedirectionUiModel) {
        str.getClass();
        str2.getClass();
        this.f55382a = str;
        this.f55383b = str2;
        this.f55384c = subcategoryRedirectionUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubcategoryUiModel)) {
            return false;
        }
        SubcategoryUiModel subcategoryUiModel = (SubcategoryUiModel) obj;
        return Intrinsics.c(this.f55382a, subcategoryUiModel.f55382a) && Intrinsics.c(this.f55383b, subcategoryUiModel.f55383b) && Intrinsics.c(this.f55384c, subcategoryUiModel.f55384c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f55382a.hashCode() * 31, 31, this.f55383b);
        SubcategoryRedirectionUiModel subcategoryRedirectionUiModel = this.f55384c;
        return iB + (subcategoryRedirectionUiModel == null ? 0 : subcategoryRedirectionUiModel.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SubcategoryUiModel(id=", this.f55382a, ", title=", this.f55383b, ", redirection=");
        sbS.append(this.f55384c);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ SubcategoryUiModel(String str, String str2, SubcategoryRedirectionUiModel subcategoryRedirectionUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : subcategoryRedirectionUiModel);
    }
}
