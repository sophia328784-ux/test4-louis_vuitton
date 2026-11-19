package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.oh;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BoxWithConstraintsKt {
    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:33:0x0056  */
    /* JADX WARN: Code duplicated, block: B:35:0x005e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0072  */
    /* JADX WARN: Code duplicated, block: B:47:0x007d  */
    /* JADX WARN: Code duplicated, block: B:48:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:57:0x009c  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, Alignment alignment, boolean z, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        int i4;
        Alignment alignment2;
        int i5;
        boolean z2;
        int i6;
        boolean z3;
        Alignment alignment3;
        boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        MeasurePolicy measurePolicyD;
        boolean zK;
        Object objX;
        int i7;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "BoxWithConstraints");
        }
        GapComposer gapComposerH = composer.h(380139498);
        int i8 = i3 & 1;
        if (i8 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i9 = i3 & 2;
        if (i9 == 0) {
            if ((i2 & 48) == 0) {
                alignment2 = alignment;
                i4 |= gapComposerH.K(alignment2) ? 32 : 16;
            }
            i5 = i3 & 4;
            if (i5 != 0) {
                if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                    z2 = z;
                    if (gapComposerH.b(z2)) {
                        i6 = 256;
                    } else {
                        i6 = 128;
                    }
                    i4 |= i6;
                }
                if ((i2 & 3072) == 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i4 |= i7;
                }
                if ((i4 & 1171) != 1170) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    if (i8 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("BoxWithConstraints");
                    }
                    if (i9 != 0) {
                        Alignment.f8582a.getClass();
                        alignment3 = Alignment.Companion.f8584b;
                    } else {
                        alignment3 = alignment2;
                    }
                    if (i5 != 0) {
                        z2 = false;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    measurePolicyD = BoxKt.d(alignment3, z2);
                    zK = gapComposerH.K(measurePolicyD) | ((i4 & 7168) == 2048);
                    objX = gapComposerH.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new c(measurePolicyD, composableLambdaImpl);
                        gapComposerH.q(objX);
                    }
                    SubcomposeLayoutKt.a(dTFunctionNameModifier, (Function2) objX, gapComposerH, i4 & 14, 0);
                } else {
                    gapComposerH.D();
                    alignment3 = alignment2;
                }
                z4 = z2;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new oh(dTFunctionNameModifier, alignment3, z4, composableLambdaImpl, i2, i3, 0);
                }
            }
            i4 |= KyberEngine.KyberPolyBytes;
            z2 = z;
            if ((i2 & 3072) == 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i4 |= i7;
            }
            if ((i4 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("BoxWithConstraints");
                }
                if (i9 != 0) {
                    Alignment.f8582a.getClass();
                    alignment3 = Alignment.Companion.f8584b;
                } else {
                    alignment3 = alignment2;
                }
                if (i5 != 0) {
                    z2 = false;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                measurePolicyD = BoxKt.d(alignment3, z2);
                zK = gapComposerH.K(measurePolicyD) | ((i4 & 7168) == 2048);
                objX = gapComposerH.x();
                if (zK) {
                    objX = new c(measurePolicyD, composableLambdaImpl);
                    gapComposerH.q(objX);
                } else {
                    objX = new c(measurePolicyD, composableLambdaImpl);
                    gapComposerH.q(objX);
                }
                SubcomposeLayoutKt.a(dTFunctionNameModifier, (Function2) objX, gapComposerH, i4 & 14, 0);
            } else {
                gapComposerH.D();
                alignment3 = alignment2;
            }
            z4 = z2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oh(dTFunctionNameModifier, alignment3, z4, composableLambdaImpl, i2, i3, 0);
            }
        }
        i4 |= 48;
        alignment2 = alignment;
        i5 = i3 & 4;
        if (i5 != 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                if (gapComposerH.b(z2)) {
                    i6 = 256;
                } else {
                    i6 = 128;
                }
                i4 |= i6;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i4 |= i7;
            }
            if ((i4 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("BoxWithConstraints");
                }
                if (i9 != 0) {
                    Alignment.f8582a.getClass();
                    alignment3 = Alignment.Companion.f8584b;
                } else {
                    alignment3 = alignment2;
                }
                if (i5 != 0) {
                    z2 = false;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                measurePolicyD = BoxKt.d(alignment3, z2);
                zK = gapComposerH.K(measurePolicyD) | ((i4 & 7168) == 2048);
                objX = gapComposerH.x();
                if (zK) {
                    objX = new c(measurePolicyD, composableLambdaImpl);
                    gapComposerH.q(objX);
                } else {
                    objX = new c(measurePolicyD, composableLambdaImpl);
                    gapComposerH.q(objX);
                }
                SubcomposeLayoutKt.a(dTFunctionNameModifier, (Function2) objX, gapComposerH, i4 & 14, 0);
            } else {
                gapComposerH.D();
                alignment3 = alignment2;
            }
            z4 = z2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oh(dTFunctionNameModifier, alignment3, z4, composableLambdaImpl, i2, i3, 0);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i2 & 3072) == 0) {
            if (gapComposerH.y(composableLambdaImpl)) {
                i7 = 2048;
            } else {
                i7 = 1024;
            }
            i4 |= i7;
        }
        if ((i4 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            if (i8 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("BoxWithConstraints");
            }
            if (i9 != 0) {
                Alignment.f8582a.getClass();
                alignment3 = Alignment.Companion.f8584b;
            } else {
                alignment3 = alignment2;
            }
            if (i5 != 0) {
                z2 = false;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            measurePolicyD = BoxKt.d(alignment3, z2);
            zK = gapComposerH.K(measurePolicyD) | ((i4 & 7168) == 2048);
            objX = gapComposerH.x();
            if (zK) {
                objX = new c(measurePolicyD, composableLambdaImpl);
                gapComposerH.q(objX);
            } else {
                objX = new c(measurePolicyD, composableLambdaImpl);
                gapComposerH.q(objX);
            }
            SubcomposeLayoutKt.a(dTFunctionNameModifier, (Function2) objX, gapComposerH, i4 & 14, 0);
        } else {
            gapComposerH.D();
            alignment3 = alignment2;
        }
        z4 = z2;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oh(dTFunctionNameModifier, alignment3, z4, composableLambdaImpl, i2, i3, 0);
        }
    }
}
