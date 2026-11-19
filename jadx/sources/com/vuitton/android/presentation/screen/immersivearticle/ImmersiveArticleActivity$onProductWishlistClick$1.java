package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ImmersiveArticleActivity$onProductWishlistClick$1 extends FunctionReferenceImpl implements Function0<Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProductsArticleSectionUiModel.ImmersiveProductUiModel f58243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleActivity f58244c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleActivity$onProductWishlistClick$1(ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModel, ImmersiveArticleActivity immersiveArticleActivity) {
        super(0, Intrinsics.Kotlin.class, "handleClick", "onProductWishlistClick$handleClick(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V", 0);
        this.f58243b = immersiveProductUiModel;
        this.f58244c = immersiveArticleActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        ImmersiveArticleActivity.P(this.f58243b, this.f58244c);
        return Unit.f71739a;
    }
}
