package com.vuitton.android.presentation.screen.catalog.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;", "tag", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;", "carousel", "Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;", "redirection", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CategoryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetUiModel f55365c;
    public final CategoryTagUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EditorialModuleUiModel.CarouselMUiModel f55366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CategoryRedirectionUiModel f55367f;

    public CategoryUiModel(String str, String str2, AssetUiModel assetUiModel, CategoryTagUiModel categoryTagUiModel, EditorialModuleUiModel.CarouselMUiModel carouselMUiModel, CategoryRedirectionUiModel categoryRedirectionUiModel) {
        str.getClass();
        str2.getClass();
        assetUiModel.getClass();
        categoryRedirectionUiModel.getClass();
        this.f55363a = str;
        this.f55364b = str2;
        this.f55365c = assetUiModel;
        this.d = categoryTagUiModel;
        this.f55366e = carouselMUiModel;
        this.f55367f = categoryRedirectionUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CategoryUiModel)) {
            return false;
        }
        CategoryUiModel categoryUiModel = (CategoryUiModel) obj;
        return Intrinsics.c(this.f55363a, categoryUiModel.f55363a) && Intrinsics.c(this.f55364b, categoryUiModel.f55364b) && Intrinsics.c(this.f55365c, categoryUiModel.f55365c) && Intrinsics.c(this.d, categoryUiModel.d) && Intrinsics.c(this.f55366e, categoryUiModel.f55366e) && Intrinsics.c(this.f55367f, categoryUiModel.f55367f);
    }

    public final int hashCode() {
        int iHashCode = (this.f55365c.hashCode() + fc.b(this.f55363a.hashCode() * 31, 31, this.f55364b)) * 31;
        CategoryTagUiModel categoryTagUiModel = this.d;
        int iHashCode2 = (iHashCode + (categoryTagUiModel == null ? 0 : categoryTagUiModel.f55362a.hashCode())) * 31;
        EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = this.f55366e;
        return this.f55367f.hashCode() + ((iHashCode2 + (carouselMUiModel != null ? carouselMUiModel.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CategoryUiModel(id=", this.f55363a, ", title=", this.f55364b, ", asset=");
        sbS.append(this.f55365c);
        sbS.append(", tag=");
        sbS.append(this.d);
        sbS.append(", carousel=");
        sbS.append(this.f55366e);
        sbS.append(", redirection=");
        sbS.append(this.f55367f);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ CategoryUiModel(String str, String str2, AssetUiModel assetUiModel, CategoryTagUiModel categoryTagUiModel, EditorialModuleUiModel.CarouselMUiModel carouselMUiModel, CategoryRedirectionUiModel categoryRedirectionUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, assetUiModel, (i2 & 8) != 0 ? null : categoryTagUiModel, (i2 & 16) != 0 ? null : carouselMUiModel, categoryRedirectionUiModel);
    }
}
