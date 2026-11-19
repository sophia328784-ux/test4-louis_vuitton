package androidx.compose.material3;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.TextUnit;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.i31;
import defpackage.o11;
import defpackage.p11;
import defpackage.z21;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TextKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f7383a = new DynamicProvidableCompositionLocal(SnapshotStateKt.n(), new o11(26));

    public static final void a(TextStyle textStyle, Function2 function2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(15327438);
        int i3 = (gapComposerH.K(textStyle) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        }
        int i4 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = f7383a;
            CompositionLocalKt.a(dynamicProvidableCompositionLocal.c(((TextStyle) gapComposerH.k(dynamicProvidableCompositionLocal)).d(textStyle)), function2, gapComposerH, (i3 & 112) | 8);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i31(textStyle, function2, i2, i4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x006f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0078  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:54:0x0122  */
    /* JADX WARN: Code duplicated, block: B:57:0x0140  */
    /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
    public static final void b(final String str, Modifier modifier, long j2, long j3, long j4, long j5, int i2, boolean z, int i3, int i4, TextStyle textStyle, Composer composer, final int i5, final int i6) {
        String str2;
        int i7;
        int i8;
        TextStyle textStyle2;
        int i9;
        int i10;
        boolean z2;
        GapComposer gapComposer;
        final long j6;
        final long j7;
        final long j8;
        final int i11;
        final boolean z3;
        final int i12;
        final int i13;
        final Modifier modifier2;
        final TextStyle textStyle3;
        final long j9;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i14;
        int i15;
        TextStyle textStyle4;
        long j10;
        boolean z4;
        int i16;
        long j11;
        long j12;
        long j13;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "Text--4IGK_g");
        }
        GapComposer gapComposerH = composer.h(-2055108902);
        if ((i5 & 6) == 0) {
            str2 = str;
            i7 = i5 | (gapComposerH.K(str2) ? 4 : 2);
        } else {
            str2 = str;
            i7 = i5;
        }
        int i17 = i6 & 2;
        if (i17 != 0) {
            i8 = i7 | 48;
        } else {
            i8 = i7 | (gapComposerH.K(dTFunctionNameModifier) ? 32 : 16);
        }
        int i18 = i8 | 920350080;
        if ((i6 & 65536) == 0) {
            textStyle2 = textStyle;
            int i19 = gapComposerH.K(textStyle2) ? 1048576 : 524288;
            i9 = 224694;
            i10 = i19 | 224694;
            if ((306783379 & i18) == 306783378 || (599187 & i10) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i18 & 1, z2)) {
                gapComposerH.y0();
                if ((i5 & 1) != 0 || gapComposerH.h0()) {
                    if (i17 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text--4IGK_g");
                    }
                    Color.f8866b.getClass();
                    long j14 = Color.f8871i;
                    TextUnit.Companion companion = TextUnit.f11023b;
                    companion.getClass();
                    long j15 = TextUnit.d;
                    companion.getClass();
                    companion.getClass();
                    TextOverflow.f10989a.getClass();
                    i14 = TextOverflow.f10990b;
                    i15 = Integer.MAX_VALUE;
                    if ((i6 & 65536) != 0) {
                        textStyle4 = (TextStyle) gapComposerH.k(f7383a);
                    } else {
                        textStyle4 = textStyle2;
                        i9 = i10;
                    }
                    j10 = j14;
                    z4 = true;
                    i16 = 1;
                    j11 = j15;
                    j12 = j11;
                    j13 = j12;
                } else {
                    gapComposerH.D();
                    j10 = j2;
                    j12 = j4;
                    j13 = j5;
                    i14 = i2;
                    z4 = z;
                    i15 = i3;
                    i16 = i4;
                    textStyle4 = textStyle2;
                    i9 = (i6 & 65536) == 0 ? i10 : 224694;
                    j11 = j3;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifier3 = dTFunctionNameModifier;
                gapComposer = gapComposerH;
                c(str2, modifier3, j10, j11, null, j12, null, null, j13, i14, z4, i15, i16, null, textStyle4, gapComposer, (i18 & 14) | 3072 | (i18 & 112) | 920347008, 1797558 | ((i9 << 3) & 29360128), 0);
                j7 = j12;
                j8 = j13;
                i11 = i14;
                z3 = z4;
                i12 = i15;
                i13 = i16;
                textStyle3 = textStyle4;
                j6 = j11;
                j9 = j10;
                modifier2 = modifier3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                j6 = j3;
                j7 = j4;
                j8 = j5;
                i11 = i2;
                z3 = z;
                i12 = i3;
                i13 = i4;
                modifier2 = dTFunctionNameModifier;
                textStyle3 = textStyle2;
                j9 = j2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: g31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        TextKt.b(str, modifier2, j9, j6, j7, j8, i11, z3, i12, i13, textStyle3, (Composer) obj, iA, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        textStyle2 = textStyle;
        i9 = 224694;
        i10 = i19 | 224694;
        if ((306783379 & i18) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (gapComposerH.p(i18 & 1, z2)) {
            gapComposerH.y0();
            if ((i5 & 1) != 0) {
                if (i17 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Text--4IGK_g");
                }
                Color.f8866b.getClass();
                long j16 = Color.f8871i;
                TextUnit.Companion companion2 = TextUnit.f11023b;
                companion2.getClass();
                long j17 = TextUnit.d;
                companion2.getClass();
                companion2.getClass();
                TextOverflow.f10989a.getClass();
                i14 = TextOverflow.f10990b;
                i15 = Integer.MAX_VALUE;
                if ((i6 & 65536) != 0) {
                    textStyle4 = (TextStyle) gapComposerH.k(f7383a);
                } else {
                    textStyle4 = textStyle2;
                    i9 = i10;
                }
                j10 = j16;
                z4 = true;
                i16 = 1;
                j11 = j17;
                j12 = j11;
                j13 = j12;
            } else {
                if (i17 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Text--4IGK_g");
                }
                Color.f8866b.getClass();
                long j18 = Color.f8871i;
                TextUnit.Companion companion3 = TextUnit.f11023b;
                companion3.getClass();
                long j19 = TextUnit.d;
                companion3.getClass();
                companion3.getClass();
                TextOverflow.f10989a.getClass();
                i14 = TextOverflow.f10990b;
                i15 = Integer.MAX_VALUE;
                if ((i6 & 65536) != 0) {
                    textStyle4 = (TextStyle) gapComposerH.k(f7383a);
                } else {
                    textStyle4 = textStyle2;
                    i9 = i10;
                }
                j10 = j18;
                z4 = true;
                i16 = 1;
                j11 = j19;
                j12 = j11;
                j13 = j12;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Modifier modifier4 = dTFunctionNameModifier;
            gapComposer = gapComposerH;
            c(str2, modifier4, j10, j11, null, j12, null, null, j13, i14, z4, i15, i16, null, textStyle4, gapComposer, (i18 & 14) | 3072 | (i18 & 112) | 920347008, 1797558 | ((i9 << 3) & 29360128), 0);
            j7 = j12;
            j8 = j13;
            i11 = i14;
            z3 = z4;
            i12 = i15;
            i13 = i16;
            textStyle3 = textStyle4;
            j6 = j11;
            j9 = j10;
            modifier2 = modifier4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            j6 = j3;
            j7 = j4;
            j8 = j5;
            i11 = i2;
            z3 = z;
            i12 = i3;
            i13 = i4;
            modifier2 = dTFunctionNameModifier;
            textStyle3 = textStyle2;
            j9 = j2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: g31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                    TextKt.b(str, modifier2, j9, j6, j7, j8, i11, z3, i12, i13, textStyle3, (Composer) obj, iA, i6);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012f  */
    /* JADX WARN: Code duplicated, block: B:102:0x0133  */
    /* JADX WARN: Code duplicated, block: B:104:0x013b  */
    /* JADX WARN: Code duplicated, block: B:105:0x013e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0148  */
    /* JADX WARN: Code duplicated, block: B:110:0x0151  */
    /* JADX WARN: Code duplicated, block: B:112:0x0155  */
    /* JADX WARN: Code duplicated, block: B:114:0x015f  */
    /* JADX WARN: Code duplicated, block: B:115:0x0162  */
    /* JADX WARN: Code duplicated, block: B:117:0x0167  */
    /* JADX WARN: Code duplicated, block: B:120:0x0171  */
    /* JADX WARN: Code duplicated, block: B:122:0x0178  */
    /* JADX WARN: Code duplicated, block: B:124:0x017c  */
    /* JADX WARN: Code duplicated, block: B:126:0x0186  */
    /* JADX WARN: Code duplicated, block: B:127:0x0189  */
    /* JADX WARN: Code duplicated, block: B:129:0x018e  */
    /* JADX WARN: Code duplicated, block: B:132:0x0197  */
    /* JADX WARN: Code duplicated, block: B:133:0x019a  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:138:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:141:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:144:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:145:0x01be  */
    /* JADX WARN: Code duplicated, block: B:147:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:149:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:152:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:155:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:157:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:159:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:161:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:165:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:166:0x0201  */
    /* JADX WARN: Code duplicated, block: B:168:0x0207  */
    /* JADX WARN: Code duplicated, block: B:170:0x020d  */
    /* JADX WARN: Code duplicated, block: B:171:0x0210  */
    /* JADX WARN: Code duplicated, block: B:175:0x0218  */
    /* JADX WARN: Code duplicated, block: B:176:0x021d  */
    /* JADX WARN: Code duplicated, block: B:178:0x0223  */
    /* JADX WARN: Code duplicated, block: B:180:0x0229  */
    /* JADX WARN: Code duplicated, block: B:184:0x0231  */
    /* JADX WARN: Code duplicated, block: B:186:0x0237  */
    /* JADX WARN: Code duplicated, block: B:190:0x0242  */
    /* JADX WARN: Code duplicated, block: B:193:0x0252  */
    /* JADX WARN: Code duplicated, block: B:197:0x025f  */
    /* JADX WARN: Code duplicated, block: B:200:0x0269  */
    /* JADX WARN: Code duplicated, block: B:202:0x0273  */
    /* JADX WARN: Code duplicated, block: B:209:0x029c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:210:0x029e  */
    /* JADX WARN: Code duplicated, block: B:211:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:213:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:215:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:216:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:218:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:220:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:221:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:223:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:224:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:226:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:227:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:229:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:230:0x02df  */
    /* JADX WARN: Code duplicated, block: B:232:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:233:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:235:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:236:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:238:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:239:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:242:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:244:0x0303  */
    /* JADX WARN: Code duplicated, block: B:245:0x0306  */
    /* JADX WARN: Code duplicated, block: B:248:0x030c  */
    /* JADX WARN: Code duplicated, block: B:249:0x0319  */
    /* JADX WARN: Code duplicated, block: B:252:0x032c  */
    /* JADX WARN: Code duplicated, block: B:253:0x0334  */
    /* JADX WARN: Code duplicated, block: B:255:0x0342  */
    /* JADX WARN: Code duplicated, block: B:257:0x0348  */
    /* JADX WARN: Code duplicated, block: B:261:0x0361  */
    /* JADX WARN: Code duplicated, block: B:262:0x0364  */
    /* JADX WARN: Code duplicated, block: B:264:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:267:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:269:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006b  */
    /* JADX WARN: Code duplicated, block: B:37:0x006e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0072  */
    /* JADX WARN: Code duplicated, block: B:41:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x007b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0086  */
    /* JADX WARN: Code duplicated, block: B:47:0x008d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    /* JADX WARN: Code duplicated, block: B:51:0x009b  */
    /* JADX WARN: Code duplicated, block: B:52:0x009e  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:57:0x00af  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:66:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00df  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:82:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:87:0x0109  */
    /* JADX WARN: Code duplicated, block: B:89:0x0110  */
    /* JADX WARN: Code duplicated, block: B:91:0x0114  */
    /* JADX WARN: Code duplicated, block: B:93:0x011e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0121  */
    /* JADX WARN: Code duplicated, block: B:98:0x012b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r53v1 */
    public static final void c(final String str, Modifier modifier, long j2, long j3, FontWeight fontWeight, long j4, TextDecoration textDecoration, TextAlign textAlign, long j5, int i2, boolean z, int i3, int i4, Function1 function1, TextStyle textStyle, Composer composer, final int i5, final int i6, final int i7) {
        String str2;
        int i8;
        long j6;
        int i9;
        int i10;
        int i11;
        int i12;
        long j7;
        int i13;
        int i14;
        int i15;
        FontWeight fontWeight2;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        boolean z2;
        GapComposer gapComposer;
        final TextDecoration textDecoration2;
        long j8;
        final boolean z3;
        final int i41;
        final int i42;
        final Function1 function2;
        final TextStyle textStyle2;
        final long j9;
        final FontWeight fontWeight3;
        Modifier modifier2;
        long j10;
        final TextAlign textAlign2;
        final int i43;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        long j11;
        TextDecoration textDecoration3;
        TextAlign textAlign3;
        int i44;
        boolean z4;
        int i45;
        int i46;
        Function1 function3;
        TextStyle textStyle3;
        long jB;
        boolean z5;
        ?? r2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Text-Nvy7gAk");
        }
        GapComposer gapComposerH = composer.h(1809465675);
        if ((i5 & 6) == 0) {
            str2 = str;
            i8 = (gapComposerH.K(str2) ? 4 : 2) | i5;
        } else {
            str2 = str;
            i8 = i5;
        }
        int i47 = i7 & 2;
        if (i47 != 0) {
            i8 |= 48;
        } else if ((i5 & 48) == 0) {
            i8 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i48 = i7 & 4;
        if (i48 == 0) {
            if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
                j6 = j2;
                i9 = i8 | (gapComposerH.e(j6) ? 256 : 128);
            }
            if ((i7 & 8) != 0) {
                i9 |= 3072;
            } else if ((i5 & 3072) == 0) {
                if (gapComposerH.y(null)) {
                    i10 = 2048;
                } else {
                    i10 = 1024;
                }
                i9 |= i10;
            }
            i11 = i7 & 16;
            if (i11 != 0) {
                i9 |= 24576;
                i12 = i11;
                j7 = j3;
            } else {
                i12 = i11;
                j7 = j3;
                if ((i5 & 24576) == 0) {
                    if (gapComposerH.e(j7)) {
                        i13 = 16384;
                    } else {
                        i13 = 8192;
                    }
                    i9 |= i13;
                }
            }
            if ((i7 & 32) != 0) {
                i9 |= ImageMetadata.EDGE_MODE;
            } else if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(null)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i9 |= i14;
            }
            i15 = i7 & 64;
            if (i15 != 0) {
                i9 |= 1572864;
                fontWeight2 = fontWeight;
            } else {
                fontWeight2 = fontWeight;
                if ((i5 & 1572864) == 0) {
                    if (gapComposerH.K(fontWeight2)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i9 |= i16;
                }
            }
            i17 = 4194304;
            if ((i7 & 128) != 0) {
                if ((i5 & 12582912) == 0) {
                    if (gapComposerH.K(null)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i9 |= i18;
                }
                i19 = i7 & 256;
                if (i19 != 0) {
                    if ((i5 & 100663296) == 0) {
                        if (gapComposerH.e(j4)) {
                            i20 = 67108864;
                        } else {
                            i20 = 33554432;
                        }
                        i9 |= i20;
                    }
                    i21 = i7 & 512;
                    if (i21 != 0) {
                        if ((i5 & 805306368) == 0) {
                            if (gapComposerH.K(textDecoration)) {
                                i22 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i22 = 268435456;
                            }
                            i9 |= i22;
                        }
                        i23 = i7 & 1024;
                        if (i23 != 0) {
                            i24 = i6 | 6;
                        } else if ((i6 & 6) == 0) {
                            if (gapComposerH.K(textAlign)) {
                                i25 = 4;
                            } else {
                                i25 = 2;
                            }
                            i24 = i6 | i25;
                        } else {
                            i24 = i6;
                        }
                        i26 = i7 & 2048;
                        if (i26 != 0) {
                            i24 |= 48;
                        } else if ((i6 & 48) != 0) {
                            if (gapComposerH.e(j5)) {
                                i27 = 32;
                            } else {
                                i27 = 16;
                            }
                            i24 |= i27;
                        }
                        i28 = i24;
                        i29 = i7 & 4096;
                        if (i29 != 0) {
                            i31 = i28 | KyberEngine.KyberPolyBytes;
                        } else {
                            i30 = i28;
                            if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                                if (gapComposerH.d(i2)) {
                                    i32 = 256;
                                } else {
                                    i32 = 128;
                                }
                                i30 |= i32;
                            }
                            i31 = i30;
                        }
                        i33 = i7 & 8192;
                        if (i33 != 0) {
                            i35 = i31 | 3072;
                        } else {
                            i34 = i31;
                            if ((i6 & 3072) != 0) {
                                i34 |= gapComposerH.b(z) ? 2048 : 1024;
                            }
                            i35 = i34;
                        }
                        i36 = i7 & 16384;
                        if (i36 != 0) {
                            i37 = i35;
                            if ((i6 & 24576) == 0) {
                                i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                            }
                            i38 = i7 & 32768;
                            if (i38 != 0) {
                                i37 |= ImageMetadata.EDGE_MODE;
                            } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                                if (gapComposerH.d(i4)) {
                                    i39 = 131072;
                                } else {
                                    i39 = 65536;
                                }
                                i37 |= i39;
                            }
                            i40 = i7 & 65536;
                            if (i40 != 0) {
                                i37 |= 1572864;
                            } else if ((i6 & 1572864) == 0) {
                                i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                            }
                            if ((i6 & 12582912) != 0) {
                                if ((i7 & 131072) == 0 && gapComposerH.K(textStyle)) {
                                    i17 = 8388608;
                                }
                                i37 |= i17;
                            }
                            if ((i9 & 306783379) == 306783378 || (i37 & 4793491) != 4793490) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (gapComposerH.p(i9 & 1, z2)) {
                                gapComposerH.y0();
                                if ((i5 & 1) != 0 || gapComposerH.h0()) {
                                    if (i47 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                    }
                                    if (i48 != 0) {
                                        dTFunctionNameModifier = modifierE;
                                        Color.f8866b.getClass();
                                        j6 = Color.f8871i;
                                    }
                                    if (i12 != 0) {
                                        TextUnit.f11023b.getClass();
                                        j11 = TextUnit.d;
                                    } else {
                                        j11 = j7;
                                    }
                                    if (i15 != 0) {
                                        fontWeight2 = null;
                                    }
                                    if (i19 != 0) {
                                        TextUnit.f11023b.getClass();
                                        j10 = TextUnit.d;
                                    } else {
                                        j10 = j4;
                                    }
                                    if (i21 != 0) {
                                        textDecoration3 = null;
                                    } else {
                                        textDecoration3 = textDecoration;
                                    }
                                    if (i23 != 0) {
                                        textAlign3 = null;
                                    } else {
                                        textAlign3 = textAlign;
                                    }
                                    if (i26 != 0) {
                                        TextUnit.f11023b.getClass();
                                        j8 = TextUnit.d;
                                    } else {
                                        j8 = j5;
                                    }
                                    if (i29 != 0) {
                                        TextOverflow.f10989a.getClass();
                                        i44 = TextOverflow.f10990b;
                                    } else {
                                        i44 = i2;
                                    }
                                    if (i33 != 0) {
                                        z4 = true;
                                    } else {
                                        z4 = z;
                                    }
                                    if (i36 != 0) {
                                        i45 = Integer.MAX_VALUE;
                                    } else {
                                        i45 = i3;
                                    }
                                    i46 = i38 == 0 ? i4 : 1;
                                    if (i40 != 0) {
                                        function3 = null;
                                    } else {
                                        function3 = function1;
                                    }
                                    if ((i7 & 131072) != 0) {
                                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                        i37 &= -29360129;
                                    } else {
                                        textStyle3 = textStyle;
                                    }
                                } else {
                                    gapComposerH.D();
                                    if ((i7 & 131072) != 0) {
                                        i37 &= -29360129;
                                    }
                                    textDecoration3 = textDecoration;
                                    textAlign3 = textAlign;
                                    j8 = j5;
                                    i44 = i2;
                                    z4 = z;
                                    i45 = i3;
                                    i46 = i4;
                                    function3 = function1;
                                    textStyle3 = textStyle;
                                    j11 = j7;
                                    dTFunctionNameModifier = modifierE;
                                    j10 = j4;
                                }
                                gapComposerH.a0();
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                gapComposerH.L(-565217106);
                                if (j6 != 16) {
                                    dTFunctionNameModifier = dTFunctionNameModifier;
                                    textStyle3 = textStyle3;
                                    jB = j6;
                                    z5 = false;
                                } else {
                                    gapComposerH.L(-565216333);
                                    jB = textStyle3.b();
                                    if (jB != 16) {
                                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                                    }
                                    z5 = false;
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(z5);
                                if (textAlign3 != null) {
                                    r2 = textAlign3.f10964a;
                                } else {
                                    TextAlign.f10959b.getClass();
                                    r2 = z5;
                                }
                                TextStyle textStyle4 = textStyle3;
                                int i49 = i37 << 6;
                                Modifier modifier3 = dTFunctionNameModifier;
                                BasicTextKt.b(str2, modifier3, TextStyle.e(textStyle4, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i49 & 57344) | (i49 & ImageMetadata.JPEG_GPS_COORDINATES) | (i49 & 3670016) | (i49 & 29360128) | ((i9 << 18) & 1879048192), 256);
                                modifier2 = modifier3;
                                gapComposer = gapComposerH;
                                textStyle2 = textStyle4;
                                j9 = j11;
                                fontWeight3 = fontWeight2;
                                textAlign2 = textAlign3;
                                i43 = i44;
                                z3 = z4;
                                i41 = i45;
                                i42 = i46;
                                function2 = function3;
                                textDecoration2 = textDecoration3;
                            } else {
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                textDecoration2 = textDecoration;
                                j8 = j5;
                                z3 = z;
                                i41 = i3;
                                i42 = i4;
                                function2 = function1;
                                textStyle2 = textStyle;
                                j9 = j7;
                                fontWeight3 = fontWeight2;
                                modifier2 = modifierE;
                                j10 = j4;
                                textAlign2 = textAlign;
                                i43 = i2;
                            }
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                final Modifier modifier4 = modifier2;
                                final long j12 = j6;
                                final long j13 = j10;
                                final long j14 = j8;
                                recomposeScopeImplB0.d = new Function2() { // from class: h31
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                                        int iA2 = RecomposeScopeImplKt.a(i6);
                                        TextKt.c(str, modifier4, j12, j9, fontWeight3, j13, textDecoration2, textAlign2, j14, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i37 = i35 | 24576;
                        i38 = i7 & 32768;
                        if (i38 != 0) {
                            i37 |= ImageMetadata.EDGE_MODE;
                        } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                            if (gapComposerH.d(i4)) {
                                i39 = 131072;
                            } else {
                                i39 = 65536;
                            }
                            i37 |= i39;
                        }
                        i40 = i7 & 65536;
                        if (i40 != 0) {
                            i37 |= 1572864;
                        } else if ((i6 & 1572864) == 0) {
                            i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                        }
                        if ((i6 & 12582912) != 0) {
                            if ((i7 & 131072) == 0) {
                                i17 = 8388608;
                            }
                            i37 |= i17;
                        }
                        if ((i9 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i9 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i5 & 1) != 0) {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            } else {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            }
                            gapComposerH.a0();
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            gapComposerH.L(-565217106);
                            if (j6 != 16) {
                                dTFunctionNameModifier = dTFunctionNameModifier;
                                textStyle3 = textStyle3;
                                jB = j6;
                                z5 = false;
                            } else {
                                gapComposerH.L(-565216333);
                                jB = textStyle3.b();
                                if (jB != 16) {
                                    jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                                }
                                z5 = false;
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(z5);
                            if (textAlign3 != null) {
                                r2 = textAlign3.f10964a;
                            } else {
                                TextAlign.f10959b.getClass();
                                r2 = z5;
                            }
                            TextStyle textStyle5 = textStyle3;
                            int i410 = i37 << 6;
                            Modifier modifier5 = dTFunctionNameModifier;
                            BasicTextKt.b(str2, modifier5, TextStyle.e(textStyle5, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i410 & 57344) | (i410 & ImageMetadata.JPEG_GPS_COORDINATES) | (i410 & 3670016) | (i410 & 29360128) | ((i9 << 18) & 1879048192), 256);
                            modifier2 = modifier5;
                            gapComposer = gapComposerH;
                            textStyle2 = textStyle5;
                            j9 = j11;
                            fontWeight3 = fontWeight2;
                            textAlign2 = textAlign3;
                            i43 = i44;
                            z3 = z4;
                            i41 = i45;
                            i42 = i46;
                            function2 = function3;
                            textDecoration2 = textDecoration3;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            textDecoration2 = textDecoration;
                            j8 = j5;
                            z3 = z;
                            i41 = i3;
                            i42 = i4;
                            function2 = function1;
                            textStyle2 = textStyle;
                            j9 = j7;
                            fontWeight3 = fontWeight2;
                            modifier2 = modifierE;
                            j10 = j4;
                            textAlign2 = textAlign;
                            i43 = i2;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier6 = modifier2;
                            final long j15 = j6;
                            final long j16 = j10;
                            final long j17 = j8;
                            recomposeScopeImplB0.d = new Function2() { // from class: h31
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i6);
                                    TextKt.c(str, modifier6, j15, j9, fontWeight3, j16, textDecoration2, textAlign2, j17, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i9 |= 805306368;
                    i23 = i7 & 1024;
                    if (i23 != 0) {
                        i24 = i6 | 6;
                    } else if ((i6 & 6) == 0) {
                        if (gapComposerH.K(textAlign)) {
                            i25 = 4;
                        } else {
                            i25 = 2;
                        }
                        i24 = i6 | i25;
                    } else {
                        i24 = i6;
                    }
                    i26 = i7 & 2048;
                    if (i26 != 0) {
                        i24 |= 48;
                    } else if ((i6 & 48) != 0) {
                        if (gapComposerH.e(j5)) {
                            i27 = 32;
                        } else {
                            i27 = 16;
                        }
                        i24 |= i27;
                    }
                    i28 = i24;
                    i29 = i7 & 4096;
                    if (i29 != 0) {
                        i31 = i28 | KyberEngine.KyberPolyBytes;
                    } else {
                        i30 = i28;
                        if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                            if (gapComposerH.d(i2)) {
                                i32 = 256;
                            } else {
                                i32 = 128;
                            }
                            i30 |= i32;
                        }
                        i31 = i30;
                    }
                    i33 = i7 & 8192;
                    if (i33 != 0) {
                        i35 = i31 | 3072;
                    } else {
                        i34 = i31;
                        if ((i6 & 3072) != 0) {
                            i34 |= gapComposerH.b(z) ? 2048 : 1024;
                        }
                        i35 = i34;
                    }
                    i36 = i7 & 16384;
                    if (i36 != 0) {
                        i37 = i35;
                        if ((i6 & 24576) == 0) {
                            i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                        }
                        i38 = i7 & 32768;
                        if (i38 != 0) {
                            i37 |= ImageMetadata.EDGE_MODE;
                        } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                            if (gapComposerH.d(i4)) {
                                i39 = 131072;
                            } else {
                                i39 = 65536;
                            }
                            i37 |= i39;
                        }
                        i40 = i7 & 65536;
                        if (i40 != 0) {
                            i37 |= 1572864;
                        } else if ((i6 & 1572864) == 0) {
                            i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                        }
                        if ((i6 & 12582912) != 0) {
                            if ((i7 & 131072) == 0) {
                                i17 = 8388608;
                            }
                            i37 |= i17;
                        }
                        if ((i9 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i9 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i5 & 1) != 0) {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            } else {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            }
                            gapComposerH.a0();
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            gapComposerH.L(-565217106);
                            if (j6 != 16) {
                                dTFunctionNameModifier = dTFunctionNameModifier;
                                textStyle3 = textStyle3;
                                jB = j6;
                                z5 = false;
                            } else {
                                gapComposerH.L(-565216333);
                                jB = textStyle3.b();
                                if (jB != 16) {
                                    jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                                }
                                z5 = false;
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(z5);
                            if (textAlign3 != null) {
                                r2 = textAlign3.f10964a;
                            } else {
                                TextAlign.f10959b.getClass();
                                r2 = z5;
                            }
                            TextStyle textStyle6 = textStyle3;
                            int i411 = i37 << 6;
                            Modifier modifier7 = dTFunctionNameModifier;
                            BasicTextKt.b(str2, modifier7, TextStyle.e(textStyle6, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i411 & 57344) | (i411 & ImageMetadata.JPEG_GPS_COORDINATES) | (i411 & 3670016) | (i411 & 29360128) | ((i9 << 18) & 1879048192), 256);
                            modifier2 = modifier7;
                            gapComposer = gapComposerH;
                            textStyle2 = textStyle6;
                            j9 = j11;
                            fontWeight3 = fontWeight2;
                            textAlign2 = textAlign3;
                            i43 = i44;
                            z3 = z4;
                            i41 = i45;
                            i42 = i46;
                            function2 = function3;
                            textDecoration2 = textDecoration3;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            textDecoration2 = textDecoration;
                            j8 = j5;
                            z3 = z;
                            i41 = i3;
                            i42 = i4;
                            function2 = function1;
                            textStyle2 = textStyle;
                            j9 = j7;
                            fontWeight3 = fontWeight2;
                            modifier2 = modifierE;
                            j10 = j4;
                            textAlign2 = textAlign;
                            i43 = i2;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier8 = modifier2;
                            final long j18 = j6;
                            final long j19 = j10;
                            final long j110 = j8;
                            recomposeScopeImplB0.d = new Function2() { // from class: h31
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i6);
                                    TextKt.c(str, modifier8, j18, j9, fontWeight3, j19, textDecoration2, textAlign2, j110, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i37 = i35 | 24576;
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle7 = textStyle3;
                        int i412 = i37 << 6;
                        Modifier modifier9 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier9, TextStyle.e(textStyle7, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i412 & 57344) | (i412 & ImageMetadata.JPEG_GPS_COORDINATES) | (i412 & 3670016) | (i412 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier9;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle7;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier10 = modifier2;
                        final long j111 = j6;
                        final long j112 = j10;
                        final long j113 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier10, j111, j9, fontWeight3, j112, textDecoration2, textAlign2, j113, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i9 |= 100663296;
                i21 = i7 & 512;
                if (i21 != 0) {
                    if ((i5 & 805306368) == 0) {
                        if (gapComposerH.K(textDecoration)) {
                            i22 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i22 = 268435456;
                        }
                        i9 |= i22;
                    }
                    i23 = i7 & 1024;
                    if (i23 != 0) {
                        i24 = i6 | 6;
                    } else if ((i6 & 6) == 0) {
                        if (gapComposerH.K(textAlign)) {
                            i25 = 4;
                        } else {
                            i25 = 2;
                        }
                        i24 = i6 | i25;
                    } else {
                        i24 = i6;
                    }
                    i26 = i7 & 2048;
                    if (i26 != 0) {
                        i24 |= 48;
                    } else if ((i6 & 48) != 0) {
                        if (gapComposerH.e(j5)) {
                            i27 = 32;
                        } else {
                            i27 = 16;
                        }
                        i24 |= i27;
                    }
                    i28 = i24;
                    i29 = i7 & 4096;
                    if (i29 != 0) {
                        i31 = i28 | KyberEngine.KyberPolyBytes;
                    } else {
                        i30 = i28;
                        if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                            if (gapComposerH.d(i2)) {
                                i32 = 256;
                            } else {
                                i32 = 128;
                            }
                            i30 |= i32;
                        }
                        i31 = i30;
                    }
                    i33 = i7 & 8192;
                    if (i33 != 0) {
                        i35 = i31 | 3072;
                    } else {
                        i34 = i31;
                        if ((i6 & 3072) != 0) {
                            i34 |= gapComposerH.b(z) ? 2048 : 1024;
                        }
                        i35 = i34;
                    }
                    i36 = i7 & 16384;
                    if (i36 != 0) {
                        i37 = i35;
                        if ((i6 & 24576) == 0) {
                            i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                        }
                        i38 = i7 & 32768;
                        if (i38 != 0) {
                            i37 |= ImageMetadata.EDGE_MODE;
                        } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                            if (gapComposerH.d(i4)) {
                                i39 = 131072;
                            } else {
                                i39 = 65536;
                            }
                            i37 |= i39;
                        }
                        i40 = i7 & 65536;
                        if (i40 != 0) {
                            i37 |= 1572864;
                        } else if ((i6 & 1572864) == 0) {
                            i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                        }
                        if ((i6 & 12582912) != 0) {
                            if ((i7 & 131072) == 0) {
                                i17 = 8388608;
                            }
                            i37 |= i17;
                        }
                        if ((i9 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i9 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i5 & 1) != 0) {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            } else {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            }
                            gapComposerH.a0();
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            gapComposerH.L(-565217106);
                            if (j6 != 16) {
                                dTFunctionNameModifier = dTFunctionNameModifier;
                                textStyle3 = textStyle3;
                                jB = j6;
                                z5 = false;
                            } else {
                                gapComposerH.L(-565216333);
                                jB = textStyle3.b();
                                if (jB != 16) {
                                    jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                                }
                                z5 = false;
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(z5);
                            if (textAlign3 != null) {
                                r2 = textAlign3.f10964a;
                            } else {
                                TextAlign.f10959b.getClass();
                                r2 = z5;
                            }
                            TextStyle textStyle8 = textStyle3;
                            int i413 = i37 << 6;
                            Modifier modifier11 = dTFunctionNameModifier;
                            BasicTextKt.b(str2, modifier11, TextStyle.e(textStyle8, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i413 & 57344) | (i413 & ImageMetadata.JPEG_GPS_COORDINATES) | (i413 & 3670016) | (i413 & 29360128) | ((i9 << 18) & 1879048192), 256);
                            modifier2 = modifier11;
                            gapComposer = gapComposerH;
                            textStyle2 = textStyle8;
                            j9 = j11;
                            fontWeight3 = fontWeight2;
                            textAlign2 = textAlign3;
                            i43 = i44;
                            z3 = z4;
                            i41 = i45;
                            i42 = i46;
                            function2 = function3;
                            textDecoration2 = textDecoration3;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            textDecoration2 = textDecoration;
                            j8 = j5;
                            z3 = z;
                            i41 = i3;
                            i42 = i4;
                            function2 = function1;
                            textStyle2 = textStyle;
                            j9 = j7;
                            fontWeight3 = fontWeight2;
                            modifier2 = modifierE;
                            j10 = j4;
                            textAlign2 = textAlign;
                            i43 = i2;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier12 = modifier2;
                            final long j114 = j6;
                            final long j115 = j10;
                            final long j116 = j8;
                            recomposeScopeImplB0.d = new Function2() { // from class: h31
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i6);
                                    TextKt.c(str, modifier12, j114, j9, fontWeight3, j115, textDecoration2, textAlign2, j116, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i37 = i35 | 24576;
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle9 = textStyle3;
                        int i414 = i37 << 6;
                        Modifier modifier13 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier13, TextStyle.e(textStyle9, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i414 & 57344) | (i414 & ImageMetadata.JPEG_GPS_COORDINATES) | (i414 & 3670016) | (i414 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier13;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle9;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier14 = modifier2;
                        final long j117 = j6;
                        final long j118 = j10;
                        final long j119 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier14, j117, j9, fontWeight3, j118, textDecoration2, textAlign2, j119, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i9 |= 805306368;
                i23 = i7 & 1024;
                if (i23 != 0) {
                    i24 = i6 | 6;
                } else if ((i6 & 6) == 0) {
                    if (gapComposerH.K(textAlign)) {
                        i25 = 4;
                    } else {
                        i25 = 2;
                    }
                    i24 = i6 | i25;
                } else {
                    i24 = i6;
                }
                i26 = i7 & 2048;
                if (i26 != 0) {
                    i24 |= 48;
                } else if ((i6 & 48) != 0) {
                    if (gapComposerH.e(j5)) {
                        i27 = 32;
                    } else {
                        i27 = 16;
                    }
                    i24 |= i27;
                }
                i28 = i24;
                i29 = i7 & 4096;
                if (i29 != 0) {
                    i31 = i28 | KyberEngine.KyberPolyBytes;
                } else {
                    i30 = i28;
                    if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                        if (gapComposerH.d(i2)) {
                            i32 = 256;
                        } else {
                            i32 = 128;
                        }
                        i30 |= i32;
                    }
                    i31 = i30;
                }
                i33 = i7 & 8192;
                if (i33 != 0) {
                    i35 = i31 | 3072;
                } else {
                    i34 = i31;
                    if ((i6 & 3072) != 0) {
                        i34 |= gapComposerH.b(z) ? 2048 : 1024;
                    }
                    i35 = i34;
                }
                i36 = i7 & 16384;
                if (i36 != 0) {
                    i37 = i35;
                    if ((i6 & 24576) == 0) {
                        i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                    }
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle10 = textStyle3;
                        int i415 = i37 << 6;
                        Modifier modifier15 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier15, TextStyle.e(textStyle10, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i415 & 57344) | (i415 & ImageMetadata.JPEG_GPS_COORDINATES) | (i415 & 3670016) | (i415 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier15;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle10;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier16 = modifier2;
                        final long j1110 = j6;
                        final long j1111 = j10;
                        final long j1112 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier16, j1110, j9, fontWeight3, j1111, textDecoration2, textAlign2, j1112, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i37 = i35 | 24576;
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle11 = textStyle3;
                    int i416 = i37 << 6;
                    Modifier modifier17 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier17, TextStyle.e(textStyle11, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i416 & 57344) | (i416 & ImageMetadata.JPEG_GPS_COORDINATES) | (i416 & 3670016) | (i416 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier17;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle11;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier18 = modifier2;
                    final long j1113 = j6;
                    final long j1114 = j10;
                    final long j1115 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier18, j1113, j9, fontWeight3, j1114, textDecoration2, textAlign2, j1115, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i9 |= 12582912;
            i19 = i7 & 256;
            if (i19 != 0) {
                if ((i5 & 100663296) == 0) {
                    if (gapComposerH.e(j4)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i9 |= i20;
                }
                i21 = i7 & 512;
                if (i21 != 0) {
                    if ((i5 & 805306368) == 0) {
                        if (gapComposerH.K(textDecoration)) {
                            i22 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i22 = 268435456;
                        }
                        i9 |= i22;
                    }
                    i23 = i7 & 1024;
                    if (i23 != 0) {
                        i24 = i6 | 6;
                    } else if ((i6 & 6) == 0) {
                        if (gapComposerH.K(textAlign)) {
                            i25 = 4;
                        } else {
                            i25 = 2;
                        }
                        i24 = i6 | i25;
                    } else {
                        i24 = i6;
                    }
                    i26 = i7 & 2048;
                    if (i26 != 0) {
                        i24 |= 48;
                    } else if ((i6 & 48) != 0) {
                        if (gapComposerH.e(j5)) {
                            i27 = 32;
                        } else {
                            i27 = 16;
                        }
                        i24 |= i27;
                    }
                    i28 = i24;
                    i29 = i7 & 4096;
                    if (i29 != 0) {
                        i31 = i28 | KyberEngine.KyberPolyBytes;
                    } else {
                        i30 = i28;
                        if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                            if (gapComposerH.d(i2)) {
                                i32 = 256;
                            } else {
                                i32 = 128;
                            }
                            i30 |= i32;
                        }
                        i31 = i30;
                    }
                    i33 = i7 & 8192;
                    if (i33 != 0) {
                        i35 = i31 | 3072;
                    } else {
                        i34 = i31;
                        if ((i6 & 3072) != 0) {
                            i34 |= gapComposerH.b(z) ? 2048 : 1024;
                        }
                        i35 = i34;
                    }
                    i36 = i7 & 16384;
                    if (i36 != 0) {
                        i37 = i35;
                        if ((i6 & 24576) == 0) {
                            i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                        }
                        i38 = i7 & 32768;
                        if (i38 != 0) {
                            i37 |= ImageMetadata.EDGE_MODE;
                        } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                            if (gapComposerH.d(i4)) {
                                i39 = 131072;
                            } else {
                                i39 = 65536;
                            }
                            i37 |= i39;
                        }
                        i40 = i7 & 65536;
                        if (i40 != 0) {
                            i37 |= 1572864;
                        } else if ((i6 & 1572864) == 0) {
                            i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                        }
                        if ((i6 & 12582912) != 0) {
                            if ((i7 & 131072) == 0) {
                                i17 = 8388608;
                            }
                            i37 |= i17;
                        }
                        if ((i9 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i9 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i5 & 1) != 0) {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            } else {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            }
                            gapComposerH.a0();
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            gapComposerH.L(-565217106);
                            if (j6 != 16) {
                                dTFunctionNameModifier = dTFunctionNameModifier;
                                textStyle3 = textStyle3;
                                jB = j6;
                                z5 = false;
                            } else {
                                gapComposerH.L(-565216333);
                                jB = textStyle3.b();
                                if (jB != 16) {
                                    jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                                }
                                z5 = false;
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(z5);
                            if (textAlign3 != null) {
                                r2 = textAlign3.f10964a;
                            } else {
                                TextAlign.f10959b.getClass();
                                r2 = z5;
                            }
                            TextStyle textStyle12 = textStyle3;
                            int i417 = i37 << 6;
                            Modifier modifier19 = dTFunctionNameModifier;
                            BasicTextKt.b(str2, modifier19, TextStyle.e(textStyle12, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i417 & 57344) | (i417 & ImageMetadata.JPEG_GPS_COORDINATES) | (i417 & 3670016) | (i417 & 29360128) | ((i9 << 18) & 1879048192), 256);
                            modifier2 = modifier19;
                            gapComposer = gapComposerH;
                            textStyle2 = textStyle12;
                            j9 = j11;
                            fontWeight3 = fontWeight2;
                            textAlign2 = textAlign3;
                            i43 = i44;
                            z3 = z4;
                            i41 = i45;
                            i42 = i46;
                            function2 = function3;
                            textDecoration2 = textDecoration3;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            textDecoration2 = textDecoration;
                            j8 = j5;
                            z3 = z;
                            i41 = i3;
                            i42 = i4;
                            function2 = function1;
                            textStyle2 = textStyle;
                            j9 = j7;
                            fontWeight3 = fontWeight2;
                            modifier2 = modifierE;
                            j10 = j4;
                            textAlign2 = textAlign;
                            i43 = i2;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier110 = modifier2;
                            final long j1116 = j6;
                            final long j1117 = j10;
                            final long j1118 = j8;
                            recomposeScopeImplB0.d = new Function2() { // from class: h31
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i6);
                                    TextKt.c(str, modifier110, j1116, j9, fontWeight3, j1117, textDecoration2, textAlign2, j1118, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i37 = i35 | 24576;
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle13 = textStyle3;
                        int i418 = i37 << 6;
                        Modifier modifier111 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier111, TextStyle.e(textStyle13, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i418 & 57344) | (i418 & ImageMetadata.JPEG_GPS_COORDINATES) | (i418 & 3670016) | (i418 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier111;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle13;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier112 = modifier2;
                        final long j1119 = j6;
                        final long j11110 = j10;
                        final long j11111 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier112, j1119, j9, fontWeight3, j11110, textDecoration2, textAlign2, j11111, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i9 |= 805306368;
                i23 = i7 & 1024;
                if (i23 != 0) {
                    i24 = i6 | 6;
                } else if ((i6 & 6) == 0) {
                    if (gapComposerH.K(textAlign)) {
                        i25 = 4;
                    } else {
                        i25 = 2;
                    }
                    i24 = i6 | i25;
                } else {
                    i24 = i6;
                }
                i26 = i7 & 2048;
                if (i26 != 0) {
                    i24 |= 48;
                } else if ((i6 & 48) != 0) {
                    if (gapComposerH.e(j5)) {
                        i27 = 32;
                    } else {
                        i27 = 16;
                    }
                    i24 |= i27;
                }
                i28 = i24;
                i29 = i7 & 4096;
                if (i29 != 0) {
                    i31 = i28 | KyberEngine.KyberPolyBytes;
                } else {
                    i30 = i28;
                    if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                        if (gapComposerH.d(i2)) {
                            i32 = 256;
                        } else {
                            i32 = 128;
                        }
                        i30 |= i32;
                    }
                    i31 = i30;
                }
                i33 = i7 & 8192;
                if (i33 != 0) {
                    i35 = i31 | 3072;
                } else {
                    i34 = i31;
                    if ((i6 & 3072) != 0) {
                        i34 |= gapComposerH.b(z) ? 2048 : 1024;
                    }
                    i35 = i34;
                }
                i36 = i7 & 16384;
                if (i36 != 0) {
                    i37 = i35;
                    if ((i6 & 24576) == 0) {
                        i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                    }
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle14 = textStyle3;
                        int i419 = i37 << 6;
                        Modifier modifier113 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier113, TextStyle.e(textStyle14, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i419 & 57344) | (i419 & ImageMetadata.JPEG_GPS_COORDINATES) | (i419 & 3670016) | (i419 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier113;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle14;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier114 = modifier2;
                        final long j11112 = j6;
                        final long j11113 = j10;
                        final long j11114 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier114, j11112, j9, fontWeight3, j11113, textDecoration2, textAlign2, j11114, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i37 = i35 | 24576;
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle15 = textStyle3;
                    int i4110 = i37 << 6;
                    Modifier modifier115 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier115, TextStyle.e(textStyle15, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4110 & 57344) | (i4110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4110 & 3670016) | (i4110 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier115;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle15;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier116 = modifier2;
                    final long j11115 = j6;
                    final long j11116 = j10;
                    final long j11117 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier116, j11115, j9, fontWeight3, j11116, textDecoration2, textAlign2, j11117, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i9 |= 100663296;
            i21 = i7 & 512;
            if (i21 != 0) {
                if ((i5 & 805306368) == 0) {
                    if (gapComposerH.K(textDecoration)) {
                        i22 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i22 = 268435456;
                    }
                    i9 |= i22;
                }
                i23 = i7 & 1024;
                if (i23 != 0) {
                    i24 = i6 | 6;
                } else if ((i6 & 6) == 0) {
                    if (gapComposerH.K(textAlign)) {
                        i25 = 4;
                    } else {
                        i25 = 2;
                    }
                    i24 = i6 | i25;
                } else {
                    i24 = i6;
                }
                i26 = i7 & 2048;
                if (i26 != 0) {
                    i24 |= 48;
                } else if ((i6 & 48) != 0) {
                    if (gapComposerH.e(j5)) {
                        i27 = 32;
                    } else {
                        i27 = 16;
                    }
                    i24 |= i27;
                }
                i28 = i24;
                i29 = i7 & 4096;
                if (i29 != 0) {
                    i31 = i28 | KyberEngine.KyberPolyBytes;
                } else {
                    i30 = i28;
                    if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                        if (gapComposerH.d(i2)) {
                            i32 = 256;
                        } else {
                            i32 = 128;
                        }
                        i30 |= i32;
                    }
                    i31 = i30;
                }
                i33 = i7 & 8192;
                if (i33 != 0) {
                    i35 = i31 | 3072;
                } else {
                    i34 = i31;
                    if ((i6 & 3072) != 0) {
                        i34 |= gapComposerH.b(z) ? 2048 : 1024;
                    }
                    i35 = i34;
                }
                i36 = i7 & 16384;
                if (i36 != 0) {
                    i37 = i35;
                    if ((i6 & 24576) == 0) {
                        i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                    }
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle16 = textStyle3;
                        int i4111 = i37 << 6;
                        Modifier modifier117 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier117, TextStyle.e(textStyle16, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4111 & 57344) | (i4111 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4111 & 3670016) | (i4111 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier117;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle16;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier118 = modifier2;
                        final long j11118 = j6;
                        final long j11119 = j10;
                        final long j111110 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier118, j11118, j9, fontWeight3, j11119, textDecoration2, textAlign2, j111110, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i37 = i35 | 24576;
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle17 = textStyle3;
                    int i4112 = i37 << 6;
                    Modifier modifier119 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier119, TextStyle.e(textStyle17, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4112 & 57344) | (i4112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4112 & 3670016) | (i4112 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier119;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle17;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier1110 = modifier2;
                    final long j111111 = j6;
                    final long j111112 = j10;
                    final long j111113 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier1110, j111111, j9, fontWeight3, j111112, textDecoration2, textAlign2, j111113, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i9 |= 805306368;
            i23 = i7 & 1024;
            if (i23 != 0) {
                i24 = i6 | 6;
            } else if ((i6 & 6) == 0) {
                if (gapComposerH.K(textAlign)) {
                    i25 = 4;
                } else {
                    i25 = 2;
                }
                i24 = i6 | i25;
            } else {
                i24 = i6;
            }
            i26 = i7 & 2048;
            if (i26 != 0) {
                i24 |= 48;
            } else if ((i6 & 48) != 0) {
                if (gapComposerH.e(j5)) {
                    i27 = 32;
                } else {
                    i27 = 16;
                }
                i24 |= i27;
            }
            i28 = i24;
            i29 = i7 & 4096;
            if (i29 != 0) {
                i31 = i28 | KyberEngine.KyberPolyBytes;
            } else {
                i30 = i28;
                if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                    if (gapComposerH.d(i2)) {
                        i32 = 256;
                    } else {
                        i32 = 128;
                    }
                    i30 |= i32;
                }
                i31 = i30;
            }
            i33 = i7 & 8192;
            if (i33 != 0) {
                i35 = i31 | 3072;
            } else {
                i34 = i31;
                if ((i6 & 3072) != 0) {
                    i34 |= gapComposerH.b(z) ? 2048 : 1024;
                }
                i35 = i34;
            }
            i36 = i7 & 16384;
            if (i36 != 0) {
                i37 = i35;
                if ((i6 & 24576) == 0) {
                    i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                }
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle18 = textStyle3;
                    int i4113 = i37 << 6;
                    Modifier modifier1111 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier1111, TextStyle.e(textStyle18, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4113 & 57344) | (i4113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4113 & 3670016) | (i4113 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier1111;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle18;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier1112 = modifier2;
                    final long j111114 = j6;
                    final long j111115 = j10;
                    final long j111116 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier1112, j111114, j9, fontWeight3, j111115, textDecoration2, textAlign2, j111116, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i37 = i35 | 24576;
            i38 = i7 & 32768;
            if (i38 != 0) {
                i37 |= ImageMetadata.EDGE_MODE;
            } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(i4)) {
                    i39 = 131072;
                } else {
                    i39 = 65536;
                }
                i37 |= i39;
            }
            i40 = i7 & 65536;
            if (i40 != 0) {
                i37 |= 1572864;
            } else if ((i6 & 1572864) == 0) {
                i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
            }
            if ((i6 & 12582912) != 0) {
                if ((i7 & 131072) == 0) {
                    i17 = 8388608;
                }
                i37 |= i17;
            }
            if ((i9 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i9 & 1, z2)) {
                gapComposerH.y0();
                if ((i5 & 1) != 0) {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                gapComposerH.L(-565217106);
                if (j6 != 16) {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    textStyle3 = textStyle3;
                    jB = j6;
                    z5 = false;
                } else {
                    gapComposerH.L(-565216333);
                    jB = textStyle3.b();
                    if (jB != 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    z5 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z5);
                if (textAlign3 != null) {
                    r2 = textAlign3.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    r2 = z5;
                }
                TextStyle textStyle19 = textStyle3;
                int i4114 = i37 << 6;
                Modifier modifier1113 = dTFunctionNameModifier;
                BasicTextKt.b(str2, modifier1113, TextStyle.e(textStyle19, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4114 & 57344) | (i4114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4114 & 3670016) | (i4114 & 29360128) | ((i9 << 18) & 1879048192), 256);
                modifier2 = modifier1113;
                gapComposer = gapComposerH;
                textStyle2 = textStyle19;
                j9 = j11;
                fontWeight3 = fontWeight2;
                textAlign2 = textAlign3;
                i43 = i44;
                z3 = z4;
                i41 = i45;
                i42 = i46;
                function2 = function3;
                textDecoration2 = textDecoration3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                textDecoration2 = textDecoration;
                j8 = j5;
                z3 = z;
                i41 = i3;
                i42 = i4;
                function2 = function1;
                textStyle2 = textStyle;
                j9 = j7;
                fontWeight3 = fontWeight2;
                modifier2 = modifierE;
                j10 = j4;
                textAlign2 = textAlign;
                i43 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier1114 = modifier2;
                final long j111117 = j6;
                final long j111118 = j10;
                final long j111119 = j8;
                recomposeScopeImplB0.d = new Function2() { // from class: h31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i6);
                        TextKt.c(str, modifier1114, j111117, j9, fontWeight3, j111118, textDecoration2, textAlign2, j111119, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= KyberEngine.KyberPolyBytes;
        i9 = i8;
        j6 = j2;
        if ((i7 & 8) != 0) {
            i9 |= 3072;
        } else if ((i5 & 3072) == 0) {
            if (gapComposerH.y(null)) {
                i10 = 2048;
            } else {
                i10 = 1024;
            }
            i9 |= i10;
        }
        i11 = i7 & 16;
        if (i11 != 0) {
            i9 |= 24576;
            i12 = i11;
            j7 = j3;
        } else {
            i12 = i11;
            j7 = j3;
            if ((i5 & 24576) == 0) {
                if (gapComposerH.e(j7)) {
                    i13 = 16384;
                } else {
                    i13 = 8192;
                }
                i9 |= i13;
            }
        }
        if ((i7 & 32) != 0) {
            i9 |= ImageMetadata.EDGE_MODE;
        } else if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.K(null)) {
                i14 = 131072;
            } else {
                i14 = 65536;
            }
            i9 |= i14;
        }
        i15 = i7 & 64;
        if (i15 != 0) {
            i9 |= 1572864;
            fontWeight2 = fontWeight;
        } else {
            fontWeight2 = fontWeight;
            if ((i5 & 1572864) == 0) {
                if (gapComposerH.K(fontWeight2)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i9 |= i16;
            }
        }
        i17 = 4194304;
        if ((i7 & 128) != 0) {
            if ((i5 & 12582912) == 0) {
                if (gapComposerH.K(null)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i9 |= i18;
            }
            i19 = i7 & 256;
            if (i19 != 0) {
                if ((i5 & 100663296) == 0) {
                    if (gapComposerH.e(j4)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i9 |= i20;
                }
                i21 = i7 & 512;
                if (i21 != 0) {
                    if ((i5 & 805306368) == 0) {
                        if (gapComposerH.K(textDecoration)) {
                            i22 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i22 = 268435456;
                        }
                        i9 |= i22;
                    }
                    i23 = i7 & 1024;
                    if (i23 != 0) {
                        i24 = i6 | 6;
                    } else if ((i6 & 6) == 0) {
                        if (gapComposerH.K(textAlign)) {
                            i25 = 4;
                        } else {
                            i25 = 2;
                        }
                        i24 = i6 | i25;
                    } else {
                        i24 = i6;
                    }
                    i26 = i7 & 2048;
                    if (i26 != 0) {
                        i24 |= 48;
                    } else if ((i6 & 48) != 0) {
                        if (gapComposerH.e(j5)) {
                            i27 = 32;
                        } else {
                            i27 = 16;
                        }
                        i24 |= i27;
                    }
                    i28 = i24;
                    i29 = i7 & 4096;
                    if (i29 != 0) {
                        i31 = i28 | KyberEngine.KyberPolyBytes;
                    } else {
                        i30 = i28;
                        if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                            if (gapComposerH.d(i2)) {
                                i32 = 256;
                            } else {
                                i32 = 128;
                            }
                            i30 |= i32;
                        }
                        i31 = i30;
                    }
                    i33 = i7 & 8192;
                    if (i33 != 0) {
                        i35 = i31 | 3072;
                    } else {
                        i34 = i31;
                        if ((i6 & 3072) != 0) {
                            i34 |= gapComposerH.b(z) ? 2048 : 1024;
                        }
                        i35 = i34;
                    }
                    i36 = i7 & 16384;
                    if (i36 != 0) {
                        i37 = i35;
                        if ((i6 & 24576) == 0) {
                            i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                        }
                        i38 = i7 & 32768;
                        if (i38 != 0) {
                            i37 |= ImageMetadata.EDGE_MODE;
                        } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                            if (gapComposerH.d(i4)) {
                                i39 = 131072;
                            } else {
                                i39 = 65536;
                            }
                            i37 |= i39;
                        }
                        i40 = i7 & 65536;
                        if (i40 != 0) {
                            i37 |= 1572864;
                        } else if ((i6 & 1572864) == 0) {
                            i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                        }
                        if ((i6 & 12582912) != 0) {
                            if ((i7 & 131072) == 0) {
                                i17 = 8388608;
                            }
                            i37 |= i17;
                        }
                        if ((i9 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i9 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i5 & 1) != 0) {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            } else {
                                if (i47 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                                }
                                if (i48 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    Color.f8866b.getClass();
                                    j6 = Color.f8871i;
                                }
                                if (i12 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j11 = TextUnit.d;
                                } else {
                                    j11 = j7;
                                }
                                if (i15 != 0) {
                                    fontWeight2 = null;
                                }
                                if (i19 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j10 = TextUnit.d;
                                } else {
                                    j10 = j4;
                                }
                                if (i21 != 0) {
                                    textDecoration3 = null;
                                } else {
                                    textDecoration3 = textDecoration;
                                }
                                if (i23 != 0) {
                                    textAlign3 = null;
                                } else {
                                    textAlign3 = textAlign;
                                }
                                if (i26 != 0) {
                                    TextUnit.f11023b.getClass();
                                    j8 = TextUnit.d;
                                } else {
                                    j8 = j5;
                                }
                                if (i29 != 0) {
                                    TextOverflow.f10989a.getClass();
                                    i44 = TextOverflow.f10990b;
                                } else {
                                    i44 = i2;
                                }
                                if (i33 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i36 != 0) {
                                    i45 = Integer.MAX_VALUE;
                                } else {
                                    i45 = i3;
                                }
                                if (i38 == 0) {
                                }
                                if (i40 != 0) {
                                    function3 = null;
                                } else {
                                    function3 = function1;
                                }
                                if ((i7 & 131072) != 0) {
                                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                    i37 &= -29360129;
                                } else {
                                    textStyle3 = textStyle;
                                }
                            }
                            gapComposerH.a0();
                            OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                            gapComposerH.L(-565217106);
                            if (j6 != 16) {
                                dTFunctionNameModifier = dTFunctionNameModifier;
                                textStyle3 = textStyle3;
                                jB = j6;
                                z5 = false;
                            } else {
                                gapComposerH.L(-565216333);
                                jB = textStyle3.b();
                                if (jB != 16) {
                                    jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                                }
                                z5 = false;
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(z5);
                            if (textAlign3 != null) {
                                r2 = textAlign3.f10964a;
                            } else {
                                TextAlign.f10959b.getClass();
                                r2 = z5;
                            }
                            TextStyle textStyle110 = textStyle3;
                            int i4115 = i37 << 6;
                            Modifier modifier1115 = dTFunctionNameModifier;
                            BasicTextKt.b(str2, modifier1115, TextStyle.e(textStyle110, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4115 & 57344) | (i4115 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4115 & 3670016) | (i4115 & 29360128) | ((i9 << 18) & 1879048192), 256);
                            modifier2 = modifier1115;
                            gapComposer = gapComposerH;
                            textStyle2 = textStyle110;
                            j9 = j11;
                            fontWeight3 = fontWeight2;
                            textAlign2 = textAlign3;
                            i43 = i44;
                            z3 = z4;
                            i41 = i45;
                            i42 = i46;
                            function2 = function3;
                            textDecoration2 = textDecoration3;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            textDecoration2 = textDecoration;
                            j8 = j5;
                            z3 = z;
                            i41 = i3;
                            i42 = i4;
                            function2 = function1;
                            textStyle2 = textStyle;
                            j9 = j7;
                            fontWeight3 = fontWeight2;
                            modifier2 = modifierE;
                            j10 = j4;
                            textAlign2 = textAlign;
                            i43 = i2;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier1116 = modifier2;
                            final long j1111110 = j6;
                            final long j1111111 = j10;
                            final long j1111112 = j8;
                            recomposeScopeImplB0.d = new Function2() { // from class: h31
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i6);
                                    TextKt.c(str, modifier1116, j1111110, j9, fontWeight3, j1111111, textDecoration2, textAlign2, j1111112, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i37 = i35 | 24576;
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle111 = textStyle3;
                        int i4116 = i37 << 6;
                        Modifier modifier1117 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier1117, TextStyle.e(textStyle111, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4116 & 57344) | (i4116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4116 & 3670016) | (i4116 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier1117;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle111;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier1118 = modifier2;
                        final long j1111113 = j6;
                        final long j1111114 = j10;
                        final long j1111115 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier1118, j1111113, j9, fontWeight3, j1111114, textDecoration2, textAlign2, j1111115, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i9 |= 805306368;
                i23 = i7 & 1024;
                if (i23 != 0) {
                    i24 = i6 | 6;
                } else if ((i6 & 6) == 0) {
                    if (gapComposerH.K(textAlign)) {
                        i25 = 4;
                    } else {
                        i25 = 2;
                    }
                    i24 = i6 | i25;
                } else {
                    i24 = i6;
                }
                i26 = i7 & 2048;
                if (i26 != 0) {
                    i24 |= 48;
                } else if ((i6 & 48) != 0) {
                    if (gapComposerH.e(j5)) {
                        i27 = 32;
                    } else {
                        i27 = 16;
                    }
                    i24 |= i27;
                }
                i28 = i24;
                i29 = i7 & 4096;
                if (i29 != 0) {
                    i31 = i28 | KyberEngine.KyberPolyBytes;
                } else {
                    i30 = i28;
                    if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                        if (gapComposerH.d(i2)) {
                            i32 = 256;
                        } else {
                            i32 = 128;
                        }
                        i30 |= i32;
                    }
                    i31 = i30;
                }
                i33 = i7 & 8192;
                if (i33 != 0) {
                    i35 = i31 | 3072;
                } else {
                    i34 = i31;
                    if ((i6 & 3072) != 0) {
                        i34 |= gapComposerH.b(z) ? 2048 : 1024;
                    }
                    i35 = i34;
                }
                i36 = i7 & 16384;
                if (i36 != 0) {
                    i37 = i35;
                    if ((i6 & 24576) == 0) {
                        i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                    }
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle112 = textStyle3;
                        int i4117 = i37 << 6;
                        Modifier modifier1119 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier1119, TextStyle.e(textStyle112, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4117 & 57344) | (i4117 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4117 & 3670016) | (i4117 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier1119;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle112;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier11110 = modifier2;
                        final long j1111116 = j6;
                        final long j1111117 = j10;
                        final long j1111118 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier11110, j1111116, j9, fontWeight3, j1111117, textDecoration2, textAlign2, j1111118, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i37 = i35 | 24576;
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey110 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle113 = textStyle3;
                    int i4118 = i37 << 6;
                    Modifier modifier11111 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier11111, TextStyle.e(textStyle113, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4118 & 57344) | (i4118 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4118 & 3670016) | (i4118 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier11111;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle113;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier11112 = modifier2;
                    final long j1111119 = j6;
                    final long j11111110 = j10;
                    final long j11111111 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier11112, j1111119, j9, fontWeight3, j11111110, textDecoration2, textAlign2, j11111111, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i9 |= 100663296;
            i21 = i7 & 512;
            if (i21 != 0) {
                if ((i5 & 805306368) == 0) {
                    if (gapComposerH.K(textDecoration)) {
                        i22 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i22 = 268435456;
                    }
                    i9 |= i22;
                }
                i23 = i7 & 1024;
                if (i23 != 0) {
                    i24 = i6 | 6;
                } else if ((i6 & 6) == 0) {
                    if (gapComposerH.K(textAlign)) {
                        i25 = 4;
                    } else {
                        i25 = 2;
                    }
                    i24 = i6 | i25;
                } else {
                    i24 = i6;
                }
                i26 = i7 & 2048;
                if (i26 != 0) {
                    i24 |= 48;
                } else if ((i6 & 48) != 0) {
                    if (gapComposerH.e(j5)) {
                        i27 = 32;
                    } else {
                        i27 = 16;
                    }
                    i24 |= i27;
                }
                i28 = i24;
                i29 = i7 & 4096;
                if (i29 != 0) {
                    i31 = i28 | KyberEngine.KyberPolyBytes;
                } else {
                    i30 = i28;
                    if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                        if (gapComposerH.d(i2)) {
                            i32 = 256;
                        } else {
                            i32 = 128;
                        }
                        i30 |= i32;
                    }
                    i31 = i30;
                }
                i33 = i7 & 8192;
                if (i33 != 0) {
                    i35 = i31 | 3072;
                } else {
                    i34 = i31;
                    if ((i6 & 3072) != 0) {
                        i34 |= gapComposerH.b(z) ? 2048 : 1024;
                    }
                    i35 = i34;
                }
                i36 = i7 & 16384;
                if (i36 != 0) {
                    i37 = i35;
                    if ((i6 & 24576) == 0) {
                        i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                    }
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle114 = textStyle3;
                        int i4119 = i37 << 6;
                        Modifier modifier11113 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier11113, TextStyle.e(textStyle114, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i4119 & 57344) | (i4119 & ImageMetadata.JPEG_GPS_COORDINATES) | (i4119 & 3670016) | (i4119 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier11113;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle114;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier11114 = modifier2;
                        final long j11111112 = j6;
                        final long j11111113 = j10;
                        final long j11111114 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier11114, j11111112, j9, fontWeight3, j11111113, textDecoration2, textAlign2, j11111114, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i37 = i35 | 24576;
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle115 = textStyle3;
                    int i41110 = i37 << 6;
                    Modifier modifier11115 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier11115, TextStyle.e(textStyle115, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41110 & 57344) | (i41110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41110 & 3670016) | (i41110 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier11115;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle115;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier11116 = modifier2;
                    final long j11111115 = j6;
                    final long j11111116 = j10;
                    final long j11111117 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier11116, j11111115, j9, fontWeight3, j11111116, textDecoration2, textAlign2, j11111117, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i9 |= 805306368;
            i23 = i7 & 1024;
            if (i23 != 0) {
                i24 = i6 | 6;
            } else if ((i6 & 6) == 0) {
                if (gapComposerH.K(textAlign)) {
                    i25 = 4;
                } else {
                    i25 = 2;
                }
                i24 = i6 | i25;
            } else {
                i24 = i6;
            }
            i26 = i7 & 2048;
            if (i26 != 0) {
                i24 |= 48;
            } else if ((i6 & 48) != 0) {
                if (gapComposerH.e(j5)) {
                    i27 = 32;
                } else {
                    i27 = 16;
                }
                i24 |= i27;
            }
            i28 = i24;
            i29 = i7 & 4096;
            if (i29 != 0) {
                i31 = i28 | KyberEngine.KyberPolyBytes;
            } else {
                i30 = i28;
                if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                    if (gapComposerH.d(i2)) {
                        i32 = 256;
                    } else {
                        i32 = 128;
                    }
                    i30 |= i32;
                }
                i31 = i30;
            }
            i33 = i7 & 8192;
            if (i33 != 0) {
                i35 = i31 | 3072;
            } else {
                i34 = i31;
                if ((i6 & 3072) != 0) {
                    i34 |= gapComposerH.b(z) ? 2048 : 1024;
                }
                i35 = i34;
            }
            i36 = i7 & 16384;
            if (i36 != 0) {
                i37 = i35;
                if ((i6 & 24576) == 0) {
                    i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                }
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey113 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle116 = textStyle3;
                    int i41111 = i37 << 6;
                    Modifier modifier11117 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier11117, TextStyle.e(textStyle116, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41111 & 57344) | (i41111 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41111 & 3670016) | (i41111 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier11117;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle116;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier11118 = modifier2;
                    final long j11111118 = j6;
                    final long j11111119 = j10;
                    final long j111111110 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier11118, j11111118, j9, fontWeight3, j11111119, textDecoration2, textAlign2, j111111110, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i37 = i35 | 24576;
            i38 = i7 & 32768;
            if (i38 != 0) {
                i37 |= ImageMetadata.EDGE_MODE;
            } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(i4)) {
                    i39 = 131072;
                } else {
                    i39 = 65536;
                }
                i37 |= i39;
            }
            i40 = i7 & 65536;
            if (i40 != 0) {
                i37 |= 1572864;
            } else if ((i6 & 1572864) == 0) {
                i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
            }
            if ((i6 & 12582912) != 0) {
                if ((i7 & 131072) == 0) {
                    i17 = 8388608;
                }
                i37 |= i17;
            }
            if ((i9 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i9 & 1, z2)) {
                gapComposerH.y0();
                if ((i5 & 1) != 0) {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey114 = ComposerKt.f7940a;
                gapComposerH.L(-565217106);
                if (j6 != 16) {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    textStyle3 = textStyle3;
                    jB = j6;
                    z5 = false;
                } else {
                    gapComposerH.L(-565216333);
                    jB = textStyle3.b();
                    if (jB != 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    z5 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z5);
                if (textAlign3 != null) {
                    r2 = textAlign3.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    r2 = z5;
                }
                TextStyle textStyle117 = textStyle3;
                int i41112 = i37 << 6;
                Modifier modifier11119 = dTFunctionNameModifier;
                BasicTextKt.b(str2, modifier11119, TextStyle.e(textStyle117, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41112 & 57344) | (i41112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41112 & 3670016) | (i41112 & 29360128) | ((i9 << 18) & 1879048192), 256);
                modifier2 = modifier11119;
                gapComposer = gapComposerH;
                textStyle2 = textStyle117;
                j9 = j11;
                fontWeight3 = fontWeight2;
                textAlign2 = textAlign3;
                i43 = i44;
                z3 = z4;
                i41 = i45;
                i42 = i46;
                function2 = function3;
                textDecoration2 = textDecoration3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                textDecoration2 = textDecoration;
                j8 = j5;
                z3 = z;
                i41 = i3;
                i42 = i4;
                function2 = function1;
                textStyle2 = textStyle;
                j9 = j7;
                fontWeight3 = fontWeight2;
                modifier2 = modifierE;
                j10 = j4;
                textAlign2 = textAlign;
                i43 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier111110 = modifier2;
                final long j111111111 = j6;
                final long j111111112 = j10;
                final long j111111113 = j8;
                recomposeScopeImplB0.d = new Function2() { // from class: h31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i6);
                        TextKt.c(str, modifier111110, j111111111, j9, fontWeight3, j111111112, textDecoration2, textAlign2, j111111113, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i9 |= 12582912;
        i19 = i7 & 256;
        if (i19 != 0) {
            if ((i5 & 100663296) == 0) {
                if (gapComposerH.e(j4)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i9 |= i20;
            }
            i21 = i7 & 512;
            if (i21 != 0) {
                if ((i5 & 805306368) == 0) {
                    if (gapComposerH.K(textDecoration)) {
                        i22 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i22 = 268435456;
                    }
                    i9 |= i22;
                }
                i23 = i7 & 1024;
                if (i23 != 0) {
                    i24 = i6 | 6;
                } else if ((i6 & 6) == 0) {
                    if (gapComposerH.K(textAlign)) {
                        i25 = 4;
                    } else {
                        i25 = 2;
                    }
                    i24 = i6 | i25;
                } else {
                    i24 = i6;
                }
                i26 = i7 & 2048;
                if (i26 != 0) {
                    i24 |= 48;
                } else if ((i6 & 48) != 0) {
                    if (gapComposerH.e(j5)) {
                        i27 = 32;
                    } else {
                        i27 = 16;
                    }
                    i24 |= i27;
                }
                i28 = i24;
                i29 = i7 & 4096;
                if (i29 != 0) {
                    i31 = i28 | KyberEngine.KyberPolyBytes;
                } else {
                    i30 = i28;
                    if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                        if (gapComposerH.d(i2)) {
                            i32 = 256;
                        } else {
                            i32 = 128;
                        }
                        i30 |= i32;
                    }
                    i31 = i30;
                }
                i33 = i7 & 8192;
                if (i33 != 0) {
                    i35 = i31 | 3072;
                } else {
                    i34 = i31;
                    if ((i6 & 3072) != 0) {
                        i34 |= gapComposerH.b(z) ? 2048 : 1024;
                    }
                    i35 = i34;
                }
                i36 = i7 & 16384;
                if (i36 != 0) {
                    i37 = i35;
                    if ((i6 & 24576) == 0) {
                        i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                    }
                    i38 = i7 & 32768;
                    if (i38 != 0) {
                        i37 |= ImageMetadata.EDGE_MODE;
                    } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i4)) {
                            i39 = 131072;
                        } else {
                            i39 = 65536;
                        }
                        i37 |= i39;
                    }
                    i40 = i7 & 65536;
                    if (i40 != 0) {
                        i37 |= 1572864;
                    } else if ((i6 & 1572864) == 0) {
                        i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                    }
                    if ((i6 & 12582912) != 0) {
                        if ((i7 & 131072) == 0) {
                            i17 = 8388608;
                        }
                        i37 |= i17;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i5 & 1) != 0) {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                            }
                            if (i48 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j6 = Color.f8871i;
                            }
                            if (i12 != 0) {
                                TextUnit.f11023b.getClass();
                                j11 = TextUnit.d;
                            } else {
                                j11 = j7;
                            }
                            if (i15 != 0) {
                                fontWeight2 = null;
                            }
                            if (i19 != 0) {
                                TextUnit.f11023b.getClass();
                                j10 = TextUnit.d;
                            } else {
                                j10 = j4;
                            }
                            if (i21 != 0) {
                                textDecoration3 = null;
                            } else {
                                textDecoration3 = textDecoration;
                            }
                            if (i23 != 0) {
                                textAlign3 = null;
                            } else {
                                textAlign3 = textAlign;
                            }
                            if (i26 != 0) {
                                TextUnit.f11023b.getClass();
                                j8 = TextUnit.d;
                            } else {
                                j8 = j5;
                            }
                            if (i29 != 0) {
                                TextOverflow.f10989a.getClass();
                                i44 = TextOverflow.f10990b;
                            } else {
                                i44 = i2;
                            }
                            if (i33 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i36 != 0) {
                                i45 = Integer.MAX_VALUE;
                            } else {
                                i45 = i3;
                            }
                            if (i38 == 0) {
                            }
                            if (i40 != 0) {
                                function3 = null;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 131072) != 0) {
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                                i37 &= -29360129;
                            } else {
                                textStyle3 = textStyle;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                        gapComposerH.L(-565217106);
                        if (j6 != 16) {
                            dTFunctionNameModifier = dTFunctionNameModifier;
                            textStyle3 = textStyle3;
                            jB = j6;
                            z5 = false;
                        } else {
                            gapComposerH.L(-565216333);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        if (textAlign3 != null) {
                            r2 = textAlign3.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            r2 = z5;
                        }
                        TextStyle textStyle118 = textStyle3;
                        int i41113 = i37 << 6;
                        Modifier modifier111111 = dTFunctionNameModifier;
                        BasicTextKt.b(str2, modifier111111, TextStyle.e(textStyle118, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41113 & 57344) | (i41113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41113 & 3670016) | (i41113 & 29360128) | ((i9 << 18) & 1879048192), 256);
                        modifier2 = modifier111111;
                        gapComposer = gapComposerH;
                        textStyle2 = textStyle118;
                        j9 = j11;
                        fontWeight3 = fontWeight2;
                        textAlign2 = textAlign3;
                        i43 = i44;
                        z3 = z4;
                        i41 = i45;
                        i42 = i46;
                        function2 = function3;
                        textDecoration2 = textDecoration3;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        textDecoration2 = textDecoration;
                        j8 = j5;
                        z3 = z;
                        i41 = i3;
                        i42 = i4;
                        function2 = function1;
                        textStyle2 = textStyle;
                        j9 = j7;
                        fontWeight3 = fontWeight2;
                        modifier2 = modifierE;
                        j10 = j4;
                        textAlign2 = textAlign;
                        i43 = i2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier111112 = modifier2;
                        final long j111111114 = j6;
                        final long j111111115 = j10;
                        final long j111111116 = j8;
                        recomposeScopeImplB0.d = new Function2() { // from class: h31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.c(str, modifier111112, j111111114, j9, fontWeight3, j111111115, textDecoration2, textAlign2, j111111116, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i37 = i35 | 24576;
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey116 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle119 = textStyle3;
                    int i41114 = i37 << 6;
                    Modifier modifier111113 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier111113, TextStyle.e(textStyle119, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41114 & 57344) | (i41114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41114 & 3670016) | (i41114 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier111113;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle119;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier111114 = modifier2;
                    final long j111111117 = j6;
                    final long j111111118 = j10;
                    final long j111111119 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier111114, j111111117, j9, fontWeight3, j111111118, textDecoration2, textAlign2, j111111119, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i9 |= 805306368;
            i23 = i7 & 1024;
            if (i23 != 0) {
                i24 = i6 | 6;
            } else if ((i6 & 6) == 0) {
                if (gapComposerH.K(textAlign)) {
                    i25 = 4;
                } else {
                    i25 = 2;
                }
                i24 = i6 | i25;
            } else {
                i24 = i6;
            }
            i26 = i7 & 2048;
            if (i26 != 0) {
                i24 |= 48;
            } else if ((i6 & 48) != 0) {
                if (gapComposerH.e(j5)) {
                    i27 = 32;
                } else {
                    i27 = 16;
                }
                i24 |= i27;
            }
            i28 = i24;
            i29 = i7 & 4096;
            if (i29 != 0) {
                i31 = i28 | KyberEngine.KyberPolyBytes;
            } else {
                i30 = i28;
                if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                    if (gapComposerH.d(i2)) {
                        i32 = 256;
                    } else {
                        i32 = 128;
                    }
                    i30 |= i32;
                }
                i31 = i30;
            }
            i33 = i7 & 8192;
            if (i33 != 0) {
                i35 = i31 | 3072;
            } else {
                i34 = i31;
                if ((i6 & 3072) != 0) {
                    i34 |= gapComposerH.b(z) ? 2048 : 1024;
                }
                i35 = i34;
            }
            i36 = i7 & 16384;
            if (i36 != 0) {
                i37 = i35;
                if ((i6 & 24576) == 0) {
                    i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                }
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey117 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle1110 = textStyle3;
                    int i41115 = i37 << 6;
                    Modifier modifier111115 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier111115, TextStyle.e(textStyle1110, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41115 & 57344) | (i41115 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41115 & 3670016) | (i41115 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier111115;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle1110;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier111116 = modifier2;
                    final long j1111111110 = j6;
                    final long j1111111111 = j10;
                    final long j1111111112 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier111116, j1111111110, j9, fontWeight3, j1111111111, textDecoration2, textAlign2, j1111111112, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i37 = i35 | 24576;
            i38 = i7 & 32768;
            if (i38 != 0) {
                i37 |= ImageMetadata.EDGE_MODE;
            } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(i4)) {
                    i39 = 131072;
                } else {
                    i39 = 65536;
                }
                i37 |= i39;
            }
            i40 = i7 & 65536;
            if (i40 != 0) {
                i37 |= 1572864;
            } else if ((i6 & 1572864) == 0) {
                i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
            }
            if ((i6 & 12582912) != 0) {
                if ((i7 & 131072) == 0) {
                    i17 = 8388608;
                }
                i37 |= i17;
            }
            if ((i9 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i9 & 1, z2)) {
                gapComposerH.y0();
                if ((i5 & 1) != 0) {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey118 = ComposerKt.f7940a;
                gapComposerH.L(-565217106);
                if (j6 != 16) {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    textStyle3 = textStyle3;
                    jB = j6;
                    z5 = false;
                } else {
                    gapComposerH.L(-565216333);
                    jB = textStyle3.b();
                    if (jB != 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    z5 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z5);
                if (textAlign3 != null) {
                    r2 = textAlign3.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    r2 = z5;
                }
                TextStyle textStyle1111 = textStyle3;
                int i41116 = i37 << 6;
                Modifier modifier111117 = dTFunctionNameModifier;
                BasicTextKt.b(str2, modifier111117, TextStyle.e(textStyle1111, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41116 & 57344) | (i41116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41116 & 3670016) | (i41116 & 29360128) | ((i9 << 18) & 1879048192), 256);
                modifier2 = modifier111117;
                gapComposer = gapComposerH;
                textStyle2 = textStyle1111;
                j9 = j11;
                fontWeight3 = fontWeight2;
                textAlign2 = textAlign3;
                i43 = i44;
                z3 = z4;
                i41 = i45;
                i42 = i46;
                function2 = function3;
                textDecoration2 = textDecoration3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                textDecoration2 = textDecoration;
                j8 = j5;
                z3 = z;
                i41 = i3;
                i42 = i4;
                function2 = function1;
                textStyle2 = textStyle;
                j9 = j7;
                fontWeight3 = fontWeight2;
                modifier2 = modifierE;
                j10 = j4;
                textAlign2 = textAlign;
                i43 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier111118 = modifier2;
                final long j1111111113 = j6;
                final long j1111111114 = j10;
                final long j1111111115 = j8;
                recomposeScopeImplB0.d = new Function2() { // from class: h31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i6);
                        TextKt.c(str, modifier111118, j1111111113, j9, fontWeight3, j1111111114, textDecoration2, textAlign2, j1111111115, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i9 |= 100663296;
        i21 = i7 & 512;
        if (i21 != 0) {
            if ((i5 & 805306368) == 0) {
                if (gapComposerH.K(textDecoration)) {
                    i22 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i22 = 268435456;
                }
                i9 |= i22;
            }
            i23 = i7 & 1024;
            if (i23 != 0) {
                i24 = i6 | 6;
            } else if ((i6 & 6) == 0) {
                if (gapComposerH.K(textAlign)) {
                    i25 = 4;
                } else {
                    i25 = 2;
                }
                i24 = i6 | i25;
            } else {
                i24 = i6;
            }
            i26 = i7 & 2048;
            if (i26 != 0) {
                i24 |= 48;
            } else if ((i6 & 48) != 0) {
                if (gapComposerH.e(j5)) {
                    i27 = 32;
                } else {
                    i27 = 16;
                }
                i24 |= i27;
            }
            i28 = i24;
            i29 = i7 & 4096;
            if (i29 != 0) {
                i31 = i28 | KyberEngine.KyberPolyBytes;
            } else {
                i30 = i28;
                if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                    if (gapComposerH.d(i2)) {
                        i32 = 256;
                    } else {
                        i32 = 128;
                    }
                    i30 |= i32;
                }
                i31 = i30;
            }
            i33 = i7 & 8192;
            if (i33 != 0) {
                i35 = i31 | 3072;
            } else {
                i34 = i31;
                if ((i6 & 3072) != 0) {
                    i34 |= gapComposerH.b(z) ? 2048 : 1024;
                }
                i35 = i34;
            }
            i36 = i7 & 16384;
            if (i36 != 0) {
                i37 = i35;
                if ((i6 & 24576) == 0) {
                    i37 |= gapComposerH.d(i3) ? 16384 : 8192;
                }
                i38 = i7 & 32768;
                if (i38 != 0) {
                    i37 |= ImageMetadata.EDGE_MODE;
                } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i4)) {
                        i39 = 131072;
                    } else {
                        i39 = 65536;
                    }
                    i37 |= i39;
                }
                i40 = i7 & 65536;
                if (i40 != 0) {
                    i37 |= 1572864;
                } else if ((i6 & 1572864) == 0) {
                    i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
                }
                if ((i6 & 12582912) != 0) {
                    if ((i7 & 131072) == 0) {
                        i17 = 8388608;
                    }
                    i37 |= i17;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i5 & 1) != 0) {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                        }
                        if (i48 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j6 = Color.f8871i;
                        }
                        if (i12 != 0) {
                            TextUnit.f11023b.getClass();
                            j11 = TextUnit.d;
                        } else {
                            j11 = j7;
                        }
                        if (i15 != 0) {
                            fontWeight2 = null;
                        }
                        if (i19 != 0) {
                            TextUnit.f11023b.getClass();
                            j10 = TextUnit.d;
                        } else {
                            j10 = j4;
                        }
                        if (i21 != 0) {
                            textDecoration3 = null;
                        } else {
                            textDecoration3 = textDecoration;
                        }
                        if (i23 != 0) {
                            textAlign3 = null;
                        } else {
                            textAlign3 = textAlign;
                        }
                        if (i26 != 0) {
                            TextUnit.f11023b.getClass();
                            j8 = TextUnit.d;
                        } else {
                            j8 = j5;
                        }
                        if (i29 != 0) {
                            TextOverflow.f10989a.getClass();
                            i44 = TextOverflow.f10990b;
                        } else {
                            i44 = i2;
                        }
                        if (i33 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i36 != 0) {
                            i45 = Integer.MAX_VALUE;
                        } else {
                            i45 = i3;
                        }
                        if (i38 == 0) {
                        }
                        if (i40 != 0) {
                            function3 = null;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 131072) != 0) {
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            i37 &= -29360129;
                        } else {
                            textStyle3 = textStyle;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey119 = ComposerKt.f7940a;
                    gapComposerH.L(-565217106);
                    if (j6 != 16) {
                        dTFunctionNameModifier = dTFunctionNameModifier;
                        textStyle3 = textStyle3;
                        jB = j6;
                        z5 = false;
                    } else {
                        gapComposerH.L(-565216333);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    if (textAlign3 != null) {
                        r2 = textAlign3.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        r2 = z5;
                    }
                    TextStyle textStyle1112 = textStyle3;
                    int i41117 = i37 << 6;
                    Modifier modifier111119 = dTFunctionNameModifier;
                    BasicTextKt.b(str2, modifier111119, TextStyle.e(textStyle1112, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41117 & 57344) | (i41117 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41117 & 3670016) | (i41117 & 29360128) | ((i9 << 18) & 1879048192), 256);
                    modifier2 = modifier111119;
                    gapComposer = gapComposerH;
                    textStyle2 = textStyle1112;
                    j9 = j11;
                    fontWeight3 = fontWeight2;
                    textAlign2 = textAlign3;
                    i43 = i44;
                    z3 = z4;
                    i41 = i45;
                    i42 = i46;
                    function2 = function3;
                    textDecoration2 = textDecoration3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    textDecoration2 = textDecoration;
                    j8 = j5;
                    z3 = z;
                    i41 = i3;
                    i42 = i4;
                    function2 = function1;
                    textStyle2 = textStyle;
                    j9 = j7;
                    fontWeight3 = fontWeight2;
                    modifier2 = modifierE;
                    j10 = j4;
                    textAlign2 = textAlign;
                    i43 = i2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier1111110 = modifier2;
                    final long j1111111116 = j6;
                    final long j1111111117 = j10;
                    final long j1111111118 = j8;
                    recomposeScopeImplB0.d = new Function2() { // from class: h31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.c(str, modifier1111110, j1111111116, j9, fontWeight3, j1111111117, textDecoration2, textAlign2, j1111111118, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i37 = i35 | 24576;
            i38 = i7 & 32768;
            if (i38 != 0) {
                i37 |= ImageMetadata.EDGE_MODE;
            } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(i4)) {
                    i39 = 131072;
                } else {
                    i39 = 65536;
                }
                i37 |= i39;
            }
            i40 = i7 & 65536;
            if (i40 != 0) {
                i37 |= 1572864;
            } else if ((i6 & 1572864) == 0) {
                i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
            }
            if ((i6 & 12582912) != 0) {
                if ((i7 & 131072) == 0) {
                    i17 = 8388608;
                }
                i37 |= i17;
            }
            if ((i9 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i9 & 1, z2)) {
                gapComposerH.y0();
                if ((i5 & 1) != 0) {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey1110 = ComposerKt.f7940a;
                gapComposerH.L(-565217106);
                if (j6 != 16) {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    textStyle3 = textStyle3;
                    jB = j6;
                    z5 = false;
                } else {
                    gapComposerH.L(-565216333);
                    jB = textStyle3.b();
                    if (jB != 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    z5 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z5);
                if (textAlign3 != null) {
                    r2 = textAlign3.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    r2 = z5;
                }
                TextStyle textStyle1113 = textStyle3;
                int i41118 = i37 << 6;
                Modifier modifier1111111 = dTFunctionNameModifier;
                BasicTextKt.b(str2, modifier1111111, TextStyle.e(textStyle1113, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41118 & 57344) | (i41118 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41118 & 3670016) | (i41118 & 29360128) | ((i9 << 18) & 1879048192), 256);
                modifier2 = modifier1111111;
                gapComposer = gapComposerH;
                textStyle2 = textStyle1113;
                j9 = j11;
                fontWeight3 = fontWeight2;
                textAlign2 = textAlign3;
                i43 = i44;
                z3 = z4;
                i41 = i45;
                i42 = i46;
                function2 = function3;
                textDecoration2 = textDecoration3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                textDecoration2 = textDecoration;
                j8 = j5;
                z3 = z;
                i41 = i3;
                i42 = i4;
                function2 = function1;
                textStyle2 = textStyle;
                j9 = j7;
                fontWeight3 = fontWeight2;
                modifier2 = modifierE;
                j10 = j4;
                textAlign2 = textAlign;
                i43 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier1111112 = modifier2;
                final long j1111111119 = j6;
                final long j11111111110 = j10;
                final long j11111111111 = j8;
                recomposeScopeImplB0.d = new Function2() { // from class: h31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i6);
                        TextKt.c(str, modifier1111112, j1111111119, j9, fontWeight3, j11111111110, textDecoration2, textAlign2, j11111111111, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i9 |= 805306368;
        i23 = i7 & 1024;
        if (i23 != 0) {
            i24 = i6 | 6;
        } else if ((i6 & 6) == 0) {
            if (gapComposerH.K(textAlign)) {
                i25 = 4;
            } else {
                i25 = 2;
            }
            i24 = i6 | i25;
        } else {
            i24 = i6;
        }
        i26 = i7 & 2048;
        if (i26 != 0) {
            i24 |= 48;
        } else if ((i6 & 48) != 0) {
            if (gapComposerH.e(j5)) {
                i27 = 32;
            } else {
                i27 = 16;
            }
            i24 |= i27;
        }
        i28 = i24;
        i29 = i7 & 4096;
        if (i29 != 0) {
            i31 = i28 | KyberEngine.KyberPolyBytes;
        } else {
            i30 = i28;
            if ((i6 & KyberEngine.KyberPolyBytes) != 0) {
                if (gapComposerH.d(i2)) {
                    i32 = 256;
                } else {
                    i32 = 128;
                }
                i30 |= i32;
            }
            i31 = i30;
        }
        i33 = i7 & 8192;
        if (i33 != 0) {
            i35 = i31 | 3072;
        } else {
            i34 = i31;
            if ((i6 & 3072) != 0) {
                i34 |= gapComposerH.b(z) ? 2048 : 1024;
            }
            i35 = i34;
        }
        i36 = i7 & 16384;
        if (i36 != 0) {
            i37 = i35;
            if ((i6 & 24576) == 0) {
                i37 |= gapComposerH.d(i3) ? 16384 : 8192;
            }
            i38 = i7 & 32768;
            if (i38 != 0) {
                i37 |= ImageMetadata.EDGE_MODE;
            } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(i4)) {
                    i39 = 131072;
                } else {
                    i39 = 65536;
                }
                i37 |= i39;
            }
            i40 = i7 & 65536;
            if (i40 != 0) {
                i37 |= 1572864;
            } else if ((i6 & 1572864) == 0) {
                i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
            }
            if ((i6 & 12582912) != 0) {
                if ((i7 & 131072) == 0) {
                    i17 = 8388608;
                }
                i37 |= i17;
            }
            if ((i9 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i9 & 1, z2)) {
                gapComposerH.y0();
                if ((i5 & 1) != 0) {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                    }
                    if (i48 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j6 = Color.f8871i;
                    }
                    if (i12 != 0) {
                        TextUnit.f11023b.getClass();
                        j11 = TextUnit.d;
                    } else {
                        j11 = j7;
                    }
                    if (i15 != 0) {
                        fontWeight2 = null;
                    }
                    if (i19 != 0) {
                        TextUnit.f11023b.getClass();
                        j10 = TextUnit.d;
                    } else {
                        j10 = j4;
                    }
                    if (i21 != 0) {
                        textDecoration3 = null;
                    } else {
                        textDecoration3 = textDecoration;
                    }
                    if (i23 != 0) {
                        textAlign3 = null;
                    } else {
                        textAlign3 = textAlign;
                    }
                    if (i26 != 0) {
                        TextUnit.f11023b.getClass();
                        j8 = TextUnit.d;
                    } else {
                        j8 = j5;
                    }
                    if (i29 != 0) {
                        TextOverflow.f10989a.getClass();
                        i44 = TextOverflow.f10990b;
                    } else {
                        i44 = i2;
                    }
                    if (i33 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i36 != 0) {
                        i45 = Integer.MAX_VALUE;
                    } else {
                        i45 = i3;
                    }
                    if (i38 == 0) {
                    }
                    if (i40 != 0) {
                        function3 = null;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 131072) != 0) {
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        i37 &= -29360129;
                    } else {
                        textStyle3 = textStyle;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey1111 = ComposerKt.f7940a;
                gapComposerH.L(-565217106);
                if (j6 != 16) {
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    textStyle3 = textStyle3;
                    jB = j6;
                    z5 = false;
                } else {
                    gapComposerH.L(-565216333);
                    jB = textStyle3.b();
                    if (jB != 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    z5 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z5);
                if (textAlign3 != null) {
                    r2 = textAlign3.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    r2 = z5;
                }
                TextStyle textStyle1114 = textStyle3;
                int i41119 = i37 << 6;
                Modifier modifier1111113 = dTFunctionNameModifier;
                BasicTextKt.b(str2, modifier1111113, TextStyle.e(textStyle1114, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i41119 & 57344) | (i41119 & ImageMetadata.JPEG_GPS_COORDINATES) | (i41119 & 3670016) | (i41119 & 29360128) | ((i9 << 18) & 1879048192), 256);
                modifier2 = modifier1111113;
                gapComposer = gapComposerH;
                textStyle2 = textStyle1114;
                j9 = j11;
                fontWeight3 = fontWeight2;
                textAlign2 = textAlign3;
                i43 = i44;
                z3 = z4;
                i41 = i45;
                i42 = i46;
                function2 = function3;
                textDecoration2 = textDecoration3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                textDecoration2 = textDecoration;
                j8 = j5;
                z3 = z;
                i41 = i3;
                i42 = i4;
                function2 = function1;
                textStyle2 = textStyle;
                j9 = j7;
                fontWeight3 = fontWeight2;
                modifier2 = modifierE;
                j10 = j4;
                textAlign2 = textAlign;
                i43 = i2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier1111114 = modifier2;
                final long j11111111112 = j6;
                final long j11111111113 = j10;
                final long j11111111114 = j8;
                recomposeScopeImplB0.d = new Function2() { // from class: h31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i6);
                        TextKt.c(str, modifier1111114, j11111111112, j9, fontWeight3, j11111111113, textDecoration2, textAlign2, j11111111114, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i37 = i35 | 24576;
        i38 = i7 & 32768;
        if (i38 != 0) {
            i37 |= ImageMetadata.EDGE_MODE;
        } else if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.d(i4)) {
                i39 = 131072;
            } else {
                i39 = 65536;
            }
            i37 |= i39;
        }
        i40 = i7 & 65536;
        if (i40 != 0) {
            i37 |= 1572864;
        } else if ((i6 & 1572864) == 0) {
            i37 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((i6 & 12582912) != 0) {
            if ((i7 & 131072) == 0) {
                i17 = 8388608;
            }
            i37 |= i17;
        }
        if ((i9 & 306783379) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (gapComposerH.p(i9 & 1, z2)) {
            gapComposerH.y0();
            if ((i5 & 1) != 0) {
                if (i47 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                }
                if (i48 != 0) {
                    dTFunctionNameModifier = modifierE;
                    Color.f8866b.getClass();
                    j6 = Color.f8871i;
                }
                if (i12 != 0) {
                    TextUnit.f11023b.getClass();
                    j11 = TextUnit.d;
                } else {
                    j11 = j7;
                }
                if (i15 != 0) {
                    fontWeight2 = null;
                }
                if (i19 != 0) {
                    TextUnit.f11023b.getClass();
                    j10 = TextUnit.d;
                } else {
                    j10 = j4;
                }
                if (i21 != 0) {
                    textDecoration3 = null;
                } else {
                    textDecoration3 = textDecoration;
                }
                if (i23 != 0) {
                    textAlign3 = null;
                } else {
                    textAlign3 = textAlign;
                }
                if (i26 != 0) {
                    TextUnit.f11023b.getClass();
                    j8 = TextUnit.d;
                } else {
                    j8 = j5;
                }
                if (i29 != 0) {
                    TextOverflow.f10989a.getClass();
                    i44 = TextOverflow.f10990b;
                } else {
                    i44 = i2;
                }
                if (i33 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i36 != 0) {
                    i45 = Integer.MAX_VALUE;
                } else {
                    i45 = i3;
                }
                if (i38 == 0) {
                }
                if (i40 != 0) {
                    function3 = null;
                } else {
                    function3 = function1;
                }
                if ((i7 & 131072) != 0) {
                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                    i37 &= -29360129;
                } else {
                    textStyle3 = textStyle;
                }
            } else {
                if (i47 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Nvy7gAk");
                }
                if (i48 != 0) {
                    dTFunctionNameModifier = modifierE;
                    Color.f8866b.getClass();
                    j6 = Color.f8871i;
                }
                if (i12 != 0) {
                    TextUnit.f11023b.getClass();
                    j11 = TextUnit.d;
                } else {
                    j11 = j7;
                }
                if (i15 != 0) {
                    fontWeight2 = null;
                }
                if (i19 != 0) {
                    TextUnit.f11023b.getClass();
                    j10 = TextUnit.d;
                } else {
                    j10 = j4;
                }
                if (i21 != 0) {
                    textDecoration3 = null;
                } else {
                    textDecoration3 = textDecoration;
                }
                if (i23 != 0) {
                    textAlign3 = null;
                } else {
                    textAlign3 = textAlign;
                }
                if (i26 != 0) {
                    TextUnit.f11023b.getClass();
                    j8 = TextUnit.d;
                } else {
                    j8 = j5;
                }
                if (i29 != 0) {
                    TextOverflow.f10989a.getClass();
                    i44 = TextOverflow.f10990b;
                } else {
                    i44 = i2;
                }
                if (i33 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i36 != 0) {
                    i45 = Integer.MAX_VALUE;
                } else {
                    i45 = i3;
                }
                if (i38 == 0) {
                }
                if (i40 != 0) {
                    function3 = null;
                } else {
                    function3 = function1;
                }
                if ((i7 & 131072) != 0) {
                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                    i37 &= -29360129;
                } else {
                    textStyle3 = textStyle;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey1112 = ComposerKt.f7940a;
            gapComposerH.L(-565217106);
            if (j6 != 16) {
                dTFunctionNameModifier = dTFunctionNameModifier;
                textStyle3 = textStyle3;
                jB = j6;
                z5 = false;
            } else {
                gapComposerH.L(-565216333);
                jB = textStyle3.b();
                if (jB != 16) {
                    jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                }
                z5 = false;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z5);
            if (textAlign3 != null) {
                r2 = textAlign3.f10964a;
            } else {
                TextAlign.f10959b.getClass();
                r2 = z5;
            }
            TextStyle textStyle1115 = textStyle3;
            int i411110 = i37 << 6;
            Modifier modifier1111115 = dTFunctionNameModifier;
            BasicTextKt.b(str2, modifier1111115, TextStyle.e(textStyle1115, jB, j11, fontWeight2, j10, textDecoration3, r2 == true ? 1 : 0, j8, 16609104), function3, i44, z4, i45, i46, gapComposerH, ((i37 >> 9) & 7168) | (i9 & 126) | (i411110 & 57344) | (i411110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i411110 & 3670016) | (i411110 & 29360128) | ((i9 << 18) & 1879048192), 256);
            modifier2 = modifier1111115;
            gapComposer = gapComposerH;
            textStyle2 = textStyle1115;
            j9 = j11;
            fontWeight3 = fontWeight2;
            textAlign2 = textAlign3;
            i43 = i44;
            z3 = z4;
            i41 = i45;
            i42 = i46;
            function2 = function3;
            textDecoration2 = textDecoration3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            textDecoration2 = textDecoration;
            j8 = j5;
            z3 = z;
            i41 = i3;
            i42 = i4;
            function2 = function1;
            textStyle2 = textStyle;
            j9 = j7;
            fontWeight3 = fontWeight2;
            modifier2 = modifierE;
            j10 = j4;
            textAlign2 = textAlign;
            i43 = i2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier1111116 = modifier2;
            final long j11111111115 = j6;
            final long j11111111116 = j10;
            final long j11111111117 = j8;
            recomposeScopeImplB0.d = new Function2() { // from class: h31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i6);
                    TextKt.c(str, modifier1111116, j11111111115, j9, fontWeight3, j11111111116, textDecoration2, textAlign2, j11111111117, i43, z3, i41, i42, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0145  */
    /* JADX WARN: Code duplicated, block: B:107:0x0170 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x0172  */
    /* JADX WARN: Code duplicated, block: B:109:0x0178  */
    /* JADX WARN: Code duplicated, block: B:111:0x017c  */
    /* JADX WARN: Code duplicated, block: B:112:0x0184  */
    /* JADX WARN: Code duplicated, block: B:115:0x0191  */
    /* JADX WARN: Code duplicated, block: B:118:0x0198  */
    /* JADX WARN: Code duplicated, block: B:120:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:121:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:124:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:126:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:128:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:131:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:133:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:136:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:137:0x0200  */
    /* JADX WARN: Code duplicated, block: B:139:0x020e  */
    /* JADX WARN: Code duplicated, block: B:141:0x0212  */
    /* JADX WARN: Code duplicated, block: B:145:0x0237 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:146:0x0239  */
    /* JADX WARN: Code duplicated, block: B:150:0x028f  */
    /* JADX WARN: Code duplicated, block: B:153:0x029d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:154:0x029f  */
    /* JADX WARN: Code duplicated, block: B:157:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:158:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:160:0x0348  */
    /* JADX WARN: Code duplicated, block: B:163:0x0369  */
    /* JADX WARN: Code duplicated, block: B:165:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0067  */
    /* JADX WARN: Code duplicated, block: B:38:0x006e  */
    /* JADX WARN: Code duplicated, block: B:40:0x0074  */
    /* JADX WARN: Code duplicated, block: B:42:0x007a  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0082  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:49:0x0091  */
    /* JADX WARN: Code duplicated, block: B:51:0x0095  */
    /* JADX WARN: Code duplicated, block: B:53:0x009d  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:64:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00df  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:81:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:83:0x0102  */
    /* JADX WARN: Code duplicated, block: B:86:0x010b  */
    /* JADX WARN: Code duplicated, block: B:88:0x0110  */
    /* JADX WARN: Code duplicated, block: B:91:0x0120  */
    /* JADX WARN: Code duplicated, block: B:95:0x012d  */
    /* JADX WARN: Code duplicated, block: B:98:0x0137  */
    public static final void d(final AnnotatedString annotatedString, Modifier modifier, long j2, long j3, long j4, TextAlign textAlign, long j5, int i2, boolean z, int i3, int i4, Map map, Function1 function1, TextStyle textStyle, Composer composer, final int i5, final int i6, final int i7) {
        int i8;
        long j6;
        int i9;
        int i10;
        TextAlign textAlign2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z2;
        GapComposer gapComposer;
        final long j7;
        final long j8;
        final long j9;
        final Map map2;
        final Function1 function2;
        final TextAlign textAlign3;
        final int i25;
        final long j10;
        Modifier modifier2;
        final boolean z3;
        final int i26;
        final int i27;
        final TextStyle textStyle2;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i28;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier dTFunctionNameModifier;
        long j11;
        long j12;
        int i29;
        Function1 function3;
        TextStyle textStyle3;
        Map map3;
        Function1 function4;
        long j13;
        int i30;
        boolean z4;
        int i31;
        long j14;
        Object objX;
        long jB;
        boolean z5;
        long j15;
        boolean zE;
        Object objX2;
        TextLinkStyles textLinkStyles;
        boolean zK;
        Object objX3;
        int i32;
        int i33;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Text-Z58ophY");
        }
        GapComposer gapComposerH = composer.h(292247417);
        if ((i5 & 6) == 0) {
            i8 = (gapComposerH.K(annotatedString) ? 4 : 2) | i5;
        } else {
            i8 = i5;
        }
        int i34 = i7 & 2;
        if (i34 != 0) {
            i8 |= 48;
        } else if ((i5 & 48) == 0) {
            i8 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i35 = i7 & 4;
        if (i35 == 0) {
            if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
                j6 = j2;
                i8 |= gapComposerH.e(j6) ? 256 : 128;
            }
            i9 = i8 | 920349696;
            i10 = i7 & 1024;
            if (i10 != 0) {
                textAlign2 = textAlign;
                if ((i6 & 6) == 0) {
                    if (gapComposerH.K(textAlign2)) {
                        i12 = 4;
                    } else {
                        i12 = 2;
                    }
                    i13 = i6 | i12;
                } else {
                    i11 = i6;
                }
                i14 = i11 | 48;
                i15 = i7 & 4096;
                if (i15 != 0) {
                    i17 = i11 | 432;
                    i16 = i2;
                } else {
                    if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
                        i16 = i2;
                        if (gapComposerH.d(i16)) {
                            i18 = 256;
                        } else {
                            i18 = 128;
                        }
                        i14 |= i18;
                    } else {
                        i16 = i2;
                    }
                    i17 = i14;
                }
                i19 = i17 | 3072;
                i20 = i7 & 16384;
                if (i20 != 0) {
                    if ((i6 & 24576) == 0) {
                        if (gapComposerH.d(i3)) {
                            i21 = 16384;
                        } else {
                            i21 = 8192;
                        }
                        i19 |= i21;
                    }
                    i22 = i19 | 1769472;
                    i23 = i7 & 131072;
                    if (i23 != 0) {
                        i22 = i19 | 14352384;
                    } else if ((i6 & 12582912) == 0) {
                        if (gapComposerH.y(function1)) {
                            i24 = 8388608;
                        } else {
                            i24 = 4194304;
                        }
                        i22 |= i24;
                    }
                    if ((i6 & 100663296) != 0) {
                        if ((i7 & 262144) == 0 || !gapComposerH.K(textStyle)) {
                            i33 = 33554432;
                        } else {
                            i33 = 67108864;
                        }
                        i22 |= i33;
                    }
                    if ((i9 & 306783379) == 306783378 || (i22 & 38347923) != 38347922) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (gapComposerH.p(i9 & 1, z2)) {
                        gapComposerH.y0();
                        i28 = i5 & 1;
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i28 != 0 || gapComposerH.h0()) {
                            if (i34 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                            }
                            if (i35 != 0) {
                                dTFunctionNameModifier = modifierE;
                                Color.f8866b.getClass();
                                j11 = Color.f8871i;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                j11 = j6;
                            }
                            TextUnit.Companion companion = TextUnit.f11023b;
                            companion.getClass();
                            j12 = TextUnit.d;
                            companion.getClass();
                            if (i10 != 0) {
                                textAlign2 = null;
                            }
                            companion.getClass();
                            if (i15 != 0) {
                                TextOverflow.f10989a.getClass();
                                i16 = TextOverflow.f10990b;
                            }
                            if (i20 != 0) {
                                i29 = Integer.MAX_VALUE;
                            } else {
                                i29 = i3;
                            }
                            Map mapC = MapsKt.c();
                            if (i23 != 0) {
                                objX = gapComposerH.x();
                                if (objX == composer$Companion$Empty$1) {
                                    objX = new z21(9);
                                    gapComposerH.q(objX);
                                }
                                function3 = (Function1) objX;
                            } else {
                                function3 = function1;
                            }
                            if ((i7 & 262144) != 0) {
                                i22 &= -234881025;
                                textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                            } else {
                                textStyle3 = textStyle;
                            }
                            map3 = mapC;
                            function4 = function3;
                            j13 = j12;
                            i30 = i22;
                            z4 = true;
                            i31 = 1;
                            j14 = j13;
                        } else {
                            gapComposerH.D();
                            if ((i7 & 262144) != 0) {
                                i22 &= -234881025;
                            }
                            j13 = j4;
                            z4 = z;
                            i29 = i3;
                            map3 = map;
                            function4 = function1;
                            textStyle3 = textStyle;
                            j11 = j6;
                            dTFunctionNameModifier = modifierE;
                            i30 = i22;
                            j12 = j3;
                            j14 = j5;
                            i31 = i4;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        boolean z6 = z4;
                        gapComposerH.L(1676919644);
                        if (j11 != 16) {
                            i29 = i29;
                            jB = j11;
                            z5 = false;
                        } else {
                            gapComposerH.L(1676920417);
                            jB = textStyle3.b();
                            if (jB != 16) {
                                jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        j15 = MaterialTheme.a(gapComposerH).f6662a;
                        zE = gapComposerH.e(j15);
                        objX2 = gapComposerH.x();
                        if (zE || objX2 == composer$Companion$Empty$1) {
                            TextDecoration.f10965b.getClass();
                            objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                            gapComposerH.q(objX2);
                        }
                        textLinkStyles = (TextLinkStyles) objX2;
                        zK = ((i9 & 14) == 4) | gapComposerH.K(textLinkStyles);
                        objX3 = gapComposerH.x();
                        if (zK || objX3 == composer$Companion$Empty$1) {
                            objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                            gapComposerH.q(objX3);
                        }
                        AnnotatedString annotatedString2 = (AnnotatedString) objX3;
                        if (textAlign2 != null) {
                            i32 = textAlign2.f10964a;
                        } else {
                            TextAlign.f10959b.getClass();
                            i32 = 0;
                        }
                        long j16 = j14;
                        TextStyle textStyle4 = textStyle3;
                        int i36 = i30 << 6;
                        int i37 = i29;
                        int i38 = i31;
                        int i39 = i16;
                        Map map4 = map3;
                        Function1 function5 = function4;
                        Modifier modifier3 = dTFunctionNameModifier;
                        BasicTextKt.a(annotatedString2, modifier3, TextStyle.e(textStyle4, jB, j12, null, j13, null, i32, j16, 16609104), function5, i39, z6, i37, i38, map4, gapComposerH, ((i30 >> 12) & 7168) | (i9 & 112) | (i36 & 57344) | (i36 & ImageMetadata.JPEG_GPS_COORDINATES) | (i36 & 3670016) | (i36 & 29360128) | (i36 & 234881024), (i9 >> 9) & 14, 512);
                        modifier2 = modifier3;
                        gapComposer = gapComposerH;
                        map2 = map4;
                        j8 = j13;
                        textAlign3 = textAlign2;
                        i25 = i16;
                        z3 = z6;
                        textStyle2 = textStyle4;
                        function2 = function5;
                        j10 = j11;
                        j9 = j16;
                        long j17 = j12;
                        i26 = i37;
                        i27 = i38;
                        j7 = j17;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        j7 = j3;
                        j8 = j4;
                        j9 = j5;
                        map2 = map;
                        function2 = function1;
                        textAlign3 = textAlign2;
                        i25 = i16;
                        j10 = j6;
                        modifier2 = modifierE;
                        z3 = z;
                        i26 = i3;
                        i27 = i4;
                        textStyle2 = textStyle;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier4 = modifier2;
                        recomposeScopeImplB0.d = new Function2() { // from class: j31
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i5 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i6);
                                TextKt.d(annotatedString, modifier4, j10, j7, j8, textAlign3, j9, i25, z3, i26, i27, map2, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i19 = i17 | 27648;
                i22 = i19 | 1769472;
                i23 = i7 & 131072;
                if (i23 != 0) {
                    i22 = i19 | 14352384;
                } else if ((i6 & 12582912) == 0) {
                    if (gapComposerH.y(function1)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i22 |= i24;
                }
                if ((i6 & 100663296) != 0) {
                    if ((i7 & 262144) == 0) {
                        i33 = 33554432;
                    } else {
                        i33 = 33554432;
                    }
                    i22 |= i33;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    i28 = i5 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i28 != 0) {
                        if (i34 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                        }
                        if (i35 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j11 = Color.f8871i;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            j11 = j6;
                        }
                        TextUnit.Companion companion2 = TextUnit.f11023b;
                        companion2.getClass();
                        j12 = TextUnit.d;
                        companion2.getClass();
                        if (i10 != 0) {
                            textAlign2 = null;
                        }
                        companion2.getClass();
                        if (i15 != 0) {
                            TextOverflow.f10989a.getClass();
                            i16 = TextOverflow.f10990b;
                        }
                        if (i20 != 0) {
                            i29 = Integer.MAX_VALUE;
                        } else {
                            i29 = i3;
                        }
                        Map mapC2 = MapsKt.c();
                        if (i23 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new z21(9);
                                gapComposerH.q(objX);
                            }
                            function3 = (Function1) objX;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 262144) != 0) {
                            i22 &= -234881025;
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        } else {
                            textStyle3 = textStyle;
                        }
                        map3 = mapC2;
                        function4 = function3;
                        j13 = j12;
                        i30 = i22;
                        z4 = true;
                        i31 = 1;
                        j14 = j13;
                    } else {
                        if (i34 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                        }
                        if (i35 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j11 = Color.f8871i;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            j11 = j6;
                        }
                        TextUnit.Companion companion3 = TextUnit.f11023b;
                        companion3.getClass();
                        j12 = TextUnit.d;
                        companion3.getClass();
                        if (i10 != 0) {
                            textAlign2 = null;
                        }
                        companion3.getClass();
                        if (i15 != 0) {
                            TextOverflow.f10989a.getClass();
                            i16 = TextOverflow.f10990b;
                        }
                        if (i20 != 0) {
                            i29 = Integer.MAX_VALUE;
                        } else {
                            i29 = i3;
                        }
                        Map mapC3 = MapsKt.c();
                        if (i23 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new z21(9);
                                gapComposerH.q(objX);
                            }
                            function3 = (Function1) objX;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 262144) != 0) {
                            i22 &= -234881025;
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        } else {
                            textStyle3 = textStyle;
                        }
                        map3 = mapC3;
                        function4 = function3;
                        j13 = j12;
                        i30 = i22;
                        z4 = true;
                        i31 = 1;
                        j14 = j13;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean z7 = z4;
                    gapComposerH.L(1676919644);
                    if (j11 != 16) {
                        i29 = i29;
                        jB = j11;
                        z5 = false;
                    } else {
                        gapComposerH.L(1676920417);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    j15 = MaterialTheme.a(gapComposerH).f6662a;
                    zE = gapComposerH.e(j15);
                    objX2 = gapComposerH.x();
                    if (zE) {
                        TextDecoration.f10965b.getClass();
                        objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                        gapComposerH.q(objX2);
                    } else {
                        TextDecoration.f10965b.getClass();
                        objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                        gapComposerH.q(objX2);
                    }
                    textLinkStyles = (TextLinkStyles) objX2;
                    zK = ((i9 & 14) == 4) | gapComposerH.K(textLinkStyles);
                    objX3 = gapComposerH.x();
                    if (zK) {
                        objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                        gapComposerH.q(objX3);
                    } else {
                        objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                        gapComposerH.q(objX3);
                    }
                    AnnotatedString annotatedString3 = (AnnotatedString) objX3;
                    if (textAlign2 != null) {
                        i32 = textAlign2.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        i32 = 0;
                    }
                    long j18 = j14;
                    TextStyle textStyle5 = textStyle3;
                    int i310 = i30 << 6;
                    int i311 = i29;
                    int i312 = i31;
                    int i313 = i16;
                    Map map5 = map3;
                    Function1 function6 = function4;
                    Modifier modifier5 = dTFunctionNameModifier;
                    BasicTextKt.a(annotatedString3, modifier5, TextStyle.e(textStyle5, jB, j12, null, j13, null, i32, j18, 16609104), function6, i313, z7, i311, i312, map5, gapComposerH, ((i30 >> 12) & 7168) | (i9 & 112) | (i310 & 57344) | (i310 & ImageMetadata.JPEG_GPS_COORDINATES) | (i310 & 3670016) | (i310 & 29360128) | (i310 & 234881024), (i9 >> 9) & 14, 512);
                    modifier2 = modifier5;
                    gapComposer = gapComposerH;
                    map2 = map5;
                    j8 = j13;
                    textAlign3 = textAlign2;
                    i25 = i16;
                    z3 = z7;
                    textStyle2 = textStyle5;
                    function2 = function6;
                    j10 = j11;
                    j9 = j18;
                    long j19 = j12;
                    i26 = i311;
                    i27 = i312;
                    j7 = j19;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    j7 = j3;
                    j8 = j4;
                    j9 = j5;
                    map2 = map;
                    function2 = function1;
                    textAlign3 = textAlign2;
                    i25 = i16;
                    j10 = j6;
                    modifier2 = modifierE;
                    z3 = z;
                    i26 = i3;
                    i27 = i4;
                    textStyle2 = textStyle;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier6 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: j31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.d(annotatedString, modifier6, j10, j7, j8, textAlign3, j9, i25, z3, i26, i27, map2, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i13 = i6 | 6;
            textAlign2 = textAlign;
            i11 = i13;
            i14 = i11 | 48;
            i15 = i7 & 4096;
            if (i15 != 0) {
                i17 = i11 | 432;
                i16 = i2;
            } else {
                if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
                    i16 = i2;
                    if (gapComposerH.d(i16)) {
                        i18 = 256;
                    } else {
                        i18 = 128;
                    }
                    i14 |= i18;
                } else {
                    i16 = i2;
                }
                i17 = i14;
            }
            i19 = i17 | 3072;
            i20 = i7 & 16384;
            if (i20 != 0) {
                if ((i6 & 24576) == 0) {
                    if (gapComposerH.d(i3)) {
                        i21 = 16384;
                    } else {
                        i21 = 8192;
                    }
                    i19 |= i21;
                }
                i22 = i19 | 1769472;
                i23 = i7 & 131072;
                if (i23 != 0) {
                    i22 = i19 | 14352384;
                } else if ((i6 & 12582912) == 0) {
                    if (gapComposerH.y(function1)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i22 |= i24;
                }
                if ((i6 & 100663296) != 0) {
                    if ((i7 & 262144) == 0) {
                        i33 = 33554432;
                    } else {
                        i33 = 33554432;
                    }
                    i22 |= i33;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    i28 = i5 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i28 != 0) {
                        if (i34 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                        }
                        if (i35 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j11 = Color.f8871i;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            j11 = j6;
                        }
                        TextUnit.Companion companion4 = TextUnit.f11023b;
                        companion4.getClass();
                        j12 = TextUnit.d;
                        companion4.getClass();
                        if (i10 != 0) {
                            textAlign2 = null;
                        }
                        companion4.getClass();
                        if (i15 != 0) {
                            TextOverflow.f10989a.getClass();
                            i16 = TextOverflow.f10990b;
                        }
                        if (i20 != 0) {
                            i29 = Integer.MAX_VALUE;
                        } else {
                            i29 = i3;
                        }
                        Map mapC4 = MapsKt.c();
                        if (i23 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new z21(9);
                                gapComposerH.q(objX);
                            }
                            function3 = (Function1) objX;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 262144) != 0) {
                            i22 &= -234881025;
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        } else {
                            textStyle3 = textStyle;
                        }
                        map3 = mapC4;
                        function4 = function3;
                        j13 = j12;
                        i30 = i22;
                        z4 = true;
                        i31 = 1;
                        j14 = j13;
                    } else {
                        if (i34 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                        }
                        if (i35 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j11 = Color.f8871i;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            j11 = j6;
                        }
                        TextUnit.Companion companion5 = TextUnit.f11023b;
                        companion5.getClass();
                        j12 = TextUnit.d;
                        companion5.getClass();
                        if (i10 != 0) {
                            textAlign2 = null;
                        }
                        companion5.getClass();
                        if (i15 != 0) {
                            TextOverflow.f10989a.getClass();
                            i16 = TextOverflow.f10990b;
                        }
                        if (i20 != 0) {
                            i29 = Integer.MAX_VALUE;
                        } else {
                            i29 = i3;
                        }
                        Map mapC5 = MapsKt.c();
                        if (i23 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new z21(9);
                                gapComposerH.q(objX);
                            }
                            function3 = (Function1) objX;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 262144) != 0) {
                            i22 &= -234881025;
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        } else {
                            textStyle3 = textStyle;
                        }
                        map3 = mapC5;
                        function4 = function3;
                        j13 = j12;
                        i30 = i22;
                        z4 = true;
                        i31 = 1;
                        j14 = j13;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    boolean z8 = z4;
                    gapComposerH.L(1676919644);
                    if (j11 != 16) {
                        i29 = i29;
                        jB = j11;
                        z5 = false;
                    } else {
                        gapComposerH.L(1676920417);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    j15 = MaterialTheme.a(gapComposerH).f6662a;
                    zE = gapComposerH.e(j15);
                    objX2 = gapComposerH.x();
                    if (zE) {
                        TextDecoration.f10965b.getClass();
                        objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                        gapComposerH.q(objX2);
                    } else {
                        TextDecoration.f10965b.getClass();
                        objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                        gapComposerH.q(objX2);
                    }
                    textLinkStyles = (TextLinkStyles) objX2;
                    zK = ((i9 & 14) == 4) | gapComposerH.K(textLinkStyles);
                    objX3 = gapComposerH.x();
                    if (zK) {
                        objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                        gapComposerH.q(objX3);
                    } else {
                        objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                        gapComposerH.q(objX3);
                    }
                    AnnotatedString annotatedString4 = (AnnotatedString) objX3;
                    if (textAlign2 != null) {
                        i32 = textAlign2.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        i32 = 0;
                    }
                    long j110 = j14;
                    TextStyle textStyle6 = textStyle3;
                    int i314 = i30 << 6;
                    int i315 = i29;
                    int i316 = i31;
                    int i317 = i16;
                    Map map6 = map3;
                    Function1 function7 = function4;
                    Modifier modifier7 = dTFunctionNameModifier;
                    BasicTextKt.a(annotatedString4, modifier7, TextStyle.e(textStyle6, jB, j12, null, j13, null, i32, j110, 16609104), function7, i317, z8, i315, i316, map6, gapComposerH, ((i30 >> 12) & 7168) | (i9 & 112) | (i314 & 57344) | (i314 & ImageMetadata.JPEG_GPS_COORDINATES) | (i314 & 3670016) | (i314 & 29360128) | (i314 & 234881024), (i9 >> 9) & 14, 512);
                    modifier2 = modifier7;
                    gapComposer = gapComposerH;
                    map2 = map6;
                    j8 = j13;
                    textAlign3 = textAlign2;
                    i25 = i16;
                    z3 = z8;
                    textStyle2 = textStyle6;
                    function2 = function7;
                    j10 = j11;
                    j9 = j110;
                    long j111 = j12;
                    i26 = i315;
                    i27 = i316;
                    j7 = j111;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    j7 = j3;
                    j8 = j4;
                    j9 = j5;
                    map2 = map;
                    function2 = function1;
                    textAlign3 = textAlign2;
                    i25 = i16;
                    j10 = j6;
                    modifier2 = modifierE;
                    z3 = z;
                    i26 = i3;
                    i27 = i4;
                    textStyle2 = textStyle;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier8 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: j31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.d(annotatedString, modifier8, j10, j7, j8, textAlign3, j9, i25, z3, i26, i27, map2, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i19 = i17 | 27648;
            i22 = i19 | 1769472;
            i23 = i7 & 131072;
            if (i23 != 0) {
                i22 = i19 | 14352384;
            } else if ((i6 & 12582912) == 0) {
                if (gapComposerH.y(function1)) {
                    i24 = 8388608;
                } else {
                    i24 = 4194304;
                }
                i22 |= i24;
            }
            if ((i6 & 100663296) != 0) {
                if ((i7 & 262144) == 0) {
                    i33 = 33554432;
                } else {
                    i33 = 33554432;
                }
                i22 |= i33;
            }
            if ((i9 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i9 & 1, z2)) {
                gapComposerH.y0();
                i28 = i5 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i28 != 0) {
                    if (i34 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                    }
                    if (i35 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j11 = Color.f8871i;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        j11 = j6;
                    }
                    TextUnit.Companion companion6 = TextUnit.f11023b;
                    companion6.getClass();
                    j12 = TextUnit.d;
                    companion6.getClass();
                    if (i10 != 0) {
                        textAlign2 = null;
                    }
                    companion6.getClass();
                    if (i15 != 0) {
                        TextOverflow.f10989a.getClass();
                        i16 = TextOverflow.f10990b;
                    }
                    if (i20 != 0) {
                        i29 = Integer.MAX_VALUE;
                    } else {
                        i29 = i3;
                    }
                    Map mapC6 = MapsKt.c();
                    if (i23 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new z21(9);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function1) objX;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 262144) != 0) {
                        i22 &= -234881025;
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                    } else {
                        textStyle3 = textStyle;
                    }
                    map3 = mapC6;
                    function4 = function3;
                    j13 = j12;
                    i30 = i22;
                    z4 = true;
                    i31 = 1;
                    j14 = j13;
                } else {
                    if (i34 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                    }
                    if (i35 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j11 = Color.f8871i;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        j11 = j6;
                    }
                    TextUnit.Companion companion7 = TextUnit.f11023b;
                    companion7.getClass();
                    j12 = TextUnit.d;
                    companion7.getClass();
                    if (i10 != 0) {
                        textAlign2 = null;
                    }
                    companion7.getClass();
                    if (i15 != 0) {
                        TextOverflow.f10989a.getClass();
                        i16 = TextOverflow.f10990b;
                    }
                    if (i20 != 0) {
                        i29 = Integer.MAX_VALUE;
                    } else {
                        i29 = i3;
                    }
                    Map mapC7 = MapsKt.c();
                    if (i23 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new z21(9);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function1) objX;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 262144) != 0) {
                        i22 &= -234881025;
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                    } else {
                        textStyle3 = textStyle;
                    }
                    map3 = mapC7;
                    function4 = function3;
                    j13 = j12;
                    i30 = i22;
                    z4 = true;
                    i31 = 1;
                    j14 = j13;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                boolean z9 = z4;
                gapComposerH.L(1676919644);
                if (j11 != 16) {
                    i29 = i29;
                    jB = j11;
                    z5 = false;
                } else {
                    gapComposerH.L(1676920417);
                    jB = textStyle3.b();
                    if (jB != 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    z5 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z5);
                j15 = MaterialTheme.a(gapComposerH).f6662a;
                zE = gapComposerH.e(j15);
                objX2 = gapComposerH.x();
                if (zE) {
                    TextDecoration.f10965b.getClass();
                    objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    gapComposerH.q(objX2);
                } else {
                    TextDecoration.f10965b.getClass();
                    objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    gapComposerH.q(objX2);
                }
                textLinkStyles = (TextLinkStyles) objX2;
                zK = ((i9 & 14) == 4) | gapComposerH.K(textLinkStyles);
                objX3 = gapComposerH.x();
                if (zK) {
                    objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                    gapComposerH.q(objX3);
                } else {
                    objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                    gapComposerH.q(objX3);
                }
                AnnotatedString annotatedString5 = (AnnotatedString) objX3;
                if (textAlign2 != null) {
                    i32 = textAlign2.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    i32 = 0;
                }
                long j112 = j14;
                TextStyle textStyle7 = textStyle3;
                int i318 = i30 << 6;
                int i319 = i29;
                int i3110 = i31;
                int i3111 = i16;
                Map map7 = map3;
                Function1 function8 = function4;
                Modifier modifier9 = dTFunctionNameModifier;
                BasicTextKt.a(annotatedString5, modifier9, TextStyle.e(textStyle7, jB, j12, null, j13, null, i32, j112, 16609104), function8, i3111, z9, i319, i3110, map7, gapComposerH, ((i30 >> 12) & 7168) | (i9 & 112) | (i318 & 57344) | (i318 & ImageMetadata.JPEG_GPS_COORDINATES) | (i318 & 3670016) | (i318 & 29360128) | (i318 & 234881024), (i9 >> 9) & 14, 512);
                modifier2 = modifier9;
                gapComposer = gapComposerH;
                map2 = map7;
                j8 = j13;
                textAlign3 = textAlign2;
                i25 = i16;
                z3 = z9;
                textStyle2 = textStyle7;
                function2 = function8;
                j10 = j11;
                j9 = j112;
                long j113 = j12;
                i26 = i319;
                i27 = i3110;
                j7 = j113;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                j7 = j3;
                j8 = j4;
                j9 = j5;
                map2 = map;
                function2 = function1;
                textAlign3 = textAlign2;
                i25 = i16;
                j10 = j6;
                modifier2 = modifierE;
                z3 = z;
                i26 = i3;
                i27 = i4;
                textStyle2 = textStyle;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier10 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: j31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i6);
                        TextKt.d(annotatedString, modifier10, j10, j7, j8, textAlign3, j9, i25, z3, i26, i27, map2, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= KyberEngine.KyberPolyBytes;
        j6 = j2;
        i9 = i8 | 920349696;
        i10 = i7 & 1024;
        if (i10 != 0) {
            textAlign2 = textAlign;
            if ((i6 & 6) == 0) {
                if (gapComposerH.K(textAlign2)) {
                    i12 = 4;
                } else {
                    i12 = 2;
                }
                i13 = i6 | i12;
            } else {
                i11 = i6;
            }
            i14 = i11 | 48;
            i15 = i7 & 4096;
            if (i15 != 0) {
                i17 = i11 | 432;
                i16 = i2;
            } else {
                if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
                    i16 = i2;
                    if (gapComposerH.d(i16)) {
                        i18 = 256;
                    } else {
                        i18 = 128;
                    }
                    i14 |= i18;
                } else {
                    i16 = i2;
                }
                i17 = i14;
            }
            i19 = i17 | 3072;
            i20 = i7 & 16384;
            if (i20 != 0) {
                if ((i6 & 24576) == 0) {
                    if (gapComposerH.d(i3)) {
                        i21 = 16384;
                    } else {
                        i21 = 8192;
                    }
                    i19 |= i21;
                }
                i22 = i19 | 1769472;
                i23 = i7 & 131072;
                if (i23 != 0) {
                    i22 = i19 | 14352384;
                } else if ((i6 & 12582912) == 0) {
                    if (gapComposerH.y(function1)) {
                        i24 = 8388608;
                    } else {
                        i24 = 4194304;
                    }
                    i22 |= i24;
                }
                if ((i6 & 100663296) != 0) {
                    if ((i7 & 262144) == 0) {
                        i33 = 33554432;
                    } else {
                        i33 = 33554432;
                    }
                    i22 |= i33;
                }
                if ((i9 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i9 & 1, z2)) {
                    gapComposerH.y0();
                    i28 = i5 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i28 != 0) {
                        if (i34 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                        }
                        if (i35 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j11 = Color.f8871i;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            j11 = j6;
                        }
                        TextUnit.Companion companion8 = TextUnit.f11023b;
                        companion8.getClass();
                        j12 = TextUnit.d;
                        companion8.getClass();
                        if (i10 != 0) {
                            textAlign2 = null;
                        }
                        companion8.getClass();
                        if (i15 != 0) {
                            TextOverflow.f10989a.getClass();
                            i16 = TextOverflow.f10990b;
                        }
                        if (i20 != 0) {
                            i29 = Integer.MAX_VALUE;
                        } else {
                            i29 = i3;
                        }
                        Map mapC8 = MapsKt.c();
                        if (i23 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new z21(9);
                                gapComposerH.q(objX);
                            }
                            function3 = (Function1) objX;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 262144) != 0) {
                            i22 &= -234881025;
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        } else {
                            textStyle3 = textStyle;
                        }
                        map3 = mapC8;
                        function4 = function3;
                        j13 = j12;
                        i30 = i22;
                        z4 = true;
                        i31 = 1;
                        j14 = j13;
                    } else {
                        if (i34 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                        }
                        if (i35 != 0) {
                            dTFunctionNameModifier = modifierE;
                            Color.f8866b.getClass();
                            j11 = Color.f8871i;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            j11 = j6;
                        }
                        TextUnit.Companion companion9 = TextUnit.f11023b;
                        companion9.getClass();
                        j12 = TextUnit.d;
                        companion9.getClass();
                        if (i10 != 0) {
                            textAlign2 = null;
                        }
                        companion9.getClass();
                        if (i15 != 0) {
                            TextOverflow.f10989a.getClass();
                            i16 = TextOverflow.f10990b;
                        }
                        if (i20 != 0) {
                            i29 = Integer.MAX_VALUE;
                        } else {
                            i29 = i3;
                        }
                        Map mapC9 = MapsKt.c();
                        if (i23 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new z21(9);
                                gapComposerH.q(objX);
                            }
                            function3 = (Function1) objX;
                        } else {
                            function3 = function1;
                        }
                        if ((i7 & 262144) != 0) {
                            i22 &= -234881025;
                            textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                        } else {
                            textStyle3 = textStyle;
                        }
                        map3 = mapC9;
                        function4 = function3;
                        j13 = j12;
                        i30 = i22;
                        z4 = true;
                        i31 = 1;
                        j14 = j13;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    boolean z10 = z4;
                    gapComposerH.L(1676919644);
                    if (j11 != 16) {
                        i29 = i29;
                        jB = j11;
                        z5 = false;
                    } else {
                        gapComposerH.L(1676920417);
                        jB = textStyle3.b();
                        if (jB != 16) {
                            jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        }
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z5);
                    j15 = MaterialTheme.a(gapComposerH).f6662a;
                    zE = gapComposerH.e(j15);
                    objX2 = gapComposerH.x();
                    if (zE) {
                        TextDecoration.f10965b.getClass();
                        objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                        gapComposerH.q(objX2);
                    } else {
                        TextDecoration.f10965b.getClass();
                        objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                        gapComposerH.q(objX2);
                    }
                    textLinkStyles = (TextLinkStyles) objX2;
                    zK = ((i9 & 14) == 4) | gapComposerH.K(textLinkStyles);
                    objX3 = gapComposerH.x();
                    if (zK) {
                        objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                        gapComposerH.q(objX3);
                    } else {
                        objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                        gapComposerH.q(objX3);
                    }
                    AnnotatedString annotatedString6 = (AnnotatedString) objX3;
                    if (textAlign2 != null) {
                        i32 = textAlign2.f10964a;
                    } else {
                        TextAlign.f10959b.getClass();
                        i32 = 0;
                    }
                    long j114 = j14;
                    TextStyle textStyle8 = textStyle3;
                    int i3112 = i30 << 6;
                    int i3113 = i29;
                    int i3114 = i31;
                    int i3115 = i16;
                    Map map8 = map3;
                    Function1 function9 = function4;
                    Modifier modifier11 = dTFunctionNameModifier;
                    BasicTextKt.a(annotatedString6, modifier11, TextStyle.e(textStyle8, jB, j12, null, j13, null, i32, j114, 16609104), function9, i3115, z10, i3113, i3114, map8, gapComposerH, ((i30 >> 12) & 7168) | (i9 & 112) | (i3112 & 57344) | (i3112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3112 & 3670016) | (i3112 & 29360128) | (i3112 & 234881024), (i9 >> 9) & 14, 512);
                    modifier2 = modifier11;
                    gapComposer = gapComposerH;
                    map2 = map8;
                    j8 = j13;
                    textAlign3 = textAlign2;
                    i25 = i16;
                    z3 = z10;
                    textStyle2 = textStyle8;
                    function2 = function9;
                    j10 = j11;
                    j9 = j114;
                    long j115 = j12;
                    i26 = i3113;
                    i27 = i3114;
                    j7 = j115;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    j7 = j3;
                    j8 = j4;
                    j9 = j5;
                    map2 = map;
                    function2 = function1;
                    textAlign3 = textAlign2;
                    i25 = i16;
                    j10 = j6;
                    modifier2 = modifierE;
                    z3 = z;
                    i26 = i3;
                    i27 = i4;
                    textStyle2 = textStyle;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier12 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: j31
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i5 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i6);
                            TextKt.d(annotatedString, modifier12, j10, j7, j8, textAlign3, j9, i25, z3, i26, i27, map2, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i19 = i17 | 27648;
            i22 = i19 | 1769472;
            i23 = i7 & 131072;
            if (i23 != 0) {
                i22 = i19 | 14352384;
            } else if ((i6 & 12582912) == 0) {
                if (gapComposerH.y(function1)) {
                    i24 = 8388608;
                } else {
                    i24 = 4194304;
                }
                i22 |= i24;
            }
            if ((i6 & 100663296) != 0) {
                if ((i7 & 262144) == 0) {
                    i33 = 33554432;
                } else {
                    i33 = 33554432;
                }
                i22 |= i33;
            }
            if ((i9 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i9 & 1, z2)) {
                gapComposerH.y0();
                i28 = i5 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i28 != 0) {
                    if (i34 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                    }
                    if (i35 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j11 = Color.f8871i;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        j11 = j6;
                    }
                    TextUnit.Companion companion10 = TextUnit.f11023b;
                    companion10.getClass();
                    j12 = TextUnit.d;
                    companion10.getClass();
                    if (i10 != 0) {
                        textAlign2 = null;
                    }
                    companion10.getClass();
                    if (i15 != 0) {
                        TextOverflow.f10989a.getClass();
                        i16 = TextOverflow.f10990b;
                    }
                    if (i20 != 0) {
                        i29 = Integer.MAX_VALUE;
                    } else {
                        i29 = i3;
                    }
                    Map mapC10 = MapsKt.c();
                    if (i23 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new z21(9);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function1) objX;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 262144) != 0) {
                        i22 &= -234881025;
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                    } else {
                        textStyle3 = textStyle;
                    }
                    map3 = mapC10;
                    function4 = function3;
                    j13 = j12;
                    i30 = i22;
                    z4 = true;
                    i31 = 1;
                    j14 = j13;
                } else {
                    if (i34 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                    }
                    if (i35 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j11 = Color.f8871i;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        j11 = j6;
                    }
                    TextUnit.Companion companion11 = TextUnit.f11023b;
                    companion11.getClass();
                    j12 = TextUnit.d;
                    companion11.getClass();
                    if (i10 != 0) {
                        textAlign2 = null;
                    }
                    companion11.getClass();
                    if (i15 != 0) {
                        TextOverflow.f10989a.getClass();
                        i16 = TextOverflow.f10990b;
                    }
                    if (i20 != 0) {
                        i29 = Integer.MAX_VALUE;
                    } else {
                        i29 = i3;
                    }
                    Map mapC11 = MapsKt.c();
                    if (i23 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new z21(9);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function1) objX;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 262144) != 0) {
                        i22 &= -234881025;
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                    } else {
                        textStyle3 = textStyle;
                    }
                    map3 = mapC11;
                    function4 = function3;
                    j13 = j12;
                    i30 = i22;
                    z4 = true;
                    i31 = 1;
                    j14 = j13;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                boolean z11 = z4;
                gapComposerH.L(1676919644);
                if (j11 != 16) {
                    i29 = i29;
                    jB = j11;
                    z5 = false;
                } else {
                    gapComposerH.L(1676920417);
                    jB = textStyle3.b();
                    if (jB != 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    z5 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z5);
                j15 = MaterialTheme.a(gapComposerH).f6662a;
                zE = gapComposerH.e(j15);
                objX2 = gapComposerH.x();
                if (zE) {
                    TextDecoration.f10965b.getClass();
                    objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    gapComposerH.q(objX2);
                } else {
                    TextDecoration.f10965b.getClass();
                    objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    gapComposerH.q(objX2);
                }
                textLinkStyles = (TextLinkStyles) objX2;
                zK = ((i9 & 14) == 4) | gapComposerH.K(textLinkStyles);
                objX3 = gapComposerH.x();
                if (zK) {
                    objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                    gapComposerH.q(objX3);
                } else {
                    objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                    gapComposerH.q(objX3);
                }
                AnnotatedString annotatedString7 = (AnnotatedString) objX3;
                if (textAlign2 != null) {
                    i32 = textAlign2.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    i32 = 0;
                }
                long j116 = j14;
                TextStyle textStyle9 = textStyle3;
                int i3116 = i30 << 6;
                int i3117 = i29;
                int i3118 = i31;
                int i3119 = i16;
                Map map9 = map3;
                Function1 function10 = function4;
                Modifier modifier13 = dTFunctionNameModifier;
                BasicTextKt.a(annotatedString7, modifier13, TextStyle.e(textStyle9, jB, j12, null, j13, null, i32, j116, 16609104), function10, i3119, z11, i3117, i3118, map9, gapComposerH, ((i30 >> 12) & 7168) | (i9 & 112) | (i3116 & 57344) | (i3116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3116 & 3670016) | (i3116 & 29360128) | (i3116 & 234881024), (i9 >> 9) & 14, 512);
                modifier2 = modifier13;
                gapComposer = gapComposerH;
                map2 = map9;
                j8 = j13;
                textAlign3 = textAlign2;
                i25 = i16;
                z3 = z11;
                textStyle2 = textStyle9;
                function2 = function10;
                j10 = j11;
                j9 = j116;
                long j117 = j12;
                i26 = i3117;
                i27 = i3118;
                j7 = j117;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                j7 = j3;
                j8 = j4;
                j9 = j5;
                map2 = map;
                function2 = function1;
                textAlign3 = textAlign2;
                i25 = i16;
                j10 = j6;
                modifier2 = modifierE;
                z3 = z;
                i26 = i3;
                i27 = i4;
                textStyle2 = textStyle;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier14 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: j31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i6);
                        TextKt.d(annotatedString, modifier14, j10, j7, j8, textAlign3, j9, i25, z3, i26, i27, map2, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i13 = i6 | 6;
        textAlign2 = textAlign;
        i11 = i13;
        i14 = i11 | 48;
        i15 = i7 & 4096;
        if (i15 != 0) {
            i17 = i11 | 432;
            i16 = i2;
        } else {
            if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
                i16 = i2;
                if (gapComposerH.d(i16)) {
                    i18 = 256;
                } else {
                    i18 = 128;
                }
                i14 |= i18;
            } else {
                i16 = i2;
            }
            i17 = i14;
        }
        i19 = i17 | 3072;
        i20 = i7 & 16384;
        if (i20 != 0) {
            if ((i6 & 24576) == 0) {
                if (gapComposerH.d(i3)) {
                    i21 = 16384;
                } else {
                    i21 = 8192;
                }
                i19 |= i21;
            }
            i22 = i19 | 1769472;
            i23 = i7 & 131072;
            if (i23 != 0) {
                i22 = i19 | 14352384;
            } else if ((i6 & 12582912) == 0) {
                if (gapComposerH.y(function1)) {
                    i24 = 8388608;
                } else {
                    i24 = 4194304;
                }
                i22 |= i24;
            }
            if ((i6 & 100663296) != 0) {
                if ((i7 & 262144) == 0) {
                    i33 = 33554432;
                } else {
                    i33 = 33554432;
                }
                i22 |= i33;
            }
            if ((i9 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i9 & 1, z2)) {
                gapComposerH.y0();
                i28 = i5 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i28 != 0) {
                    if (i34 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                    }
                    if (i35 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j11 = Color.f8871i;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        j11 = j6;
                    }
                    TextUnit.Companion companion12 = TextUnit.f11023b;
                    companion12.getClass();
                    j12 = TextUnit.d;
                    companion12.getClass();
                    if (i10 != 0) {
                        textAlign2 = null;
                    }
                    companion12.getClass();
                    if (i15 != 0) {
                        TextOverflow.f10989a.getClass();
                        i16 = TextOverflow.f10990b;
                    }
                    if (i20 != 0) {
                        i29 = Integer.MAX_VALUE;
                    } else {
                        i29 = i3;
                    }
                    Map mapC12 = MapsKt.c();
                    if (i23 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new z21(9);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function1) objX;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 262144) != 0) {
                        i22 &= -234881025;
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                    } else {
                        textStyle3 = textStyle;
                    }
                    map3 = mapC12;
                    function4 = function3;
                    j13 = j12;
                    i30 = i22;
                    z4 = true;
                    i31 = 1;
                    j14 = j13;
                } else {
                    if (i34 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                    }
                    if (i35 != 0) {
                        dTFunctionNameModifier = modifierE;
                        Color.f8866b.getClass();
                        j11 = Color.f8871i;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        j11 = j6;
                    }
                    TextUnit.Companion companion13 = TextUnit.f11023b;
                    companion13.getClass();
                    j12 = TextUnit.d;
                    companion13.getClass();
                    if (i10 != 0) {
                        textAlign2 = null;
                    }
                    companion13.getClass();
                    if (i15 != 0) {
                        TextOverflow.f10989a.getClass();
                        i16 = TextOverflow.f10990b;
                    }
                    if (i20 != 0) {
                        i29 = Integer.MAX_VALUE;
                    } else {
                        i29 = i3;
                    }
                    Map mapC13 = MapsKt.c();
                    if (i23 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new z21(9);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function1) objX;
                    } else {
                        function3 = function1;
                    }
                    if ((i7 & 262144) != 0) {
                        i22 &= -234881025;
                        textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                    } else {
                        textStyle3 = textStyle;
                    }
                    map3 = mapC13;
                    function4 = function3;
                    j13 = j12;
                    i30 = i22;
                    z4 = true;
                    i31 = 1;
                    j14 = j13;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                boolean z12 = z4;
                gapComposerH.L(1676919644);
                if (j11 != 16) {
                    i29 = i29;
                    jB = j11;
                    z5 = false;
                } else {
                    gapComposerH.L(1676920417);
                    jB = textStyle3.b();
                    if (jB != 16) {
                        jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    }
                    z5 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z5);
                j15 = MaterialTheme.a(gapComposerH).f6662a;
                zE = gapComposerH.e(j15);
                objX2 = gapComposerH.x();
                if (zE) {
                    TextDecoration.f10965b.getClass();
                    objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    gapComposerH.q(objX2);
                } else {
                    TextDecoration.f10965b.getClass();
                    objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    gapComposerH.q(objX2);
                }
                textLinkStyles = (TextLinkStyles) objX2;
                zK = ((i9 & 14) == 4) | gapComposerH.K(textLinkStyles);
                objX3 = gapComposerH.x();
                if (zK) {
                    objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                    gapComposerH.q(objX3);
                } else {
                    objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                    gapComposerH.q(objX3);
                }
                AnnotatedString annotatedString8 = (AnnotatedString) objX3;
                if (textAlign2 != null) {
                    i32 = textAlign2.f10964a;
                } else {
                    TextAlign.f10959b.getClass();
                    i32 = 0;
                }
                long j118 = j14;
                TextStyle textStyle10 = textStyle3;
                int i31110 = i30 << 6;
                int i31111 = i29;
                int i31112 = i31;
                int i31113 = i16;
                Map map10 = map3;
                Function1 function11 = function4;
                Modifier modifier15 = dTFunctionNameModifier;
                BasicTextKt.a(annotatedString8, modifier15, TextStyle.e(textStyle10, jB, j12, null, j13, null, i32, j118, 16609104), function11, i31113, z12, i31111, i31112, map10, gapComposerH, ((i30 >> 12) & 7168) | (i9 & 112) | (i31110 & 57344) | (i31110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31110 & 3670016) | (i31110 & 29360128) | (i31110 & 234881024), (i9 >> 9) & 14, 512);
                modifier2 = modifier15;
                gapComposer = gapComposerH;
                map2 = map10;
                j8 = j13;
                textAlign3 = textAlign2;
                i25 = i16;
                z3 = z12;
                textStyle2 = textStyle10;
                function2 = function11;
                j10 = j11;
                j9 = j118;
                long j119 = j12;
                i26 = i31111;
                i27 = i31112;
                j7 = j119;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                j7 = j3;
                j8 = j4;
                j9 = j5;
                map2 = map;
                function2 = function1;
                textAlign3 = textAlign2;
                i25 = i16;
                j10 = j6;
                modifier2 = modifierE;
                z3 = z;
                i26 = i3;
                i27 = i4;
                textStyle2 = textStyle;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier16 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: j31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i5 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i6);
                        TextKt.d(annotatedString, modifier16, j10, j7, j8, textAlign3, j9, i25, z3, i26, i27, map2, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i19 = i17 | 27648;
        i22 = i19 | 1769472;
        i23 = i7 & 131072;
        if (i23 != 0) {
            i22 = i19 | 14352384;
        } else if ((i6 & 12582912) == 0) {
            if (gapComposerH.y(function1)) {
                i24 = 8388608;
            } else {
                i24 = 4194304;
            }
            i22 |= i24;
        }
        if ((i6 & 100663296) != 0) {
            if ((i7 & 262144) == 0) {
                i33 = 33554432;
            } else {
                i33 = 33554432;
            }
            i22 |= i33;
        }
        if ((i9 & 306783379) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (gapComposerH.p(i9 & 1, z2)) {
            gapComposerH.y0();
            i28 = i5 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i28 != 0) {
                if (i34 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                }
                if (i35 != 0) {
                    dTFunctionNameModifier = modifierE;
                    Color.f8866b.getClass();
                    j11 = Color.f8871i;
                } else {
                    dTFunctionNameModifier = modifierE;
                    j11 = j6;
                }
                TextUnit.Companion companion14 = TextUnit.f11023b;
                companion14.getClass();
                j12 = TextUnit.d;
                companion14.getClass();
                if (i10 != 0) {
                    textAlign2 = null;
                }
                companion14.getClass();
                if (i15 != 0) {
                    TextOverflow.f10989a.getClass();
                    i16 = TextOverflow.f10990b;
                }
                if (i20 != 0) {
                    i29 = Integer.MAX_VALUE;
                } else {
                    i29 = i3;
                }
                Map mapC14 = MapsKt.c();
                if (i23 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new z21(9);
                        gapComposerH.q(objX);
                    }
                    function3 = (Function1) objX;
                } else {
                    function3 = function1;
                }
                if ((i7 & 262144) != 0) {
                    i22 &= -234881025;
                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                } else {
                    textStyle3 = textStyle;
                }
                map3 = mapC14;
                function4 = function3;
                j13 = j12;
                i30 = i22;
                z4 = true;
                i31 = 1;
                j14 = j13;
            } else {
                if (i34 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Text-Z58ophY");
                }
                if (i35 != 0) {
                    dTFunctionNameModifier = modifierE;
                    Color.f8866b.getClass();
                    j11 = Color.f8871i;
                } else {
                    dTFunctionNameModifier = modifierE;
                    j11 = j6;
                }
                TextUnit.Companion companion15 = TextUnit.f11023b;
                companion15.getClass();
                j12 = TextUnit.d;
                companion15.getClass();
                if (i10 != 0) {
                    textAlign2 = null;
                }
                companion15.getClass();
                if (i15 != 0) {
                    TextOverflow.f10989a.getClass();
                    i16 = TextOverflow.f10990b;
                }
                if (i20 != 0) {
                    i29 = Integer.MAX_VALUE;
                } else {
                    i29 = i3;
                }
                Map mapC15 = MapsKt.c();
                if (i23 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new z21(9);
                        gapComposerH.q(objX);
                    }
                    function3 = (Function1) objX;
                } else {
                    function3 = function1;
                }
                if ((i7 & 262144) != 0) {
                    i22 &= -234881025;
                    textStyle3 = (TextStyle) gapComposerH.k(f7383a);
                } else {
                    textStyle3 = textStyle;
                }
                map3 = mapC15;
                function4 = function3;
                j13 = j12;
                i30 = i22;
                z4 = true;
                i31 = 1;
                j14 = j13;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            boolean z13 = z4;
            gapComposerH.L(1676919644);
            if (j11 != 16) {
                i29 = i29;
                jB = j11;
                z5 = false;
            } else {
                gapComposerH.L(1676920417);
                jB = textStyle3.b();
                if (jB != 16) {
                    jB = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                }
                z5 = false;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z5);
            j15 = MaterialTheme.a(gapComposerH).f6662a;
            zE = gapComposerH.e(j15);
            objX2 = gapComposerH.x();
            if (zE) {
                TextDecoration.f10965b.getClass();
                objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                gapComposerH.q(objX2);
            } else {
                TextDecoration.f10965b.getClass();
                objX2 = new TextLinkStyles(new SpanStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61438, (DefaultConstructorMarker) null), null, null, null, 14, null);
                gapComposerH.q(objX2);
            }
            textLinkStyles = (TextLinkStyles) objX2;
            zK = ((i9 & 14) == 4) | gapComposerH.K(textLinkStyles);
            objX3 = gapComposerH.x();
            if (zK) {
                objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                gapComposerH.q(objX3);
            } else {
                objX3 = annotatedString.e(new p11(textLinkStyles, 5));
                gapComposerH.q(objX3);
            }
            AnnotatedString annotatedString9 = (AnnotatedString) objX3;
            if (textAlign2 != null) {
                i32 = textAlign2.f10964a;
            } else {
                TextAlign.f10959b.getClass();
                i32 = 0;
            }
            long j1110 = j14;
            TextStyle textStyle11 = textStyle3;
            int i31114 = i30 << 6;
            int i31115 = i29;
            int i31116 = i31;
            int i31117 = i16;
            Map map11 = map3;
            Function1 function12 = function4;
            Modifier modifier17 = dTFunctionNameModifier;
            BasicTextKt.a(annotatedString9, modifier17, TextStyle.e(textStyle11, jB, j12, null, j13, null, i32, j1110, 16609104), function12, i31117, z13, i31115, i31116, map11, gapComposerH, ((i30 >> 12) & 7168) | (i9 & 112) | (i31114 & 57344) | (i31114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31114 & 3670016) | (i31114 & 29360128) | (i31114 & 234881024), (i9 >> 9) & 14, 512);
            modifier2 = modifier17;
            gapComposer = gapComposerH;
            map2 = map11;
            j8 = j13;
            textAlign3 = textAlign2;
            i25 = i16;
            z3 = z13;
            textStyle2 = textStyle11;
            function2 = function12;
            j10 = j11;
            j9 = j1110;
            long j1111 = j12;
            i26 = i31115;
            i27 = i31116;
            j7 = j1111;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            j7 = j3;
            j8 = j4;
            j9 = j5;
            map2 = map;
            function2 = function1;
            textAlign3 = textAlign2;
            i25 = i16;
            j10 = j6;
            modifier2 = modifierE;
            z3 = z;
            i26 = i3;
            i27 = i4;
            textStyle2 = textStyle;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier18 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: j31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i6);
                    TextKt.d(annotatedString, modifier18, j10, j7, j8, textAlign3, j9, i25, z3, i26, i27, map2, function2, textStyle2, (Composer) obj, iA, iA2, i7);
                    return Unit.f71739a;
                }
            };
        }
    }
}
