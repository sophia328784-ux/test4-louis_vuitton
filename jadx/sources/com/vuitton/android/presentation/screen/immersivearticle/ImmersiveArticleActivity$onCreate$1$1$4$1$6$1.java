package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleNavigationType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ImmersiveArticleActivity$onCreate$1$1$4$1$6$1 extends FunctionReferenceImpl implements Function1<ProductsArticleSectionUiModel.ImmersiveProductUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModel = (ProductsArticleSectionUiModel.ImmersiveProductUiModel) obj;
        immersiveProductUiModel.getClass();
        ImmersiveArticleActivity immersiveArticleActivity = (ImmersiveArticleActivity) this.receiver;
        ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
        if (((ImmersiveArticleViewState) immersiveArticleActivity.M().J.getValue()).f58805i) {
            ImmersiveArticleActivity.P(immersiveProductUiModel, immersiveArticleActivity);
        } else {
            immersiveArticleActivity.q = new ImmersiveArticleActivity$onProductWishlistClick$1(immersiveProductUiModel, immersiveArticleActivity);
            immersiveArticleActivity.O(new ImmersiveArticleNavigationType.OnLaunchAuthentication(LoginContext.WISHLIST));
        }
        return Unit.f71739a;
    }
}
