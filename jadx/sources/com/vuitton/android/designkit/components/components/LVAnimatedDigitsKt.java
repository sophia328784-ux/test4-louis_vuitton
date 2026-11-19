package com.vuitton.android.designkit.components.components;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.designkit.components.LeftToRightLayoutKt;
import com.vuitton.android.designkit.components.components.LVAnimatedDigitsKt;
import defpackage.a50;
import defpackage.n00;
import defpackage.x4;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "currentPosition", "components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVAnimatedDigitsKt {
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:47:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x0083  */
    /* JADX WARN: Code duplicated, block: B:50:0x0087  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:55:0x0096  */
    /* JADX WARN: Code duplicated, block: B:56:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:68:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:73:0x0109  */
    /* JADX WARN: Code duplicated, block: B:76:0x0114  */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, int i2, int i3, boolean z, final TextStyle textStyle, final long j2, Composer composer, final int i4, final int i5) {
        int i6;
        int i7;
        int i8;
        boolean z2;
        TextStyle textStyle2;
        boolean z3;
        final Modifier modifier2;
        final boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Object objX;
        int i9;
        int i10;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVAnimatedDigits-V-9fs2A");
        }
        textStyle.getClass();
        GapComposer gapComposerH = composer.h(1984020013);
        int i11 = i5 & 1;
        if (i11 != 0) {
            i6 = i4 | 6;
        } else if ((i4 & 6) == 0) {
            i6 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i7 = i2;
            i6 |= gapComposerH.d(i7) ? 32 : 16;
        } else {
            i7 = i2;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i8 = i3;
            i6 |= gapComposerH.d(i8) ? 256 : 128;
        } else {
            i8 = i3;
        }
        int i12 = i5 & 8;
        if (i12 == 0) {
            if ((i4 & 3072) == 0) {
                z2 = z;
                i6 |= gapComposerH.b(z2) ? 2048 : 1024;
            }
            if ((i4 & 24576) == 0) {
                textStyle2 = textStyle;
                if (gapComposerH.K(textStyle2)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i6 |= i10;
            } else {
                textStyle2 = textStyle;
            }
            if ((196608 & i4) != 0) {
                if (gapComposerH.e(j2)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i6 |= i9;
            }
            if ((74899 & i6) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                if (i11 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVAnimatedDigits-V-9fs2A");
                }
                if (i12 != 0) {
                    z2 = false;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = Integer.valueOf(i7);
                    gapComposerH.q(objX);
                }
                int iIntValue = ((Number) objX).intValue();
                Modifier modifier3 = dTFunctionNameModifier;
                boolean z5 = z2;
                LeftToRightLayoutKt.a(ComposableLambdaKt.b(1573054071, new a50(modifier3, iIntValue, String.format(Locale.getDefault(), n00.m(iIntValue, "%0", NBSSpanMetricUnit.Day), Arrays.copyOf(new Object[]{Integer.valueOf(i8)}, 1)), z5, textStyle2, j2), gapComposerH), gapComposerH, 6);
                modifier2 = modifier3;
                z4 = z5;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final int i13 = i7;
                final int i14 = i8;
                recomposeScopeImplB0.d = new Function2() { // from class: b50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVAnimatedDigitsKt.a(modifier2, i13, i14, z4, textStyle, j2, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 3072;
        z2 = z;
        if ((i4 & 24576) == 0) {
            textStyle2 = textStyle;
            if (gapComposerH.K(textStyle2)) {
                i10 = 16384;
            } else {
                i10 = 8192;
            }
            i6 |= i10;
        } else {
            textStyle2 = textStyle;
        }
        if ((196608 & i4) != 0) {
            if (gapComposerH.e(j2)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i6 |= i9;
        }
        if ((74899 & i6) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i6 & 1, z3)) {
            if (i11 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVAnimatedDigits-V-9fs2A");
            }
            if (i12 != 0) {
                z2 = false;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = Integer.valueOf(i7);
                gapComposerH.q(objX);
            }
            int iIntValue2 = ((Number) objX).intValue();
            Modifier modifier4 = dTFunctionNameModifier;
            boolean z6 = z2;
            LeftToRightLayoutKt.a(ComposableLambdaKt.b(1573054071, new a50(modifier4, iIntValue2, String.format(Locale.getDefault(), n00.m(iIntValue2, "%0", NBSSpanMetricUnit.Day), Arrays.copyOf(new Object[]{Integer.valueOf(i8)}, 1)), z6, textStyle2, j2), gapComposerH), gapComposerH, 6);
            modifier2 = modifier4;
            z4 = z6;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            z4 = z2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final int i15 = i7;
            final int i16 = i8;
            recomposeScopeImplB0.d = new Function2() { // from class: b50
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVAnimatedDigitsKt.a(modifier2, i15, i16, z4, textStyle, j2, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0032  */
    /* JADX WARN: Code duplicated, block: B:12:0x0034  */
    /* JADX WARN: Code duplicated, block: B:15:0x003f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:20:0x004d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0056  */
    /* JADX WARN: Code duplicated, block: B:24:0x0059  */
    /* JADX WARN: Code duplicated, block: B:27:0x0062  */
    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0078  */
    /* JADX WARN: Code duplicated, block: B:38:0x0083  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:45:? A[RETURN, SYNTHETIC] */
    public static final void b(char c2, final boolean z, final TextStyle textStyle, final long j2, Composer composer, final int i2) {
        final char c3;
        boolean z2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z3;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z4;
        Object objX;
        GapComposer gapComposerH = composer.h(-1468946955);
        Object objK0 = gapComposerH.k0();
        if (objK0 instanceof Character) {
            c3 = c2;
            if (c3 == ((Character) objK0).charValue()) {
                z2 = false;
            }
            if (z2) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            int i8 = i2 | i3;
            if (gapComposerH.b(z)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            int i9 = i8 | i4;
            if (gapComposerH.K(textStyle)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            int i10 = i9 | i5;
            if (gapComposerH.e(j2)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i7 = i10 | i6;
            if ((i7 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i7 & 1, z3)) {
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                z4 = false;
                Character chValueOf = Character.valueOf(c3);
                if ((i7 & 112) == 32) {
                    z4 = true;
                }
                objX = gapComposerH.x();
                if (z4 || objX == Composer.Companion.f7939a) {
                    objX = new x4(z, 2);
                    gapComposerH.q(objX);
                }
                AnimatedContentKt.b(chValueOf, null, (Function1) objX, null, "Digit animation", null, ComposableLambdaKt.b(59390884, new Function4() { // from class: c50
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                        char cCharValue = ((Character) obj2).charValue();
                        ((Integer) obj4).getClass();
                        ((AnimatedContentScope) obj).getClass();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        TextKt.c(String.valueOf(cCharValue), null, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, (Composer) obj3, 0, 0, 131066);
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, (i7 & 14) | 1597440, 42);
            } else {
                gapComposerH.D();
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2(c3, z, textStyle, j2, i2) { // from class: d50

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ char f68441b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ boolean f68442c;
                    public final /* synthetic */ TextStyle d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ long f68443e;

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(1);
                        LVAnimatedDigitsKt.b(this.f68441b, this.f68442c, this.d, this.f68443e, (Composer) obj, iA);
                        return Unit.f71739a;
                    }
                };
            }
        }
        c3 = c2;
        gapComposerH.G0(Character.valueOf(c3));
        z2 = true;
        if (z2) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i11 = i2 | i3;
        if (gapComposerH.b(z)) {
            i4 = 32;
        } else {
            i4 = 16;
        }
        int i12 = i11 | i4;
        if (gapComposerH.K(textStyle)) {
            i5 = 256;
        } else {
            i5 = 128;
        }
        int i13 = i12 | i5;
        if (gapComposerH.e(j2)) {
            i6 = 2048;
        } else {
            i6 = 1024;
        }
        i7 = i13 | i6;
        if ((i7 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i7 & 1, z3)) {
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            z4 = false;
            Character chValueOf2 = Character.valueOf(c3);
            if ((i7 & 112) == 32) {
                z4 = true;
            }
            objX = gapComposerH.x();
            if (z4) {
                objX = new x4(z, 2);
                gapComposerH.q(objX);
            } else {
                objX = new x4(z, 2);
                gapComposerH.q(objX);
            }
            AnimatedContentKt.b(chValueOf2, null, (Function1) objX, null, "Digit animation", null, ComposableLambdaKt.b(59390884, new Function4() { // from class: c50
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    char cCharValue = ((Character) obj2).charValue();
                    ((Integer) obj4).getClass();
                    ((AnimatedContentScope) obj).getClass();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    TextKt.c(String.valueOf(cCharValue), null, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, (Composer) obj3, 0, 0, 131066);
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i7 & 14) | 1597440, 42);
        } else {
            gapComposerH.D();
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(c3, z, textStyle, j2, i2) { // from class: d50

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ char f68441b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f68442c;
                public final /* synthetic */ TextStyle d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f68443e;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    LVAnimatedDigitsKt.b(this.f68441b, this.f68442c, this.d, this.f68443e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
