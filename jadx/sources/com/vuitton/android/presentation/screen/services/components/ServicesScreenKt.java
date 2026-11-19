package com.vuitton.android.presentation.screen.services.components;

import android.view.View;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import com.vuitton.android.presentation.screen.services.components.FeatureSlideshowItemKt;
import com.vuitton.android.presentation.screen.services.components.ServicesScreenKt;
import com.vuitton.android.presentation.screen.services.models.ServiceFeatureSlideType;
import com.vuitton.android.presentation.screen.services.models.ServicesFeatureFlags;
import com.vuitton.android.presentation.screen.services.models.ServicesUrls;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelections;
import defpackage.av0;
import defpackage.cj;
import defpackage.db;
import defpackage.le;
import defpackage.mf;
import defpackage.n00;
import defpackage.q60;
import defpackage.sq0;
import defpackage.ys0;
import defpackage.z2;
import defpackage.zt0;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ServicesScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64366a;

        static {
            int[] iArr = new int[ServiceFeatureSlideType.values().length];
            try {
                iArr[ServiceFeatureSlideType.OSA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServiceFeatureSlideType.REPAIRS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ServiceFeatureSlideType.STORE_LOCATOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f64366a = iArr;
        }
    }

    public static final void a(final ServicesViewState servicesViewState, final Function0 function0, final Function0 function1, final Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-374690069);
        int i3 = i2 | (gapComposerH.y(servicesViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ListBuilder listBuilderV = CollectionsKt.v();
            ServicesFeatureFlags servicesFeatureFlags = servicesViewState.f64409h;
            if (servicesFeatureFlags.f64374a || servicesFeatureFlags.f64375b || servicesViewState.l > 0) {
                listBuilderV.add(ServiceFeatureSlideType.OSA);
            }
            if (servicesViewState.f64409h.f64376c) {
                listBuilderV.add(ServiceFeatureSlideType.REPAIRS);
            }
            listBuilderV.add(ServiceFeatureSlideType.STORE_LOCATOR);
            final ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
            boolean zY = gapComposerH.y(listBuilderR);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new db(listBuilderR, 14);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            final int f74615i = listBuilderR.getF74615i();
            View view = (View) gapComposerH.k(AndroidCompositionLocals_androidKt.f9939f);
            boolean zK = gapComposerH.K(pagerStateB) | gapComposerH.y(view) | gapComposerH.d(f74615i);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new ServicesScreenKt$FeaturesSection$1$1(pagerStateB, view, f74615i, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, pagerStateB, (Function2) objX2);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("FeaturesSection");
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVSlideShowKt.a(pagerStateB, AspectRatioKt.a(new DTFunctionNameModifier("FeaturesSection"), 0.6666667f, false), true, null, false, false, ComposableLambdaKt.b(-1823470533, new Function4() { // from class: ev0
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    Object obj5;
                    Object obj6;
                    int iIntValue = ((Integer) obj2).intValue();
                    Composer composer2 = (Composer) obj3;
                    ((Integer) obj4).getClass();
                    ((PagerScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    String strB = StringResources_androidKt.b(R.string.alt_tab, new Object[]{Integer.valueOf(iIntValue + 1), Integer.valueOf(f74615i)}, composer2);
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("FeaturesSection$lambda$3$0");
                    boolean zK2 = composer2.K(strB);
                    Object objX3 = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    Object obj7 = objX3;
                    if (zK2 || objX3 == composer$Companion$Empty$2) {
                        nj0 nj0Var = new nj0(strB, 17);
                        composer2.q(nj0Var);
                        obj7 = nj0Var;
                    }
                    Modifier modifierB = BackgroundKt.b(AspectRatioKt.a(SemanticsModifierKt.b(dTFunctionNameModifier2, true, (Function1) obj7), 0.6666667f, false), LVAppDesignKitTheme.c(composer2).f48361b.u, RectangleShapeKt.f8913a);
                    int i4 = ServicesScreenKt.WhenMappings.f64366a[((ServiceFeatureSlideType) listBuilderR.get(iIntValue)).ordinal()];
                    ServicesViewState servicesViewState2 = servicesViewState;
                    if (i4 != 1) {
                        if (i4 == 2) {
                            composer2.L(-263150008);
                            boolean z = servicesViewState2.f64409h.d;
                            int i5 = z ? R.string.services_online_or_instore : R.string.dr_repairs_section_ongoing_title;
                            int i6 = z ? R.string.services_dr_subtitle : R.string.services_dr_section_ongoing_title2;
                            Function0 function4 = function1;
                            boolean zK3 = composer2.K(function4);
                            Object objX4 = composer2.x();
                            Object obj8 = objX4;
                            if (zK3 || objX4 == composer$Companion$Empty$2) {
                                sq0 sq0Var = new sq0(function4, 14);
                                composer2.q(sq0Var);
                                obj8 = sq0Var;
                            }
                            FeatureSlideshowItemKt.a(ModifierExtKt.c(modifierB, false, null, null, (Function0) obj8, 31), R.drawable.image_services_distant_repairs, i5, i6, servicesViewState2.f64409h.d ? Integer.valueOf(R.string.services_exclusive_to_app_label) : null, servicesViewState2.f64412k, false, null, composer2, 0, 192);
                            composer2.F();
                        } else {
                            if (i4 != 3) {
                                throw o60.v(composer2, -8510362);
                            }
                            composer2.L(-261962677);
                            Function0 function5 = function2;
                            boolean zK4 = composer2.K(function5);
                            Object objX5 = composer2.x();
                            if (zK4 || objX5 == composer$Companion$Empty$2) {
                                obj6 = objX5;
                                sq0 sq0Var2 = new sq0(function5, 15);
                                composer2.q(sq0Var2);
                                obj6 = sq0Var2;
                            }
                            Modifier modifierC2 = ModifierExtKt.c(modifierB, false, null, null, (Function0) obj6, 31);
                            ServicesUrls servicesUrls = servicesViewState2.f64408f;
                            FeatureSlideshowItemKt.a(modifierC2, R.drawable.image_services_store_locator, R.string.services_store_locator_title, R.string.services_store_locator_subtitle, null, 0, (servicesUrls != null ? servicesUrls.f64398a : null) != null, null, composer2, 0, 176);
                            composer2.F();
                        }
                    } else {
                        composer2.L(-263792452);
                        Function0 function6 = function0;
                        boolean zK5 = composer2.K(function6);
                        Object objX6 = composer2.x();
                        if (zK5 || objX6 == composer$Companion$Empty$2) {
                            obj5 = objX6;
                            sq0 sq0Var3 = new sq0(function6, 13);
                            composer2.q(sq0Var3);
                            obj5 = sq0Var3;
                        }
                        FeatureSlideshowItemKt.a(ModifierExtKt.c(modifierB, false, null, null, (Function0) obj5, 31), R.drawable.image_services_osa, R.string.services_online_or_instore, R.string.services_osa_subtitle, null, servicesViewState2.l, false, "careservicesBookAppointment_button", composer2, 12582912, 80);
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 12583344, 120);
            gapComposer = gapComposerH;
            boolean z = servicesViewState.o;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            if (z) {
                AccessibilityPagerButtonsKt.b(PaddingKt.k(SizeKt.d(boxScopeInstance.g(n00.i(gapComposer, -1116490826, "FeaturesSection"), Alignment.Companion.f8587f), 1.0f), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), pagerStateB, null, Arrangement.g, Alignment.Companion.l, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposer, 27648, 36);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1116085935);
                gapComposer.Z(false);
            }
            LVCapsulePageControlKt.a(PaddingKt.l(boxScopeInstance.g(new DTFunctionNameModifier("FeaturesSection"), Alignment.Companion.f8589i), LVAppDesignKitTheme.d(gapComposer).f48383a, LVAppDesignKitTheme.d(gapComposer).f48383a, LVAppDesignKitTheme.d(gapComposer).f48383a, LVAppDesignKitTheme.l(gapComposer).f48415c), pagerStateB, null, false, gapComposer, 0, 12);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ys0(servicesViewState, function0, function1, function2, i2, 2);
        }
    }

    public static final void b(int i2, Function0 function0, Composer composer, int i3) {
        int i4;
        int i5;
        GapComposer gapComposerH = composer.h(642099973);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.d(i2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("HelpRow");
            boolean z = (i4 & 112) == 32;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new sq0(function0, 16);
                gapComposerH.q(objX);
            }
            Modifier modifierJ = PaddingKt.j(ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(gapComposerH, i2), cj.b("HelpRow", RowScopeInstance.f5040a, 1.0f, true), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0), null, SizeKt.o(new DTFunctionNameModifier("HelpRow"), LVAppDesignKitTheme.d(gapComposerH).m), 0L, gapComposerH, 56, 8);
            i5 = 1;
            gapComposerH.Z(true);
        } else {
            i5 = 1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q60(i2, i3, i5, function0);
        }
    }

    public static final void c(Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-616780366);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierL = PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierL);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.services_section_paragraph), PaddingKt.m(new DTFunctionNameModifier("IntroductionSection"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(LVAppDesignKitTheme.n(gapComposerH).g, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214), gapComposerH, 0, 0, 131068);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zt0(i2, 17);
        }
    }

    public static final void d(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-853605541);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("NeedHelpDivider"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zt0(i2, 16);
        }
    }

    public static final void e(String str, String str2, String str3, String str4, String str5, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Composer composer, int i2) {
        int i3;
        String str6;
        String str7;
        String str8;
        GapComposer gapComposerH = composer.h(-593888388);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            str6 = str2;
            i3 |= gapComposerH.K(str6) ? 32 : 16;
        } else {
            str6 = str2;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            str7 = str3;
            i3 |= gapComposerH.K(str7) ? 256 : 128;
        } else {
            str7 = str3;
        }
        if ((i2 & 3072) == 0) {
            str8 = str4;
            i3 |= gapComposerH.K(str8) ? 2048 : 1024;
        } else {
            str8 = str4;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(str5) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.services_need_help_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48420j;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f4 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            Modifier.Companion companion = Modifier.Companion.f8607b;
            Modifier modifierM = PaddingKt.m(companion, f3, f2, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Object objX = gapComposerH.x();
            int i4 = i3;
            if (objX == Composer.Companion.f7939a) {
                objX = new av0(6);
                gapComposerH.q(objX);
            }
            TextKt.c(strC, SemanticsModifierKt.b(modifierM, false, (Function1) objX), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131068);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.services_need_help_subtitle), PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131068);
            if (StringExtKt.a(str)) {
                gapComposerH.L(-1557506199);
                b(R.string.services_contact_us, function0, gapComposerH, (i4 >> 12) & 112);
                d(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1557386074);
                gapComposerH.Z(false);
            }
            if (StringExtKt.a(str6)) {
                gapComposerH.L(-1557351757);
                b(R.string.services_faq, function1, gapComposerH, (i4 >> 15) & 112);
                d(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1557210490);
                gapComposerH.Z(false);
            }
            if (StringExtKt.a(str8)) {
                gapComposerH.L(-1557169570);
                b(R.string.services_care_services, function3, gapComposerH, (i4 >> 21) & 112);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1557069626);
                gapComposerH.Z(false);
            }
            if (StringExtKt.a(str5)) {
                gapComposerH.L(-1557011532);
                d(gapComposerH, 0);
                b(R.string.services_agec, function4, gapComposerH, (i4 >> 24) & 112);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1556901978);
                gapComposerH.Z(false);
            }
            if (StringExtKt.a(str7)) {
                gapComposerH.L(-1556863507);
                d(gapComposerH, 0);
                b(R.string.Delivery_returns, function2, gapComposerH, (i4 >> 18) & 112);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1556747226);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mf(str, str6, str7, str8, str5, function0, function1, function2, function3, function4, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:94:0x01c2  */
    public static final void f(ServicesViewState servicesViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function0 function9, Function0 function10, Composer composer, int i2) {
        ServicesViewState servicesViewState2;
        servicesViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        defpackage.a.D(function4, function5, function6, function7, function8);
        GapComposer gapComposerC = defpackage.a.c(function9, function10, composer, -714399895);
        int i3 = i2 | (gapComposerC.y(servicesViewState) ? 4 : 2) | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128) | (gapComposerC.y(function2) ? 2048 : 1024) | (gapComposerC.y(function3) ? 16384 : 8192) | (gapComposerC.y(function4) ? 131072 : 65536) | (gapComposerC.y(function5) ? 1048576 : 524288) | (gapComposerC.y(function6) ? 8388608 : 4194304) | (gapComposerC.y(function7) ? 67108864 : 33554432) | (gapComposerC.y(function8) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerC.y(function9) ? 4 : 2) | (gapComposerC.y(function10) ? 32 : 16);
        if (gapComposerC.p(i3 & 1, ((306783379 & i3) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("ServicesScreen").o(SizeKt.f5052c), ScrollKt.b(gapComposerC), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerC, 0);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function11 = ComposeUiNode.Companion.f9641b;
            if (gapComposerC.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function11);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerC, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerC, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerC, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerC, modifierC, ComposeUiNode.Companion.d);
            c(gapComposerC, 0);
            a(servicesViewState, function0, function1, function2, gapComposerC, i3 & 8190);
            servicesViewState2 = servicesViewState;
            ServicesUrls servicesUrls = servicesViewState2.f64408f;
            String str = servicesUrls != null ? servicesUrls.f64399b : null;
            if (str == null) {
                str = "";
            }
            String str2 = servicesUrls != null ? servicesUrls.f64400c : null;
            int i5 = i3 >> 3;
            g(str, str2 != null ? str2 : "", servicesViewState2.f64411j, function3, function4, function10, gapComposerC, (i5 & 64512) | ((i4 << 12) & ImageMetadata.JPEG_GPS_COORDINATES));
            gapComposerC = gapComposerC;
            if ((servicesUrls != null ? servicesUrls.d : null) != null) {
                gapComposerC.L(-419164656);
                e(servicesUrls.d, servicesUrls.f64401e, servicesUrls.g, servicesUrls.f64402f, servicesUrls.f64403h, function5, function6, function7, function8, function9, gapComposerC, (i5 & 268369920) | ((i4 << 27) & 1879048192));
                gapComposerC = gapComposerC;
                gapComposerC.Z(false);
            } else {
                if ((servicesUrls != null ? servicesUrls.f64401e : null) != null) {
                    gapComposerC.L(-419164656);
                    e(servicesUrls.d, servicesUrls.f64401e, servicesUrls.g, servicesUrls.f64402f, servicesUrls.f64403h, function5, function6, function7, function8, function9, gapComposerC, (i5 & 268369920) | ((i4 << 27) & 1879048192));
                    gapComposerC = gapComposerC;
                    gapComposerC.Z(false);
                } else {
                    if ((servicesUrls != null ? servicesUrls.f64402f : null) != null) {
                        gapComposerC.L(-419164656);
                        e(servicesUrls.d, servicesUrls.f64401e, servicesUrls.g, servicesUrls.f64402f, servicesUrls.f64403h, function5, function6, function7, function8, function9, gapComposerC, (i5 & 268369920) | ((i4 << 27) & 1879048192));
                        gapComposerC = gapComposerC;
                        gapComposerC.Z(false);
                    } else {
                        if ((servicesUrls != null ? servicesUrls.g : null) != null) {
                            gapComposerC.L(-419164656);
                            e(servicesUrls.d, servicesUrls.f64401e, servicesUrls.g, servicesUrls.f64402f, servicesUrls.f64403h, function5, function6, function7, function8, function9, gapComposerC, (i5 & 268369920) | ((i4 << 27) & 1879048192));
                            gapComposerC = gapComposerC;
                            gapComposerC.Z(false);
                        } else {
                            gapComposerC.L(-418489073);
                            gapComposerC.Z(false);
                        }
                    }
                }
            }
            cj.x(new DTFunctionNameModifier("ServicesScreen"), LVAppDesignKitTheme.l(gapComposerC).g, gapComposerC, true);
        } else {
            servicesViewState2 = servicesViewState;
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new le(servicesViewState2, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, i2);
        }
    }

    public static final void g(String str, String str2, PersonalSelections personalSelections, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        int i3;
        String str3;
        Function0 function3;
        Function0 function4;
        Function0 function5;
        String str4;
        boolean z;
        List list;
        List list2;
        GapComposer gapComposerH = composer.h(-337859295);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            str3 = str2;
            i3 |= gapComposerH.K(str3) ? 32 : 16;
        } else {
            str3 = str2;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(personalSelections) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function3 = function0;
            i3 |= gapComposerH.y(function3) ? 2048 : 1024;
        } else {
            function3 = function0;
        }
        if ((i2 & 24576) == 0) {
            function4 = function1;
            i3 |= gapComposerH.y(function4) ? 16384 : 8192;
        } else {
            function4 = function1;
        }
        if ((196608 & i2) == 0) {
            function5 = function2;
            i3 |= gapComposerH.y(function5) ? 131072 : 65536;
        } else {
            function5 = function2;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.services_lv_services_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48420j;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f4 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            Modifier.Companion companion = Modifier.Companion.f8607b;
            Modifier modifierM = PaddingKt.m(companion, f3, f2, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new av0(5);
                gapComposerH.q(objX);
            }
            int i4 = i3;
            TextKt.c(strC, SemanticsModifierKt.b(modifierM, false, (Function1) objX), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131068);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.services_lv_services_subtitle), PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
            if ((personalSelections == null || (list2 = personalSelections.f67789a) == null || !(!list2.isEmpty())) && (personalSelections == null || (list = personalSelections.f67790b) == null || !(!list.isEmpty()))) {
                str4 = "ServicesSection";
                z = false;
                gapComposerH.L(-2056244031);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-2056705311);
                Function0 function6 = function5;
                str4 = "ServicesSection";
                ServiceItemKt.a(R.drawable.image_services_personal_selections, R.string.services_my_personal_selections_title, R.string.services_my_personal_selections_description, false, R.string.discover_cta, function6, gapComposerH, i4 & ImageMetadata.JPEG_GPS_COORDINATES, 8);
                z = false;
                cj.x(new DTFunctionNameModifier(str4), LVAppDesignKitTheme.l(gapComposerH).f48417f, gapComposerH, false);
            }
            boolean z2 = z;
            ServiceItemKt.a(R.drawable.image_services_personalization, R.string.services_personalization_title, R.string.services_personalization_description, str3.length() > 0 ? true : z, R.string.services_discover_more, function3, gapComposerH, (i4 << 6) & ImageMetadata.JPEG_GPS_COORDINATES, 0);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(str4), LVAppDesignKitTheme.l(gapComposerH).f48417f));
            ServiceItemKt.a(R.drawable.image_services_gifting, R.string.services_art_of_gifting_subtitle, R.string.services_art_of_gifting_description, str.length() > 0 ? true : z2, R.string.services_discover_more, function4, gapComposerH, (i4 << 3) & ImageMetadata.JPEG_GPS_COORDINATES, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(str, str3, (Object) personalSelections, function0, (Function) function1, (Function) function2, i2, 22);
        }
    }
}
