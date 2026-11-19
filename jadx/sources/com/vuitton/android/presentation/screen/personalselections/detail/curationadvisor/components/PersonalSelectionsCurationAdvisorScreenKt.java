package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.designkit.ui.theme.molecules.TabItem;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookListKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorProductListKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorScreenKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.PersonalSelectionsDetailUiModel;
import defpackage.ae0;
import defpackage.cj;
import defpackage.du;
import defpackage.f9;
import defpackage.il;
import defpackage.ll0;
import defpackage.n00;
import defpackage.o60;
import defpackage.oa;
import defpackage.tj;
import defpackage.uv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorScreenKt {
    public static final void a(PersonalSelectionsCurationAdvisorViewState.Success success, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-2105660200);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(success) ? 4 : 2);
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new Dp(40.0f);
                gapComposerH.q(objX);
            }
            float f2 = ((Dp) objX).f11006b;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorHeader");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierK = PaddingKt.k(BackgroundKt.b(ShadowKt.b(n00.e(gapComposerH, modifierC, function5, "PersonalSelectionsCurationAdvisorHeader", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 6, 3), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            PersonalSelectionsDetailUiModel personalSelectionsDetailUiModel = success.f62507a;
            String str = personalSelectionsDetailUiModel.g.f62589c;
            ImageLoaderKt.b(AspectRatioKt.a(ClipKt.a(SizeKt.o(PaddingKt.k(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorHeader"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), f2), LVAppDesignKitTheme.j(gapComposerH).f48410b), 1.0f, true), str == null ? "" : str, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
            TextKt.c(personalSelectionsDetailUiModel.f62571e, RowScopeInstance.f5040a.a(SizeKt.d(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorHeader"), 1.0f), 1.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
            Modifier modifierI = PaddingKt.i(o60.f(gapComposerH, true, "PersonalSelectionsCurationAdvisorHeader"), LVAppDesignKitTheme.l(gapComposerH).f48417f);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierI);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierM = PaddingKt.m(n00.e(gapComposerH, modifierC3, function5, "PersonalSelectionsCurationAdvisorHeader", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, 7);
            String str2 = personalSelectionsDetailUiModel.d;
            Locale locale = Locale.getDefault();
            locale.getClass();
            String upperCase = str2.toUpperCase(locale);
            upperCase.getClass();
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).p;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            int i4 = TextAlign.f10961e;
            TextKt.c(upperCase, modifierM, j2, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
            String str3 = personalSelectionsDetailUiModel.f62569b;
            TextKt.c(str3 == null ? "" : str3, modifierM2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, 0, 0, 130040);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.ips_tab_board_text), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 130042);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorHeader"), LVAppDesignKitTheme.d(gapComposerH).f48388h));
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ll0(success, i2, 1);
        }
    }

    public static final void b(Modifier modifier, final PersonalSelectionsCurationAdvisorViewState.Success success, final PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState, PagerState pagerState, final boolean z, final Function1 function1, final Function1 function2, final Function1 function3, final Function1 function4, final Function1 function5, final Function1 function6, final Function2 function7, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PersonalSelectionsCurationAdvisorPager");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-236025702);
        int i3 = i2 | (gapComposerH.y(success) ? 32 : 16) | (gapComposerH.K(personalSelectionsCurationAdvisorProductState) ? 256 : 128) | (gapComposerH.K(pagerState) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((306783379 & i3) == 306783378 && (((gapComposerH.y(function6) ? (char) 4 : (char) 2) | '0') & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            PagerKt.a(pagerState, modifier2, null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(703958841, new Function4() { // from class: sn0
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int iIntValue = ((Integer) obj2).intValue();
                    Composer composer2 = (Composer) obj3;
                    ((Integer) obj4).getClass();
                    ((PagerScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Function2 function8 = function7;
                    if (iIntValue == 0) {
                        composer2.L(-687404199);
                        PersonalSelectionsCurationAdvisorLookListKt.d(success.f62507a.f62573h, z, function4, function5, function6, function8, composer2, 0);
                        composer2.F();
                    } else if (iIntValue != 1) {
                        composer2.L(-685324471);
                        composer2.F();
                    } else {
                        composer2.L(-686902216);
                        PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState2 = personalSelectionsCurationAdvisorProductState;
                        if (personalSelectionsCurationAdvisorProductState2 instanceof PersonalSelectionsCurationAdvisorProductState.Success) {
                            composer2.L(-686810828);
                            PersonalSelectionsCurationAdvisorProductState.Success success2 = (PersonalSelectionsCurationAdvisorProductState.Success) personalSelectionsCurationAdvisorProductState2;
                            PersonalSelectionsCurationAdvisorProductListKt.a(success2.f62502a, success2.f62503b, function2, function3, function1, function8, composer2, 0);
                            composer2.F();
                        } else {
                            boolean z2 = personalSelectionsCurationAdvisorProductState2 instanceof PersonalSelectionsCurationAdvisorProductState.Loading;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            if (z2) {
                                Modifier modifierO = pq0.j(-2100347272, composer2, "PersonalSelectionsCurationAdvisorPager$lambda$0").o(SizeKt.f5052c);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                                ComposeUiNode.b0.getClass();
                                Function0 function0 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function0);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                ProgressViewKt.a(boxScopeInstance.g(a.f(composer2, modifierC, ComposeUiNode.Companion.d, "PersonalSelectionsCurationAdvisorPager$lambda$0"), Alignment.Companion.f8585c), 0L, false, composer2, 0, 6);
                                composer2 = composer2;
                                composer2.r();
                                composer2.F();
                            } else {
                                if (!(personalSelectionsCurationAdvisorProductState2 instanceof PersonalSelectionsCurationAdvisorProductState.Error)) {
                                    throw o60.v(composer2, -2100368118);
                                }
                                Modifier modifierO2 = pq0.j(-685913905, composer2, "PersonalSelectionsCurationAdvisorPager$lambda$0").o(SizeKt.f5052c);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierO2);
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
                                Updater.c(composer2, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                TextKt.c(StringResources_androidKt.c(composer2, R.string.iw_text_when_no_product), PaddingKt.m(boxScopeInstance.g(a.f(composer2, modifierC2, ComposeUiNode.Companion.d, "PersonalSelectionsCurationAdvisorPager$lambda$0"), Alignment.Companion.f8585c), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48429j, composer2, 0, 0, 131068);
                                composer2 = composer2;
                                composer2.r();
                                composer2.F();
                            }
                        }
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i3 >> 9) & 14) | 102236208, 24576, 16060);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new du(modifier2, success, personalSelectionsCurationAdvisorProductState, pagerState, z, function1, function2, function3, function4, function5, function6, function7, i2);
        }
    }

    public static final void c(final PersonalSelectionsCurationAdvisorViewState.Success success, final PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState, final SnackbarHostState snackbarHostState, final ContactUsUiModel contactUsUiModel, final Function3 function3, Function0 function0, final Function0 function1, final Function0 function2, final Function0 function4, final Function0 function5, final Function0 function6, final Function1 function7, final Function1 function8, final Function1 function9, final Function1 function10, final Function1 function11, final Function1 function12, Composer composer, final int i2) {
        Function0 function13;
        GapComposer gapComposer;
        success.getClass();
        personalSelectionsCurationAdvisorProductState.getClass();
        contactUsUiModel.getClass();
        function3.getClass();
        function0.getClass();
        defpackage.a.D(function1, function2, function4, function5, function6);
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        GapComposer gapComposerH = composer.h(778715859);
        int i3 = (gapComposerH.y(success) ? 4 : 2) | i2 | (gapComposerH.K(personalSelectionsCurationAdvisorProductState) ? 32 : 16) | (gapComposerH.K(snackbarHostState) ? 256 : 128);
        if ((i2 & 3072) == 0) {
            i3 |= (i2 & 4096) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function2) ? 8388608 : 4194304;
        }
        char c2 = 2;
        int i4 = i3 | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.y(function6)) {
            c2 = 4;
        }
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (599187 & ((((((c2 | (gapComposerH.y(function7) ? ' ' : (char) 16)) | (gapComposerH.y(function8) ? (char) 256 : (char) 128)) | (gapComposerH.y(function9) ? (char) 2048 : (char) 1024)) | (gapComposerH.y(function10) ? (char) 16384 : (char) 8192)) | (gapComposerH.y(function11) ? (char) 0 : (char) 0)) | (gapComposerH.y(function12) ? (char) 0 : (char) 0))) == 599186) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            PaddingValues paddingValuesE = WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH);
            Pair pair = new Pair(Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getF5031b())), Integer.valueOf((int) ResourcesExtKt.b(paddingValuesE.getD())));
            int iIntValue = ((Number) pair.f71705b).intValue();
            int iIntValue2 = ((Number) pair.f71706c).intValue();
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1109027953, new oa(success, function2, function4, contactUsUiModel, lVModalBottomSheetStateF, function3, iIntValue, iIntValue2), gapComposerH), null, ComposableLambdaKt.b(931186253, new ae0(snackbarHostState, 24), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1010029084, new f9(success, personalSelectionsCurationAdvisorProductState, function7, function8, function9, function10, function11, function12, function5, function6), gapComposerH), gapComposerH, 805309488, 501);
            boolean zD = ((i4 & 57344) == 16384) | gapComposerH.d(iIntValue) | gapComposerH.d(iIntValue2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zD || objX == composer$Companion$Empty$1) {
                objX = new tj(function3, iIntValue, iIntValue2, 6);
                gapComposerH.q(objX);
            }
            Function1 function14 = (Function1) objX;
            boolean z = ((i4 & 3670016) == 1048576) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                function13 = function0;
                objX2 = new il(function1, function13, 11);
                gapComposerH.q(objX2);
            } else {
                function13 = function0;
            }
            Function0 function15 = (Function0) objX2;
            int i5 = LVModalBottomSheetState.f48797e;
            ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function14, function15, gapComposerH, ((i4 >> 9) & 14) | (i5 << 3) | (i5 << 6));
            gapComposer = gapComposerH;
        } else {
            function13 = function0;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function0 function16 = function13;
            recomposeScopeImplB0.d = new Function2() { // from class: tn0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    PersonalSelectionsCurationAdvisorScreenKt.c(success, personalSelectionsCurationAdvisorProductState, snackbarHostState, contactUsUiModel, function3, function16, function1, function2, function4, function5, function6, function7, function8, function9, function10, function11, function12, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void d(int i2, final PagerState pagerState, Composer composer, Modifier modifier, List list, final CoroutineScope coroutineScope) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PersonalSelectionsCurationAdvisorTabs");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(731773863);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.K(pagerState) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128) | (gapComposerH.y(coroutineScope) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((TabItem) it.next()).f48708a);
            }
            final SegmentedControlState segmentedControlStateC = LVSegmentedControlKt.c(pagerState.k(), gapComposerH, arrayList);
            Modifier modifierD = SizeKt.d(modifier2, 1.0f);
            boolean zY = gapComposerH.y(coroutineScope) | ((i3 & 112) == 32) | gapComposerH.K(segmentedControlStateC);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new Function0() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.a
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        BuildersKt.c(coroutineScope, null, null, new PersonalSelectionsCurationAdvisorScreenKt$PersonalSelectionsCurationAdvisorTabs$1$1$1$1(pagerState, segmentedControlStateC, null), 3);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            LVSegmentedControlKt.a(modifierD, segmentedControlStateC, true, null, false, (Function0) objX, gapComposerH, KyberEngine.KyberPolyBytes, 24);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(modifier2, pagerState, list, coroutineScope, i2, 27);
        }
    }
}
