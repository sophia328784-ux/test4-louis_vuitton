package androidx.compose.material3;

import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.tokens.DividerTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.av;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class DividerKt {
    /* JADX WARN: Code duplicated, block: B:29:0x004e  */
    /* JADX WARN: Code duplicated, block: B:34:0x005c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:52:0x008e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x0090  */
    /* JADX WARN: Code duplicated, block: B:55:0x0097  */
    /* JADX WARN: Code duplicated, block: B:56:0x009a  */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:82:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:84:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, float f2, long j2, Composer composer, final int i2, final int i3) {
        int i4;
        float f3;
        long jD;
        int i5;
        boolean z;
        boolean z2;
        float f4;
        final long j3;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z3;
        boolean z4;
        Object objX;
        int i6;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "HorizontalDivider-9IZ8Weo");
        }
        GapComposer gapComposerH = composer.h(75144485);
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i8 = i3 & 2;
        if (i8 == 0) {
            if ((i2 & 48) == 0) {
                f3 = f2;
                i4 |= gapComposerH.c(f3) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                jD = j2;
                if ((i3 & 4) == 0 || !gapComposerH.e(jD)) {
                    i6 = 128;
                } else {
                    i6 = 256;
                }
                i4 |= i6;
            } else {
                jD = j2;
            }
            i5 = 0;
            z = true;
            if ((i4 & 147) != 146) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i4 & 1, z2)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i7 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalDivider-9IZ8Weo");
                    }
                    if (i8 != 0) {
                        f4 = DividerDefaults.f6903a;
                    } else {
                        f4 = f3;
                    }
                    if ((i3 & 4) != 0) {
                        float f5 = DividerDefaults.f6903a;
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        i4 &= -897;
                        jD = ColorSchemeKt.d(DividerTokens.f7770a, gapComposerH);
                    }
                } else {
                    gapComposerH.D();
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                    }
                    f4 = f3;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierF = SizeKt.f(SizeKt.d(dTFunctionNameModifier, 1.0f), f4);
                if ((i4 & 112) == 32) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((((i4 & 896) ^ KyberEngine.KyberPolyBytes) > 256 || !gapComposerH.e(jD)) && (i4 & KyberEngine.KyberPolyBytes) != 256) {
                }
                z4 = z3 | z;
                objX = gapComposerH.x();
                if (z4 || objX == Composer.Companion.f7939a) {
                    objX = new av(jD, i5, f4);
                    gapComposerH.q(objX);
                }
                CanvasKt.a(modifierF, (Function1) objX, gapComposerH, 0);
            } else {
                gapComposerH.D();
                f4 = f3;
            }
            j3 = jD;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final float f6 = f4;
                final Modifier modifier2 = dTFunctionNameModifier;
                recomposeScopeImplB0.d = new Function2() { // from class: bv
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        DividerKt.a(modifier2, f6, j3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 48;
        f3 = f2;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            jD = j2;
            if ((i3 & 4) == 0) {
                i6 = 128;
            } else {
                i6 = 128;
            }
            i4 |= i6;
        } else {
            jD = j2;
        }
        i5 = 0;
        z = true;
        if ((i4 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i4 & 1, z2)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalDivider-9IZ8Weo");
                }
                if (i8 != 0) {
                    f4 = DividerDefaults.f6903a;
                } else {
                    f4 = f3;
                }
                if ((i3 & 4) != 0) {
                    float f7 = DividerDefaults.f6903a;
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    i4 &= -897;
                    jD = ColorSchemeKt.d(DividerTokens.f7770a, gapComposerH);
                }
            } else {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalDivider-9IZ8Weo");
                }
                if (i8 != 0) {
                    f4 = DividerDefaults.f6903a;
                } else {
                    f4 = f3;
                }
                if ((i3 & 4) != 0) {
                    float f8 = DividerDefaults.f6903a;
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    i4 &= -897;
                    jD = ColorSchemeKt.d(DividerTokens.f7770a, gapComposerH);
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
            Modifier modifierF2 = SizeKt.f(SizeKt.d(dTFunctionNameModifier, 1.0f), f4);
            if ((i4 & 112) == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            z = ((i4 & 896) ^ KyberEngine.KyberPolyBytes) > 256 ? false : false;
            z4 = z3 | z;
            objX = gapComposerH.x();
            if (z4) {
                objX = new av(jD, i5, f4);
                gapComposerH.q(objX);
            } else {
                objX = new av(jD, i5, f4);
                gapComposerH.q(objX);
            }
            CanvasKt.a(modifierF2, (Function1) objX, gapComposerH, 0);
        } else {
            gapComposerH.D();
            f4 = f3;
        }
        j3 = jD;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final float f9 = f4;
            final Modifier modifier3 = dTFunctionNameModifier;
            recomposeScopeImplB0.d = new Function2() { // from class: bv
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    DividerKt.a(modifier3, f9, j3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
