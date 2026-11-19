package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import defpackage.es0;
import defpackage.r31;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TheLookImmersiveArticleListComposableKt {
    public static final void a(TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        theLookImmersiveArticleViewModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1641037583);
        int i3 = i2 | (gapComposerH.K(theLookImmersiveArticleViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(theLookImmersiveArticleViewModel.getM(), gapComposerH);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean zK = (i4 == 4) | gapComposerH.K(mutableStateB);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new TheLookImmersiveArticleListComposableKt$TheLookImmersiveArticleListComposable$1$1(theLookImmersiveArticleViewModel, mutableStateB, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = (TheLookImmersiveArticleViewState) mutableStateB.getF10755b();
            boolean z = (i4 == 4) | ((i3 & 896) == 256);
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new es0(theLookImmersiveArticleViewModel, function1, 16);
                gapComposerH.q(objX2);
            }
            TheLookImmersiveArticleListScreenKt.a(theLookImmersiveArticleViewState, function0, (Function2) objX2, gapComposerH, i3 & 112);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r31(theLookImmersiveArticleViewModel, function0, function1, i2, 2);
        }
    }
}
