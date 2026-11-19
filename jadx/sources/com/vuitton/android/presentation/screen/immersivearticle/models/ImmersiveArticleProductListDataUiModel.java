package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductListDataUiModel;", "", "", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", Product.TYPE, "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;", "imageStyle", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;", "displayStyle", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductListDataUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f58697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleProductImageStyleUiModel f58698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductDisplayStyleUiModel f58699c;

    public ImmersiveArticleProductListDataUiModel(List<CarouselSItemUiModel> list, ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel, ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel) {
        list.getClass();
        this.f58697a = list;
        this.f58698b = immersiveArticleProductImageStyleUiModel;
        this.f58699c = immersiveArticleProductDisplayStyleUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductListDataUiModel)) {
            return false;
        }
        ImmersiveArticleProductListDataUiModel immersiveArticleProductListDataUiModel = (ImmersiveArticleProductListDataUiModel) obj;
        return Intrinsics.c(this.f58697a, immersiveArticleProductListDataUiModel.f58697a) && this.f58698b == immersiveArticleProductListDataUiModel.f58698b && this.f58699c == immersiveArticleProductListDataUiModel.f58699c;
    }

    public final int hashCode() {
        int iHashCode = this.f58697a.hashCode() * 31;
        ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel = this.f58698b;
        int iHashCode2 = (iHashCode + (immersiveArticleProductImageStyleUiModel == null ? 0 : immersiveArticleProductImageStyleUiModel.hashCode())) * 31;
        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel = this.f58699c;
        return iHashCode2 + (immersiveArticleProductDisplayStyleUiModel != null ? immersiveArticleProductDisplayStyleUiModel.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleProductListDataUiModel(products=" + this.f58697a + ", imageStyle=" + this.f58698b + ", displayStyle=" + this.f58699c + ")";
    }
}
