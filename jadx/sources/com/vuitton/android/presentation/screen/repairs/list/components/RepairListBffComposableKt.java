package com.vuitton.android.presentation.screen.repairs.list.components;

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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import defpackage.ik;
import defpackage.kn0;
import defpackage.ls0;
import defpackage.pr0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;", "viewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairListBffComposableKt {
    public static final void a(RepairBffViewModel repairBffViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, Function0 function7, Function1 function8, Composer composer, int i2) {
        repairBffViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        GapComposer gapComposerH = composer.h(930068255);
        int i3 = i2 | (gapComposerH.K(repairBffViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536) | (gapComposerH.y(function5) ? 1048576 : 524288) | (gapComposerH.y(function6) ? 8388608 : 4194304) | (gapComposerH.y(function7) ? 67108864 : 33554432) | (gapComposerH.y(function8) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new RepairListBffComposableKt$RepairListBffComposable$1$1(repairBffViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            MutableState mutableStateB = SnapshotStateKt.b(repairBffViewModel.getD(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(repairBffViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            if (((RepairsBffViewState) mutableStateB.getF10755b()).f64084b) {
                gapComposerH.L(830218430);
                RepairListLoadingScreenKt.a(ComposableLambdaKt.b(1759618956, new kn0(function2, 12), gapComposerH), gapComposerH, 6);
                gapComposerH.Z(false);
            } else if (((RepairsBffViewState) mutableStateB.getF10755b()).f64086e.isEmpty() && ((RepairsBffViewState) mutableStateB.getF10755b()).d.isEmpty()) {
                gapComposerH.L(830411405);
                RepairListEmptyScreenKt.a(ComposableLambdaKt.b(-1788504442, new kn0(function2, 13), gapComposerH), ((RepairsBffViewState) mutableStateB.getF10755b()).f64091k.f64009a, function0, ((RepairsBffViewState) mutableStateB.getF10755b()).f64091k.f64010b, function1, gapComposerH, ((i3 << 3) & 896) | 6 | ((i3 << 6) & 57344));
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(830844320);
                RepairsBffViewState repairsBffViewState = (RepairsBffViewState) mutableStateB.getF10755b();
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-266364529, new ls0(function8, lVModalBottomSheetStateF, function2, mutableStateA, 0), gapComposerH);
                boolean z2 = i4 == 4;
                Object objX2 = gapComposerH.x();
                if (z2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new pr0(repairBffViewModel, 2);
                    gapComposerH.q(objX2);
                }
                int i5 = i3 << 3;
                RepairListBffScreenKt.b(repairsBffViewState, contactUsUiModel, lVModalBottomSheetStateF, composableLambdaImplB, function0, function3, function4, function5, function6, function1, function7, function8, (Function0) objX2, gapComposerH, (LVModalBottomSheetState.f48797e << 6) | 3072 | ((i3 << 9) & 57344) | (458752 & i5) | (3670016 & i5) | (29360128 & i5) | (i5 & 234881024) | ((i3 << 21) & 1879048192), (i3 >> 24) & 126);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ik(repairBffViewModel, function0, function1, function2, function3, function4, function5, function6, function7, function8, i2, 3);
        }
    }
}
