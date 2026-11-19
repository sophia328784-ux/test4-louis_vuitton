package com.vuitton.android.presentation.screen.storemode.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeButtonKt;
import defpackage.a;
import defpackage.av;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeButtonKt {
    public static final void a(Modifier modifier, long j2, final String str, final String str2, final boolean z, final boolean z2, final boolean z3, final boolean z4, final int i2, final int i3, final Function0 function0, Composer composer, final int i4) {
        final long j3;
        long jB;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "StoreModeButton-IStmHkI");
        }
        final Modifier modifier2 = modifierE;
        str.getClass();
        str2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-50463915);
        int i5 = i4 | (gapComposerH.K(modifier2) ? 4 : 2) | 16 | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.K(str2) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192) | (gapComposerH.b(z2) ? 131072 : 65536) | (gapComposerH.b(z3) ? 1048576 : 524288) | (gapComposerH.b(z4) ? 8388608 : 4194304);
        int i6 = gapComposerH.y(function0) ? 4 : 2;
        if (gapComposerH.p(i5 & 1, ((306783379 & i5) == 306783378 && (i6 & 3) == 2) ? false : true)) {
            gapComposerH.y0();
            if ((i4 & 1) == 0 || gapComposerH.h0()) {
                jB = Color.b(0.16f, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a);
            } else {
                gapComposerH.D();
                jB = j2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f2 = LVAppDesignKitTheme.d(gapComposerH).D;
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            int i7 = i6;
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StoreModeButton-IStmHkI");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierJ = boxScopeInstance.j(dTFunctionNameModifier);
            boolean zE = gapComposerH.e(jB) | gapComposerH.c(f2);
            Object objX = gapComposerH.x();
            if (zE || objX == Composer.Companion.f7939a) {
                objX = new av(jB, f2);
                gapComposerH.q(objX);
            }
            CanvasKt.a(modifierJ, (Function1) objX, gapComposerH, 0);
            long j4 = jB;
            ButtonKt.a(function0, boxScopeInstance.j(new DTFunctionNameModifier("StoreModeButton-IStmHkI")), false, RoundedCornerShapeKt.a(f2), ButtonDefaults.a(j4, 0L, gapComposerH, 14), null, null, ComposableLambdaKt.b(-2057469537, new Function3() { // from class: j11
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    RowScope rowScope = (RowScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    rowScope.getClass();
                    int i8 = 2;
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(rowScope) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        int i9 = i2;
                        int i10 = (iIntValue & 14) | 1572864;
                        AnimatedVisibilityKt.d(rowScope, z3, null, EnterExitTransitionKt.e(0.16f, AnimationSpecKt.c(i9, 0, null, 6)), EnterExitTransitionKt.g(0.16f, AnimationSpecKt.c(i9, 0, null, 6)), null, ComposableLambdaKt.b(388439159, new sv(z, i8), composer2), composer2, i10, 18);
                        int i11 = i3;
                        EnterTransition enterTransitionF = EnterExitTransitionKt.f(AnimationSpecKt.c(i11, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        ExitTransition exitTransitionH = EnterExitTransitionKt.h(AnimationSpecKt.c(i11, 0, null, 6), 2);
                        String str3 = str2;
                        String str4 = str;
                        boolean z5 = z2;
                        boolean z6 = z4;
                        AnimatedVisibilityKt.d(rowScope, z6, null, enterTransitionF, exitTransitionH, null, ComposableLambdaKt.b(1255344622, new ts0(str3, str4, z5, z6), composer2), composer2, i10, 18);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i7 & 14) | 805502976, 452);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            j3 = j4;
        } else {
            gapComposerH.D();
            j3 = j2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(j3, str, str2, z, z2, z3, z4, i2, i3, function0, i4) { // from class: k11

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ long f71519c;
                public final /* synthetic */ String d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f71520e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ boolean f71521f;
                public final /* synthetic */ boolean g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ boolean f71522h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ boolean f71523i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ int f71524j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ int f71525k;
                public final /* synthetic */ Function0 l;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(905969665);
                    StoreModeButtonKt.a(this.f71518b, this.f71519c, this.d, this.f71520e, this.f71521f, this.g, this.f71522h, this.f71523i, this.f71524j, this.f71525k, this.l, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
