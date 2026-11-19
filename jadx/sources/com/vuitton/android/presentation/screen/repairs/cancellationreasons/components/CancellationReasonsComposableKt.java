package com.vuitton.android.presentation.screen.repairs.cancellationreasons.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewState;
import defpackage.f0;
import defpackage.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CancellationReasonsComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63620a;

        static {
            int[] iArr = new int[RepairStatusUiModel.values().length];
            try {
                iArr[RepairStatusUiModel.PRELIMINARY_ASSESSMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f63620a = iArr;
        }
    }

    public static final void a(CancellationReasonsViewModel cancellationReasonsViewModel, Function1 function1, Function0 function0, Function0 function2, Composer composer, int i2) {
        cancellationReasonsViewModel.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1847874436);
        int i3 = i2 | (gapComposerH.K(cancellationReasonsViewModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = (i3 & 14) == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new CancellationReasonsComposableKt$CancellationReasonsComposable$1$1(cancellationReasonsViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            MutableState mutableStateB = SnapshotStateKt.b(cancellationReasonsViewModel.getF63579h(), gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-1186060477, true, new f0(cancellationReasonsViewModel, function0, 23));
                gapComposerH.q(composableLambdaImpl);
                objX2 = composableLambdaImpl;
            }
            Function2 function3 = (Function2) objX2;
            if (((CancellationReasonsViewState) mutableStateB.getF10755b()).f63588a) {
                gapComposerH.L(-1430591011);
                CancellationReasonsLoadingScreenKt.a(function3, gapComposerH, 6);
                gapComposerH.Z(false);
            } else if (((CancellationReasonsViewState) mutableStateB.getF10755b()).f63589b) {
                gapComposerH.L(-1430487905);
                CancellationReasonsErrorScreenKt.a(function3, gapComposerH, 6);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1430391712);
                CancellationReasonsScreenKt.a(function3, (CancellationReasonsViewState) mutableStateB.getF10755b(), cancellationReasonsViewModel.getF63576c(), function1, function2, gapComposerH, 6 | ((i3 << 6) & 7168) | ((i3 << 3) & 57344));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) cancellationReasonsViewModel, (Object) function1, function0, function2, i2, 18);
        }
    }
}
