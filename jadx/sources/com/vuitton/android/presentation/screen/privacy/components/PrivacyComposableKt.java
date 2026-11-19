package com.vuitton.android.presentation.screen.privacy.components;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyViewState;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.a3;
import defpackage.kn0;
import defpackage.mp0;
import defpackage.zv;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PrivacyComposableKt {
    public static final void a(final PrivacyViewModel privacyViewModel, boolean z, boolean z2, final LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        int i3;
        boolean z3;
        boolean z4;
        Function0 function3;
        Function0 function4;
        GapComposer gapComposer;
        privacyViewModel.getClass();
        lVModalBottomSheetState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1915020271);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(privacyViewModel) : gapComposerH.y(privacyViewModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            z3 = z;
            i3 |= gapComposerH.b(z3) ? 32 : 16;
        } else {
            z3 = z;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            z4 = z2;
            i3 |= gapComposerH.b(z4) ? 256 : 128;
        } else {
            z4 = z2;
        }
        if ((i2 & 3072) == 0) {
            i3 |= (i2 & 4096) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function3 = function0;
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        } else {
            function3 = function0;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            function4 = function2;
            i3 |= gapComposerH.y(function4) ? 1048576 : 524288;
        } else {
            function4 = function2;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(privacyViewModel.getY(), gapComposerH);
            Unit unit = Unit.f71739a;
            boolean z5 = ((i3 & 14) == 4 || ((i3 & 8) != 0 && gapComposerH.y(privacyViewModel))) | ((i3 & 7168) == 2048 || ((i3 & 4096) != 0 && gapComposerH.y(lVModalBottomSheetState)));
            Object objX = gapComposerH.x();
            if (z5 || objX == Composer.Companion.f7939a) {
                objX = new PrivacyComposableKt$PrivacyComposable$1$1(privacyViewModel, lVModalBottomSheetState, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            final boolean z6 = z3;
            final boolean z7 = z4;
            final Function0 function5 = function3;
            final Function0 function6 = function4;
            gapComposer = gapComposerH;
            ScaffoldKt.a(WindowInsetsPadding_androidKt.e(new DTFunctionNameModifier("PrivacyComposable")), ComposableLambdaKt.b(-2106078293, new kn0(function1, 4), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(952908096, new Function3() { // from class: com.vuitton.android.presentation.screen.privacy.components.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        State state = mutableStateB;
                        PrivacyType privacyType = ((PrivacyViewState) state.getF10755b()).f63410a;
                        List list = ((PrivacyViewState) state.getF10755b()).f63411b;
                        boolean z8 = ((PrivacyViewState) state.getF10755b()).f63414f;
                        PrivacyViewModel privacyViewModel2 = privacyViewModel;
                        int i4 = iIntValue;
                        boolean zKb = privacyViewModel2.kb();
                        boolean zY = composer2.y(privacyViewModel2);
                        Object objX2 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            PrivacyComposableKt$PrivacyComposable$3$1$1 privacyComposableKt$PrivacyComposable$3$1$1 = new PrivacyComposableKt$PrivacyComposable$3$1$1(2, privacyViewModel2, PrivacyViewModel.class, "updateConsentValue", "updateConsentValue(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;Z)V", 0);
                            composer2.q(privacyComposableKt$PrivacyComposable$3$1$1);
                            objX2 = privacyComposableKt$PrivacyComposable$3$1$1;
                        }
                        KFunction kFunction = (KFunction) objX2;
                        boolean zY2 = composer2.y(privacyViewModel2);
                        Object objX3 = composer2.x();
                        if (zY2 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new PrivacyComposableKt$PrivacyComposable$3$2$1(0, privacyViewModel2, PrivacyViewModel.class, "saveConsents", "saveConsents()V", 0);
                            composer2.q(objX3);
                        }
                        KFunction kFunction2 = (KFunction) objX3;
                        Function2 function7 = (Function2) kFunction;
                        boolean zY3 = composer2.y(privacyViewModel2);
                        Object objX4 = composer2.x();
                        if (zY3 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new mp0(privacyViewModel2, 0);
                            composer2.q(objX4);
                        }
                        Function0 function8 = (Function0) objX4;
                        boolean zY4 = composer2.y(privacyViewModel2);
                        Object objX5 = composer2.x();
                        if (zY4 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new mp0(privacyViewModel2, 1);
                            composer2.q(objX5);
                        }
                        PrivacyScreenKt.a(paddingValues, privacyType, list, z8, z6, z7, zKb, function7, function8, (Function0) objX5, function5, (Function0) kFunction2, composer2, i4 & 14);
                        LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                        if (lVModalBottomSheetState2.a()) {
                            composer2.L(-1647906055);
                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                            Function0 function9 = function6;
                            LVModalBottomSheetKt.b(null, strC, function9, lVModalBottomSheetState2, null, 0L, false, null, ComposableLambdaKt.b(1947728593, new a3(function9, 26), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                            composer2.F();
                        } else {
                            composer2.L(-1647518462);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805306416, 508);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zv(privacyViewModel, z, z2, lVModalBottomSheetState, function0, function1, function2, i2);
        }
    }
}
