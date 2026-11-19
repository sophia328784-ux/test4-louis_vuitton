package com.vuitton.android.designkit.ui.theme.templates;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import defpackage.a;
import defpackage.g0;
import defpackage.gf;
import defpackage.k40;
import defpackage.lt;
import defpackage.n00;
import defpackage.n50;
import defpackage.u1;
import defpackage.v50;
import defpackage.ye;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVEmptyViewKt {
    public static final void a(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(568872225);
        int i3 = 1;
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("Background").o(SizeKt.f5052c), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Painter painterA = PainterResources_androidKt.a(2131230850, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            ImageKt.a(painterA, null, modifierK, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632, 104);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, i3);
        }
    }

    public static final void b(int i2, int i3, Composer composer, Modifier modifier, String str) {
        String str2;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CentralTitle");
        }
        GapComposer gapComposerH = composer.h(2117856833);
        int i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i3 | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i4 >> 3) & 14), null, ColumnScopeInstance.f4944a.b(SizeKt.o(n00.g("CentralTitle", "emptystate_stateImage_image"), IconSize.f48350e), Alignment.Companion.o), 0L, gapComposerH, 56, 8);
            if (str == null) {
                gapComposerH.L(-1648273539);
                gapComposerH.Z(false);
                str2 = str;
                z = true;
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1648273538, "CentralTitle");
                boolean zK = gapComposerH.K(str);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new lt(str, 12);
                    gapComposerH.q(objX);
                }
                Modifier modifierE2 = ModifierExtKt.e(SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX), "emptystate_stateMessage_text");
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierD = SizeKt.d(PaddingKt.m(modifierE2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 24.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextAlign.f10959b.getClass();
                str2 = str;
                TextKt.c(str2, modifierD, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
                z = true;
            }
            gapComposerH.Z(z);
        } else {
            modifierE = modifierE;
            str2 = str;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ye(modifierE, i2, str2, i3);
        }
    }

    public static final void c(Modifier modifier, String str, String str2, Function0 function0, String str3, AutomationTagsAction automationTagsAction, Composer composer, int i2) {
        String str4;
        boolean z;
        String str5;
        Modifier dTFunctionNameModifier;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "FooterDescription");
        }
        GapComposer gapComposerH = composer.h(-1489163966);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.K(str3) ? 16384 : 8192) | (gapComposerH.K(automationTagsAction) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (i3 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (str == null) {
                gapComposerH.L(674939497);
                gapComposerH.Z(false);
                str4 = "FooterDescription";
                z = false;
            } else {
                gapComposerH.L(674939498);
                Modifier modifierD = SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("FooterDescription"), "emptystate_stateDescrption_text"), 1.0f);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                TextAlign.f10959b.getClass();
                str4 = "FooterDescription";
                TextKt.c(str, modifierD, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                z = false;
                gapComposerH.Z(false);
            }
            if (str2 == null) {
                gapComposerH = gapComposerH;
                gapComposerH.L(675383138);
                gapComposerH.Z(z);
                str5 = str4;
            } else {
                gapComposerH = gapComposerH;
                str5 = str4;
                Modifier modifierD2 = n00.d(gapComposerH, 675383139, str5, "emptystate_link_button");
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierB = ColumnScopeInstance.f4944a.b(PaddingKt.m(modifierD2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Alignment.Companion.o);
                if (automationTagsAction == null || (dTFunctionNameModifier = n00.g(str5, automationTagsAction.a())) == null) {
                    dTFunctionNameModifier = new DTFunctionNameModifier(str5);
                }
                LVLinkKt.a(modifierB.o(dTFunctionNameModifier), str2, false, null, false, function0, gapComposerH, (i3 << 6) & ImageMetadata.JPEG_GPS_COORDINATES, 28);
                gapComposerH.Z(z);
            }
            if (str3 != null) {
                SpacerKt.a(gapComposerH, SizeKt.o(n00.i(gapComposerH, 675926166, str5), LVAppDesignKitTheme.l(gapComposerH).g));
                gapComposerH.Z(z);
            } else {
                SpacerKt.a(gapComposerH, SizeKt.o(n00.i(gapComposerH, 676027350, str5), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                gapComposerH.Z(z);
            }
            gapComposerH.Z(true);
        } else {
            modifierE = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifierE, str, str2, function0, str3, automationTagsAction, i2, 15);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0121  */
    /* JADX WARN: Code duplicated, block: B:101:0x0124  */
    /* JADX WARN: Code duplicated, block: B:105:0x012c  */
    /* JADX WARN: Code duplicated, block: B:106:0x0135  */
    /* JADX WARN: Code duplicated, block: B:108:0x0139  */
    /* JADX WARN: Code duplicated, block: B:110:0x0143  */
    /* JADX WARN: Code duplicated, block: B:111:0x0146  */
    /* JADX WARN: Code duplicated, block: B:113:0x014b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0155  */
    /* JADX WARN: Code duplicated, block: B:117:0x015c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0166  */
    /* JADX WARN: Code duplicated, block: B:120:0x0169  */
    /* JADX WARN: Code duplicated, block: B:124:0x0178  */
    /* JADX WARN: Code duplicated, block: B:128:0x0181  */
    /* JADX WARN: Code duplicated, block: B:131:0x018a  */
    /* JADX WARN: Code duplicated, block: B:133:0x018e  */
    /* JADX WARN: Code duplicated, block: B:135:0x0194  */
    /* JADX WARN: Code duplicated, block: B:137:0x019b  */
    /* JADX WARN: Code duplicated, block: B:139:0x019e  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:144:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:145:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:149:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:154:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:156:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:158:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:160:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:162:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:163:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:165:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:166:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:169:0x022f  */
    /* JADX WARN: Code duplicated, block: B:171:0x0236  */
    /* JADX WARN: Code duplicated, block: B:172:0x023a  */
    /* JADX WARN: Code duplicated, block: B:175:0x0267  */
    /* JADX WARN: Code duplicated, block: B:177:0x027a  */
    /* JADX WARN: Code duplicated, block: B:179:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:181:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:184:0x0319  */
    /* JADX WARN: Code duplicated, block: B:186:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x005c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0064  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0071  */
    /* JADX WARN: Code duplicated, block: B:44:0x0076  */
    /* JADX WARN: Code duplicated, block: B:46:0x007a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:54:0x0093  */
    /* JADX WARN: Code duplicated, block: B:56:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x009f  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:78:0x00db  */
    /* JADX WARN: Code duplicated, block: B:79:0x00de  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:90:0x0102  */
    /* JADX WARN: Code duplicated, block: B:94:0x010c  */
    /* JADX WARN: Code duplicated, block: B:96:0x0113  */
    /* JADX WARN: Code duplicated, block: B:98:0x0117  */
    public static final void d(Modifier modifier, final int i2, SnackbarHostState snackbarHostState, final String str, String str2, String str3, boolean z, Function0 function0, String str4, Function0 function1, AutomationTagsAction automationTagsAction, AutomationTagsAction automationTagsAction2, Composer composer, final int i3, final int i4, final int i5) {
        int i6;
        SnackbarHostState snackbarHostState2;
        String str5;
        int i7;
        String str6;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        Function0 function2;
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
        int i25;
        boolean z2;
        final String str7;
        final Function0 function3;
        final AutomationTagsAction automationTagsAction3;
        final Function0 function4;
        final SnackbarHostState snackbarHostState3;
        final String str8;
        final boolean z3;
        final String str9;
        final AutomationTagsAction automationTagsAction4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        String str10;
        boolean z4;
        Function0 function5;
        String str11;
        Function0 function6;
        AutomationTagsAction automationTagsAction5;
        AutomationTagsAction automationTagsAction6;
        MeasurePolicy measurePolicyD;
        final Function0 function7;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function8;
        WindowInsets windowInsetsI;
        Object objX;
        Object objX2;
        Object objX3;
        int i26;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LVEmptyView");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-754284711);
        if ((i3 & 6) == 0) {
            i6 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposerH.d(i2) ? 32 : 16;
        }
        int i27 = i5 & 4;
        if (i27 == 0) {
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                snackbarHostState2 = snackbarHostState;
                i6 |= gapComposerH.K(snackbarHostState2) ? 256 : 128;
            }
            if ((i3 & 3072) == 0) {
                str5 = str;
                if (gapComposerH.K(str5)) {
                    i26 = 2048;
                } else {
                    i26 = 1024;
                }
                i6 |= i26;
            } else {
                str5 = str;
            }
            i7 = i5 & 16;
            if (i7 != 0) {
                if ((i3 & 24576) == 0) {
                    str6 = str2;
                    if (gapComposerH.K(str6)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i6 |= i8;
                }
                i9 = i5 & 32;
                if (i9 != 0) {
                    i6 |= ImageMetadata.EDGE_MODE;
                } else if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.K(str3)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i6 |= i10;
                }
                i11 = i5 & 64;
                if (i11 != 0) {
                    i6 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (gapComposerH.b(z)) {
                        i12 = 1048576;
                    } else {
                        i12 = 524288;
                    }
                    i6 |= i12;
                }
                i13 = i5 & 128;
                if (i13 != 0) {
                    i6 |= 12582912;
                    function2 = function0;
                } else {
                    function2 = function0;
                    if ((i3 & 12582912) == 0) {
                        if (gapComposerH.y(function2)) {
                            i14 = 8388608;
                        } else {
                            i14 = 4194304;
                        }
                        i6 |= i14;
                    }
                }
                i15 = i6;
                i16 = i5 & 256;
                if (i16 != 0) {
                    if ((i3 & 100663296) == 0) {
                        if (gapComposerH.K(str4)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i15 |= i17;
                    }
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.y(function1)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i15 |= i19;
                        }
                        i20 = i5 & 1024;
                        if (i20 != 0) {
                            i21 = 6;
                        } else if ((i4 & 6) == 0) {
                            if (gapComposerH.K(automationTagsAction)) {
                                i22 = 4;
                            } else {
                                i22 = 2;
                            }
                            i21 = i4 | i22;
                        } else {
                            i21 = i4;
                        }
                        i23 = i5 & 2048;
                        if (i23 != 0) {
                            i25 = i21 | 48;
                        } else {
                            if (gapComposerH.K(automationTagsAction2)) {
                                i24 = 32;
                            } else {
                                i24 = 16;
                            }
                            i25 = i21 | i24;
                        }
                        if ((i15 & 306783379) == 306783378 || (i25 & 19) != 18) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (gapComposerH.p(i15 & 1, z2)) {
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (i27 != 0) {
                                objX3 = gapComposerH.x();
                                if (objX3 == composer$Companion$Empty$1) {
                                    objX3 = n00.b(gapComposerH);
                                }
                                snackbarHostState3 = (SnackbarHostState) objX3;
                            } else {
                                snackbarHostState3 = snackbarHostState2;
                            }
                            if (i7 != 0) {
                                str6 = null;
                            }
                            if (i9 != 0) {
                                str10 = null;
                            } else {
                                str10 = str3;
                            }
                            if (i11 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i13 != 0) {
                                objX2 = gapComposerH.x();
                                if (objX2 == composer$Companion$Empty$1) {
                                    objX2 = new k40(13);
                                    gapComposerH.q(objX2);
                                }
                                function5 = (Function0) objX2;
                            } else {
                                function5 = function2;
                            }
                            if (i16 != 0) {
                                str11 = null;
                            } else {
                                str11 = str4;
                            }
                            if (i18 != 0) {
                                objX = gapComposerH.x();
                                if (objX == composer$Companion$Empty$1) {
                                    objX = new k40(14);
                                    gapComposerH.q(objX);
                                }
                                function6 = (Function0) objX;
                            } else {
                                function6 = function1;
                            }
                            if (i20 != 0) {
                                automationTagsAction5 = null;
                            } else {
                                automationTagsAction5 = automationTagsAction;
                            }
                            if (i23 != 0) {
                                automationTagsAction6 = null;
                            } else {
                                automationTagsAction6 = automationTagsAction2;
                            }
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            Modifier modifierB = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            function7 = function5;
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                            ComposeUiNode.b0.getClass();
                            function8 = ComposeUiNode.Companion.f9641b;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function8);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            a(gapComposerH, 0);
                            Color.f8866b.getClass();
                            long j2 = Color.f8870h;
                            if (z4) {
                                gapComposerH.L(1282976040);
                                gapComposerH.Z(false);
                                Dp.Companion companion = Dp.f11004c;
                                windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                gapComposerH.L(1283144587);
                                AndroidWindowInsets androidWindowInsetsC = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                gapComposerH.Z(false);
                            }
                            final String str12 = str11;
                            final String str13 = str10;
                            final String str14 = str5;
                            final String str15 = str6;
                            final AutomationTagsAction automationTagsAction7 = automationTagsAction6;
                            ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j2, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                        Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iHashCode2 = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function9 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function9);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                        Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                        Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                        Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                        LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str14);
                                        LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str15, str13, function7, str12, automationTagsAction7, composer2, 0);
                                        composer2.r();
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH), gapComposerH, 806882688, 179);
                            gapComposerH.Z(true);
                            function3 = function6;
                            str9 = str12;
                            automationTagsAction4 = automationTagsAction7;
                            str8 = str15;
                            z3 = z4;
                            automationTagsAction3 = automationTagsAction5;
                            function4 = function7;
                            str7 = str13;
                        } else {
                            gapComposerH.D();
                            str7 = str3;
                            function3 = function1;
                            automationTagsAction3 = automationTagsAction;
                            function4 = function2;
                            snackbarHostState3 = snackbarHostState2;
                            str8 = str6;
                            z3 = z;
                            str9 = str4;
                            automationTagsAction4 = automationTagsAction2;
                        }
                        recomposeScopeImplB0 = gapComposerH.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: x50
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i15 |= 805306368;
                    i20 = i5 & 1024;
                    if (i20 != 0) {
                        i21 = 6;
                    } else if ((i4 & 6) == 0) {
                        if (gapComposerH.K(automationTagsAction)) {
                            i22 = 4;
                        } else {
                            i22 = 2;
                        }
                        i21 = i4 | i22;
                    } else {
                        i21 = i4;
                    }
                    i23 = i5 & 2048;
                    if (i23 != 0) {
                        i25 = i21 | 48;
                    } else {
                        if (gapComposerH.K(automationTagsAction2)) {
                            i24 = 32;
                        } else {
                            i24 = 16;
                        }
                        i25 = i21 | i24;
                    }
                    if ((i15 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i15 & 1, z2)) {
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i27 != 0) {
                            objX3 = gapComposerH.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = n00.b(gapComposerH);
                            }
                            snackbarHostState3 = (SnackbarHostState) objX3;
                        } else {
                            snackbarHostState3 = snackbarHostState2;
                        }
                        if (i7 != 0) {
                            str6 = null;
                        }
                        if (i9 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i11 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i13 != 0) {
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new k40(13);
                                gapComposerH.q(objX2);
                            }
                            function5 = (Function0) objX2;
                        } else {
                            function5 = function2;
                        }
                        if (i16 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        if (i18 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new k40(14);
                                gapComposerH.q(objX);
                            }
                            function6 = (Function0) objX;
                        } else {
                            function6 = function1;
                        }
                        if (i20 != 0) {
                            automationTagsAction5 = null;
                        } else {
                            automationTagsAction5 = automationTagsAction;
                        }
                        if (i23 != 0) {
                            automationTagsAction6 = null;
                        } else {
                            automationTagsAction6 = automationTagsAction2;
                        }
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierB2 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        function7 = function5;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
                        ComposeUiNode.b0.getClass();
                        function8 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function8);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        a(gapComposerH, 0);
                        Color.f8866b.getClass();
                        long j3 = Color.f8870h;
                        if (z4) {
                            gapComposerH.L(1282976040);
                            gapComposerH.Z(false);
                            Dp.Companion companion2 = Dp.f11004c;
                            windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            gapComposerH.L(1283144587);
                            AndroidWindowInsets androidWindowInsetsC2 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC2, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            gapComposerH.Z(false);
                        }
                        final String str16 = str11;
                        final String str17 = str10;
                        final String str18 = str5;
                        final String str19 = str6;
                        final AutomationTagsAction automationTagsAction8 = automationTagsAction6;
                        ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j3, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function9);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                    Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str18);
                                    LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str19, str17, function7, str16, automationTagsAction8, composer2, 0);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 806882688, 179);
                        gapComposerH.Z(true);
                        function3 = function6;
                        str9 = str16;
                        automationTagsAction4 = automationTagsAction8;
                        str8 = str19;
                        z3 = z4;
                        automationTagsAction3 = automationTagsAction5;
                        function4 = function7;
                        str7 = str17;
                    } else {
                        gapComposerH.D();
                        str7 = str3;
                        function3 = function1;
                        automationTagsAction3 = automationTagsAction;
                        function4 = function2;
                        snackbarHostState3 = snackbarHostState2;
                        str8 = str6;
                        z3 = z;
                        str9 = str4;
                        automationTagsAction4 = automationTagsAction2;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: x50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i15 |= 100663296;
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function1)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i15 |= i19;
                    }
                    i20 = i5 & 1024;
                    if (i20 != 0) {
                        i21 = 6;
                    } else if ((i4 & 6) == 0) {
                        if (gapComposerH.K(automationTagsAction)) {
                            i22 = 4;
                        } else {
                            i22 = 2;
                        }
                        i21 = i4 | i22;
                    } else {
                        i21 = i4;
                    }
                    i23 = i5 & 2048;
                    if (i23 != 0) {
                        i25 = i21 | 48;
                    } else {
                        if (gapComposerH.K(automationTagsAction2)) {
                            i24 = 32;
                        } else {
                            i24 = 16;
                        }
                        i25 = i21 | i24;
                    }
                    if ((i15 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i15 & 1, z2)) {
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i27 != 0) {
                            objX3 = gapComposerH.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = n00.b(gapComposerH);
                            }
                            snackbarHostState3 = (SnackbarHostState) objX3;
                        } else {
                            snackbarHostState3 = snackbarHostState2;
                        }
                        if (i7 != 0) {
                            str6 = null;
                        }
                        if (i9 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i11 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i13 != 0) {
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new k40(13);
                                gapComposerH.q(objX2);
                            }
                            function5 = (Function0) objX2;
                        } else {
                            function5 = function2;
                        }
                        if (i16 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        if (i18 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new k40(14);
                                gapComposerH.q(objX);
                            }
                            function6 = (Function0) objX;
                        } else {
                            function6 = function1;
                        }
                        if (i20 != 0) {
                            automationTagsAction5 = null;
                        } else {
                            automationTagsAction5 = automationTagsAction;
                        }
                        if (i23 != 0) {
                            automationTagsAction6 = null;
                        } else {
                            automationTagsAction6 = automationTagsAction2;
                        }
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        Modifier modifierB3 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        function7 = function5;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierB3);
                        ComposeUiNode.b0.getClass();
                        function8 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function8);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        a(gapComposerH, 0);
                        Color.f8866b.getClass();
                        long j4 = Color.f8870h;
                        if (z4) {
                            gapComposerH.L(1282976040);
                            gapComposerH.Z(false);
                            Dp.Companion companion3 = Dp.f11004c;
                            windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            gapComposerH.L(1283144587);
                            AndroidWindowInsets androidWindowInsetsC3 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC3, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            gapComposerH.Z(false);
                        }
                        final String str110 = str11;
                        final String str111 = str10;
                        final String str112 = str5;
                        final String str113 = str6;
                        final AutomationTagsAction automationTagsAction9 = automationTagsAction6;
                        ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j4, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function9);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                    Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str112);
                                    LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str113, str111, function7, str110, automationTagsAction9, composer2, 0);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 806882688, 179);
                        gapComposerH.Z(true);
                        function3 = function6;
                        str9 = str110;
                        automationTagsAction4 = automationTagsAction9;
                        str8 = str113;
                        z3 = z4;
                        automationTagsAction3 = automationTagsAction5;
                        function4 = function7;
                        str7 = str111;
                    } else {
                        gapComposerH.D();
                        str7 = str3;
                        function3 = function1;
                        automationTagsAction3 = automationTagsAction;
                        function4 = function2;
                        snackbarHostState3 = snackbarHostState2;
                        str8 = str6;
                        z3 = z;
                        str9 = str4;
                        automationTagsAction4 = automationTagsAction2;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: x50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i15 |= 805306368;
                i20 = i5 & 1024;
                if (i20 != 0) {
                    i21 = 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.K(automationTagsAction)) {
                        i22 = 4;
                    } else {
                        i22 = 2;
                    }
                    i21 = i4 | i22;
                } else {
                    i21 = i4;
                }
                i23 = i5 & 2048;
                if (i23 != 0) {
                    i25 = i21 | 48;
                } else {
                    if (gapComposerH.K(automationTagsAction2)) {
                        i24 = 32;
                    } else {
                        i24 = 16;
                    }
                    i25 = i21 | i24;
                }
                if ((i15 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i15 & 1, z2)) {
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i27 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        snackbarHostState3 = (SnackbarHostState) objX3;
                    } else {
                        snackbarHostState3 = snackbarHostState2;
                    }
                    if (i7 != 0) {
                        str6 = null;
                    }
                    if (i9 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i11 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(13);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    if (i16 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    if (i18 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new k40(14);
                            gapComposerH.q(objX);
                        }
                        function6 = (Function0) objX;
                    } else {
                        function6 = function1;
                    }
                    if (i20 != 0) {
                        automationTagsAction5 = null;
                    } else {
                        automationTagsAction5 = automationTagsAction;
                    }
                    if (i23 != 0) {
                        automationTagsAction6 = null;
                    } else {
                        automationTagsAction6 = automationTagsAction2;
                    }
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierB4 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    function7 = function5;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
                    ComposeUiNode.b0.getClass();
                    function8 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function8);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    a(gapComposerH, 0);
                    Color.f8866b.getClass();
                    long j5 = Color.f8870h;
                    if (z4) {
                        gapComposerH.L(1282976040);
                        gapComposerH.Z(false);
                        Dp.Companion companion4 = Dp.f11004c;
                        windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        gapComposerH.L(1283144587);
                        AndroidWindowInsets androidWindowInsetsC4 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC4, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        gapComposerH.Z(false);
                    }
                    final String str114 = str11;
                    final String str115 = str10;
                    final String str116 = str5;
                    final String str117 = str6;
                    final AutomationTagsAction automationTagsAction10 = automationTagsAction6;
                    ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j5, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str116);
                                LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str117, str115, function7, str114, automationTagsAction10, composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 806882688, 179);
                    gapComposerH.Z(true);
                    function3 = function6;
                    str9 = str114;
                    automationTagsAction4 = automationTagsAction10;
                    str8 = str117;
                    z3 = z4;
                    automationTagsAction3 = automationTagsAction5;
                    function4 = function7;
                    str7 = str115;
                } else {
                    gapComposerH.D();
                    str7 = str3;
                    function3 = function1;
                    automationTagsAction3 = automationTagsAction;
                    function4 = function2;
                    snackbarHostState3 = snackbarHostState2;
                    str8 = str6;
                    z3 = z;
                    str9 = str4;
                    automationTagsAction4 = automationTagsAction2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: x50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 24576;
            str6 = str2;
            i9 = i5 & 32;
            if (i9 != 0) {
                i6 |= ImageMetadata.EDGE_MODE;
            } else if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(str3)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i6 |= i10;
            }
            i11 = i5 & 64;
            if (i11 != 0) {
                i6 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (gapComposerH.b(z)) {
                    i12 = 1048576;
                } else {
                    i12 = 524288;
                }
                i6 |= i12;
            }
            i13 = i5 & 128;
            if (i13 != 0) {
                i6 |= 12582912;
                function2 = function0;
            } else {
                function2 = function0;
                if ((i3 & 12582912) == 0) {
                    if (gapComposerH.y(function2)) {
                        i14 = 8388608;
                    } else {
                        i14 = 4194304;
                    }
                    i6 |= i14;
                }
            }
            i15 = i6;
            i16 = i5 & 256;
            if (i16 != 0) {
                if ((i3 & 100663296) == 0) {
                    if (gapComposerH.K(str4)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i15 |= i17;
                }
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function1)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i15 |= i19;
                    }
                    i20 = i5 & 1024;
                    if (i20 != 0) {
                        i21 = 6;
                    } else if ((i4 & 6) == 0) {
                        if (gapComposerH.K(automationTagsAction)) {
                            i22 = 4;
                        } else {
                            i22 = 2;
                        }
                        i21 = i4 | i22;
                    } else {
                        i21 = i4;
                    }
                    i23 = i5 & 2048;
                    if (i23 != 0) {
                        i25 = i21 | 48;
                    } else {
                        if (gapComposerH.K(automationTagsAction2)) {
                            i24 = 32;
                        } else {
                            i24 = 16;
                        }
                        i25 = i21 | i24;
                    }
                    if ((i15 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i15 & 1, z2)) {
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i27 != 0) {
                            objX3 = gapComposerH.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = n00.b(gapComposerH);
                            }
                            snackbarHostState3 = (SnackbarHostState) objX3;
                        } else {
                            snackbarHostState3 = snackbarHostState2;
                        }
                        if (i7 != 0) {
                            str6 = null;
                        }
                        if (i9 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i11 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i13 != 0) {
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new k40(13);
                                gapComposerH.q(objX2);
                            }
                            function5 = (Function0) objX2;
                        } else {
                            function5 = function2;
                        }
                        if (i16 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        if (i18 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new k40(14);
                                gapComposerH.q(objX);
                            }
                            function6 = (Function0) objX;
                        } else {
                            function6 = function1;
                        }
                        if (i20 != 0) {
                            automationTagsAction5 = null;
                        } else {
                            automationTagsAction5 = automationTagsAction;
                        }
                        if (i23 != 0) {
                            automationTagsAction6 = null;
                        } else {
                            automationTagsAction6 = automationTagsAction2;
                        }
                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        Modifier modifierB5 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        function7 = function5;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierB5);
                        ComposeUiNode.b0.getClass();
                        function8 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function8);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        a(gapComposerH, 0);
                        Color.f8866b.getClass();
                        long j6 = Color.f8870h;
                        if (z4) {
                            gapComposerH.L(1282976040);
                            gapComposerH.Z(false);
                            Dp.Companion companion5 = Dp.f11004c;
                            windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            gapComposerH.L(1283144587);
                            AndroidWindowInsets androidWindowInsetsC5 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC5, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            gapComposerH.Z(false);
                        }
                        final String str118 = str11;
                        final String str119 = str10;
                        final String str1110 = str5;
                        final String str1111 = str6;
                        final AutomationTagsAction automationTagsAction11 = automationTagsAction6;
                        ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j6, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function9);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                    Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str1110);
                                    LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str1111, str119, function7, str118, automationTagsAction11, composer2, 0);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 806882688, 179);
                        gapComposerH.Z(true);
                        function3 = function6;
                        str9 = str118;
                        automationTagsAction4 = automationTagsAction11;
                        str8 = str1111;
                        z3 = z4;
                        automationTagsAction3 = automationTagsAction5;
                        function4 = function7;
                        str7 = str119;
                    } else {
                        gapComposerH.D();
                        str7 = str3;
                        function3 = function1;
                        automationTagsAction3 = automationTagsAction;
                        function4 = function2;
                        snackbarHostState3 = snackbarHostState2;
                        str8 = str6;
                        z3 = z;
                        str9 = str4;
                        automationTagsAction4 = automationTagsAction2;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: x50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i15 |= 805306368;
                i20 = i5 & 1024;
                if (i20 != 0) {
                    i21 = 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.K(automationTagsAction)) {
                        i22 = 4;
                    } else {
                        i22 = 2;
                    }
                    i21 = i4 | i22;
                } else {
                    i21 = i4;
                }
                i23 = i5 & 2048;
                if (i23 != 0) {
                    i25 = i21 | 48;
                } else {
                    if (gapComposerH.K(automationTagsAction2)) {
                        i24 = 32;
                    } else {
                        i24 = 16;
                    }
                    i25 = i21 | i24;
                }
                if ((i15 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i15 & 1, z2)) {
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i27 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        snackbarHostState3 = (SnackbarHostState) objX3;
                    } else {
                        snackbarHostState3 = snackbarHostState2;
                    }
                    if (i7 != 0) {
                        str6 = null;
                    }
                    if (i9 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i11 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(13);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    if (i16 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    if (i18 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new k40(14);
                            gapComposerH.q(objX);
                        }
                        function6 = (Function0) objX;
                    } else {
                        function6 = function1;
                    }
                    if (i20 != 0) {
                        automationTagsAction5 = null;
                    } else {
                        automationTagsAction5 = automationTagsAction;
                    }
                    if (i23 != 0) {
                        automationTagsAction6 = null;
                    } else {
                        automationTagsAction6 = automationTagsAction2;
                    }
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    Modifier modifierB6 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    function7 = function5;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB6);
                    ComposeUiNode.b0.getClass();
                    function8 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function8);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    a(gapComposerH, 0);
                    Color.f8866b.getClass();
                    long j7 = Color.f8870h;
                    if (z4) {
                        gapComposerH.L(1282976040);
                        gapComposerH.Z(false);
                        Dp.Companion companion6 = Dp.f11004c;
                        windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        gapComposerH.L(1283144587);
                        AndroidWindowInsets androidWindowInsetsC6 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC6, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        gapComposerH.Z(false);
                    }
                    final String str1112 = str11;
                    final String str1113 = str10;
                    final String str1114 = str5;
                    final String str1115 = str6;
                    final AutomationTagsAction automationTagsAction12 = automationTagsAction6;
                    ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j7, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str1114);
                                LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str1115, str1113, function7, str1112, automationTagsAction12, composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 806882688, 179);
                    gapComposerH.Z(true);
                    function3 = function6;
                    str9 = str1112;
                    automationTagsAction4 = automationTagsAction12;
                    str8 = str1115;
                    z3 = z4;
                    automationTagsAction3 = automationTagsAction5;
                    function4 = function7;
                    str7 = str1113;
                } else {
                    gapComposerH.D();
                    str7 = str3;
                    function3 = function1;
                    automationTagsAction3 = automationTagsAction;
                    function4 = function2;
                    snackbarHostState3 = snackbarHostState2;
                    str8 = str6;
                    z3 = z;
                    str9 = str4;
                    automationTagsAction4 = automationTagsAction2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: x50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i15 |= 100663296;
            i18 = i5 & 512;
            if (i18 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function1)) {
                        i19 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i19 = 268435456;
                    }
                    i15 |= i19;
                }
                i20 = i5 & 1024;
                if (i20 != 0) {
                    i21 = 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.K(automationTagsAction)) {
                        i22 = 4;
                    } else {
                        i22 = 2;
                    }
                    i21 = i4 | i22;
                } else {
                    i21 = i4;
                }
                i23 = i5 & 2048;
                if (i23 != 0) {
                    i25 = i21 | 48;
                } else {
                    if (gapComposerH.K(automationTagsAction2)) {
                        i24 = 32;
                    } else {
                        i24 = 16;
                    }
                    i25 = i21 | i24;
                }
                if ((i15 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i15 & 1, z2)) {
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i27 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        snackbarHostState3 = (SnackbarHostState) objX3;
                    } else {
                        snackbarHostState3 = snackbarHostState2;
                    }
                    if (i7 != 0) {
                        str6 = null;
                    }
                    if (i9 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i11 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(13);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    if (i16 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    if (i18 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new k40(14);
                            gapComposerH.q(objX);
                        }
                        function6 = (Function0) objX;
                    } else {
                        function6 = function1;
                    }
                    if (i20 != 0) {
                        automationTagsAction5 = null;
                    } else {
                        automationTagsAction5 = automationTagsAction;
                    }
                    if (i23 != 0) {
                        automationTagsAction6 = null;
                    } else {
                        automationTagsAction6 = automationTagsAction2;
                    }
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    Modifier modifierB7 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    function7 = function5;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB7);
                    ComposeUiNode.b0.getClass();
                    function8 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function8);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    a(gapComposerH, 0);
                    Color.f8866b.getClass();
                    long j8 = Color.f8870h;
                    if (z4) {
                        gapComposerH.L(1282976040);
                        gapComposerH.Z(false);
                        Dp.Companion companion7 = Dp.f11004c;
                        windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        gapComposerH.L(1283144587);
                        AndroidWindowInsets androidWindowInsetsC7 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC7, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        gapComposerH.Z(false);
                    }
                    final String str1116 = str11;
                    final String str1117 = str10;
                    final String str1118 = str5;
                    final String str1119 = str6;
                    final AutomationTagsAction automationTagsAction13 = automationTagsAction6;
                    ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j8, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str1118);
                                LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str1119, str1117, function7, str1116, automationTagsAction13, composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 806882688, 179);
                    gapComposerH.Z(true);
                    function3 = function6;
                    str9 = str1116;
                    automationTagsAction4 = automationTagsAction13;
                    str8 = str1119;
                    z3 = z4;
                    automationTagsAction3 = automationTagsAction5;
                    function4 = function7;
                    str7 = str1117;
                } else {
                    gapComposerH.D();
                    str7 = str3;
                    function3 = function1;
                    automationTagsAction3 = automationTagsAction;
                    function4 = function2;
                    snackbarHostState3 = snackbarHostState2;
                    str8 = str6;
                    z3 = z;
                    str9 = str4;
                    automationTagsAction4 = automationTagsAction2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: x50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i15 |= 805306368;
            i20 = i5 & 1024;
            if (i20 != 0) {
                i21 = 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.K(automationTagsAction)) {
                    i22 = 4;
                } else {
                    i22 = 2;
                }
                i21 = i4 | i22;
            } else {
                i21 = i4;
            }
            i23 = i5 & 2048;
            if (i23 != 0) {
                i25 = i21 | 48;
            } else {
                if (gapComposerH.K(automationTagsAction2)) {
                    i24 = 32;
                } else {
                    i24 = 16;
                }
                i25 = i21 | i24;
            }
            if ((i15 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i15 & 1, z2)) {
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i27 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = n00.b(gapComposerH);
                    }
                    snackbarHostState3 = (SnackbarHostState) objX3;
                } else {
                    snackbarHostState3 = snackbarHostState2;
                }
                if (i7 != 0) {
                    str6 = null;
                }
                if (i9 != 0) {
                    str10 = null;
                } else {
                    str10 = str3;
                }
                if (i11 != 0) {
                    z4 = false;
                } else {
                    z4 = z;
                }
                if (i13 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new k40(13);
                        gapComposerH.q(objX2);
                    }
                    function5 = (Function0) objX2;
                } else {
                    function5 = function2;
                }
                if (i16 != 0) {
                    str11 = null;
                } else {
                    str11 = str4;
                }
                if (i18 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new k40(14);
                        gapComposerH.q(objX);
                    }
                    function6 = (Function0) objX;
                } else {
                    function6 = function1;
                }
                if (i20 != 0) {
                    automationTagsAction5 = null;
                } else {
                    automationTagsAction5 = automationTagsAction;
                }
                if (i23 != 0) {
                    automationTagsAction6 = null;
                } else {
                    automationTagsAction6 = automationTagsAction2;
                }
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                Modifier modifierB8 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                function7 = function5;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB8);
                ComposeUiNode.b0.getClass();
                function8 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                a(gapComposerH, 0);
                Color.f8866b.getClass();
                long j9 = Color.f8870h;
                if (z4) {
                    gapComposerH.L(1282976040);
                    gapComposerH.Z(false);
                    Dp.Companion companion8 = Dp.f11004c;
                    windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    gapComposerH.L(1283144587);
                    AndroidWindowInsets androidWindowInsetsC8 = WindowInsets_androidKt.c(gapComposerH);
                    WindowInsetsHolder.y.getClass();
                    windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC8, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                    gapComposerH.Z(false);
                }
                final String str11110 = str11;
                final String str11111 = str10;
                final String str11112 = str5;
                final String str11113 = str6;
                final AutomationTagsAction automationTagsAction14 = automationTagsAction6;
                ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j9, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                            ComposeUiNode.b0.getClass();
                            Function0 function9 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function9);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                            Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str11112);
                            LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str11113, str11111, function7, str11110, automationTagsAction14, composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 806882688, 179);
                gapComposerH.Z(true);
                function3 = function6;
                str9 = str11110;
                automationTagsAction4 = automationTagsAction14;
                str8 = str11113;
                z3 = z4;
                automationTagsAction3 = automationTagsAction5;
                function4 = function7;
                str7 = str11111;
            } else {
                gapComposerH.D();
                str7 = str3;
                function3 = function1;
                automationTagsAction3 = automationTagsAction;
                function4 = function2;
                snackbarHostState3 = snackbarHostState2;
                str8 = str6;
                z3 = z;
                str9 = str4;
                automationTagsAction4 = automationTagsAction2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: x50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= KyberEngine.KyberPolyBytes;
        snackbarHostState2 = snackbarHostState;
        if ((i3 & 3072) == 0) {
            str5 = str;
            if (gapComposerH.K(str5)) {
                i26 = 2048;
            } else {
                i26 = 1024;
            }
            i6 |= i26;
        } else {
            str5 = str;
        }
        i7 = i5 & 16;
        if (i7 != 0) {
            if ((i3 & 24576) == 0) {
                str6 = str2;
                if (gapComposerH.K(str6)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i6 |= i8;
            }
            i9 = i5 & 32;
            if (i9 != 0) {
                i6 |= ImageMetadata.EDGE_MODE;
            } else if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(str3)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i6 |= i10;
            }
            i11 = i5 & 64;
            if (i11 != 0) {
                i6 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (gapComposerH.b(z)) {
                    i12 = 1048576;
                } else {
                    i12 = 524288;
                }
                i6 |= i12;
            }
            i13 = i5 & 128;
            if (i13 != 0) {
                i6 |= 12582912;
                function2 = function0;
            } else {
                function2 = function0;
                if ((i3 & 12582912) == 0) {
                    if (gapComposerH.y(function2)) {
                        i14 = 8388608;
                    } else {
                        i14 = 4194304;
                    }
                    i6 |= i14;
                }
            }
            i15 = i6;
            i16 = i5 & 256;
            if (i16 != 0) {
                if ((i3 & 100663296) == 0) {
                    if (gapComposerH.K(str4)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i15 |= i17;
                }
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function1)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i15 |= i19;
                    }
                    i20 = i5 & 1024;
                    if (i20 != 0) {
                        i21 = 6;
                    } else if ((i4 & 6) == 0) {
                        if (gapComposerH.K(automationTagsAction)) {
                            i22 = 4;
                        } else {
                            i22 = 2;
                        }
                        i21 = i4 | i22;
                    } else {
                        i21 = i4;
                    }
                    i23 = i5 & 2048;
                    if (i23 != 0) {
                        i25 = i21 | 48;
                    } else {
                        if (gapComposerH.K(automationTagsAction2)) {
                            i24 = 32;
                        } else {
                            i24 = 16;
                        }
                        i25 = i21 | i24;
                    }
                    if ((i15 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i15 & 1, z2)) {
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i27 != 0) {
                            objX3 = gapComposerH.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = n00.b(gapComposerH);
                            }
                            snackbarHostState3 = (SnackbarHostState) objX3;
                        } else {
                            snackbarHostState3 = snackbarHostState2;
                        }
                        if (i7 != 0) {
                            str6 = null;
                        }
                        if (i9 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i11 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i13 != 0) {
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new k40(13);
                                gapComposerH.q(objX2);
                            }
                            function5 = (Function0) objX2;
                        } else {
                            function5 = function2;
                        }
                        if (i16 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        if (i18 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new k40(14);
                                gapComposerH.q(objX);
                            }
                            function6 = (Function0) objX;
                        } else {
                            function6 = function1;
                        }
                        if (i20 != 0) {
                            automationTagsAction5 = null;
                        } else {
                            automationTagsAction5 = automationTagsAction;
                        }
                        if (i23 != 0) {
                            automationTagsAction6 = null;
                        } else {
                            automationTagsAction6 = automationTagsAction2;
                        }
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        Modifier modifierB9 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        function7 = function5;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierB9);
                        ComposeUiNode.b0.getClass();
                        function8 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function8);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        a(gapComposerH, 0);
                        Color.f8866b.getClass();
                        long j10 = Color.f8870h;
                        if (z4) {
                            gapComposerH.L(1282976040);
                            gapComposerH.Z(false);
                            Dp.Companion companion9 = Dp.f11004c;
                            windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            gapComposerH.L(1283144587);
                            AndroidWindowInsets androidWindowInsetsC9 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC9, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            gapComposerH.Z(false);
                        }
                        final String str11114 = str11;
                        final String str11115 = str10;
                        final String str11116 = str5;
                        final String str11117 = str6;
                        final AutomationTagsAction automationTagsAction15 = automationTagsAction6;
                        ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j10, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                    Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function9);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                    Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                    LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str11116);
                                    LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str11117, str11115, function7, str11114, automationTagsAction15, composer2, 0);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 806882688, 179);
                        gapComposerH.Z(true);
                        function3 = function6;
                        str9 = str11114;
                        automationTagsAction4 = automationTagsAction15;
                        str8 = str11117;
                        z3 = z4;
                        automationTagsAction3 = automationTagsAction5;
                        function4 = function7;
                        str7 = str11115;
                    } else {
                        gapComposerH.D();
                        str7 = str3;
                        function3 = function1;
                        automationTagsAction3 = automationTagsAction;
                        function4 = function2;
                        snackbarHostState3 = snackbarHostState2;
                        str8 = str6;
                        z3 = z;
                        str9 = str4;
                        automationTagsAction4 = automationTagsAction2;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: x50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i15 |= 805306368;
                i20 = i5 & 1024;
                if (i20 != 0) {
                    i21 = 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.K(automationTagsAction)) {
                        i22 = 4;
                    } else {
                        i22 = 2;
                    }
                    i21 = i4 | i22;
                } else {
                    i21 = i4;
                }
                i23 = i5 & 2048;
                if (i23 != 0) {
                    i25 = i21 | 48;
                } else {
                    if (gapComposerH.K(automationTagsAction2)) {
                        i24 = 32;
                    } else {
                        i24 = 16;
                    }
                    i25 = i21 | i24;
                }
                if ((i15 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i15 & 1, z2)) {
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i27 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        snackbarHostState3 = (SnackbarHostState) objX3;
                    } else {
                        snackbarHostState3 = snackbarHostState2;
                    }
                    if (i7 != 0) {
                        str6 = null;
                    }
                    if (i9 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i11 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(13);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    if (i16 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    if (i18 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new k40(14);
                            gapComposerH.q(objX);
                        }
                        function6 = (Function0) objX;
                    } else {
                        function6 = function1;
                    }
                    if (i20 != 0) {
                        automationTagsAction5 = null;
                    } else {
                        automationTagsAction5 = automationTagsAction;
                    }
                    if (i23 != 0) {
                        automationTagsAction6 = null;
                    } else {
                        automationTagsAction6 = automationTagsAction2;
                    }
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    Modifier modifierB10 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    function7 = function5;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB10);
                    ComposeUiNode.b0.getClass();
                    function8 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function8);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    a(gapComposerH, 0);
                    Color.f8866b.getClass();
                    long j11 = Color.f8870h;
                    if (z4) {
                        gapComposerH.L(1282976040);
                        gapComposerH.Z(false);
                        Dp.Companion companion10 = Dp.f11004c;
                        windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        gapComposerH.L(1283144587);
                        AndroidWindowInsets androidWindowInsetsC10 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC10, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        gapComposerH.Z(false);
                    }
                    final String str11118 = str11;
                    final String str11119 = str10;
                    final String str111110 = str5;
                    final String str111111 = str6;
                    final AutomationTagsAction automationTagsAction16 = automationTagsAction6;
                    ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j11, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str111110);
                                LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str111111, str11119, function7, str11118, automationTagsAction16, composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 806882688, 179);
                    gapComposerH.Z(true);
                    function3 = function6;
                    str9 = str11118;
                    automationTagsAction4 = automationTagsAction16;
                    str8 = str111111;
                    z3 = z4;
                    automationTagsAction3 = automationTagsAction5;
                    function4 = function7;
                    str7 = str11119;
                } else {
                    gapComposerH.D();
                    str7 = str3;
                    function3 = function1;
                    automationTagsAction3 = automationTagsAction;
                    function4 = function2;
                    snackbarHostState3 = snackbarHostState2;
                    str8 = str6;
                    z3 = z;
                    str9 = str4;
                    automationTagsAction4 = automationTagsAction2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: x50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i15 |= 100663296;
            i18 = i5 & 512;
            if (i18 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function1)) {
                        i19 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i19 = 268435456;
                    }
                    i15 |= i19;
                }
                i20 = i5 & 1024;
                if (i20 != 0) {
                    i21 = 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.K(automationTagsAction)) {
                        i22 = 4;
                    } else {
                        i22 = 2;
                    }
                    i21 = i4 | i22;
                } else {
                    i21 = i4;
                }
                i23 = i5 & 2048;
                if (i23 != 0) {
                    i25 = i21 | 48;
                } else {
                    if (gapComposerH.K(automationTagsAction2)) {
                        i24 = 32;
                    } else {
                        i24 = 16;
                    }
                    i25 = i21 | i24;
                }
                if ((i15 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i15 & 1, z2)) {
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i27 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        snackbarHostState3 = (SnackbarHostState) objX3;
                    } else {
                        snackbarHostState3 = snackbarHostState2;
                    }
                    if (i7 != 0) {
                        str6 = null;
                    }
                    if (i9 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i11 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(13);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    if (i16 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    if (i18 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new k40(14);
                            gapComposerH.q(objX);
                        }
                        function6 = (Function0) objX;
                    } else {
                        function6 = function1;
                    }
                    if (i20 != 0) {
                        automationTagsAction5 = null;
                    } else {
                        automationTagsAction5 = automationTagsAction;
                    }
                    if (i23 != 0) {
                        automationTagsAction6 = null;
                    } else {
                        automationTagsAction6 = automationTagsAction2;
                    }
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    Modifier modifierB11 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    function7 = function5;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB11);
                    ComposeUiNode.b0.getClass();
                    function8 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function8);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    a(gapComposerH, 0);
                    Color.f8866b.getClass();
                    long j12 = Color.f8870h;
                    if (z4) {
                        gapComposerH.L(1282976040);
                        gapComposerH.Z(false);
                        Dp.Companion companion11 = Dp.f11004c;
                        windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        gapComposerH.L(1283144587);
                        AndroidWindowInsets androidWindowInsetsC11 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC11, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        gapComposerH.Z(false);
                    }
                    final String str111112 = str11;
                    final String str111113 = str10;
                    final String str111114 = str5;
                    final String str111115 = str6;
                    final AutomationTagsAction automationTagsAction17 = automationTagsAction6;
                    ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j12, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str111114);
                                LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str111115, str111113, function7, str111112, automationTagsAction17, composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 806882688, 179);
                    gapComposerH.Z(true);
                    function3 = function6;
                    str9 = str111112;
                    automationTagsAction4 = automationTagsAction17;
                    str8 = str111115;
                    z3 = z4;
                    automationTagsAction3 = automationTagsAction5;
                    function4 = function7;
                    str7 = str111113;
                } else {
                    gapComposerH.D();
                    str7 = str3;
                    function3 = function1;
                    automationTagsAction3 = automationTagsAction;
                    function4 = function2;
                    snackbarHostState3 = snackbarHostState2;
                    str8 = str6;
                    z3 = z;
                    str9 = str4;
                    automationTagsAction4 = automationTagsAction2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: x50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i15 |= 805306368;
            i20 = i5 & 1024;
            if (i20 != 0) {
                i21 = 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.K(automationTagsAction)) {
                    i22 = 4;
                } else {
                    i22 = 2;
                }
                i21 = i4 | i22;
            } else {
                i21 = i4;
            }
            i23 = i5 & 2048;
            if (i23 != 0) {
                i25 = i21 | 48;
            } else {
                if (gapComposerH.K(automationTagsAction2)) {
                    i24 = 32;
                } else {
                    i24 = 16;
                }
                i25 = i21 | i24;
            }
            if ((i15 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i15 & 1, z2)) {
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i27 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = n00.b(gapComposerH);
                    }
                    snackbarHostState3 = (SnackbarHostState) objX3;
                } else {
                    snackbarHostState3 = snackbarHostState2;
                }
                if (i7 != 0) {
                    str6 = null;
                }
                if (i9 != 0) {
                    str10 = null;
                } else {
                    str10 = str3;
                }
                if (i11 != 0) {
                    z4 = false;
                } else {
                    z4 = z;
                }
                if (i13 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new k40(13);
                        gapComposerH.q(objX2);
                    }
                    function5 = (Function0) objX2;
                } else {
                    function5 = function2;
                }
                if (i16 != 0) {
                    str11 = null;
                } else {
                    str11 = str4;
                }
                if (i18 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new k40(14);
                        gapComposerH.q(objX);
                    }
                    function6 = (Function0) objX;
                } else {
                    function6 = function1;
                }
                if (i20 != 0) {
                    automationTagsAction5 = null;
                } else {
                    automationTagsAction5 = automationTagsAction;
                }
                if (i23 != 0) {
                    automationTagsAction6 = null;
                } else {
                    automationTagsAction6 = automationTagsAction2;
                }
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                Modifier modifierB12 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                function7 = function5;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB12);
                ComposeUiNode.b0.getClass();
                function8 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                a(gapComposerH, 0);
                Color.f8866b.getClass();
                long j13 = Color.f8870h;
                if (z4) {
                    gapComposerH.L(1282976040);
                    gapComposerH.Z(false);
                    Dp.Companion companion12 = Dp.f11004c;
                    windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    gapComposerH.L(1283144587);
                    AndroidWindowInsets androidWindowInsetsC12 = WindowInsets_androidKt.c(gapComposerH);
                    WindowInsetsHolder.y.getClass();
                    windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC12, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                    gapComposerH.Z(false);
                }
                final String str111116 = str11;
                final String str111117 = str10;
                final String str111118 = str5;
                final String str111119 = str6;
                final AutomationTagsAction automationTagsAction18 = automationTagsAction6;
                ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j13, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                            OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                            Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                            ComposeUiNode.b0.getClass();
                            Function0 function9 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function9);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                            Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str111118);
                            LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str111119, str111117, function7, str111116, automationTagsAction18, composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 806882688, 179);
                gapComposerH.Z(true);
                function3 = function6;
                str9 = str111116;
                automationTagsAction4 = automationTagsAction18;
                str8 = str111119;
                z3 = z4;
                automationTagsAction3 = automationTagsAction5;
                function4 = function7;
                str7 = str111117;
            } else {
                gapComposerH.D();
                str7 = str3;
                function3 = function1;
                automationTagsAction3 = automationTagsAction;
                function4 = function2;
                snackbarHostState3 = snackbarHostState2;
                str8 = str6;
                z3 = z;
                str9 = str4;
                automationTagsAction4 = automationTagsAction2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: x50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 24576;
        str6 = str2;
        i9 = i5 & 32;
        if (i9 != 0) {
            i6 |= ImageMetadata.EDGE_MODE;
        } else if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.K(str3)) {
                i10 = 131072;
            } else {
                i10 = 65536;
            }
            i6 |= i10;
        }
        i11 = i5 & 64;
        if (i11 != 0) {
            i6 |= 1572864;
        } else if ((i3 & 1572864) == 0) {
            if (gapComposerH.b(z)) {
                i12 = 1048576;
            } else {
                i12 = 524288;
            }
            i6 |= i12;
        }
        i13 = i5 & 128;
        if (i13 != 0) {
            i6 |= 12582912;
            function2 = function0;
        } else {
            function2 = function0;
            if ((i3 & 12582912) == 0) {
                if (gapComposerH.y(function2)) {
                    i14 = 8388608;
                } else {
                    i14 = 4194304;
                }
                i6 |= i14;
            }
        }
        i15 = i6;
        i16 = i5 & 256;
        if (i16 != 0) {
            if ((i3 & 100663296) == 0) {
                if (gapComposerH.K(str4)) {
                    i17 = 67108864;
                } else {
                    i17 = 33554432;
                }
                i15 |= i17;
            }
            i18 = i5 & 512;
            if (i18 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function1)) {
                        i19 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i19 = 268435456;
                    }
                    i15 |= i19;
                }
                i20 = i5 & 1024;
                if (i20 != 0) {
                    i21 = 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.K(automationTagsAction)) {
                        i22 = 4;
                    } else {
                        i22 = 2;
                    }
                    i21 = i4 | i22;
                } else {
                    i21 = i4;
                }
                i23 = i5 & 2048;
                if (i23 != 0) {
                    i25 = i21 | 48;
                } else {
                    if (gapComposerH.K(automationTagsAction2)) {
                        i24 = 32;
                    } else {
                        i24 = 16;
                    }
                    i25 = i21 | i24;
                }
                if ((i15 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i15 & 1, z2)) {
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i27 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        snackbarHostState3 = (SnackbarHostState) objX3;
                    } else {
                        snackbarHostState3 = snackbarHostState2;
                    }
                    if (i7 != 0) {
                        str6 = null;
                    }
                    if (i9 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i11 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(13);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    if (i16 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    if (i18 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new k40(14);
                            gapComposerH.q(objX);
                        }
                        function6 = (Function0) objX;
                    } else {
                        function6 = function1;
                    }
                    if (i20 != 0) {
                        automationTagsAction5 = null;
                    } else {
                        automationTagsAction5 = automationTagsAction;
                    }
                    if (i23 != 0) {
                        automationTagsAction6 = null;
                    } else {
                        automationTagsAction6 = automationTagsAction2;
                    }
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    Modifier modifierB13 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    function7 = function5;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB13);
                    ComposeUiNode.b0.getClass();
                    function8 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function8);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    a(gapComposerH, 0);
                    Color.f8866b.getClass();
                    long j14 = Color.f8870h;
                    if (z4) {
                        gapComposerH.L(1282976040);
                        gapComposerH.Z(false);
                        Dp.Companion companion13 = Dp.f11004c;
                        windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        gapComposerH.L(1283144587);
                        AndroidWindowInsets androidWindowInsetsC13 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC13, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        gapComposerH.Z(false);
                    }
                    final String str1111110 = str11;
                    final String str1111111 = str10;
                    final String str1111112 = str5;
                    final String str1111113 = str6;
                    final AutomationTagsAction automationTagsAction19 = automationTagsAction6;
                    ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j14, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                                LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str1111112);
                                LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str1111113, str1111111, function7, str1111110, automationTagsAction19, composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 806882688, 179);
                    gapComposerH.Z(true);
                    function3 = function6;
                    str9 = str1111110;
                    automationTagsAction4 = automationTagsAction19;
                    str8 = str1111113;
                    z3 = z4;
                    automationTagsAction3 = automationTagsAction5;
                    function4 = function7;
                    str7 = str1111111;
                } else {
                    gapComposerH.D();
                    str7 = str3;
                    function3 = function1;
                    automationTagsAction3 = automationTagsAction;
                    function4 = function2;
                    snackbarHostState3 = snackbarHostState2;
                    str8 = str6;
                    z3 = z;
                    str9 = str4;
                    automationTagsAction4 = automationTagsAction2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: x50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i15 |= 805306368;
            i20 = i5 & 1024;
            if (i20 != 0) {
                i21 = 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.K(automationTagsAction)) {
                    i22 = 4;
                } else {
                    i22 = 2;
                }
                i21 = i4 | i22;
            } else {
                i21 = i4;
            }
            i23 = i5 & 2048;
            if (i23 != 0) {
                i25 = i21 | 48;
            } else {
                if (gapComposerH.K(automationTagsAction2)) {
                    i24 = 32;
                } else {
                    i24 = 16;
                }
                i25 = i21 | i24;
            }
            if ((i15 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i15 & 1, z2)) {
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i27 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = n00.b(gapComposerH);
                    }
                    snackbarHostState3 = (SnackbarHostState) objX3;
                } else {
                    snackbarHostState3 = snackbarHostState2;
                }
                if (i7 != 0) {
                    str6 = null;
                }
                if (i9 != 0) {
                    str10 = null;
                } else {
                    str10 = str3;
                }
                if (i11 != 0) {
                    z4 = false;
                } else {
                    z4 = z;
                }
                if (i13 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new k40(13);
                        gapComposerH.q(objX2);
                    }
                    function5 = (Function0) objX2;
                } else {
                    function5 = function2;
                }
                if (i16 != 0) {
                    str11 = null;
                } else {
                    str11 = str4;
                }
                if (i18 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new k40(14);
                        gapComposerH.q(objX);
                    }
                    function6 = (Function0) objX;
                } else {
                    function6 = function1;
                }
                if (i20 != 0) {
                    automationTagsAction5 = null;
                } else {
                    automationTagsAction5 = automationTagsAction;
                }
                if (i23 != 0) {
                    automationTagsAction6 = null;
                } else {
                    automationTagsAction6 = automationTagsAction2;
                }
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                Modifier modifierB14 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                function7 = function5;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB14);
                ComposeUiNode.b0.getClass();
                function8 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                a(gapComposerH, 0);
                Color.f8866b.getClass();
                long j15 = Color.f8870h;
                if (z4) {
                    gapComposerH.L(1282976040);
                    gapComposerH.Z(false);
                    Dp.Companion companion14 = Dp.f11004c;
                    windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    gapComposerH.L(1283144587);
                    AndroidWindowInsets androidWindowInsetsC14 = WindowInsets_androidKt.c(gapComposerH);
                    WindowInsetsHolder.y.getClass();
                    windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC14, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                    gapComposerH.Z(false);
                }
                final String str1111114 = str11;
                final String str1111115 = str10;
                final String str1111116 = str5;
                final String str1111117 = str6;
                final AutomationTagsAction automationTagsAction110 = automationTagsAction6;
                ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j15, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                            OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                            Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                            ComposeUiNode.b0.getClass();
                            Function0 function9 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function9);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                            Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str1111116);
                            LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str1111117, str1111115, function7, str1111114, automationTagsAction110, composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 806882688, 179);
                gapComposerH.Z(true);
                function3 = function6;
                str9 = str1111114;
                automationTagsAction4 = automationTagsAction110;
                str8 = str1111117;
                z3 = z4;
                automationTagsAction3 = automationTagsAction5;
                function4 = function7;
                str7 = str1111115;
            } else {
                gapComposerH.D();
                str7 = str3;
                function3 = function1;
                automationTagsAction3 = automationTagsAction;
                function4 = function2;
                snackbarHostState3 = snackbarHostState2;
                str8 = str6;
                z3 = z;
                str9 = str4;
                automationTagsAction4 = automationTagsAction2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: x50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i15 |= 100663296;
        i18 = i5 & 512;
        if (i18 != 0) {
            if ((i3 & 805306368) == 0) {
                if (gapComposerH.y(function1)) {
                    i19 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i19 = 268435456;
                }
                i15 |= i19;
            }
            i20 = i5 & 1024;
            if (i20 != 0) {
                i21 = 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.K(automationTagsAction)) {
                    i22 = 4;
                } else {
                    i22 = 2;
                }
                i21 = i4 | i22;
            } else {
                i21 = i4;
            }
            i23 = i5 & 2048;
            if (i23 != 0) {
                i25 = i21 | 48;
            } else {
                if (gapComposerH.K(automationTagsAction2)) {
                    i24 = 32;
                } else {
                    i24 = 16;
                }
                i25 = i21 | i24;
            }
            if ((i15 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i15 & 1, z2)) {
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i27 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = n00.b(gapComposerH);
                    }
                    snackbarHostState3 = (SnackbarHostState) objX3;
                } else {
                    snackbarHostState3 = snackbarHostState2;
                }
                if (i7 != 0) {
                    str6 = null;
                }
                if (i9 != 0) {
                    str10 = null;
                } else {
                    str10 = str3;
                }
                if (i11 != 0) {
                    z4 = false;
                } else {
                    z4 = z;
                }
                if (i13 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new k40(13);
                        gapComposerH.q(objX2);
                    }
                    function5 = (Function0) objX2;
                } else {
                    function5 = function2;
                }
                if (i16 != 0) {
                    str11 = null;
                } else {
                    str11 = str4;
                }
                if (i18 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new k40(14);
                        gapComposerH.q(objX);
                    }
                    function6 = (Function0) objX;
                } else {
                    function6 = function1;
                }
                if (i20 != 0) {
                    automationTagsAction5 = null;
                } else {
                    automationTagsAction5 = automationTagsAction;
                }
                if (i23 != 0) {
                    automationTagsAction6 = null;
                } else {
                    automationTagsAction6 = automationTagsAction2;
                }
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                Modifier modifierB15 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                function7 = function5;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB15);
                ComposeUiNode.b0.getClass();
                function8 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                a(gapComposerH, 0);
                Color.f8866b.getClass();
                long j16 = Color.f8870h;
                if (z4) {
                    gapComposerH.L(1282976040);
                    gapComposerH.Z(false);
                    Dp.Companion companion15 = Dp.f11004c;
                    windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    gapComposerH.L(1283144587);
                    AndroidWindowInsets androidWindowInsetsC15 = WindowInsets_androidKt.c(gapComposerH);
                    WindowInsetsHolder.y.getClass();
                    windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC15, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                    gapComposerH.Z(false);
                }
                final String str1111118 = str11;
                final String str1111119 = str10;
                final String str11111110 = str5;
                final String str11111111 = str6;
                final AutomationTagsAction automationTagsAction111 = automationTagsAction6;
                ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j16, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                            Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode2 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                            ComposeUiNode.b0.getClass();
                            Function0 function9 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function9);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                            Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str11111110);
                            LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str11111111, str1111119, function7, str1111118, automationTagsAction111, composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 806882688, 179);
                gapComposerH.Z(true);
                function3 = function6;
                str9 = str1111118;
                automationTagsAction4 = automationTagsAction111;
                str8 = str11111111;
                z3 = z4;
                automationTagsAction3 = automationTagsAction5;
                function4 = function7;
                str7 = str1111119;
            } else {
                gapComposerH.D();
                str7 = str3;
                function3 = function1;
                automationTagsAction3 = automationTagsAction;
                function4 = function2;
                snackbarHostState3 = snackbarHostState2;
                str8 = str6;
                z3 = z;
                str9 = str4;
                automationTagsAction4 = automationTagsAction2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: x50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i15 |= 805306368;
        i20 = i5 & 1024;
        if (i20 != 0) {
            i21 = 6;
        } else if ((i4 & 6) == 0) {
            if (gapComposerH.K(automationTagsAction)) {
                i22 = 4;
            } else {
                i22 = 2;
            }
            i21 = i4 | i22;
        } else {
            i21 = i4;
        }
        i23 = i5 & 2048;
        if (i23 != 0) {
            i25 = i21 | 48;
        } else {
            if (gapComposerH.K(automationTagsAction2)) {
                i24 = 32;
            } else {
                i24 = 16;
            }
            i25 = i21 | i24;
        }
        if ((i15 & 306783379) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (gapComposerH.p(i15 & 1, z2)) {
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i27 != 0) {
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = n00.b(gapComposerH);
                }
                snackbarHostState3 = (SnackbarHostState) objX3;
            } else {
                snackbarHostState3 = snackbarHostState2;
            }
            if (i7 != 0) {
                str6 = null;
            }
            if (i9 != 0) {
                str10 = null;
            } else {
                str10 = str3;
            }
            if (i11 != 0) {
                z4 = false;
            } else {
                z4 = z;
            }
            if (i13 != 0) {
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new k40(13);
                    gapComposerH.q(objX2);
                }
                function5 = (Function0) objX2;
            } else {
                function5 = function2;
            }
            if (i16 != 0) {
                str11 = null;
            } else {
                str11 = str4;
            }
            if (i18 != 0) {
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new k40(14);
                    gapComposerH.q(objX);
                }
                function6 = (Function0) objX;
            } else {
                function6 = function1;
            }
            if (i20 != 0) {
                automationTagsAction5 = null;
            } else {
                automationTagsAction5 = automationTagsAction;
            }
            if (i23 != 0) {
                automationTagsAction6 = null;
            } else {
                automationTagsAction6 = automationTagsAction2;
            }
            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
            Modifier modifierB16 = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            function7 = function5;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB16);
            ComposeUiNode.b0.getClass();
            function8 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            a(gapComposerH, 0);
            Color.f8866b.getClass();
            long j17 = Color.f8870h;
            if (z4) {
                gapComposerH.L(1282976040);
                gapComposerH.Z(false);
                Dp.Companion companion16 = Dp.f11004c;
                windowInsetsI = WindowInsetsKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            } else {
                gapComposerH.L(1283144587);
                AndroidWindowInsets androidWindowInsetsC16 = WindowInsets_androidKt.c(gapComposerH);
                WindowInsetsHolder.y.getClass();
                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC16, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                gapComposerH.Z(false);
            }
            final String str11111112 = str11;
            final String str11111113 = str10;
            final String str11111114 = str5;
            final String str11111115 = str6;
            final AutomationTagsAction automationTagsAction112 = automationTagsAction6;
            ScaffoldKt.a(null, null, ComposableLambdaKt.b(1342492206, new v50(str11, function6, automationTagsAction5), gapComposerH), ComposableLambdaKt.b(-659819123, new g0(snackbarHostState3, 29), gapComposerH), null, 0, j17, 0L, windowInsetsI, ComposableLambdaKt.b(-503325916, new Function3() { // from class: w50
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
                        OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                        Modifier modifierK = PaddingKt.k(PaddingKt.h(new DTFunctionNameModifier("LVEmptyView$lambda$3$2").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierK);
                        ComposeUiNode.b0.getClass();
                        Function0 function9 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function9);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                        Modifier modifierK2 = PaddingKt.k(tr.d("LVEmptyView$lambda$3$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                        LVEmptyViewKt.b(i2, 0, composer2, boxScopeInstance.g(modifierK2, biasAlignment), str11111114);
                        LVEmptyViewKt.c(boxScopeInstance.g(new DTFunctionNameModifier("LVEmptyView$lambda$3$2"), Alignment.Companion.f8589i), str11111115, str11111113, function7, str11111112, automationTagsAction112, composer2, 0);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 806882688, 179);
            gapComposerH.Z(true);
            function3 = function6;
            str9 = str11111112;
            automationTagsAction4 = automationTagsAction112;
            str8 = str11111115;
            z3 = z4;
            automationTagsAction3 = automationTagsAction5;
            function4 = function7;
            str7 = str11111113;
        } else {
            gapComposerH.D();
            str7 = str3;
            function3 = function1;
            automationTagsAction3 = automationTagsAction;
            function4 = function2;
            snackbarHostState3 = snackbarHostState2;
            str8 = str6;
            z3 = z;
            str9 = str4;
            automationTagsAction4 = automationTagsAction2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: x50
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i4);
                    LVEmptyViewKt.d(modifier2, i2, snackbarHostState3, str, str8, str7, z3, function4, str9, function3, automationTagsAction3, automationTagsAction4, (Composer) obj, iA, iA2, i5);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0174  */
    /* JADX WARN: Code duplicated, block: B:103:0x0187  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    /* JADX WARN: Code duplicated, block: B:36:0x005f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:42:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:51:0x008a  */
    /* JADX WARN: Code duplicated, block: B:53:0x0092  */
    /* JADX WARN: Code duplicated, block: B:54:0x0095  */
    /* JADX WARN: Code duplicated, block: B:58:0x009e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00af  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:77:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:91:0x010e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0111  */
    /* JADX WARN: Code duplicated, block: B:94:0x0115  */
    /* JADX WARN: Code duplicated, block: B:96:0x011b  */
    /* JADX WARN: Code duplicated, block: B:98:0x012b  */
    public static final void e(Modifier modifier, SnackbarHostState snackbarHostState, String str, String str2, Function0 function0, String str3, Function0 function1, Composer composer, int i2, int i3) {
        int i4;
        SnackbarHostState snackbarHostState2;
        int i5;
        String str4;
        int i6;
        int i7;
        int i8;
        String str5;
        int i9;
        int i10;
        Function0 function2;
        int i11;
        Modifier modifier2;
        boolean z;
        GapComposer gapComposer;
        Function0 function3;
        SnackbarHostState snackbarHostState3;
        Modifier modifier3;
        Function0 function4;
        String str6;
        String str7;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i12;
        SnackbarHostState snackbarHostState4;
        String str8;
        Object objX;
        String str9;
        Function0 function5;
        Object objX2;
        Object objX3;
        int i13;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LVErrorView");
        }
        GapComposer gapComposerH = composer.h(358486171);
        int i14 = i3 & 1;
        if (i14 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i15 = i3 & 2;
        if (i15 == 0) {
            if ((i2 & 48) == 0) {
                snackbarHostState2 = snackbarHostState;
                i4 |= gapComposerH.K(snackbarHostState2) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.K(str)) {
                    i13 = 256;
                } else {
                    i13 = 128;
                }
                i4 |= i13;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    str4 = str2;
                    if (gapComposerH.K(str4)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = 1794048 | i4;
                i8 = i3 & 128;
                if (i8 != 0) {
                    if ((12582912 & i2) == 0) {
                        str5 = str3;
                        if (gapComposerH.K(str5)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i7 |= i9;
                    }
                    i10 = i3 & 256;
                    if (i10 != 0) {
                        i7 |= 100663296;
                        function2 = function1;
                    } else {
                        function2 = function1;
                        if ((i2 & 100663296) == 0) {
                            if (gapComposerH.y(function2)) {
                                i11 = 67108864;
                            } else {
                                i11 = 33554432;
                            }
                            i7 |= i11;
                        }
                    }
                    modifier2 = modifierE;
                    if ((i7 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i7 & 1, z)) {
                        if (i14 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVErrorView");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i15 != 0) {
                            objX3 = gapComposerH.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = n00.b(gapComposerH);
                            }
                            int i16 = i7;
                            snackbarHostState4 = (SnackbarHostState) objX3;
                            i12 = i16;
                        } else {
                            i12 = i7;
                            snackbarHostState4 = snackbarHostState2;
                        }
                        if (i5 != 0) {
                            str8 = null;
                        } else {
                            str8 = str4;
                        }
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new k40(15);
                            gapComposerH.q(objX);
                        }
                        Function0 function6 = (Function0) objX;
                        if (i8 != 0) {
                            str9 = null;
                        } else {
                            str9 = str5;
                        }
                        if (i10 != 0) {
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new k40(16);
                                gapComposerH.q(objX2);
                            }
                            function5 = (Function0) objX2;
                        } else {
                            function5 = function2;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        int i17 = i12 & 14;
                        int i18 = i12 << 3;
                        Modifier modifier4 = dTFunctionNameModifier;
                        gapComposer = gapComposerH;
                        d(modifier4, LVAppDesignKitTheme.g(gapComposerH).O0, snackbarHostState4, str, str8, null, false, function6, str9, function5, null, null, gapComposer, i17 | (i18 & 896) | (i18 & 7168) | (57344 & i18) | (458752 & i18) | (3670016 & i18) | (29360128 & i18) | (234881024 & i18) | (i18 & 1879048192), 0, 3072);
                        modifier3 = modifier4;
                        snackbarHostState3 = snackbarHostState4;
                        str7 = str8;
                        function3 = function6;
                        str6 = str9;
                        function4 = function5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        function3 = function0;
                        snackbarHostState3 = snackbarHostState2;
                        modifier3 = modifier2;
                        function4 = function2;
                        str6 = str5;
                        str7 = str4;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new gf(modifier3, snackbarHostState3, str, str7, function3, str6, function4, i2, i3);
                    }
                }
                i7 = 14376960 | i4;
                str5 = str3;
                i10 = i3 & 256;
                if (i10 != 0) {
                    i7 |= 100663296;
                    function2 = function1;
                } else {
                    function2 = function1;
                    if ((i2 & 100663296) == 0) {
                        if (gapComposerH.y(function2)) {
                            i11 = 67108864;
                        } else {
                            i11 = 33554432;
                        }
                        i7 |= i11;
                    }
                }
                modifier2 = modifierE;
                if ((i7 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i7 & 1, z)) {
                    if (i14 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVErrorView");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i15 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        int i19 = i7;
                        snackbarHostState4 = (SnackbarHostState) objX3;
                        i12 = i19;
                    } else {
                        i12 = i7;
                        snackbarHostState4 = snackbarHostState2;
                    }
                    if (i5 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new k40(15);
                        gapComposerH.q(objX);
                    }
                    Function0 function7 = (Function0) objX;
                    if (i8 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i10 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(16);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int i110 = i12 & 14;
                    int i111 = i12 << 3;
                    Modifier modifier5 = dTFunctionNameModifier;
                    gapComposer = gapComposerH;
                    d(modifier5, LVAppDesignKitTheme.g(gapComposerH).O0, snackbarHostState4, str, str8, null, false, function7, str9, function5, null, null, gapComposer, i110 | (i111 & 896) | (i111 & 7168) | (57344 & i111) | (458752 & i111) | (3670016 & i111) | (29360128 & i111) | (234881024 & i111) | (i111 & 1879048192), 0, 3072);
                    modifier3 = modifier5;
                    snackbarHostState3 = snackbarHostState4;
                    str7 = str8;
                    function3 = function7;
                    str6 = str9;
                    function4 = function5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    function3 = function0;
                    snackbarHostState3 = snackbarHostState2;
                    modifier3 = modifier2;
                    function4 = function2;
                    str6 = str5;
                    str7 = str4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new gf(modifier3, snackbarHostState3, str, str7, function3, str6, function4, i2, i3);
                }
            }
            i4 |= 3072;
            str4 = str2;
            i7 = 1794048 | i4;
            i8 = i3 & 128;
            if (i8 != 0) {
                if ((12582912 & i2) == 0) {
                    str5 = str3;
                    if (gapComposerH.K(str5)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i7 |= i9;
                }
                i10 = i3 & 256;
                if (i10 != 0) {
                    i7 |= 100663296;
                    function2 = function1;
                } else {
                    function2 = function1;
                    if ((i2 & 100663296) == 0) {
                        if (gapComposerH.y(function2)) {
                            i11 = 67108864;
                        } else {
                            i11 = 33554432;
                        }
                        i7 |= i11;
                    }
                }
                modifier2 = modifierE;
                if ((i7 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i7 & 1, z)) {
                    if (i14 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVErrorView");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i15 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        int i112 = i7;
                        snackbarHostState4 = (SnackbarHostState) objX3;
                        i12 = i112;
                    } else {
                        i12 = i7;
                        snackbarHostState4 = snackbarHostState2;
                    }
                    if (i5 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new k40(15);
                        gapComposerH.q(objX);
                    }
                    Function0 function8 = (Function0) objX;
                    if (i8 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i10 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(16);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    int i113 = i12 & 14;
                    int i114 = i12 << 3;
                    Modifier modifier6 = dTFunctionNameModifier;
                    gapComposer = gapComposerH;
                    d(modifier6, LVAppDesignKitTheme.g(gapComposerH).O0, snackbarHostState4, str, str8, null, false, function8, str9, function5, null, null, gapComposer, i113 | (i114 & 896) | (i114 & 7168) | (57344 & i114) | (458752 & i114) | (3670016 & i114) | (29360128 & i114) | (234881024 & i114) | (i114 & 1879048192), 0, 3072);
                    modifier3 = modifier6;
                    snackbarHostState3 = snackbarHostState4;
                    str7 = str8;
                    function3 = function8;
                    str6 = str9;
                    function4 = function5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    function3 = function0;
                    snackbarHostState3 = snackbarHostState2;
                    modifier3 = modifier2;
                    function4 = function2;
                    str6 = str5;
                    str7 = str4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new gf(modifier3, snackbarHostState3, str, str7, function3, str6, function4, i2, i3);
                }
            }
            i7 = 14376960 | i4;
            str5 = str3;
            i10 = i3 & 256;
            if (i10 != 0) {
                i7 |= 100663296;
                function2 = function1;
            } else {
                function2 = function1;
                if ((i2 & 100663296) == 0) {
                    if (gapComposerH.y(function2)) {
                        i11 = 67108864;
                    } else {
                        i11 = 33554432;
                    }
                    i7 |= i11;
                }
            }
            modifier2 = modifierE;
            if ((i7 & 38347923) != 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i7 & 1, z)) {
                if (i14 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVErrorView");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i15 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = n00.b(gapComposerH);
                    }
                    int i115 = i7;
                    snackbarHostState4 = (SnackbarHostState) objX3;
                    i12 = i115;
                } else {
                    i12 = i7;
                    snackbarHostState4 = snackbarHostState2;
                }
                if (i5 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new k40(15);
                    gapComposerH.q(objX);
                }
                Function0 function9 = (Function0) objX;
                if (i8 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                if (i10 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new k40(16);
                        gapComposerH.q(objX2);
                    }
                    function5 = (Function0) objX2;
                } else {
                    function5 = function2;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                int i116 = i12 & 14;
                int i117 = i12 << 3;
                Modifier modifier7 = dTFunctionNameModifier;
                gapComposer = gapComposerH;
                d(modifier7, LVAppDesignKitTheme.g(gapComposerH).O0, snackbarHostState4, str, str8, null, false, function9, str9, function5, null, null, gapComposer, i116 | (i117 & 896) | (i117 & 7168) | (57344 & i117) | (458752 & i117) | (3670016 & i117) | (29360128 & i117) | (234881024 & i117) | (i117 & 1879048192), 0, 3072);
                modifier3 = modifier7;
                snackbarHostState3 = snackbarHostState4;
                str7 = str8;
                function3 = function9;
                str6 = str9;
                function4 = function5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                function3 = function0;
                snackbarHostState3 = snackbarHostState2;
                modifier3 = modifier2;
                function4 = function2;
                str6 = str5;
                str7 = str4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new gf(modifier3, snackbarHostState3, str, str7, function3, str6, function4, i2, i3);
            }
        }
        i4 |= 48;
        snackbarHostState2 = snackbarHostState;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.K(str)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i4 |= i13;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                str4 = str2;
                if (gapComposerH.K(str4)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = 1794048 | i4;
            i8 = i3 & 128;
            if (i8 != 0) {
                if ((12582912 & i2) == 0) {
                    str5 = str3;
                    if (gapComposerH.K(str5)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i7 |= i9;
                }
                i10 = i3 & 256;
                if (i10 != 0) {
                    i7 |= 100663296;
                    function2 = function1;
                } else {
                    function2 = function1;
                    if ((i2 & 100663296) == 0) {
                        if (gapComposerH.y(function2)) {
                            i11 = 67108864;
                        } else {
                            i11 = 33554432;
                        }
                        i7 |= i11;
                    }
                }
                modifier2 = modifierE;
                if ((i7 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i7 & 1, z)) {
                    if (i14 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVErrorView");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i15 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = n00.b(gapComposerH);
                        }
                        int i118 = i7;
                        snackbarHostState4 = (SnackbarHostState) objX3;
                        i12 = i118;
                    } else {
                        i12 = i7;
                        snackbarHostState4 = snackbarHostState2;
                    }
                    if (i5 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new k40(15);
                        gapComposerH.q(objX);
                    }
                    Function0 function10 = (Function0) objX;
                    if (i8 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    if (i10 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(16);
                            gapComposerH.q(objX2);
                        }
                        function5 = (Function0) objX2;
                    } else {
                        function5 = function2;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    int i119 = i12 & 14;
                    int i1110 = i12 << 3;
                    Modifier modifier8 = dTFunctionNameModifier;
                    gapComposer = gapComposerH;
                    d(modifier8, LVAppDesignKitTheme.g(gapComposerH).O0, snackbarHostState4, str, str8, null, false, function10, str9, function5, null, null, gapComposer, i119 | (i1110 & 896) | (i1110 & 7168) | (57344 & i1110) | (458752 & i1110) | (3670016 & i1110) | (29360128 & i1110) | (234881024 & i1110) | (i1110 & 1879048192), 0, 3072);
                    modifier3 = modifier8;
                    snackbarHostState3 = snackbarHostState4;
                    str7 = str8;
                    function3 = function10;
                    str6 = str9;
                    function4 = function5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    function3 = function0;
                    snackbarHostState3 = snackbarHostState2;
                    modifier3 = modifier2;
                    function4 = function2;
                    str6 = str5;
                    str7 = str4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new gf(modifier3, snackbarHostState3, str, str7, function3, str6, function4, i2, i3);
                }
            }
            i7 = 14376960 | i4;
            str5 = str3;
            i10 = i3 & 256;
            if (i10 != 0) {
                i7 |= 100663296;
                function2 = function1;
            } else {
                function2 = function1;
                if ((i2 & 100663296) == 0) {
                    if (gapComposerH.y(function2)) {
                        i11 = 67108864;
                    } else {
                        i11 = 33554432;
                    }
                    i7 |= i11;
                }
            }
            modifier2 = modifierE;
            if ((i7 & 38347923) != 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i7 & 1, z)) {
                if (i14 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVErrorView");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i15 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = n00.b(gapComposerH);
                    }
                    int i1111 = i7;
                    snackbarHostState4 = (SnackbarHostState) objX3;
                    i12 = i1111;
                } else {
                    i12 = i7;
                    snackbarHostState4 = snackbarHostState2;
                }
                if (i5 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new k40(15);
                    gapComposerH.q(objX);
                }
                Function0 function11 = (Function0) objX;
                if (i8 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                if (i10 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new k40(16);
                        gapComposerH.q(objX2);
                    }
                    function5 = (Function0) objX2;
                } else {
                    function5 = function2;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                int i1112 = i12 & 14;
                int i1113 = i12 << 3;
                Modifier modifier9 = dTFunctionNameModifier;
                gapComposer = gapComposerH;
                d(modifier9, LVAppDesignKitTheme.g(gapComposerH).O0, snackbarHostState4, str, str8, null, false, function11, str9, function5, null, null, gapComposer, i1112 | (i1113 & 896) | (i1113 & 7168) | (57344 & i1113) | (458752 & i1113) | (3670016 & i1113) | (29360128 & i1113) | (234881024 & i1113) | (i1113 & 1879048192), 0, 3072);
                modifier3 = modifier9;
                snackbarHostState3 = snackbarHostState4;
                str7 = str8;
                function3 = function11;
                str6 = str9;
                function4 = function5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                function3 = function0;
                snackbarHostState3 = snackbarHostState2;
                modifier3 = modifier2;
                function4 = function2;
                str6 = str5;
                str7 = str4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new gf(modifier3, snackbarHostState3, str, str7, function3, str6, function4, i2, i3);
            }
        }
        i4 |= 3072;
        str4 = str2;
        i7 = 1794048 | i4;
        i8 = i3 & 128;
        if (i8 != 0) {
            if ((12582912 & i2) == 0) {
                str5 = str3;
                if (gapComposerH.K(str5)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i7 |= i9;
            }
            i10 = i3 & 256;
            if (i10 != 0) {
                i7 |= 100663296;
                function2 = function1;
            } else {
                function2 = function1;
                if ((i2 & 100663296) == 0) {
                    if (gapComposerH.y(function2)) {
                        i11 = 67108864;
                    } else {
                        i11 = 33554432;
                    }
                    i7 |= i11;
                }
            }
            modifier2 = modifierE;
            if ((i7 & 38347923) != 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i7 & 1, z)) {
                if (i14 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVErrorView");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i15 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = n00.b(gapComposerH);
                    }
                    int i1114 = i7;
                    snackbarHostState4 = (SnackbarHostState) objX3;
                    i12 = i1114;
                } else {
                    i12 = i7;
                    snackbarHostState4 = snackbarHostState2;
                }
                if (i5 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new k40(15);
                    gapComposerH.q(objX);
                }
                Function0 function12 = (Function0) objX;
                if (i8 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                if (i10 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new k40(16);
                        gapComposerH.q(objX2);
                    }
                    function5 = (Function0) objX2;
                } else {
                    function5 = function2;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                int i1115 = i12 & 14;
                int i1116 = i12 << 3;
                Modifier modifier10 = dTFunctionNameModifier;
                gapComposer = gapComposerH;
                d(modifier10, LVAppDesignKitTheme.g(gapComposerH).O0, snackbarHostState4, str, str8, null, false, function12, str9, function5, null, null, gapComposer, i1115 | (i1116 & 896) | (i1116 & 7168) | (57344 & i1116) | (458752 & i1116) | (3670016 & i1116) | (29360128 & i1116) | (234881024 & i1116) | (i1116 & 1879048192), 0, 3072);
                modifier3 = modifier10;
                snackbarHostState3 = snackbarHostState4;
                str7 = str8;
                function3 = function12;
                str6 = str9;
                function4 = function5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                function3 = function0;
                snackbarHostState3 = snackbarHostState2;
                modifier3 = modifier2;
                function4 = function2;
                str6 = str5;
                str7 = str4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new gf(modifier3, snackbarHostState3, str, str7, function3, str6, function4, i2, i3);
            }
        }
        i7 = 14376960 | i4;
        str5 = str3;
        i10 = i3 & 256;
        if (i10 != 0) {
            i7 |= 100663296;
            function2 = function1;
        } else {
            function2 = function1;
            if ((i2 & 100663296) == 0) {
                if (gapComposerH.y(function2)) {
                    i11 = 67108864;
                } else {
                    i11 = 33554432;
                }
                i7 |= i11;
            }
        }
        modifier2 = modifierE;
        if ((i7 & 38347923) != 38347922) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i7 & 1, z)) {
            if (i14 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVErrorView");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i15 != 0) {
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = n00.b(gapComposerH);
                }
                int i1117 = i7;
                snackbarHostState4 = (SnackbarHostState) objX3;
                i12 = i1117;
            } else {
                i12 = i7;
                snackbarHostState4 = snackbarHostState2;
            }
            if (i5 != 0) {
                str8 = null;
            } else {
                str8 = str4;
            }
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = new k40(15);
                gapComposerH.q(objX);
            }
            Function0 function13 = (Function0) objX;
            if (i8 != 0) {
                str9 = null;
            } else {
                str9 = str5;
            }
            if (i10 != 0) {
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new k40(16);
                    gapComposerH.q(objX2);
                }
                function5 = (Function0) objX2;
            } else {
                function5 = function2;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            int i1118 = i12 & 14;
            int i1119 = i12 << 3;
            Modifier modifier11 = dTFunctionNameModifier;
            gapComposer = gapComposerH;
            d(modifier11, LVAppDesignKitTheme.g(gapComposerH).O0, snackbarHostState4, str, str8, null, false, function13, str9, function5, null, null, gapComposer, i1118 | (i1119 & 896) | (i1119 & 7168) | (57344 & i1119) | (458752 & i1119) | (3670016 & i1119) | (29360128 & i1119) | (234881024 & i1119) | (i1119 & 1879048192), 0, 3072);
            modifier3 = modifier11;
            snackbarHostState3 = snackbarHostState4;
            str7 = str8;
            function3 = function13;
            str6 = str9;
            function4 = function5;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            function3 = function0;
            snackbarHostState3 = snackbarHostState2;
            modifier3 = modifier2;
            function4 = function2;
            str6 = str5;
            str7 = str4;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gf(modifier3, snackbarHostState3, str, str7, function3, str6, function4, i2, i3);
        }
    }

    public static final void f(String str, Function0 function0, AutomationTagsAction automationTagsAction, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1394924459);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.K(automationTagsAction) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(ModifierExtKt.e(new DTFunctionNameModifier("StickyButton"), "emptystate_primaryButton_button"));
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
            Dp.Companion companion = Dp.f11004c;
            LVButtonKt.b(((i3 << 24) & 1879048192) | ((i3 << 6) & 896), 504, gapComposerH, SizeKt.d(PaddingKt.m(modifierB, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 40.0f, 2), 1.0f).o(automationTagsAction == null ? new DTFunctionNameModifier("StickyButton") : ModifierExtKt.e(new DTFunctionNameModifier("StickyButton"), automationTagsAction.a())), ((LVButtonConfigs) gapComposerH.k(LVButtonKt.f48455b)).f48446a, null, null, str, function0, false, false, false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v50(str, function0, automationTagsAction, i2);
        }
    }
}
