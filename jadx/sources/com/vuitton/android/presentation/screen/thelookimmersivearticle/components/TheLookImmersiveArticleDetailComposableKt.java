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
import defpackage.cl0;
import defpackage.ll0;
import defpackage.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TheLookImmersiveArticleDetailComposableKt {
    public static final void a(TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel, String str, String str2, Function1 function1, Function2 function2, Function0 function0, Function3 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        int i4;
        TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel2 = theLookImmersiveArticleViewModel;
        theLookImmersiveArticleViewModel2.getClass();
        str.getClass();
        str2.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1120323175);
        int i5 = i2 | (gapComposerH.K(theLookImmersiveArticleViewModel2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if (gapComposerH.p(i5 & 1, (599187 & i5) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(theLookImmersiveArticleViewModel2.getM(), gapComposerH);
            Unit unit = Unit.f71739a;
            int i6 = i5 & 14;
            boolean zK = (i6 == 4) | gapComposerH.K(mutableStateB);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new TheLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$1$1(theLookImmersiveArticleViewModel2, mutableStateB, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = (TheLookImmersiveArticleViewState) mutableStateB.getF10755b();
            SharedFlow l = theLookImmersiveArticleViewModel2.getL();
            boolean z = i6 == 4;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                i3 = i5;
                i4 = i6;
                TheLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$2$1 theLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$2$1 = new TheLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$2$1(2, theLookImmersiveArticleViewModel, TheLookImmersiveArticleViewModel.class, "updateCurrentLook", "updateCurrentLook(ILjava/lang/String;)V", 0);
                theLookImmersiveArticleViewModel2 = theLookImmersiveArticleViewModel;
                gapComposerH.q(theLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$2$1);
                objX2 = theLookImmersiveArticleDetailComposableKt$TheLookImmersiveArticleDetailComposable$2$1;
            } else {
                i3 = i5;
                i4 = i6;
            }
            Function2 function4 = (Function2) ((KFunction) objX2);
            boolean z2 = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new ll0(theLookImmersiveArticleViewModel2, 28);
                gapComposerH.q(objX3);
            }
            Function2 function5 = (Function2) objX3;
            int i7 = i3;
            boolean zK2 = (i4 == 4) | gapComposerH.K(mutableStateB) | ((458752 & i7) == 131072);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new cl0(theLookImmersiveArticleViewModel2, function0, mutableStateB, 19);
                gapComposerH.q(objX4);
            }
            int i8 = i7 << 9;
            gapComposer = gapComposerH;
            TheLookImmersiveArticleDetailScreenKt.a(theLookImmersiveArticleViewState, str, str2, l, function4, function5, function1, function2, (Function1) objX4, function3, gapComposer, (i7 & 1008) | (3670016 & i8) | (29360128 & i8) | (i8 & 1879048192));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(theLookImmersiveArticleViewModel2, str, str2, function1, function2, function0, function3, i2);
        }
    }
}
