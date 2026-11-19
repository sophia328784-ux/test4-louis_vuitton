package com.vuitton.android.presentation.screen.immersivearticle.components;

import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ImmersiveArticleComposableKt$ImmersiveArticleComposable$12$1 extends FunctionReferenceImpl implements Function1<ImmersiveArticleTrackingUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ImmersiveArticleTrackingUiModel immersiveArticleTrackingUiModel = (ImmersiveArticleTrackingUiModel) obj;
        immersiveArticleTrackingUiModel.getClass();
        ((ImmersiveArticleViewModel) this.receiver).U8(immersiveArticleTrackingUiModel);
        return Unit.f71739a;
    }
}
