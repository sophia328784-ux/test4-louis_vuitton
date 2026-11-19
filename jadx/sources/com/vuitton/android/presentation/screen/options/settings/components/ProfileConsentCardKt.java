package com.vuitton.android.presentation.screen.options.settings.components;

import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.ClickableTextKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.cj;
import defpackage.d21;
import defpackage.dm;
import defpackage.n00;
import defpackage.n9;
import defpackage.pu;
import defpackage.tr;
import defpackage.u00;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "ccpaTextExpanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProfileConsentCardKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60043a;

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
            f60043a = iArr;
        }
    }

    public static final void a(Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(1471829106);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = 100;
                gapComposerH.q(objX2);
            }
            int iIntValue = ((Number) objX2).intValue();
            int i4 = i3;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.ccpa_subtitle), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CcpaProfileConsentHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "contactPrivacySettings_yourPrivacySettingDescription_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48428i, gapComposerH, 0, 0, 131068);
            Modifier modifierB = AnimationModifierKt.b(new DTFunctionNameModifier("CcpaProfileConsentHeader"), AnimationSpecKt.c(iIntValue, 0, null, 6), 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            String strC = StringResources_androidKt.c(gapComposerH, R.string.ccpa_body_text);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.ccpa_body_text_link);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
                int iV = StringsKt.v(strC, strC2, 0, false, 6);
                int length = strC2.length() + iV;
                builder.e(strC);
                TextDecoration.f10965b.getClass();
                builder.c(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), iV, length);
                builder.b(iV, length, "link", "privacyPolicy");
                objX3 = builder.i();
                gapComposerH.q(objX3);
            }
            AnnotatedString annotatedString = (AnnotatedString) objX3;
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerH.L(594615696);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("CcpaProfileConsentHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                boolean z = (i4 & 14) == 4;
                Object objX4 = gapComposerH.x();
                if (z || objX4 == composer$Companion$Empty$1) {
                    objX4 = new n9(annotatedString, function0, 4);
                    gapComposerH.q(objX4);
                }
                ClickableTextKt.a(annotatedString, modifierM, textStyle, false, 0, 0, null, (Function1) objX4, gapComposerH, 6, 120);
                gapComposerH = gapComposerH;
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.ccpa_read_less);
                Modifier modifierE = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CcpaProfileConsentHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "contactPrivacySettings_yourPrivacySettingReadLess_button");
                Object objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new u00(21, mutableState);
                    gapComposerH.q(objX5);
                }
                LVLinkKt.a(modifierE, strC3, false, null, false, (Function0) objX5, gapComposerH, ImageMetadata.EDGE_MODE, 28);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(595527251);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.ccpa_body_text), PaddingKt.m(new DTFunctionNameModifier("CcpaProfileConsentHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 5, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 24576, 114684);
                String strC4 = StringResources_androidKt.c(gapComposerH, R.string.ccpa_read_more);
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CcpaProfileConsentHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "contactPrivacySettings_yourPrivacySettingReadMore_button");
                Object objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    gapComposerH = gapComposerH;
                    objX6 = new u00(22, mutableState);
                    gapComposerH.q(objX6);
                }
                gapComposerH = gapComposerH;
                LVLinkKt.a(modifierE2, strC4, false, null, false, (Function0) objX6, gapComposerH, ImageMetadata.EDGE_MODE, 28);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pu(i2, 4, function0);
        }
    }

    public static final void b(Modifier modifier, List list, PrivacyType privacyType, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        PrivacyType privacyType2;
        Modifier modifier2;
        Modifier modifier3;
        char c2;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ProfileConsentCard");
        }
        list.getClass();
        privacyType.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1475698559);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.d(privacyType.ordinal()) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(BackgroundKt.b(ClipKt.a(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            privacyType2 = privacyType;
            if (privacyType2 == PrivacyType.CCPA) {
                gapComposerH.L(-1041557439);
                a(function3, gapComposerH, (i3 >> 21) & 14);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1041444041);
                gapComposerH.Z(false);
            }
            gapComposerH.L(104957298);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ConsentUiModel consentUiModel = (ConsentUiModel) it.next();
                String strF = "";
                if (consentUiModel instanceof ConsentUiModel.FunctionalConsentUiModel) {
                    Modifier modifierD = n00.d(gapComposerH, 1671788675, "ProfileConsentCard", "contactPrivacySettings_yourPrivacySettingFuncSettings_text");
                    int i4 = WhenMappings.f60043a[privacyType2.ordinal()];
                    modifier3 = modifierE;
                    if (i4 == 1) {
                        z2 = false;
                        strF = cj.f(gapComposerH, 192483385, R.string.cn_third_party_legal_paragraph_1_title, gapComposerH, false);
                    } else if (i4 == 2) {
                        z2 = false;
                        strF = cj.f(gapComposerH, 192487243, R.string.gdpr_functional_trackers, gapComposerH, false);
                    } else if (i4 == 3) {
                        z2 = false;
                        strF = cj.f(gapComposerH, 192490667, R.string.gdpr_functional_trackers, gapComposerH, false);
                    } else {
                        if (i4 != 4) {
                            throw d21.u(gapComposerH, 192481537, false);
                        }
                        gapComposerH.L(1672347789);
                        z2 = false;
                        gapComposerH.Z(false);
                    }
                    ProfileSettingRowKt.a(modifierD, strF, Boolean.valueOf(consentUiModel.f63400a.a()), gapComposerH, 0, 0);
                    gapComposerH.Z(z2);
                } else {
                    modifier3 = modifierE;
                    if (consentUiModel instanceof ConsentUiModel.AnalyticsConsentUiModel) {
                        Modifier modifierD2 = n00.d(gapComposerH, 1672563334, "ProfileConsentCard", "contactPrivacySettings_yourPrivacySettingStaticSettings_text");
                        int i5 = WhenMappings.f60043a[privacyType2.ordinal()];
                        if (i5 == 1) {
                            strF = cj.f(gapComposerH, 192508345, R.string.cn_third_party_legal_paragraph_2_title, gapComposerH, false);
                        } else if (i5 == 2) {
                            strF = cj.f(gapComposerH, 192512202, R.string.gdpr_analytics_trackers, gapComposerH, false);
                        } else if (i5 == 3) {
                            strF = cj.f(gapComposerH, 192515594, R.string.gdpr_analytics_trackers, gapComposerH, false);
                        } else {
                            if (i5 != 4) {
                                throw d21.u(gapComposerH, 192506495, false);
                            }
                            gapComposerH.L(1673119565);
                            gapComposerH.Z(false);
                        }
                        ProfileSettingRowKt.a(modifierD2, strF, Boolean.valueOf(consentUiModel.f63400a.a()), gapComposerH, 0, 0);
                        gapComposerH.Z(false);
                    } else if (consentUiModel instanceof ConsentUiModel.CustomisationConsentUiModel) {
                        Modifier modifierD3 = n00.d(gapComposerH, 1673339512, "ProfileConsentCard", "contactPrivacySettings_yourPrivacySettingPersonalizeSettings_text");
                        int i6 = WhenMappings.f60043a[privacyType2.ordinal()];
                        if (i6 == 1) {
                            strF = cj.f(gapComposerH, 192533561, R.string.cn_third_party_legal_paragraph_3_title, gapComposerH, false);
                        } else if (i6 == 2) {
                            strF = cj.f(gapComposerH, 192537422, R.string.gdpr_customisation_trackers, gapComposerH, false);
                        } else if (i6 == 3) {
                            strF = cj.f(gapComposerH, 192540942, R.string.gdpr_customisation_trackers, gapComposerH, false);
                        } else {
                            if (i6 != 4) {
                                throw d21.u(gapComposerH, 192531719, false);
                            }
                            gapComposerH.L(1673909197);
                            gapComposerH.Z(false);
                        }
                        ProfileSettingRowKt.a(modifierD3, strF, Boolean.valueOf(consentUiModel.f63400a.a()), gapComposerH, 0, 0);
                        gapComposerH.Z(false);
                    } else {
                        if (consentUiModel instanceof ConsentUiModel.SocialConsentUiModel) {
                            Modifier modifierD4 = n00.d(gapComposerH, 1674119472, "ProfileConsentCard", "contactPrivacySettings_yourPrivacySettingAdvertSettings_text");
                            int i7 = WhenMappings.f60043a[privacyType2.ordinal()];
                            if (i7 == 1) {
                                gapComposerH.L(1674349645);
                                gapComposerH.Z(false);
                            } else if (i7 == 2) {
                                strF = cj.f(gapComposerH, 192560295, R.string.gdpr_social_trackers, gapComposerH, false);
                            } else if (i7 == 3) {
                                strF = cj.f(gapComposerH, 192563591, R.string.gdpr_social_trackers, gapComposerH, false);
                            } else {
                                if (i7 != 4) {
                                    throw d21.u(gapComposerH, 192556755, false);
                                }
                                gapComposerH.L(1674604589);
                                gapComposerH.Z(false);
                            }
                            ProfileSettingRowKt.a(modifierD4, strF, Boolean.valueOf(consentUiModel.f63400a.a()), gapComposerH, 0, 0);
                            gapComposerH.Z(false);
                        } else if (consentUiModel instanceof ConsentUiModel.ChatConsentUiModel) {
                            gapComposerH.L(1674812570);
                            if (z) {
                                gapComposerH.L(1674857179);
                                int i8 = WhenMappings.f60043a[privacyType2.ordinal()];
                                if (i8 == 1) {
                                    c2 = 4;
                                    gapComposerH.L(1674991469);
                                    gapComposerH.Z(false);
                                } else if (i8 == 2) {
                                    c2 = 4;
                                    strF = cj.f(gapComposerH, 192581125, R.string.gdpr_chat_trackers, gapComposerH, false);
                                } else if (i8 != 3) {
                                    c2 = 4;
                                    if (i8 != 4) {
                                        throw d21.u(gapComposerH, 192577347, false);
                                    }
                                    gapComposerH.L(1675254349);
                                    gapComposerH.Z(false);
                                } else {
                                    c2 = 4;
                                    strF = cj.f(gapComposerH, 192584485, R.string.gdpr_chat_trackers, gapComposerH, false);
                                }
                                ProfileSettingRowKt.a(null, strF, Boolean.valueOf(consentUiModel.f63400a.a()), gapComposerH, 0, 1);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(1675401105);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            if (!(consentUiModel instanceof ConsentUiModel.LucieLabsConsentUiModel)) {
                                throw d21.u(gapComposerH, 192476973, false);
                            }
                            gapComposerH.L(1675493299);
                            if (WhenMappings.f60043a[privacyType2.ordinal()] == 1) {
                                strF = cj.f(gapComposerH, 192599705, R.string.cn_third_party_legal_paragraph_4_title, gapComposerH, false);
                            } else {
                                gapComposerH.L(1675729517);
                                gapComposerH.Z(false);
                            }
                            ProfileSettingRowKt.a(null, strF, Boolean.valueOf(consentUiModel.f63400a.a()), gapComposerH, 0, 1);
                            gapComposerH.Z(false);
                        }
                        modifierE = modifier3;
                    }
                }
                modifierE = modifier3;
            }
            modifier2 = modifierE;
            gapComposerH.Z(false);
            LVButtonKt.b((i3 << 15) & 1879048192, 504, gapComposerH, ModifierExtKt.e(PaddingKt.m(tr.d("ProfileConsentCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cbdt_acceptAll_button"), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.ccpa_accept_cta), function0, false, false, false);
            LVButtonKt.b((i3 << 12) & 1879048192, 504, gapComposerH, ModifierExtKt.e(PaddingKt.m(tr.d("ProfileConsentCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cbdt_rejectAll_button"), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.ccpa_refuse_cta), function1, false, false, false);
            LVButtonKt.b((i3 << 9) & 1879048192, 504, gapComposerH, ModifierExtKt.e(PaddingKt.m(tr.d("ProfileConsentCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cbdtSettings_customize_button"), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.gdpr_personalize_cookie_cta), function2, false, false, false);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            privacyType2 = privacyType;
            modifier2 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dm(modifier2, list, privacyType2, z, function0, function1, function2, function3, i2);
        }
    }
}
