package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import defpackage.yp0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProgressViewKt {
    /* JADX WARN: Code duplicated, block: B:35:0x0061  */
    /* JADX WARN: Code duplicated, block: B:36:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0083 A[PHI: r0 r3 r6
      0x0083: PHI (r0v17 androidx.compose.ui.Modifier) = (r0v3 androidx.compose.ui.Modifier), (r0v1 androidx.compose.ui.Modifier), (r0v1 androidx.compose.ui.Modifier) binds: [B:53:0x009d, B:45:0x007f, B:46:0x0081] A[DONT_GENERATE, DONT_INLINE]
      0x0083: PHI (r3v15 int) = (r3v12 int), (r3v11 int), (r3v16 int) binds: [B:53:0x009d, B:45:0x007f, B:46:0x0081] A[DONT_GENERATE, DONT_INLINE]
      0x0083: PHI (r6v10 long) = (r6v2 long), (r6v0 long), (r6v0 long) binds: [B:53:0x009d, B:45:0x007f, B:46:0x0081] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x0088 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x0093  */
    /* JADX WARN: Code duplicated, block: B:54:0x009f  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:65:0x014f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0154  */
    /* JADX WARN: Code duplicated, block: B:70:0x0160  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, long j2, boolean z, Composer composer, final int i2, final int i3) {
        int i4;
        boolean z2;
        boolean z3;
        final Modifier modifier2;
        final long j3;
        final boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier modifier3;
        long j4;
        boolean z5;
        Object objX;
        Modifier modifier4;
        BiasAlignment biasAlignment;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "ProgressView-3IgeMak");
        }
        GapComposer gapComposerH = composer.h(1953738243);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        long j5 = j2;
        int i6 = i4 | (((i3 & 2) == 0 && gapComposerH.e(j5)) ? 32 : 16);
        int i7 = i3 & 4;
        if (i7 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i6 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i6 & 147) != 146) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i5 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ProgressView-3IgeMak");
                    }
                    if ((i3 & 2) != 0) {
                        j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        i6 &= -113;
                    }
                    if (i7 != 0) {
                        modifier3 = dTFunctionNameModifier;
                        j4 = j5;
                        z5 = false;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new yp0(26);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierD = ClickableKt.d(modifier3, z5, null, null, (Function0) objX, 14);
                    modifier4 = modifier3;
                    Alignment.f8582a.getClass();
                    biasAlignment = Alignment.Companion.f8587f;
                    measurePolicyD = BoxKt.d(biasAlignment, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    ProgressIndicatorKt.a(BoxScopeInstance.f4938a.g(SizeKt.s(SizeKt.f(new DTFunctionNameModifier("ProgressView-3IgeMak"), LVAppDesignKitTheme.d(gapComposerH).n), LVAppDesignKitTheme.d(gapComposerH).n), biasAlignment), j4, LVAppDesignKitTheme.d(gapComposerH).d, 0L, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, i6 & 112);
                    gapComposerH.Z(true);
                    modifier2 = modifier4;
                    j3 = j4;
                    z4 = z5;
                } else {
                    gapComposerH.D();
                    if ((i3 & 2) != 0) {
                        i6 &= -113;
                    }
                }
                modifier3 = dTFunctionNameModifier;
                z5 = z2;
                j4 = j5;
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new yp0(26);
                    gapComposerH.q(objX);
                }
                Modifier modifierD2 = ClickableKt.d(modifier3, z5, null, null, (Function0) objX, 14);
                modifier4 = modifier3;
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8587f;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierD2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                ProgressIndicatorKt.a(BoxScopeInstance.f4938a.g(SizeKt.s(SizeKt.f(new DTFunctionNameModifier("ProgressView-3IgeMak"), LVAppDesignKitTheme.d(gapComposerH).n), LVAppDesignKitTheme.d(gapComposerH).n), biasAlignment), j4, LVAppDesignKitTheme.d(gapComposerH).d, 0L, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, i6 & 112);
                gapComposerH.Z(true);
                modifier2 = modifier4;
                j3 = j4;
                z4 = z5;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                j3 = j5;
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: mq0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        ProgressViewKt.a(modifier2, j3, z4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i6 & 147) != 146) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i6 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i5 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ProgressView-3IgeMak");
                }
                if ((i3 & 2) != 0) {
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    i6 &= -113;
                }
                if (i7 != 0) {
                    modifier3 = dTFunctionNameModifier;
                    j4 = j5;
                    z5 = false;
                } else {
                    modifier3 = dTFunctionNameModifier;
                    z5 = z2;
                    j4 = j5;
                }
            } else {
                if (i5 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ProgressView-3IgeMak");
                }
                if ((i3 & 2) != 0) {
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    i6 &= -113;
                }
                if (i7 != 0) {
                    modifier3 = dTFunctionNameModifier;
                    j4 = j5;
                    z5 = false;
                } else {
                    modifier3 = dTFunctionNameModifier;
                    z5 = z2;
                    j4 = j5;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new yp0(26);
                gapComposerH.q(objX);
            }
            Modifier modifierD3 = ClickableKt.d(modifier3, z5, null, null, (Function0) objX, 14);
            modifier4 = modifier3;
            Alignment.f8582a.getClass();
            biasAlignment = Alignment.Companion.f8587f;
            measurePolicyD = BoxKt.d(biasAlignment, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierD3);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            ProgressIndicatorKt.a(BoxScopeInstance.f4938a.g(SizeKt.s(SizeKt.f(new DTFunctionNameModifier("ProgressView-3IgeMak"), LVAppDesignKitTheme.d(gapComposerH).n), LVAppDesignKitTheme.d(gapComposerH).n), biasAlignment), j4, LVAppDesignKitTheme.d(gapComposerH).d, 0L, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, i6 & 112);
            gapComposerH.Z(true);
            modifier2 = modifier4;
            j3 = j4;
            z4 = z5;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            j3 = j5;
            z4 = z2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: mq0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ProgressViewKt.a(modifier2, j3, z4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
