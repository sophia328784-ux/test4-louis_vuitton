package com.vuitton.android.presentation.screen.immersivearticle.components;

import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ImmersiveArticleComposableKt$ImmersiveArticleComposable$8$1 extends FunctionReferenceImpl implements Function1<Error3dType, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Error3dType error3dType = (Error3dType) obj;
        error3dType.getClass();
        ((ImmersiveArticleViewModel) this.receiver).Q2(error3dType);
        return Unit.f71739a;
    }
}
