package com.vuitton.android.presentation.screen.personalselections.list.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonConfigs;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListTrackingUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSharingUiModel;
import defpackage.b3;
import defpackage.db;
import defpackage.hd0;
import defpackage.jm0;
import defpackage.k3;
import defpackage.n00;
import defpackage.oi0;
import defpackage.rl;
import defpackage.tr;
import defpackage.wd0;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsListScreenKt {
    public static final void a(PersonalSharingUiModel personalSharingUiModel, Function2 function2, Composer composer, int i2) {
        Function2 function3;
        boolean z;
        GapComposer gapComposerH = composer.h(184460645);
        int i3 = i2 | (gapComposerH.K(personalSharingUiModel) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("PersonalSelectionItem"), 1.0f), "personalSelections_item_view");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
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
            Modifier modifierE2 = ModifierExtKt.e(AspectRatioKt.a(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "PersonalSelectionItem").o(SizeKt.f5052c), 1.0f, true), "personalSelections_itemPreview_image");
            String str = personalSharingUiModel.f62651e;
            str.getClass();
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierE2, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("PersonalSelectionItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "personalSelections_itemDate_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).p;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            String upperCase = personalSharingUiModel.f62652f.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            TextKt.c(upperCase, modifierE3, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
            Modifier modifierE4 = ModifierExtKt.e(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("PersonalSelectionItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "personalSelections_itemTitle_text");
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48426f;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            int i4 = TextAlign.f10961e;
            TextKt.c(personalSharingUiModel.d, modifierE4, j3, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 130040);
            GapComposer gapComposer = gapComposerH;
            if (personalSharingUiModel.g.length() > 0) {
                TextKt.c(personalSharingUiModel.g, ModifierExtKt.e(PaddingKt.k(PaddingKt.m(n00.i(gapComposer, 1508926212, "PersonalSelectionItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "personalSelections_itemDescription_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 130040);
                gapComposer = gapComposer;
                z = false;
                gapComposer.Z(false);
            } else {
                z = false;
                gapComposer.L(1509431047);
                gapComposer.Z(false);
            }
            Modifier modifierD = SizeKt.d(PaddingKt.m(n00.g("PersonalSelectionItem", "personalSelections_itemDiscover_button"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, 5), 1.0f);
            String strC = StringResources_androidKt.c(gapComposer, R.string.discover_cta);
            ConfigurationButton configurationButton = ((LVButtonConfigs) gapComposer.k(LVButtonKt.f48455b)).f48446a;
            boolean z2 = (i3 & 112) == 32 ? true : z;
            if ((i3 & 14) == 4) {
                z = true;
            }
            boolean z3 = z | z2;
            Object objX = gapComposer.x();
            if (z3 || objX == Composer.Companion.f7939a) {
                function3 = function2;
                objX = new jm0(function3, personalSharingUiModel, 8);
                gapComposer.q(objX);
            } else {
                function3 = function2;
            }
            GapComposer gapComposer2 = gapComposer;
            LVButtonKt.b(0, 504, gapComposer2, modifierD, configurationButton, null, null, strC, (Function0) objX, false, false, false);
            gapComposerH = gapComposer2;
            gapComposerH.Z(true);
        } else {
            function3 = function2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(personalSharingUiModel, function3, i2, 26);
        }
    }

    public static final void b(PaddingValuesImpl paddingValuesImpl, List list, String str, Function2 function2, Function1 function1, Composer composer, int i2) {
        int i3;
        Object obj;
        GapComposer gapComposerH = composer.h(1942435767);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(paddingValuesImpl) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            obj = function2;
            i3 |= gapComposerH.y(obj) ? 2048 : 1024;
        } else {
            obj = function2;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            int i4 = 57344 & i3;
            int i5 = i3 & 896;
            boolean z = (i4 == 16384) | (i5 == 256);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new hd0(str, function1);
                gapComposerH.q(objX);
            }
            ScrollProgressTrackerKt.c(lazyListStateA, (Function1) objX, gapComposerH, 0);
            Modifier modifierE = ModifierExtKt.e(PaddingKt.h(new DTFunctionNameModifier("PersonalSelectionsList"), paddingValuesImpl).o(SizeKt.f5052c), "personalSelections_list_view");
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            boolean zY = gapComposerH.y(list) | (i4 == 16384) | (i5 == 256) | ((i3 & 7168) == 2048);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                k3 k3Var = new k3(list, function1, str, obj, 27);
                gapComposerH.q(k3Var);
                objX2 = k3Var;
            }
            LazyDslKt.a(modifierE, lazyListStateA, paddingValuesImplE, spacedAlignedF, null, null, false, null, (Function1) objX2, gapComposerH, 0, 488);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3((PaddingValues) paddingValuesImpl, list, (Object) str, function2, function1, i2, 20);
        }
    }

    public static final void c(PaddingValues paddingValues, List list, String str, Function2 function2, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(254724604);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(paddingValues) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("PersonalSelectionsListContainer"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), paddingValues).o(SizeKt.f5052c);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            b(PaddingKt.b(LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), list, str, function2, function1, gapComposerH, i3 & 65520);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(paddingValues, list, (Object) str, function2, function1, i2, 18);
        }
    }

    public static final void d(ComposableLambdaImpl composableLambdaImpl, PersonalSelectionsListUiModel personalSelectionsListUiModel, final Function2 function2, final Function1 function1, Composer composer, int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        int i3;
        GapComposer gapComposer;
        personalSelectionsListUiModel.getClass();
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-807312158);
        if ((i2 & 6) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i3 = (gapComposerH.y(composableLambdaImpl2) ? 4 : 2) | i2;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(personalSelectionsListUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final List list = personalSelectionsListUiModel.f62643a;
            final List list2 = personalSelectionsListUiModel.f62644b;
            final boolean z = !list.isEmpty();
            final boolean z2 = !list2.isEmpty();
            gapComposer = gapComposerH;
            ScaffoldKt.a(n00.g("PersonalSelectionsListScreen", "personalSelections_screen_view"), composableLambdaImpl2, null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(2128690225, new Function3() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.c
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
                        boolean z3 = z;
                        boolean z4 = z2;
                        List list3 = list;
                        List list4 = list2;
                        Function2 function3 = function2;
                        Function1 function4 = function1;
                        if (z3 && z4) {
                            composer2.L(618523591);
                            PersonalSelectionsListScreenKt.e(paddingValues, list3, list4, function3, function4, composer2, iIntValue & 14);
                            composer2.F();
                        } else {
                            composer2.L(618947919);
                            Pair pair = z3 ? new Pair("my_personal_in_store_selection", PersonalSelectionsListTrackingUiModel.InStoreScreen.f62640a) : new Pair("my_personal_advisor_curation", PersonalSelectionsListTrackingUiModel.AdvisorCurationScreen.f62637a);
                            String str = (String) pair.f71705b;
                            PersonalSelectionsListTrackingUiModel personalSelectionsListTrackingUiModel = (PersonalSelectionsListTrackingUiModel) pair.f71706c;
                            Unit unit = Unit.f71739a;
                            boolean zK = composer2.K(function4) | composer2.y(personalSelectionsListTrackingUiModel);
                            Object objX = composer2.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new PersonalSelectionsListScreenKt$PersonalSelectionsListScreen$1$1$1(function4, personalSelectionsListTrackingUiModel, null);
                                composer2.q(objX);
                            }
                            EffectsKt.e(composer2, unit, (Function2) objX);
                            if (!z3) {
                                list3 = z4 ? list4 : EmptyList.f71768b;
                            }
                            PersonalSelectionsListScreenKt.c(paddingValues, list3, str, function3, function4, composer2, iIntValue & 14);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, ((i3 << 3) & 112) | 805306368, 508);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(composableLambdaImpl, personalSelectionsListUiModel, function2, function1, i2);
        }
    }

    public static final void e(PaddingValues paddingValues, List list, List list2, Function2 function2, Function1 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(2003803588);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(paddingValues) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(list2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List listP = CollectionsKt.P(StringResources_androidKt.c(gapComposerH, SelectionTypeUiModel.IN_STORE.getTitleRes()), StringResources_androidKt.c(gapComposerH, SelectionTypeUiModel.ADVISOR_CURATION.getTitleRes()));
            boolean zK = gapComposerH.K(listP);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new db(listP, 11);
                gapComposerH.q(objX);
            }
            final PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            final SegmentedControlState segmentedControlStateC = LVSegmentedControlKt.c(pagerStateB.k(), gapComposerH, listP);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new LinkedHashSet();
                gapComposerH.q(objX3);
            }
            Set set = (Set) objX3;
            Integer numValueOf = Integer.valueOf(pagerStateB.k());
            boolean zK2 = gapComposerH.K(pagerStateB) | ((i3 & 57344) == 16384);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$1$1(pagerStateB, function1, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX4);
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("PersonalSelectionsWithTabs"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), paddingValues);
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = modifierH.o(fillElement);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            Modifier modifierE = ModifierExtKt.e(PaddingKt.i(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "PersonalSelectionsWithTabs", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e), "personalSelections_segmentedControl_view");
            boolean zY = gapComposerH.y(coroutineScope) | gapComposerH.K(pagerStateB) | gapComposerH.K(segmentedControlStateC);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new Function0() { // from class: com.vuitton.android.presentation.screen.personalselections.list.components.d
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        BuildersKt.c(coroutineScope, null, null, new PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$2$1$1$1(pagerStateB, segmentedControlStateC, null), 3);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX5);
            }
            LVSegmentedControlKt.a(modifierE, segmentedControlStateC, true, null, false, (Function0) objX5, gapComposerH, KyberEngine.KyberPolyBytes, 24);
            PagerKt.a(pagerStateB, ModifierExtKt.e(new DTFunctionNameModifier("PersonalSelectionsWithTabs").o(fillElement), "personalSelections_pager_view"), null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, null, null, null, ComposableLambdaKt.b(-1017842053, new rl(list, list2, function2, set, function1), gapComposerH), gapComposerH, 100663296, 24576, 16124);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(paddingValues, list, (Object) list2, function2, function1, i2, 19);
        }
    }
}
