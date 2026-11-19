package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import defpackage.wd;
import defpackage.zo0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isVisible", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShowOnDragPageNumberIndicatorKt {
    /* JADX WARN: Code duplicated, block: B:34:0x0060  */
    /* JADX WARN: Code duplicated, block: B:35:0x0062  */
    /* JADX WARN: Code duplicated, block: B:38:0x006b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x006d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:46:0x008e  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, PagerState pagerState, boolean z, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z4;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object objX2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ShowOnDragPageNumberIndicator");
        }
        Modifier modifier2 = modifierE;
        pagerState.getClass();
        GapComposer gapComposerH = composer.h(1972545908);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(pagerState) ? 32 : 16;
        }
        int i6 = i3 & 4;
        if (i6 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 256 : 128;
            }
            i5 = i4;
            if ((i5 & 147) != 146) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i6 != 0) {
                    z4 = false;
                } else {
                    z4 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX);
                }
                CoroutineScope coroutineScope = (CoroutineScope) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposerH.q(objX2);
                }
                MutableState mutableState = (MutableState) objX2;
                EffectsKt.e(gapComposerH, Unit.f71739a, new ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1(pagerState, new Ref$ObjectRef(), coroutineScope, mutableState, null));
                AnimatedVisibilityKt.e(!((Boolean) mutableState.getF10755b()).booleanValue() || z4, modifier2, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(187099548, new zo0(pagerState, 1), gapComposerH), gapComposerH, ((i5 << 3) & 112) | 200064, 16);
                z2 = z4;
            } else {
                gapComposerH.D();
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new wd(modifier2, pagerState, z2, i2, i3, 3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        i5 = i4;
        if ((i5 & 147) != 146) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            if (i6 != 0) {
                z4 = false;
            } else {
                z4 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            EffectsKt.e(gapComposerH, Unit.f71739a, new ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1(pagerState, new Ref$ObjectRef(), coroutineScope2, mutableState2, null));
            AnimatedVisibilityKt.e(!((Boolean) mutableState2.getF10755b()).booleanValue() || z4, modifier2, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(187099548, new zo0(pagerState, 1), gapComposerH), gapComposerH, ((i5 << 3) & 112) | 200064, 16);
            z2 = z4;
        } else {
            gapComposerH.D();
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd(modifier2, pagerState, z2, i2, i3, 3);
        }
    }
}
