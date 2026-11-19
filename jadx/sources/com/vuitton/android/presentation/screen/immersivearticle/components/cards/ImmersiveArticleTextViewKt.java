package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.StringExtKt;
import com.vuitton.android.presentation.compose.theme.LVImmersiveArticleTextStyle;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.components.NextSectionProductTabs;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleCtaUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleDisclaimerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFontUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTextModuleAlignmentUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTextModuleTypeUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.TextArticleSectionUiModel;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.hg;
import defpackage.l00;
import defpackage.lj;
import defpackage.n00;
import defpackage.t30;
import defpackage.tr;
import defpackage.u30;
import defpackage.v40;
import defpackage.x20;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "height", "width", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleTextViewKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58498a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f58499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f58500c;

        static {
            int[] iArr = new int[ImmersiveArticleType.values().length];
            try {
                iArr[ImmersiveArticleType.IMMERSIVE_ARTICLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImmersiveArticleType.SEO_LANDING_PAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58498a = iArr;
            int[] iArr2 = new int[ImmersiveArticleFontUiModel.values().length];
            try {
                iArr2[ImmersiveArticleFontUiModel.ANGLAISE_F.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ImmersiveArticleFontUiModel.COND.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f58499b = iArr2;
            int[] iArr3 = new int[ImmersiveArticleTextModuleAlignmentUiModel.values().length];
            try {
                iArr3[ImmersiveArticleTextModuleAlignmentUiModel.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[ImmersiveArticleTextModuleAlignmentUiModel.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[ImmersiveArticleTextModuleAlignmentUiModel.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f58500c = iArr3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0300  */
    /* JADX WARN: Code duplicated, block: B:103:0x030a  */
    /* JADX WARN: Code duplicated, block: B:104:0x0310  */
    /* JADX WARN: Code duplicated, block: B:105:0x0316  */
    /* JADX WARN: Code duplicated, block: B:108:0x0334  */
    /* JADX WARN: Code duplicated, block: B:110:0x033b  */
    /* JADX WARN: Code duplicated, block: B:111:0x033f  */
    /* JADX WARN: Code duplicated, block: B:114:0x0358  */
    /* JADX WARN: Code duplicated, block: B:116:0x037f  */
    /* JADX WARN: Code duplicated, block: B:118:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:124:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:126:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:127:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:129:0x0428  */
    /* JADX WARN: Code duplicated, block: B:134:0x0441  */
    /* JADX WARN: Code duplicated, block: B:136:0x0445  */
    /* JADX WARN: Code duplicated, block: B:137:0x0458  */
    /* JADX WARN: Code duplicated, block: B:140:0x046c  */
    /* JADX WARN: Code duplicated, block: B:142:0x047b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:143:0x047d  */
    /* JADX WARN: Code duplicated, block: B:145:0x0489  */
    /* JADX WARN: Code duplicated, block: B:146:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:148:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:150:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:153:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:156:0x0510  */
    /* JADX WARN: Code duplicated, block: B:158:0x0547  */
    /* JADX WARN: Code duplicated, block: B:160:0x0588  */
    /* JADX WARN: Code duplicated, block: B:163:0x059a  */
    /* JADX WARN: Code duplicated, block: B:165:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:167:0x05bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:168:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:169:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:170:0x05df  */
    /* JADX WARN: Code duplicated, block: B:173:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:175:0x0632  */
    /* JADX WARN: Code duplicated, block: B:178:0x0648  */
    /* JADX WARN: Code duplicated, block: B:181:0x066e  */
    /* JADX WARN: Code duplicated, block: B:183:0x0676  */
    /* JADX WARN: Code duplicated, block: B:188:0x068b  */
    /* JADX WARN: Code duplicated, block: B:190:0x068f  */
    /* JADX WARN: Code duplicated, block: B:192:0x06a4  */
    /* JADX WARN: Code duplicated, block: B:197:0x06bc  */
    /* JADX WARN: Code duplicated, block: B:199:0x06c0  */
    /* JADX WARN: Code duplicated, block: B:201:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:204:0x06fe  */
    /* JADX WARN: Code duplicated, block: B:206:0x0706  */
    /* JADX WARN: Code duplicated, block: B:207:0x070a  */
    /* JADX WARN: Code duplicated, block: B:210:0x0718  */
    /* JADX WARN: Code duplicated, block: B:213:0x072f  */
    /* JADX WARN: Code duplicated, block: B:215:0x0737  */
    /* JADX WARN: Code duplicated, block: B:216:0x0748  */
    /* JADX WARN: Code duplicated, block: B:218:0x0762  */
    /* JADX WARN: Code duplicated, block: B:221:0x0774  */
    /* JADX WARN: Code duplicated, block: B:222:0x0776  */
    /* JADX WARN: Code duplicated, block: B:228:0x0788  */
    /* JADX WARN: Code duplicated, block: B:231:0x07ab  */
    /* JADX WARN: Code duplicated, block: B:232:0x07bd  */
    /* JADX WARN: Code duplicated, block: B:237:0x07d7  */
    /* JADX WARN: Code duplicated, block: B:239:0x07e5  */
    /* JADX WARN: Code duplicated, block: B:242:0x080e  */
    /* JADX WARN: Code duplicated, block: B:245:0x0827  */
    /* JADX WARN: Code duplicated, block: B:246:0x082c  */
    /* JADX WARN: Code duplicated, block: B:248:0x0830  */
    /* JADX WARN: Code duplicated, block: B:249:0x0833  */
    /* JADX WARN: Code duplicated, block: B:251:0x0837  */
    /* JADX WARN: Code duplicated, block: B:253:0x0844  */
    /* JADX WARN: Code duplicated, block: B:255:0x0850  */
    /* JADX WARN: Code duplicated, block: B:256:0x0852  */
    /* JADX WARN: Code duplicated, block: B:260:0x0860  */
    /* JADX WARN: Code duplicated, block: B:264:0x0887  */
    /* JADX WARN: Code duplicated, block: B:266:0x089b  */
    /* JADX WARN: Code duplicated, block: B:276:0x07cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x0208  */
    /* JADX WARN: Code duplicated, block: B:75:0x0225 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x0227  */
    /* JADX WARN: Code duplicated, block: B:81:0x025e  */
    /* JADX WARN: Code duplicated, block: B:83:0x026b  */
    /* JADX WARN: Code duplicated, block: B:85:0x027e  */
    /* JADX WARN: Code duplicated, block: B:88:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:90:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:93:0x02e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x02e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:97:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:98:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:99:0x02fc  */
    public static final void a(Modifier modifier, TextArticleSectionUiModel textArticleSectionUiModel, boolean z, ImmersiveArticleType immersiveArticleType, NextSectionProductTabs nextSectionProductTabs, Function1 function1, Composer composer, int i2) {
        long j2;
        SectionThemeUiModel sectionThemeUiModel;
        Function2 function2;
        boolean zK;
        Object objX;
        int[] iArr;
        int i3;
        Modifier modifierJ;
        int i4;
        BiasAlignment.Horizontal horizontal;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        SectionThemeUiModel sectionThemeUiModel2;
        float f2;
        Color colorA;
        long j3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean zY;
        Object objX2;
        ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel;
        String str;
        ContributionLinkUiModel contributionLinkUiModel;
        boolean z2;
        boolean zY2;
        Object objX3;
        boolean z3;
        int i5;
        int i6;
        Pair pair;
        SectionThemeUiModel sectionThemeUiModel3;
        Color colorA2;
        long j4;
        Color colorA3;
        long j5;
        String strC;
        Integer numValueOf;
        boolean z4;
        boolean zY3;
        Object objX4;
        boolean z5;
        int i7;
        int i8;
        String str2;
        String str3;
        TextStyle textStyle;
        int i9;
        boolean z6;
        int i10;
        boolean z7;
        Modifier modifierM;
        Object objX5;
        TextStyle textStyleA;
        String str4;
        TextStyle textStyleA2;
        Color colorA4;
        long j6;
        String str5;
        boolean z8;
        float f3;
        String str6;
        String str7;
        Modifier modifierE = modifier;
        ImmersiveArticleDisclaimerUiModel immersiveArticleDisclaimerUiModel = textArticleSectionUiModel.p;
        SectionThemeUiModel sectionThemeUiModel4 = textArticleSectionUiModel.o;
        AssetUiModel assetUiModel = textArticleSectionUiModel.l;
        List list = textArticleSectionUiModel.m;
        String str8 = textArticleSectionUiModel.g;
        SectionThemeUiModel sectionThemeUiModel5 = textArticleSectionUiModel.n;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleTextView");
        }
        immersiveArticleType.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(835489196);
        Applier applier = gapComposerH.f7976a;
        int i11 = i2 | (gapComposerH.y(textArticleSectionUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.d(immersiveArticleType.ordinal()) ? 2048 : 1024) | (gapComposerH.K(nextSectionProductTabs) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i11 & 1, (i11 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Function0 function0 = null;
            Color colorA5 = (sectionThemeUiModel5 == null || (str7 = sectionThemeUiModel5.f58825a) == null) ? null : StringExtKt.a(str7);
            if (colorA5 == null) {
                gapComposerH.L(-253752451);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-253755303);
                gapComposerH.Z(false);
                j2 = colorA5.f8872a;
            }
            Modifier modifierB = BackgroundKt.b(modifierE, j2, RectangleShapeKt.f8913a);
            Alignment.Companion companion = Alignment.f8582a;
            companion.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode2 = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            Integer numValueOf2 = Integer.valueOf(iHashCode2);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function8);
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            Function2 function9 = function5;
            Object objX6 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX6 == composer$Companion$Empty$2) {
                objX6 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX6);
            }
            MutableState mutableState = (MutableState) objX6;
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$2) {
                objX7 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX7);
            }
            MutableState mutableState2 = (MutableState) objX7;
            Modifier.Companion companion2 = Modifier.Companion.f8607b;
            if (assetUiModel != null) {
                AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                if (assetImageUiModel == null || (str6 = assetImageUiModel.f51778b) == null) {
                    sectionThemeUiModel = sectionThemeUiModel4;
                } else {
                    sectionThemeUiModel = sectionThemeUiModel4;
                    if (com.vuitton.android.platform.extensions.StringExtKt.a(str6)) {
                        gapComposerH.L(-1261308160);
                        Modifier modifierP = SizeKt.p(companion2, ((Dp) mutableState2.getF10755b()).f11006b, ((Dp) mutableState.getF10755b()).f11006b);
                        String str9 = assetUiModel.f51780b.f51778b;
                        str9.getClass();
                        ContentScale.f9447a.getClass();
                        function9 = function9;
                        function2 = function6;
                        function8 = function8;
                        companion2 = companion2;
                        sectionThemeUiModel5 = sectionThemeUiModel5;
                        mutableState = mutableState;
                        ImageLoaderKt.b(modifierP, str9, ContentScale.Companion.f9453h, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
                        gapComposerH = gapComposerH;
                        gapComposerH.Z(false);
                    }
                    Modifier modifierD = tr.d("ImmersiveArticleTextView", 1.0f);
                    zK = gapComposerH.K(density);
                    objX = gapComposerH.x();
                    if (zK || objX == composer$Companion$Empty$2) {
                        objX = new u30(density, mutableState, mutableState2, 0);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierD, (Function1) objX);
                    iArr = WhenMappings.f58498a;
                    i3 = iArr[immersiveArticleType.ordinal()];
                    if (i3 != 1) {
                        gapComposerH.L(-1260526526);
                        modifierJ = PaddingKt.j(companion2, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48421k);
                        gapComposerH.Z(false);
                    } else {
                        if (i3 == 2) {
                            throw d21.u(gapComposerH, -2118874882, false);
                        }
                        gapComposerH.L(-1260204157);
                        if (nextSectionProductTabs == null && nextSectionProductTabs.f58462a) {
                            modifierJ = PaddingKt.k(PaddingKt.m(n00.i(gapComposerH, -1260128920, "ImmersiveArticleTextView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 7), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            z8 = false;
                            gapComposerH.Z(false);
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1259849393, "ImmersiveArticleTextView");
                            if (str8.length() > 0) {
                                gapComposerH.L(-1259651086);
                                f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                z8 = false;
                                gapComposerH.Z(false);
                            } else {
                                z8 = false;
                                gapComposerH.L(-1259520142);
                                f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                gapComposerH.Z(false);
                            }
                            modifierJ = PaddingKt.k(PaddingKt.m(dTFunctionNameModifierI, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 7), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            gapComposerH.Z(z8);
                        }
                        gapComposerH.Z(z8);
                    }
                    Modifier modifierO = modifierA.o(modifierJ);
                    i4 = WhenMappings.f58500c[textArticleSectionUiModel.f58835k.ordinal()];
                    if (i4 != 1) {
                        companion.getClass();
                        horizontal = Alignment.Companion.o;
                    } else if (i4 != 2) {
                        if (i4 == 3) {
                            v40.g();
                            return;
                        } else if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl) {
                            companion.getClass();
                            horizontal = Alignment.Companion.p;
                        } else {
                            companion.getClass();
                            horizontal = Alignment.Companion.n;
                        }
                    } else if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl) {
                        companion.getClass();
                        horizontal = Alignment.Companion.n;
                    } else {
                        companion.getClass();
                        horizontal = Alignment.Companion.p;
                    }
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.getT());
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function3);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
                    cj.t(iHashCode, gapComposerH, function2, gapComposerH, function7);
                    Updater.c(gapComposerH, modifierC, function8);
                    if (StringsKt.w(textArticleSectionUiModel.f58830e)) {
                        sectionThemeUiModel2 = sectionThemeUiModel5;
                        f2 = 1.0f;
                        gapComposerH.L(-1451924358);
                        gapComposerH.Z(false);
                    } else {
                        Modifier modifierM2 = PaddingKt.m(n00.i(gapComposerH, -1452758940, "ImmersiveArticleTextView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
                        String str10 = textArticleSectionUiModel.f58830e;
                        int iB = b(textArticleSectionUiModel);
                        if (textArticleSectionUiModel.f58831f == ImmersiveArticleFontUiModel.HANLEY_PRO) {
                            gapComposerH.L(-1452399805);
                            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).l;
                            FontWeight.f10727c.getClass();
                            textStyleA2 = TextStyle.a(textStyle2, 0L, 0L, FontWeight.g, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1452215138);
                            textStyleA2 = LVAppDesignKitTheme.n(gapComposerH).l;
                            gapComposerH.Z(false);
                        }
                        TextStyle textStyle3 = textStyleA2;
                        sectionThemeUiModel2 = sectionThemeUiModel5;
                        if (sectionThemeUiModel5 != null || (str5 = sectionThemeUiModel2.f58826b) == null) {
                            colorA4 = null;
                        } else {
                            colorA4 = StringExtKt.a(str5);
                        }
                        if (colorA4 == null) {
                            gapComposerH.L(1754277589);
                            j6 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(1754274675);
                            gapComposerH.Z(false);
                            j6 = colorA4.f8872a;
                        }
                        TextAlign textAlign = new TextAlign(iB);
                        f2 = 1.0f;
                        GapComposer gapComposer = gapComposerH;
                        TextKt.c(str10, modifierM2, j6, 0L, null, 0L, null, textAlign, 0L, 0, false, 2, 0, null, textStyle3, gapComposer, 0, 24576, 113656);
                        gapComposerH = gapComposer;
                        gapComposerH.Z(false);
                    }
                    if (sectionThemeUiModel2 != null || (str4 = sectionThemeUiModel2.f58826b) == null) {
                        colorA = null;
                    } else {
                        colorA = StringExtKt.a(str4);
                    }
                    if (colorA == null) {
                        gapComposerH.L(1754282806);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1754280636);
                        gapComposerH.Z(false);
                        j3 = colorA.f8872a;
                    }
                    if (StringsKt.w(textArticleSectionUiModel.f58829c)) {
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        gapComposerH.L(-1450312358);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1451687022);
                        i10 = iArr[immersiveArticleType.ordinal()];
                        if (i10 != 1) {
                            z7 = false;
                            modifierM = PaddingKt.m(n00.i(gapComposerH, -1451528271, "ImmersiveArticleTextView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
                            gapComposerH.Z(false);
                        } else {
                            if (i10 == 2) {
                                throw d21.u(gapComposerH, 1754289357, false);
                            }
                            gapComposerH.L(-1451310682);
                            if (str8.length() > 0) {
                                modifierM = PaddingKt.m(n00.i(gapComposerH, -1451242327, "ImmersiveArticleTextView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
                                z7 = false;
                                gapComposerH.Z(false);
                            } else {
                                z7 = false;
                                DTFunctionNameModifier dTFunctionNameModifierJ = n00.j(gapComposerH, -1451093589, false, "ImmersiveArticleTextView");
                                Dp.Companion companion3 = Dp.f11004c;
                                modifierM = PaddingKt.m(dTFunctionNameModifierJ, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7);
                            }
                            gapComposerH.Z(z7);
                        }
                        objX5 = gapComposerH.x();
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = new x20(3);
                            gapComposerH.q(objX5);
                        }
                        Modifier modifierB2 = SemanticsModifierKt.b(modifierM, z7, (Function1) objX5);
                        String str11 = textArticleSectionUiModel.f58829c;
                        int iB2 = b(textArticleSectionUiModel);
                        if (textArticleSectionUiModel.d == ImmersiveArticleFontUiModel.HANLEY_PRO) {
                            gapComposerH.L(-1450648088);
                            TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                            FontWeight.f10727c.getClass();
                            textStyleA = TextStyle.a(textStyle4, 0L, 0L, FontWeight.g, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1450468381);
                            textStyleA = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                            gapComposerH.Z(false);
                        }
                        GapComposer gapComposer2 = gapComposerH;
                        TextKt.c(str11, modifierB2, j3, 0L, null, 0L, null, new TextAlign(iB2), 0L, 0, false, 0, 0, null, textStyleA, gapComposer2, 0, 0, 130040);
                        gapComposerH = gapComposer2;
                        gapComposerH.Z(false);
                    }
                    if (str8.length() > 0) {
                        gapComposerH.L(-1450219327);
                        String str12 = textArticleSectionUiModel.g;
                        int iB3 = b(textArticleSectionUiModel);
                        if (textArticleSectionUiModel.f58834j == ImmersiveArticleTextModuleTypeUiModel.CITATION) {
                            gapComposerH.L(-1449993027);
                            i9 = WhenMappings.f58499b[textArticleSectionUiModel.f58832h.ordinal()];
                            if (i9 != 1) {
                                z6 = false;
                                gapComposerH.L(1754345206);
                                gapComposerH.Z(false);
                                textStyle = LVImmersiveArticleTextStyle.f51089b;
                            } else if (i9 != 2) {
                                gapComposerH.L(1754351088);
                                textStyle = LVAppDesignKitTheme.n(gapComposerH).d;
                                z6 = false;
                                gapComposerH.Z(false);
                            } else {
                                z6 = false;
                                gapComposerH.L(1754348625);
                                gapComposerH.Z(false);
                                textStyle = LVImmersiveArticleTextStyle.f51088a;
                            }
                            gapComposerH.Z(z6);
                        } else {
                            gapComposerH.L(-1449627258);
                            textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
                            gapComposerH.Z(false);
                        }
                        GapComposer gapComposer3 = gapComposerH;
                        TextKt.c(str12, null, j3, 0L, null, 0L, null, new TextAlign(iB3), 0L, 0, false, 0, 0, null, textStyle, gapComposer3, 0, 0, 130042);
                        gapComposerH = gapComposer3;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1449474118);
                        gapComposerH.Z(false);
                    }
                    if (CollectionExtKt.a(list)) {
                        SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, -1449352815, "ImmersiveArticleTextView"), LVAppDesignKitTheme.l(gapComposerH).f48418h));
                        list.getClass();
                        i5 = 0;
                        for (Object obj : list) {
                            i6 = i5 + 1;
                            if (i5 >= 0) {
                                CollectionsKt.t0();
                                throw null;
                            }
                            pair = (Pair) obj;
                            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                            sectionThemeUiModel3 = sectionThemeUiModel;
                            if (sectionThemeUiModel != null || (str3 = sectionThemeUiModel3.f58825a) == null) {
                                colorA2 = null;
                            } else {
                                colorA2 = StringExtKt.a(str3);
                            }
                            if (colorA2 == null) {
                                gapComposerH.L(-1439838328);
                                j4 = LVAppDesignKitTheme.b(gapComposerH).f48446a.f48532a;
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-1439841800);
                                gapComposerH.Z(false);
                                j4 = colorA2.f8872a;
                            }
                            long j7 = j4;
                            if (sectionThemeUiModel3 != null || (str2 = sectionThemeUiModel3.f58826b) == null) {
                                colorA3 = null;
                            } else {
                                colorA3 = StringExtKt.a(str2);
                            }
                            if (colorA3 == null) {
                                gapComposerH.L(-1439833019);
                                j5 = LVAppDesignKitTheme.b(gapComposerH).f48446a.d;
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-1439836305);
                                gapComposerH.Z(false);
                                j5 = colorA3.f8872a;
                            }
                            ConfigurationButton configurationButtonA = ConfigurationButton.a(configurationButton, j7, j5, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8182);
                            Modifier modifierD2 = tr.d("ImmersiveArticleTextView", f2);
                            if (((ContributionLinkUiModel) pair.f71706c) instanceof ContributionLinkUiModel.PushNotification) {
                                gapComposerH.L(-1684913012);
                                if (z) {
                                    i8 = R.string.cta_register_now;
                                } else {
                                    i8 = R.string.cta_notyet_register;
                                }
                                strC = StringResources_androidKt.c(gapComposerH, i8);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-1684476160);
                                gapComposerH.Z(false);
                                strC = (String) pair.f71705b;
                            }
                            String str13 = strC;
                            if (((ContributionLinkUiModel) pair.f71706c) instanceof ContributionLinkUiModel.PushNotification) {
                                gapComposerH.L(-1684243629);
                                if (z) {
                                    gapComposerH.L(-1684186403);
                                    i7 = LVAppDesignKitTheme.g(gapComposerH).R;
                                    z5 = false;
                                    gapComposerH.Z(false);
                                } else {
                                    z5 = false;
                                    gapComposerH.L(-1684073501);
                                    i7 = LVAppDesignKitTheme.g(gapComposerH).Q;
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(z5);
                                numValueOf = Integer.valueOf(i7);
                            } else {
                                gapComposerH.L(-1683907900);
                                gapComposerH.Z(false);
                                numValueOf = null;
                            }
                            if ((i11 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            zY3 = z4 | gapComposerH.y(pair);
                            objX4 = gapComposerH.x();
                            if (zY3 || objX4 == composer$Companion$Empty$1) {
                                objX4 = new t30(function1, pair, 1);
                                gapComposerH.q(objX4);
                            }
                            LVButtonKt.b(6, 496, gapComposerH, modifierD2, configurationButtonA, numValueOf, null, str13, (Function0) objX4, false, false, false);
                            if (i5 < CollectionsKt.F(list)) {
                                cj.x(n00.i(gapComposerH, -1683677352, "ImmersiveArticleTextView"), LVAppDesignKitTheme.l(gapComposerH).f48417f, gapComposerH, false);
                            } else {
                                gapComposerH.L(-1683507255);
                                gapComposerH.Z(false);
                            }
                            i5 = i6;
                            sectionThemeUiModel = sectionThemeUiModel3;
                        }
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1447160774);
                        gapComposerH.Z(false);
                    }
                    if (immersiveArticleDisclaimerUiModel != null) {
                        SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, -1447090745, "ImmersiveArticleTextView"), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                        Modifier modifierD3 = SizeKt.d(new DTFunctionNameModifier("ImmersiveArticleTextView"), f2);
                        zY = gapComposerH.y(textArticleSectionUiModel);
                        objX2 = gapComposerH.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            objX2 = new l00(textArticleSectionUiModel, 8);
                            gapComposerH.q(objX2);
                        }
                        Modifier modifierB3 = SemanticsModifierKt.b(modifierD3, false, (Function1) objX2);
                        String str14 = immersiveArticleDisclaimerUiModel.f58651a;
                        immersiveArticleCtaUiModel = immersiveArticleDisclaimerUiModel.f58652b;
                        if (immersiveArticleCtaUiModel != null) {
                            str = immersiveArticleCtaUiModel.f58648a;
                        } else {
                            str = null;
                        }
                        if (immersiveArticleCtaUiModel != null) {
                            contributionLinkUiModel = immersiveArticleCtaUiModel.f58649b;
                        } else {
                            contributionLinkUiModel = null;
                        }
                        if (contributionLinkUiModel == null) {
                            gapComposerH.L(-1446495949);
                            z3 = false;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1446495948);
                            if ((i11 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            zY2 = z2 | gapComposerH.y(contributionLinkUiModel);
                            objX3 = gapComposerH.x();
                            if (zY2 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new lj(function1, contributionLinkUiModel, 5);
                                gapComposerH.q(objX3);
                            }
                            function0 = (Function0) objX3;
                            z3 = false;
                            gapComposerH.Z(false);
                        }
                        GapComposer gapComposer4 = gapComposerH;
                        LVDisclaimerKt.a(modifierB3, str14, null, 0L, str, function0, gapComposer4, 0, 12);
                        gapComposerH = gapComposer4;
                        gapComposerH.Z(z3);
                    } else {
                        gapComposerH.L(-1446334438);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    gapComposerH.Z(true);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                }
                function2 = function6;
            } else {
                sectionThemeUiModel = sectionThemeUiModel4;
                function2 = function6;
            }
            gapComposerH.L(-1261016016);
            gapComposerH.Z(false);
            Modifier modifierD4 = tr.d("ImmersiveArticleTextView", 1.0f);
            zK = gapComposerH.K(density);
            objX = gapComposerH.x();
            if (zK) {
                objX = new u30(density, mutableState, mutableState2, 0);
                gapComposerH.q(objX);
            } else {
                objX = new u30(density, mutableState, mutableState2, 0);
                gapComposerH.q(objX);
            }
            Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierD4, (Function1) objX);
            iArr = WhenMappings.f58498a;
            i3 = iArr[immersiveArticleType.ordinal()];
            if (i3 != 1) {
                gapComposerH.L(-1260526526);
                modifierJ = PaddingKt.j(companion2, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48421k);
                gapComposerH.Z(false);
            } else {
                if (i3 == 2) {
                    throw d21.u(gapComposerH, -2118874882, false);
                }
                gapComposerH.L(-1260204157);
                if (nextSectionProductTabs == null) {
                    DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposerH, -1259849393, "ImmersiveArticleTextView");
                    if (str8.length() > 0) {
                        gapComposerH.L(-1259651086);
                        f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        z8 = false;
                        gapComposerH.Z(false);
                    } else {
                        z8 = false;
                        gapComposerH.L(-1259520142);
                        f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    modifierJ = PaddingKt.k(PaddingKt.m(dTFunctionNameModifierI2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 7), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    gapComposerH.Z(z8);
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI3 = n00.i(gapComposerH, -1259849393, "ImmersiveArticleTextView");
                    if (str8.length() > 0) {
                        gapComposerH.L(-1259651086);
                        f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        z8 = false;
                        gapComposerH.Z(false);
                    } else {
                        z8 = false;
                        gapComposerH.L(-1259520142);
                        f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    modifierJ = PaddingKt.k(PaddingKt.m(dTFunctionNameModifierI3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 7), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    gapComposerH.Z(z8);
                }
                gapComposerH.Z(z8);
            }
            Modifier modifierO2 = modifierA2.o(modifierJ);
            i4 = WhenMappings.f58500c[textArticleSectionUiModel.f58835k.ordinal()];
            if (i4 != 1) {
                companion.getClass();
                horizontal = Alignment.Companion.o;
            } else if (i4 != 2) {
                if (i4 == 3) {
                    v40.g();
                    return;
                } else if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl) {
                    companion.getClass();
                    horizontal = Alignment.Companion.p;
                } else {
                    companion.getClass();
                    horizontal = Alignment.Companion.n;
                }
            } else if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl) {
                companion.getClass();
                horizontal = Alignment.Companion.n;
            } else {
                companion.getClass();
                horizontal = Alignment.Companion.p;
            }
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.getT());
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierO2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
            cj.t(iHashCode, gapComposerH, function2, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC, function8);
            if (StringsKt.w(textArticleSectionUiModel.f58830e)) {
                Modifier modifierM3 = PaddingKt.m(n00.i(gapComposerH, -1452758940, "ImmersiveArticleTextView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
                String str15 = textArticleSectionUiModel.f58830e;
                int iB4 = b(textArticleSectionUiModel);
                if (textArticleSectionUiModel.f58831f == ImmersiveArticleFontUiModel.HANLEY_PRO) {
                    gapComposerH.L(-1452399805);
                    TextStyle textStyle5 = LVAppDesignKitTheme.n(gapComposerH).l;
                    FontWeight.f10727c.getClass();
                    textStyleA2 = TextStyle.a(textStyle5, 0L, 0L, FontWeight.g, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1452215138);
                    textStyleA2 = LVAppDesignKitTheme.n(gapComposerH).l;
                    gapComposerH.Z(false);
                }
                TextStyle textStyle6 = textStyleA2;
                sectionThemeUiModel2 = sectionThemeUiModel5;
                if (sectionThemeUiModel5 != null) {
                    colorA4 = null;
                } else {
                    colorA4 = null;
                }
                if (colorA4 == null) {
                    gapComposerH.L(1754277589);
                    j6 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1754274675);
                    gapComposerH.Z(false);
                    j6 = colorA4.f8872a;
                }
                TextAlign textAlign2 = new TextAlign(iB4);
                f2 = 1.0f;
                GapComposer gapComposer5 = gapComposerH;
                TextKt.c(str15, modifierM3, j6, 0L, null, 0L, null, textAlign2, 0L, 0, false, 2, 0, null, textStyle6, gapComposer5, 0, 24576, 113656);
                gapComposerH = gapComposer5;
                gapComposerH.Z(false);
            } else {
                sectionThemeUiModel2 = sectionThemeUiModel5;
                f2 = 1.0f;
                gapComposerH.L(-1451924358);
                gapComposerH.Z(false);
            }
            if (sectionThemeUiModel2 != null) {
                colorA = null;
            } else {
                colorA = null;
            }
            if (colorA == null) {
                gapComposerH.L(1754282806);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1754280636);
                gapComposerH.Z(false);
                j3 = colorA.f8872a;
            }
            if (StringsKt.w(textArticleSectionUiModel.f58829c)) {
                gapComposerH.L(-1451687022);
                i10 = iArr[immersiveArticleType.ordinal()];
                if (i10 != 1) {
                    z7 = false;
                    modifierM = PaddingKt.m(n00.i(gapComposerH, -1451528271, "ImmersiveArticleTextView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
                    gapComposerH.Z(false);
                } else {
                    if (i10 == 2) {
                        throw d21.u(gapComposerH, 1754289357, false);
                    }
                    gapComposerH.L(-1451310682);
                    if (str8.length() > 0) {
                        modifierM = PaddingKt.m(n00.i(gapComposerH, -1451242327, "ImmersiveArticleTextView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
                        z7 = false;
                        gapComposerH.Z(false);
                    } else {
                        z7 = false;
                        DTFunctionNameModifier dTFunctionNameModifierJ2 = n00.j(gapComposerH, -1451093589, false, "ImmersiveArticleTextView");
                        Dp.Companion companion4 = Dp.f11004c;
                        modifierM = PaddingKt.m(dTFunctionNameModifierJ2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7);
                    }
                    gapComposerH.Z(z7);
                }
                objX5 = gapComposerH.x();
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new x20(3);
                    gapComposerH.q(objX5);
                }
                Modifier modifierB4 = SemanticsModifierKt.b(modifierM, z7, (Function1) objX5);
                String str16 = textArticleSectionUiModel.f58829c;
                int iB5 = b(textArticleSectionUiModel);
                if (textArticleSectionUiModel.d == ImmersiveArticleFontUiModel.HANLEY_PRO) {
                    gapComposerH.L(-1450648088);
                    TextStyle textStyle7 = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                    FontWeight.f10727c.getClass();
                    textStyleA = TextStyle.a(textStyle7, 0L, 0L, FontWeight.g, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1450468381);
                    textStyleA = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                    gapComposerH.Z(false);
                }
                GapComposer gapComposer6 = gapComposerH;
                TextKt.c(str16, modifierB4, j3, 0L, null, 0L, null, new TextAlign(iB5), 0L, 0, false, 0, 0, null, textStyleA, gapComposer6, 0, 0, 130040);
                gapComposerH = gapComposer6;
                gapComposerH.Z(false);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                gapComposerH.L(-1450312358);
                gapComposerH.Z(false);
            }
            if (str8.length() > 0) {
                gapComposerH.L(-1450219327);
                String str17 = textArticleSectionUiModel.g;
                int iB6 = b(textArticleSectionUiModel);
                if (textArticleSectionUiModel.f58834j == ImmersiveArticleTextModuleTypeUiModel.CITATION) {
                    gapComposerH.L(-1449993027);
                    i9 = WhenMappings.f58499b[textArticleSectionUiModel.f58832h.ordinal()];
                    if (i9 != 1) {
                        z6 = false;
                        gapComposerH.L(1754345206);
                        gapComposerH.Z(false);
                        textStyle = LVImmersiveArticleTextStyle.f51089b;
                    } else if (i9 != 2) {
                        gapComposerH.L(1754351088);
                        textStyle = LVAppDesignKitTheme.n(gapComposerH).d;
                        z6 = false;
                        gapComposerH.Z(false);
                    } else {
                        z6 = false;
                        gapComposerH.L(1754348625);
                        gapComposerH.Z(false);
                        textStyle = LVImmersiveArticleTextStyle.f51088a;
                    }
                    gapComposerH.Z(z6);
                } else {
                    gapComposerH.L(-1449627258);
                    textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
                    gapComposerH.Z(false);
                }
                GapComposer gapComposer7 = gapComposerH;
                TextKt.c(str17, null, j3, 0L, null, 0L, null, new TextAlign(iB6), 0L, 0, false, 0, 0, null, textStyle, gapComposer7, 0, 0, 130042);
                gapComposerH = gapComposer7;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1449474118);
                gapComposerH.Z(false);
            }
            if (CollectionExtKt.a(list)) {
                SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, -1449352815, "ImmersiveArticleTextView"), LVAppDesignKitTheme.l(gapComposerH).f48418h));
                list.getClass();
                i5 = 0;
                while (r1.hasNext()) {
                    i6 = i5 + 1;
                    if (i5 >= 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    pair = (Pair) obj;
                    ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                    sectionThemeUiModel3 = sectionThemeUiModel;
                    if (sectionThemeUiModel != null) {
                        colorA2 = null;
                    } else {
                        colorA2 = null;
                    }
                    if (colorA2 == null) {
                        gapComposerH.L(-1439838328);
                        j4 = LVAppDesignKitTheme.b(gapComposerH).f48446a.f48532a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1439841800);
                        gapComposerH.Z(false);
                        j4 = colorA2.f8872a;
                    }
                    long j8 = j4;
                    if (sectionThemeUiModel3 != null) {
                        colorA3 = null;
                    } else {
                        colorA3 = null;
                    }
                    if (colorA3 == null) {
                        gapComposerH.L(-1439833019);
                        j5 = LVAppDesignKitTheme.b(gapComposerH).f48446a.d;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1439836305);
                        gapComposerH.Z(false);
                        j5 = colorA3.f8872a;
                    }
                    ConfigurationButton configurationButtonA2 = ConfigurationButton.a(configurationButton2, j8, j5, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8182);
                    Modifier modifierD5 = tr.d("ImmersiveArticleTextView", f2);
                    if (((ContributionLinkUiModel) pair.f71706c) instanceof ContributionLinkUiModel.PushNotification) {
                        gapComposerH.L(-1684913012);
                        if (z) {
                            i8 = R.string.cta_register_now;
                        } else {
                            i8 = R.string.cta_notyet_register;
                        }
                        strC = StringResources_androidKt.c(gapComposerH, i8);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1684476160);
                        gapComposerH.Z(false);
                        strC = (String) pair.f71705b;
                    }
                    String str18 = strC;
                    if (((ContributionLinkUiModel) pair.f71706c) instanceof ContributionLinkUiModel.PushNotification) {
                        gapComposerH.L(-1684243629);
                        if (z) {
                            gapComposerH.L(-1684186403);
                            i7 = LVAppDesignKitTheme.g(gapComposerH).R;
                            z5 = false;
                            gapComposerH.Z(false);
                        } else {
                            z5 = false;
                            gapComposerH.L(-1684073501);
                            i7 = LVAppDesignKitTheme.g(gapComposerH).Q;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z5);
                        numValueOf = Integer.valueOf(i7);
                    } else {
                        gapComposerH.L(-1683907900);
                        gapComposerH.Z(false);
                        numValueOf = null;
                    }
                    if ((i11 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    zY3 = z4 | gapComposerH.y(pair);
                    objX4 = gapComposerH.x();
                    if (zY3) {
                        objX4 = new t30(function1, pair, 1);
                        gapComposerH.q(objX4);
                    } else {
                        objX4 = new t30(function1, pair, 1);
                        gapComposerH.q(objX4);
                    }
                    LVButtonKt.b(6, 496, gapComposerH, modifierD5, configurationButtonA2, numValueOf, null, str18, (Function0) objX4, false, false, false);
                    if (i5 < CollectionsKt.F(list)) {
                        cj.x(n00.i(gapComposerH, -1683677352, "ImmersiveArticleTextView"), LVAppDesignKitTheme.l(gapComposerH).f48417f, gapComposerH, false);
                    } else {
                        gapComposerH.L(-1683507255);
                        gapComposerH.Z(false);
                    }
                    i5 = i6;
                    sectionThemeUiModel = sectionThemeUiModel3;
                }
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1447160774);
                gapComposerH.Z(false);
            }
            if (immersiveArticleDisclaimerUiModel != null) {
                SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, -1447090745, "ImmersiveArticleTextView"), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                Modifier modifierD6 = SizeKt.d(new DTFunctionNameModifier("ImmersiveArticleTextView"), f2);
                zY = gapComposerH.y(textArticleSectionUiModel);
                objX2 = gapComposerH.x();
                if (zY) {
                    objX2 = new l00(textArticleSectionUiModel, 8);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new l00(textArticleSectionUiModel, 8);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB5 = SemanticsModifierKt.b(modifierD6, false, (Function1) objX2);
                String str19 = immersiveArticleDisclaimerUiModel.f58651a;
                immersiveArticleCtaUiModel = immersiveArticleDisclaimerUiModel.f58652b;
                if (immersiveArticleCtaUiModel != null) {
                    str = immersiveArticleCtaUiModel.f58648a;
                } else {
                    str = null;
                }
                if (immersiveArticleCtaUiModel != null) {
                    contributionLinkUiModel = immersiveArticleCtaUiModel.f58649b;
                } else {
                    contributionLinkUiModel = null;
                }
                if (contributionLinkUiModel == null) {
                    gapComposerH.L(-1446495949);
                    z3 = false;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1446495948);
                    if ((i11 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zY2 = z2 | gapComposerH.y(contributionLinkUiModel);
                    objX3 = gapComposerH.x();
                    if (zY2) {
                        objX3 = new lj(function1, contributionLinkUiModel, 5);
                        gapComposerH.q(objX3);
                    } else {
                        objX3 = new lj(function1, contributionLinkUiModel, 5);
                        gapComposerH.q(objX3);
                    }
                    function0 = (Function0) objX3;
                    z3 = false;
                    gapComposerH.Z(false);
                }
                GapComposer gapComposer8 = gapComposerH;
                LVDisclaimerKt.a(modifierB5, str19, null, 0L, str, function0, gapComposer8, 0, 12);
                gapComposerH = gapComposer8;
                gapComposerH.Z(z3);
            } else {
                gapComposerH.L(-1446334438);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            function1 = function1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(modifierE, textArticleSectionUiModel, z, immersiveArticleType, nextSectionProductTabs, function1, i2, 6);
        }
    }

    public static final int b(TextArticleSectionUiModel textArticleSectionUiModel) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int i2 = WhenMappings.f58500c[textArticleSectionUiModel.f58835k.ordinal()];
        if (i2 == 1) {
            TextAlign.f10959b.getClass();
            return TextAlign.f10961e;
        }
        if (i2 == 2) {
            TextAlign.f10959b.getClass();
            return TextAlign.d;
        }
        if (i2 == 3) {
            TextAlign.f10959b.getClass();
            return TextAlign.f10960c;
        }
        v40.g();
        return 0;
    }
}
