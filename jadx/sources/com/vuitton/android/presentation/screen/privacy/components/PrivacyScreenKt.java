package com.vuitton.android.presentation.screen.privacy.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
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
import androidx.compose.material3.DividerKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.compose.components.LVTopShadowKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyScreenKt;
import com.vuitton.android.presentation.screen.privacy.components.headers.CcpaPrivacyHeaderKt;
import com.vuitton.android.presentation.screen.privacy.components.headers.GdprPrivacyHeaderKt;
import com.vuitton.android.presentation.screen.privacy.components.headers.PiplPrivacyHeaderKt;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import com.vuitton.android.presentation.screen.privacy.models.ConsentValueUiModel;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.cj;
import defpackage.d21;
import defpackage.o60;
import defpackage.rp0;
import defpackage.tr;
import defpackage.xg0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PrivacyScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63387a;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            try {
                iArr[PrivacyType.PIPL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacyType.GDPR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrivacyType.CCPA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrivacyType.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f63387a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:278:0x05d9  */
    /* JADX WARN: Code duplicated, block: B:280:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:282:0x05df  */
    /* JADX WARN: Code duplicated, block: B:284:0x05e2  */
    /* JADX WARN: Code duplicated, block: B:287:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:288:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:289:0x060a  */
    /* JADX WARN: Code duplicated, block: B:292:0x0622  */
    /* JADX WARN: Code duplicated, block: B:293:0x0625  */
    /* JADX WARN: Code duplicated, block: B:296:0x062d  */
    /* JADX WARN: Code duplicated, block: B:297:0x062f  */
    /* JADX WARN: Code duplicated, block: B:301:0x063d  */
    /* JADX WARN: Code duplicated, block: B:324:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:326:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:328:0x06c9  */
    /* JADX WARN: Code duplicated, block: B:330:0x06cc  */
    /* JADX WARN: Code duplicated, block: B:333:0x06de  */
    /* JADX WARN: Code duplicated, block: B:334:0x06e9  */
    /* JADX WARN: Code duplicated, block: B:335:0x06f4  */
    /* JADX WARN: Code duplicated, block: B:338:0x070c  */
    /* JADX WARN: Code duplicated, block: B:339:0x070f  */
    /* JADX WARN: Code duplicated, block: B:342:0x0717  */
    /* JADX WARN: Code duplicated, block: B:343:0x0719  */
    /* JADX WARN: Code duplicated, block: B:349:0x072a  */
    /* JADX WARN: Code duplicated, block: B:435:0x05ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:437:0x06d6 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v31 */
    /* JADX WARN: Type inference failed for: r15v33 */
    /* JADX WARN: Type inference failed for: r15v34 */
    /* JADX WARN: Type inference failed for: r15v36 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6, types: [int] */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r8v86 */
    public static final void a(final PaddingValues paddingValues, final PrivacyType privacyType, final List list, final boolean z, final boolean z2, final boolean z3, final boolean z4, final Function2 function2, Function0 function0, Function0 function1, final Function0 function3, final Function0 function4, Composer composer, final int i2) {
        GapComposer gapComposer;
        Function0 function5;
        Function0 function6;
        boolean z5;
        boolean z6;
        String strF;
        char c2;
        boolean z7;
        boolean z8;
        String strF2;
        int i3;
        ConsentUiModel.ChatConsentUiModel chatConsentUiModel;
        boolean z9;
        boolean z10;
        boolean zK;
        Object objX;
        boolean z11;
        String strF3;
        int i4;
        ConsentUiModel.SocialConsentUiModel socialConsentUiModel;
        boolean z12;
        boolean z13;
        boolean zK2;
        Object objX2;
        boolean z14;
        String strF4;
        String strF5;
        String strF6;
        Function2 function7;
        paddingValues.getClass();
        privacyType.getClass();
        list.getClass();
        function2.getClass();
        function0.getClass();
        function1.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1567306668);
        Applier applier = gapComposerH.f7976a;
        int i5 = (i2 & 6) == 0 ? (gapComposerH.K(paddingValues) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.d(privacyType.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= gapComposerH.b(z2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i5 |= gapComposerH.b(z3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i5 |= gapComposerH.b(z4) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= gapComposerH.y(function0) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= gapComposerH.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i6 = (gapComposerH.y(function3) ? 4 : 2) | (gapComposerH.y(function4) ? 32 : 16);
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE = o60.e("PrivacyScreen", paddingValues);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function8 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Function2 function9 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function9);
            Function2 function10 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function10);
            Integer numValueOf = Integer.valueOf(iHashCode);
            int i7 = i5;
            Function2 function11 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function11);
            Function1 function12 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function12);
            Function2 function13 = ComposeUiNode.Companion.d;
            Modifier modifierO = tr.e(gapComposerH, modifierC, function13, "PrivacyScreen").o(SizeKt.f5052c);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            Modifier modifierA = columnScopeInstance.a(modifierO, 1.0f, true);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function9);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function10);
            cj.t(iHashCode2, gapComposerH, function11, gapComposerH, function12);
            Updater.c(gapComposerH, modifierC2, function13);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PrivacyScreen");
            BiasAlignment biasAlignment = Alignment.Companion.f8585c;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierD = ScrollKt.d(boxScopeInstance.g(dTFunctionNameModifier, biasAlignment), ScrollKt.b(gapComposerH), false, 14);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function9);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function10);
            cj.t(iHashCode3, gapComposerH, function11, gapComposerH, function12);
            Updater.c(gapComposerH, modifierC3, function13);
            int i8 = WhenMappings.f63387a[privacyType.ordinal()];
            int i9 = 3;
            int i10 = 1;
            if (i8 == 1) {
                z5 = false;
                gapComposerH.L(-1706503860);
                PiplPrivacyHeaderKt.a(z2, gapComposerH, (i7 >> 12) & 14);
                gapComposerH.Z(false);
            } else if (i8 == 2) {
                z5 = false;
                gapComposerH.L(-1706348643);
                GdprPrivacyHeaderKt.a(gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (i8 == 3) {
                z5 = false;
                gapComposerH.L(-1706240515);
                CcpaPrivacyHeaderKt.a(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                if (i8 != 4) {
                    throw d21.u(gapComposerH, 1746065260, false);
                }
                gapComposerH.L(-1706132387);
                z5 = false;
                gapComposerH.Z(false);
            }
            int i11 = i7 >> 21;
            function5 = function0;
            function6 = function1;
            PrivacyCtasKt.a(new DTFunctionNameModifier("PrivacyScreen"), function5, function6, gapComposerH, (i11 & 896) | (i11 & 112) | 6);
            DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("PrivacyScreen"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            GapComposer gapComposer2 = gapComposerH;
            gapComposer2.L(1746106104);
            ?? r15 = z5;
            for (Object obj : list) {
                int i12 = r15 + 1;
                if (r15 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ConsentUiModel consentUiModel = (ConsentUiModel) obj;
                boolean z15 = consentUiModel instanceof ConsentUiModel.FunctionalConsentUiModel;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                String strF7 = "";
                if (z15) {
                    gapComposer2.L(287240484);
                    int[] iArr = WhenMappings.f63387a;
                    int i13 = iArr[privacyType.ordinal()];
                    if (i13 == i10) {
                        strF6 = cj.f(gapComposer2, 9268430, R.string.cn_third_party_legal_paragraph_1_title, gapComposer2, z5);
                    } else if (i13 == 2) {
                        strF6 = cj.f(gapComposer2, 9272544, R.string.gdpr_functional_trackers, gapComposer2, z5);
                    } else if (i13 == i9) {
                        strF6 = cj.f(gapComposer2, 9276224, R.string.gdpr_functional_trackers, gapComposer2, z5);
                    } else {
                        if (i13 != 4) {
                            throw d21.u(gapComposer2, 9266446, z5);
                        }
                        gapComposer2.L(287677770);
                        gapComposer2.Z(z5);
                        strF6 = "";
                    }
                    int i14 = iArr[privacyType.ordinal()];
                    if (i14 == 1) {
                        strF7 = cj.f(gapComposer2, 9287533, R.string.cn_third_party_legal_paragraph_1_text, gapComposer2, z5);
                    } else if (i14 == 2) {
                        strF7 = cj.f(gapComposer2, 9291621, R.string.gdpr_functional_trackers_desc, gapComposer2, z5);
                    } else if (i14 == i9) {
                        strF7 = cj.f(gapComposer2, 9295461, R.string.gdpr_functional_trackers_desc, gapComposer2, z5);
                    } else {
                        if (i14 != 4) {
                            throw d21.u(gapComposer2, 9285559, z5);
                        }
                        gapComposer2.L(288278922);
                        gapComposer2.Z(z5);
                    }
                    boolean z16 = r15 != list.size() + (-1) ? true : z5 ? 1 : 0;
                    ConsentUiModel.FunctionalConsentUiModel functionalConsentUiModel = (ConsentUiModel.FunctionalConsentUiModel) consentUiModel;
                    ConsentValueUiModel consentValueUiModel = functionalConsentUiModel.f63404b;
                    ?? r2 = (gapComposer2.K(consentUiModel) ? 1 : 0) | ((i7 & 29360128) == 8388608 ? 1 : z5 ? 1 : 0);
                    Object objX3 = gapComposer2.x();
                    if (r2 != 0 || objX3 == composer$Companion$Empty$1) {
                        function7 = function2;
                        objX3 = new xg0(function7, functionalConsentUiModel, 26);
                        gapComposer2.q(objX3);
                    } else {
                        function7 = function2;
                    }
                    ConsentSwitchKt.a(null, strF6, strF7, consentValueUiModel, z16, (Function1) objX3, gapComposer2, 0);
                    gapComposer2.Z(z5);
                } else if (consentUiModel instanceof ConsentUiModel.AnalyticsConsentUiModel) {
                    gapComposer2.L(289007856);
                    int[] iArr2 = WhenMappings.f63387a;
                    int i15 = iArr2[privacyType.ordinal()];
                    if (i15 == 1) {
                        strF5 = cj.f(gapComposer2, 9326510, R.string.cn_third_party_legal_paragraph_2_title, gapComposer2, z5);
                    } else if (i15 == 2) {
                        strF5 = cj.f(gapComposer2, 9330623, R.string.gdpr_analytics_trackers, gapComposer2, z5);
                    } else if (i15 == 3) {
                        strF5 = cj.f(gapComposer2, 9334271, R.string.gdpr_analytics_trackers, gapComposer2, z5);
                    } else {
                        if (i15 != 4) {
                            throw d21.u(gapComposer2, 9324444, z5);
                        }
                        gapComposer2.L(289473784);
                        gapComposer2.Z(z5);
                        strF5 = "";
                    }
                    int i16 = iArr2[privacyType.ordinal()];
                    if (i16 == 1) {
                        strF7 = cj.f(gapComposer2, 9342989, R.string.cn_third_party_legal_paragraph_2_text, gapComposer2, z5);
                    } else if (i16 == 2) {
                        strF7 = cj.f(gapComposer2, 9347076, R.string.gdpr_analytics_trackers_desc, gapComposer2, z5);
                    } else if (i16 == 3) {
                        strF7 = cj.f(gapComposer2, 9350884, R.string.gdpr_analytics_trackers_desc, gapComposer2, z5);
                    } else {
                        if (i16 != 4) {
                            throw d21.u(gapComposer2, 9340933, z5);
                        }
                        gapComposer2.L(289993592);
                        gapComposer2.Z(z5);
                    }
                    ConsentUiModel.AnalyticsConsentUiModel analyticsConsentUiModel = (ConsentUiModel.AnalyticsConsentUiModel) consentUiModel;
                    ConsentValueUiModel consentValueUiModel2 = analyticsConsentUiModel.f63401b;
                    boolean z17 = r15 != list.size() + (-1);
                    boolean zK3 = gapComposer2.K(consentUiModel) | ((i7 & 29360128) == 8388608);
                    Object objX4 = gapComposer2.x();
                    if (zK3 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new xg0(function2, analyticsConsentUiModel, 27);
                        gapComposer2.q(objX4);
                    }
                    ConsentSwitchKt.a(null, strF5, strF7, consentValueUiModel2, z17, (Function1) objX4, gapComposer2, 0);
                    z5 = false;
                    gapComposer2.Z(false);
                } else if (consentUiModel instanceof ConsentUiModel.CustomisationConsentUiModel) {
                    gapComposer2.L(290650112);
                    int[] iArr3 = WhenMappings.f63387a;
                    int i17 = iArr3[privacyType.ordinal()];
                    if (i17 == 1) {
                        z14 = false;
                        strF4 = cj.f(gapComposer2, 9379470, R.string.cn_third_party_legal_paragraph_3_title, gapComposer2, false);
                    } else if (i17 == 2) {
                        z14 = false;
                        strF4 = cj.f(gapComposer2, 9383587, R.string.gdpr_customisation_trackers, gapComposer2, false);
                    } else if (i17 == 3) {
                        z14 = false;
                        strF4 = cj.f(gapComposer2, 9387363, R.string.gdpr_customisation_trackers, gapComposer2, false);
                    } else {
                        if (i17 != 4) {
                            throw d21.u(gapComposer2, 9377412, false);
                        }
                        gapComposer2.L(291123480);
                        z14 = false;
                        gapComposer2.Z(false);
                        strF4 = "";
                    }
                    int i18 = iArr3[privacyType.ordinal()];
                    if (i18 == 1) {
                        strF7 = cj.f(gapComposer2, 9396205, R.string.cn_third_party_legal_paragraph_3_text, gapComposer2, z14);
                    } else if (i18 == 2) {
                        strF7 = cj.f(gapComposer2, 9400296, R.string.gdpr_customisation_trackers_desc, gapComposer2, z14);
                    } else if (i18 == 3) {
                        strF7 = cj.f(gapComposer2, 9404232, R.string.gdpr_customisation_trackers_desc, gapComposer2, z14);
                    } else {
                        if (i18 != 4) {
                            throw d21.u(gapComposer2, 9394157, z14);
                        }
                        gapComposer2.L(291651224);
                        gapComposer2.Z(z14);
                    }
                    ConsentUiModel.CustomisationConsentUiModel customisationConsentUiModel = (ConsentUiModel.CustomisationConsentUiModel) consentUiModel;
                    ConsentValueUiModel consentValueUiModel3 = customisationConsentUiModel.f63403b;
                    boolean z18 = r15 != list.size() + (-1);
                    boolean zK4 = gapComposer2.K(consentUiModel) | ((i7 & 29360128) == 8388608);
                    Object objX5 = gapComposer2.x();
                    if (zK4 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new xg0(function2, customisationConsentUiModel, 28);
                        gapComposer2.q(objX5);
                    }
                    ConsentSwitchKt.a(null, strF4, strF7, consentValueUiModel3, z18, (Function1) objX5, gapComposer2, 0);
                    z5 = false;
                    gapComposer2.Z(false);
                } else {
                    if (consentUiModel instanceof ConsentUiModel.SocialConsentUiModel) {
                        gapComposer2.L(292296925);
                        int[] iArr4 = WhenMappings.f63387a;
                        int i19 = iArr4[privacyType.ordinal()];
                        if (i19 != 1) {
                            if (i19 == 2) {
                                z11 = false;
                                strF3 = cj.f(gapComposer2, 9435260, R.string.gdpr_social_trackers, gapComposer2, false);
                            } else if (i19 == 3) {
                                z11 = false;
                                strF3 = cj.f(gapComposer2, 9438812, R.string.gdpr_social_trackers, gapComposer2, false);
                            } else {
                                if (i19 != 4) {
                                    throw d21.u(gapComposer2, 9430597, false);
                                }
                                gapComposer2.L(292711672);
                                z11 = false;
                                gapComposer2.Z(false);
                            }
                            i4 = iArr4[privacyType.ordinal()];
                            if (i4 != 1) {
                                gapComposer2.L(292868408);
                                gapComposer2.Z(z11);
                            } else if (i4 != 2) {
                                strF7 = cj.f(gapComposer2, 9449985, R.string.gdpr_social_trackers_desc, gapComposer2, z11);
                            } else if (i4 != 3) {
                                strF7 = cj.f(gapComposer2, 9453697, R.string.gdpr_social_trackers_desc, gapComposer2, z11);
                            } else {
                                if (i4 == 4) {
                                    throw d21.u(gapComposer2, 9445327, z11);
                                }
                                gapComposer2.L(293177912);
                                gapComposer2.Z(z11);
                            }
                            socialConsentUiModel = (ConsentUiModel.SocialConsentUiModel) consentUiModel;
                            ConsentValueUiModel consentValueUiModel4 = socialConsentUiModel.f63406b;
                            if (r15 != list.size() - 1) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            if ((i7 & 29360128) == 8388608) {
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            zK2 = gapComposer2.K(consentUiModel) | z13;
                            objX2 = gapComposer2.x();
                            if (zK2 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new xg0(function2, socialConsentUiModel, 29);
                                gapComposer2.q(objX2);
                            }
                            ConsentSwitchKt.a(null, strF3, strF7, consentValueUiModel4, z12, (Function1) objX2, gapComposer2, 0);
                            z5 = false;
                            gapComposer2.Z(false);
                        } else {
                            z11 = false;
                            gapComposer2.L(292412088);
                            gapComposer2.Z(false);
                        }
                        strF3 = "";
                        i4 = iArr4[privacyType.ordinal()];
                        if (i4 != 1) {
                            gapComposer2.L(292868408);
                            gapComposer2.Z(z11);
                        } else if (i4 != 2) {
                            strF7 = cj.f(gapComposer2, 9449985, R.string.gdpr_social_trackers_desc, gapComposer2, z11);
                        } else if (i4 != 3) {
                            strF7 = cj.f(gapComposer2, 9453697, R.string.gdpr_social_trackers_desc, gapComposer2, z11);
                        } else {
                            if (i4 == 4) {
                                throw d21.u(gapComposer2, 9445327, z11);
                            }
                            gapComposer2.L(293177912);
                            gapComposer2.Z(z11);
                        }
                        socialConsentUiModel = (ConsentUiModel.SocialConsentUiModel) consentUiModel;
                        ConsentValueUiModel consentValueUiModel5 = socialConsentUiModel.f63406b;
                        if (r15 != list.size() - 1) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        if ((i7 & 29360128) == 8388608) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        zK2 = gapComposer2.K(consentUiModel) | z13;
                        objX2 = gapComposer2.x();
                        if (zK2) {
                            objX2 = new xg0(function2, socialConsentUiModel, 29);
                            gapComposer2.q(objX2);
                        } else {
                            objX2 = new xg0(function2, socialConsentUiModel, 29);
                            gapComposer2.q(objX2);
                        }
                        ConsentSwitchKt.a(null, strF3, strF7, consentValueUiModel5, z12, (Function1) objX2, gapComposer2, 0);
                        z5 = false;
                        gapComposer2.Z(false);
                    } else if (consentUiModel instanceof ConsentUiModel.ChatConsentUiModel) {
                        gapComposer2.L(293826620);
                        if (z) {
                            gapComposer2.L(293878669);
                            int[] iArr5 = WhenMappings.f63387a;
                            int i20 = iArr5[privacyType.ordinal()];
                            if (i20 != 1) {
                                if (i20 == 2) {
                                    z8 = false;
                                    strF2 = cj.f(gapComposer2, 9486650, R.string.gdpr_chat_trackers, gapComposer2, false);
                                } else if (i20 == 3) {
                                    z8 = false;
                                    strF2 = cj.f(gapComposer2, 9490266, R.string.gdpr_chat_trackers, gapComposer2, false);
                                } else {
                                    if (i20 != 4) {
                                        throw d21.u(gapComposer2, 9481811, false);
                                    }
                                    gapComposer2.L(294308792);
                                    z8 = false;
                                    gapComposer2.Z(false);
                                }
                                i3 = iArr5[privacyType.ordinal()];
                                if (i3 != 1) {
                                    gapComposer2.L(294477432);
                                    gapComposer2.Z(z8);
                                } else if (i3 != 2) {
                                    strF7 = cj.f(gapComposer2, 9501951, R.string.gdpr_chat_trackers_desc, gapComposer2, z8);
                                } else if (i3 != 3) {
                                    strF7 = cj.f(gapComposer2, 9505727, R.string.gdpr_chat_trackers_desc, gapComposer2, z8);
                                } else {
                                    if (i3 == 4) {
                                        throw d21.u(gapComposer2, 9497117, z8);
                                    }
                                    gapComposer2.L(294792888);
                                    gapComposer2.Z(z8);
                                }
                                chatConsentUiModel = (ConsentUiModel.ChatConsentUiModel) consentUiModel;
                                ConsentValueUiModel consentValueUiModel6 = chatConsentUiModel.f63402b;
                                if (r15 != list.size() - 1) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                if ((i7 & 29360128) == 8388608) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                zK = gapComposer2.K(consentUiModel) | z10;
                                objX = gapComposer2.x();
                                if (!zK || objX == composer$Companion$Empty$1) {
                                    z7 = false;
                                    objX = new rp0(function2, chatConsentUiModel, 0);
                                    gapComposer2.q(objX);
                                } else {
                                    z7 = false;
                                }
                                ConsentSwitchKt.a(null, strF2, strF7, consentValueUiModel6, z9, (Function1) objX, gapComposer2, 0);
                                gapComposer2.Z(z7);
                            } else {
                                z8 = false;
                                gapComposer2.L(294003256);
                                gapComposer2.Z(false);
                            }
                            strF2 = "";
                            i3 = iArr5[privacyType.ordinal()];
                            if (i3 != 1) {
                                gapComposer2.L(294477432);
                                gapComposer2.Z(z8);
                            } else if (i3 != 2) {
                                strF7 = cj.f(gapComposer2, 9501951, R.string.gdpr_chat_trackers_desc, gapComposer2, z8);
                            } else if (i3 != 3) {
                                strF7 = cj.f(gapComposer2, 9505727, R.string.gdpr_chat_trackers_desc, gapComposer2, z8);
                            } else {
                                if (i3 == 4) {
                                    throw d21.u(gapComposer2, 9497117, z8);
                                }
                                gapComposer2.L(294792888);
                                gapComposer2.Z(z8);
                            }
                            chatConsentUiModel = (ConsentUiModel.ChatConsentUiModel) consentUiModel;
                            ConsentValueUiModel consentValueUiModel7 = chatConsentUiModel.f63402b;
                            if (r15 != list.size() - 1) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            if ((i7 & 29360128) == 8388608) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            zK = gapComposer2.K(consentUiModel) | z10;
                            objX = gapComposer2.x();
                            if (zK) {
                                z7 = false;
                                objX = new rp0(function2, chatConsentUiModel, 0);
                                gapComposer2.q(objX);
                            } else {
                                z7 = false;
                                objX = new rp0(function2, chatConsentUiModel, 0);
                                gapComposer2.q(objX);
                            }
                            ConsentSwitchKt.a(null, strF2, strF7, consentValueUiModel7, z9, (Function1) objX, gapComposer2, 0);
                            gapComposer2.Z(z7);
                        } else {
                            z7 = false;
                            gapComposer2.L(295369180);
                            gapComposer2.Z(false);
                        }
                        gapComposer2.Z(z7);
                        z5 = z7;
                    } else {
                        if (!(consentUiModel instanceof ConsentUiModel.LucieLabsConsentUiModel)) {
                            throw d21.u(gapComposer2, 9270323, false);
                        }
                        gapComposer2.L(295510354);
                        int[] iArr6 = WhenMappings.f63387a;
                        int i21 = iArr6[privacyType.ordinal()];
                        if (i21 != 1) {
                            if (i21 == 2) {
                                z6 = false;
                                gapComposer2.L(295754136);
                                gapComposer2.Z(false);
                            } else if (i21 == 3) {
                                z6 = false;
                                gapComposer2.L(295837464);
                                gapComposer2.Z(false);
                            } else {
                                if (i21 != 4) {
                                    throw d21.u(gapComposer2, 9534272, false);
                                }
                                gapComposer2.L(295920792);
                                z6 = false;
                                gapComposer2.Z(false);
                            }
                            strF = "";
                        } else {
                            z6 = false;
                            strF = cj.f(gapComposer2, 9536398, R.string.cn_third_party_legal_paragraph_4_title, gapComposer2, false);
                        }
                        int i22 = iArr6[privacyType.ordinal()];
                        if (i22 == 1) {
                            strF7 = cj.f(gapComposer2, 9550957, R.string.cn_third_party_legal_paragraph_4_text, gapComposer2, z6);
                        } else if (i22 == 2) {
                            gapComposer2.L(296204504);
                            gapComposer2.Z(z6);
                        } else if (i22 == 3) {
                            gapComposer2.L(296287832);
                            gapComposer2.Z(z6);
                        } else {
                            if (i22 != 4) {
                                throw d21.u(gapComposer2, 9548831, z6);
                            }
                            gapComposer2.L(296371160);
                            gapComposer2.Z(z6);
                        }
                        ConsentUiModel.LucieLabsConsentUiModel lucieLabsConsentUiModel = (ConsentUiModel.LucieLabsConsentUiModel) consentUiModel;
                        ConsentValueUiModel consentValueUiModel8 = lucieLabsConsentUiModel.f63405b;
                        boolean z19 = r15 != list.size() + (-1);
                        boolean zK5 = gapComposer2.K(consentUiModel) | ((i7 & 29360128) == 8388608);
                        Object objX6 = gapComposer2.x();
                        if (zK5 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new rp0(function2, lucieLabsConsentUiModel, 1);
                            gapComposer2.q(objX6);
                        }
                        GapComposer gapComposer3 = gapComposer2;
                        c2 = 0;
                        ConsentSwitchKt.a(null, strF, strF7, consentValueUiModel8, z19, (Function1) objX6, gapComposer3, 0);
                        gapComposer2 = gapComposer3;
                        z5 = false;
                        gapComposer2.Z(false);
                    }
                    gapComposer2 = gapComposer2;
                    r15 = i12;
                    i9 = 3;
                    i10 = 1;
                }
                c2 = 0;
                gapComposer2 = gapComposer2;
                r15 = i12;
                i9 = 3;
                i10 = 1;
            }
            GapComposer gapComposer4 = gapComposer2;
            gapComposer4.Z(z5);
            gapComposer4.Z(true);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PrivacyScreen");
            Alignment.f8582a.getClass();
            LVTopShadowKt.a(boxScopeInstance.g(dTFunctionNameModifier2, Alignment.Companion.f8589i), gapComposer4, z5 ? 1 : 0);
            gapComposer4.Z(true);
            Modifier modifierB = BackgroundKt.b(SizeKt.d(new DTFunctionNameModifier("PrivacyScreen"), 1.0f), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48374a, RectangleShapeKt.f8913a);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposer4, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode4 = Long.hashCode(gapComposer4.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer4.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposer4, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function14 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer4.B();
            if (gapComposer4.S) {
                gapComposer4.C(function14);
            } else {
                gapComposer4.o();
            }
            Updater.c(gapComposer4, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposer4, persistentCompositionLocalMapU4, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposer4, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
            Updater.b(gapComposer4, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposer4, modifierC4, ComposeUiNode.Companion.d);
            LVButtonKt.b(((i7 << 3) & 29360128) | ((i6 << 24) & 1879048192), 376, gapComposer4, ModifierExtKt.e(PaddingKt.i(tr.d("PrivacyScreen", 1.0f), LVAppDesignKitTheme.l(gapComposer4).f48416e), "cbdtSettings_accept_button"), LVAppDesignKitTheme.b(gapComposer4).f48446a, null, null, StringResources_androidKt.c(gapComposer4, z3 ? R.string.gdpr_access_app : R.string.save), function4, false, z4, false);
            gapComposer = gapComposer4;
            LVLinkKt.a(ModifierExtKt.e(columnScopeInstance.b(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48417f, 2), Alignment.Companion.o), "cbdtSettings_privacyPolicy_button"), StringResources_androidKt.c(gapComposer, R.string.gdpr_privacy_policy), false, null, false, function3, gapComposer, (i6 << 15) & ImageMetadata.JPEG_GPS_COORDINATES, 28);
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            function5 = function0;
            function6 = function1;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function0 function15 = function5;
            final Function0 function16 = function6;
            recomposeScopeImplB0.d = new Function2() { // from class: sp0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    PrivacyScreenKt.a(paddingValues, privacyType, list, z, z2, z3, z4, function2, function15, function16, function3, function4, (Composer) obj2, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
