package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleNavigationType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ImmersiveArticleActivity$onCreate$1$1$4$1$5$1 extends FunctionReferenceImpl implements Function1<ImmersiveArticleNavigationType, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ImmersiveArticleNavigationType immersiveArticleNavigationType = (ImmersiveArticleNavigationType) obj;
        immersiveArticleNavigationType.getClass();
        ImmersiveArticleActivity immersiveArticleActivity = (ImmersiveArticleActivity) this.receiver;
        ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
        immersiveArticleActivity.O(immersiveArticleNavigationType);
        return Unit.f71739a;
    }
}
