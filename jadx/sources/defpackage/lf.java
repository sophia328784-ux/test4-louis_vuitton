package defpackage;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation3.runtime.NavBackStack;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.editorial.components.carousels.CarouselSKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.components.ComposableSingletons$CatalogCategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairProductComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step3StateUIModel;
import com.vuitton.android.presentation.screen.feed.FeedBottomSheet;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import com.vuitton.android.presentation.screen.feed.components.bottomsheets.CalendarEventBottomSheetContentKt;
import com.vuitton.android.presentation.screen.feed.components.bottomsheets.PermissionBottomSheetContentKt;
import com.vuitton.android.presentation.screen.feed.components.c;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpTraceabilityKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ComposableSingletons$ContextualSizingScreenKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeBottomBarKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.WearingCarouselKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTracker;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.WearingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EditoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.plp.components.composables.PSPComposableKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.reinsurance.components.ReinsuranceListKt;
import com.vuitton.android.presentation.screen.search.components.SearchRoutes;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lf implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76017c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76019f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76020h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76021i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76022j;

    public /* synthetic */ lf(SnackbarHostState snackbarHostState, DistantRepairCalendarViewState distantRepairCalendarViewState, Function2 function2, String str, Function0 function0, MutableState mutableState, String str2, Function1 function1) {
        this.f76016b = 3;
        this.f76018e = snackbarHostState;
        this.f76019f = distantRepairCalendarViewState;
        this.f76020h = function2;
        this.d = str;
        this.g = function0;
        this.f76021i = mutableState;
        this.f76022j = str2;
        this.f76017c = function1;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0161  */
    /* JADX WARN: Code duplicated, block: B:49:0x016d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0170  */
    /* JADX WARN: Code duplicated, block: B:53:0x0176  */
    /* JADX WARN: Code duplicated, block: B:54:0x0179  */
    /* JADX WARN: Code duplicated, block: B:57:0x0181  */
    /* JADX WARN: Code duplicated, block: B:58:0x0184  */
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        Composer composer2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        Composer composer3;
        int i2 = this.f76016b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = 2;
        Object obj4 = this.f76022j;
        Object obj5 = this.f76021i;
        Object obj6 = this.f76020h;
        Object obj7 = this.g;
        Object obj8 = this.d;
        Object obj9 = this.f76017c;
        Object obj10 = this.f76019f;
        Object obj11 = this.f76018e;
        switch (i2) {
            case 0:
                BookingUiModel bookingUiModel = (BookingUiModel) obj11;
                List list = (List) obj10;
                Function1 function1 = (Function1) obj9;
                Function2 function2 = (Function2) obj6;
                Function2 function3 = (Function2) obj5;
                Function2 function4 = (Function2) obj4;
                Function1 function5 = (Function1) obj8;
                Function1 function6 = (Function1) obj7;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer4.K(paddingValues) ? 4 : 2;
                }
                if (composer4.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(BackgroundKt.b(new DTFunctionNameModifier("BookingDetailsScreen$lambda$9").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer4).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), Call.Parameters.DEFAULT_CAMERA_ZOOM, paddingValues.getF5031b(), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer4.n();
                    Modifier modifierC = ComposedModifierKt.c(composer4, modifierM);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function0);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer4, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer4, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer4, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer4, modifierC, ComposeUiNode.Companion.d);
                    if (bookingUiModel != null) {
                        composer4.L(633824878);
                        composer = composer4;
                        BookingDetailsScreenKt.d(bookingUiModel, list, function1, function2, function3, function4, function5, function6, composer, 6);
                        composer.F();
                    } else {
                        composer = composer4;
                        composer.L(634318832);
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 1:
                CatalogViewState catalogViewState = (CatalogViewState) obj11;
                Modifier modifierE = (Modifier) obj10;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj7;
                Function1 function7 = (Function1) obj9;
                LazyListState lazyListState = (LazyListState) obj6;
                Function1 function8 = (Function1) obj8;
                LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) obj5;
                Function0 function9 = (Function0) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "CatalogCategoryScreen$lambda$0");
                }
                paddingValues2.getClass();
                if (composer5.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (catalogViewState.f55356c) {
                        ProgressViewKt.a(pq0.j(-1562696779, composer5, "CatalogCategoryScreen$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer5).f48361b.m, false, composer5, 6, 4);
                        composer5.F();
                    } else {
                        Composer composer6 = composer5;
                        composer6.L(-1562313495);
                        CatalogUiModel catalogUiModel = catalogViewState.f55354a;
                        if (catalogUiModel == null) {
                            composer6.L(-1562313496);
                            composer6.F();
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-1562313495, composer6, "CatalogCategoryScreen$lambda$0");
                            FillElement fillElement = SizeKt.f5052c;
                            Modifier modifier = modifierE;
                            CatalogCategoryScreenKt.b(ModifierExtKt.e(ClipKt.b(dTFunctionNameModifierJ.o(fillElement)), "category_backgroundAsset_view"), catalogUiModel.f55352a, catalogViewState.g.f51775a, composer6, 0);
                            BoxKt.a(BackgroundKt.b(pq0.i("CatalogCategoryScreen$lambda$0", fillElement), Color.b(LVAppDesignKitTheme.h(composer6).f48403c, LVAppDesignKitTheme.c(composer6).f48361b.f48378f), rectangleShapeKt$RectangleShape$1), composer6, 0);
                            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CatalogCategoryScreen$lambda$0");
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer6, 0);
                            int iHashCode2 = Long.hashCode(composer6.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer6.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer6, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            Function0 function10 = ComposeUiNode.Companion.f9641b;
                            if (composer6.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer6.B();
                            if (composer6.getS()) {
                                composer6.C(function10);
                            } else {
                                composer6.o();
                            }
                            Function2 function11 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer6, columnMeasurePolicyA, function11);
                            Function2 function12 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer6, persistentCompositionLocalMapN2, function12);
                            Integer numValueOf = Integer.valueOf(iHashCode2);
                            Function2 function13 = ComposeUiNode.Companion.g;
                            Updater.c(composer6, numValueOf, function13);
                            Function1 function14 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer6, function14);
                            Function2 function15 = ComposeUiNode.Companion.d;
                            Updater.c(composer6, modifierC2, function15);
                            Modifier modifierD = WindowInsetsPadding_androidKt.d(modifier);
                            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
                            float f2 = TopAppBarDefaults.f7433a;
                            Color.f8866b.getClass();
                            TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(Color.f8870h, 0L, composer6, 62);
                            composer6 = composer6;
                            ComposableSingletons$CatalogCategoryScreenKt.f55302a.getClass();
                            AppBarKt.c(ComposableSingletons$CatalogCategoryScreenKt.f55303b, modifierD, ComposableSingletons$CatalogCategoryScreenKt.f55304c, ComposableLambdaKt.b(727241200, new g1(catalogViewState, lVModalBottomSheetState, function7, 7), composer6), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsetsA, topAppBarColorsD, composer6, 3462, 144);
                            Modifier modifierI = pq0.i("CatalogCategoryScreen$lambda$0", fillElement);
                            MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode3 = Long.hashCode(composer6.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer6.n();
                            Modifier modifierC3 = ComposedModifierKt.c(composer6, modifierI);
                            if (composer6.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer6.B();
                            if (composer6.getS()) {
                                composer6.C(function10);
                            } else {
                                composer6.o();
                            }
                            Updater.c(composer6, measurePolicyD2, function11);
                            Updater.c(composer6, persistentCompositionLocalMapN3, function12);
                            cj.s(iHashCode3, composer6, function13, composer6, function14);
                            Modifier modifierC4 = n00.c(composer6, modifierC3, function15, "CatalogCategoryScreen$lambda$0", 1.0f);
                            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(LVAppDesignKitTheme.l(composer6).f48416e, LVAppDesignKitTheme.l(composer6).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48418h, 4);
                            boolean zY = composer6.y(catalogUiModel) | composer6.K(lazyListState) | composer6.K(function8);
                            Object objX = composer6.x();
                            if (zY || objX == composer$Companion$Empty$1) {
                                objX = new n0(catalogUiModel, lazyListState, function8, 11);
                                composer6.q(objX);
                            }
                            LazyDslKt.a(modifierC4, lazyListState, paddingValuesImplE, null, horizontal, null, false, null, (Function1) objX, composer6, 196614, 472);
                            ContactUsUiModel contactUsUiModel = catalogViewState.f55358f;
                            int i4 = LVModalBottomSheetState.f48797e;
                            ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetState2, function7, function9, composer6, (i4 << 3) | (i4 << 6));
                            composer6.r();
                            composer6.r();
                            composer6.F();
                        }
                        composer6.F();
                    }
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 2:
                ContextualSizingTracker contextualSizingTracker = (ContextualSizingTracker) obj11;
                Function0 function16 = (Function0) obj10;
                PagerState pagerState = (PagerState) obj8;
                ArrayList arrayList = (ArrayList) obj7;
                PagerState pagerState2 = (PagerState) obj6;
                CoroutineScope coroutineScope = (CoroutineScope) obj5;
                Function1 function17 = (Function1) obj9;
                MutableState mutableState = (MutableState) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer7.K(paddingValues3) ? 4 : 2;
                }
                if (composer7.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierO = new DTFunctionNameModifier("ContextualSizingScreen$lambda$8").o(SizeKt.f5052c);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.n;
                    Modifier modifierM2 = PaddingKt.m(modifierO, PaddingKt.g(paddingValues3, (LayoutDirection) composer7.k(staticProvidableCompositionLocal)), Call.Parameters.DEFAULT_CAMERA_ZOOM, PaddingKt.f(paddingValues3, (LayoutDirection) composer7.k(staticProvidableCompositionLocal)), Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer7, 0);
                    int iHashCode4 = Long.hashCode(composer7.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer7.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer7, modifierM2);
                    ComposeUiNode.b0.getClass();
                    Function0 function18 = ComposeUiNode.Companion.f9641b;
                    if (composer7.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer7.B();
                    if (composer7.getS()) {
                        composer7.C(function18);
                    } else {
                        composer7.o();
                    }
                    Updater.c(composer7, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer7, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer7, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer7, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer7, modifierC5, ComposeUiNode.Companion.d);
                    FloatingTopBarType floatingTopBarType = FloatingTopBarType.Close;
                    String strC = StringResources_androidKt.c(composer7, R.string.alt_close);
                    boolean zY2 = composer7.y(contextualSizingTracker) | composer7.K(function16);
                    Object objX2 = composer7.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new pp(contextualSizingTracker, function16, mutableState, i3);
                        composer7.q(objX2);
                    }
                    LVFloatingTopBarKt.a(null, floatingTopBarType, null, null, strC, (Function0) objX2, null, null, composer7, 48, 205);
                    WearingUiModel wearingUiModel = (WearingUiModel) CollectionsKt.firstOrNull(((ModelSizeVariationUiModel) mutableState.getF10755b()).g);
                    String str7 = wearingUiModel != null ? wearingUiModel.f61539c : null;
                    String str8 = str7 == null ? "" : str7;
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer7).l;
                    long j2 = LVAppDesignKitTheme.c(composer7).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    TextKt.c(str8, com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.k(tr.d("ContextualSizingScreen$lambda$8", 1.0f), LVAppDesignKitTheme.l(composer7).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "contextualSizing_productName_text", null, 6), j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer7, 0, 0, 130040);
                    SpacerKt.a(composer7, SizeKt.f(new DTFunctionNameModifier("ContextualSizingScreen$lambda$8"), LVAppDesignKitTheme.l(composer7).g));
                    Modifier modifierA = ColumnScopeInstance.f4944a.a(SizeKt.d(new DTFunctionNameModifier("ContextualSizingScreen$lambda$8"), 1.0f), 1.0f, true);
                    Object objX3 = composer7.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new j6(21, mutableState);
                        composer7.q(objX3);
                    }
                    WearingCarouselKt.a(com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierA, "contextualSizing_mainAsset_image", (Function1) objX3, 2), pagerState, arrayList, composer7, KyberEngine.KyberPolyBytes);
                    SpacerKt.a(composer7, SizeKt.f(new DTFunctionNameModifier("ContextualSizingScreen$lambda$8"), LVAppDesignKitTheme.l(composer7).g));
                    String str9 = ((ModelSizeVariationUiModel) mutableState.getF10755b()).d;
                    TweenSpec tweenSpecC = AnimationSpecKt.c(600, 0, null, 6);
                    Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.k(tr.d("ContextualSizingScreen$lambda$8", 1.0f), LVAppDesignKitTheme.l(composer7).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "contextualSizing_productName_text", null, 6);
                    ComposableSingletons$ContextualSizingScreenKt.f61483a.getClass();
                    CrossfadeKt.b(str9, modifierA2, tweenSpecC, null, ComposableSingletons$ContextualSizingScreenKt.f61484b, composer7, 24960, 8);
                    SpacerKt.a(composer7, SizeKt.f(new DTFunctionNameModifier("ContextualSizingScreen$lambda$8"), LVAppDesignKitTheme.l(composer7).f48416e));
                    ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) mutableState.getF10755b();
                    Modifier modifierD2 = tr.d("ContextualSizingScreen$lambda$8", 1.0f);
                    boolean zY3 = composer7.y(contextualSizingTracker) | composer7.K(function17);
                    Object objX4 = composer7.x();
                    if (zY3 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new n0(contextualSizingTracker, function17, mutableState, 18);
                        composer7.q(objX4);
                    }
                    ModelSizeBottomBarKt.b(pagerState2, modifierD2, arrayList, modelSizeVariationUiModel, coroutineScope, (Function1) objX4, composer7, 48, 0);
                    composer7.r();
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 3:
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj11;
                DistantRepairCalendarViewState distantRepairCalendarViewState = (DistantRepairCalendarViewState) obj10;
                Function2 function19 = (Function2) obj6;
                String str10 = (String) obj8;
                Function0 function20 = (Function0) obj7;
                MutableState mutableState2 = (MutableState) obj5;
                String str11 = (String) obj4;
                Function1 function21 = (Function1) obj9;
                Composer composer8 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                float f3 = DistantRepairBottomSheetDatePickerKt.f57325a;
                ((ColumnScope) obj).getClass();
                if (composer8.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("DistantRepairBottomSheetDatePicker$lambda$4");
                    Dp.Companion companion = Dp.f11004c;
                    ScaffoldKt.a(SizeKt.f(dTFunctionNameModifier2, 560.0f), null, null, ComposableLambdaKt.b(-869431190, new g0(snackbarHostState, 19), composer8), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(69433459, new w0(distantRepairCalendarViewState, function19, str10, function20, mutableState2, str11, function21, 10), composer8), composer8, 805309446, 246);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 4:
                Step3StateUIModel step3StateUIModel = (Step3StateUIModel) obj6;
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                DistantRepairProductComponentKt.b((DistantRepairContactMethod) obj11, step3StateUIModel.f57411c, step3StateUIModel.f57410b, step3StateUIModel.f57409a, (List) obj10, (Function1) obj9, (Function1) obj8, (Function1) obj7, (Function1) obj5, (Function0) obj4, (Composer) obj2, 0);
                return Unit.f71739a;
            case 5:
                FeedViewModel feedViewModel = (FeedViewModel) obj11;
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj10;
                Context context = (Context) obj9;
                MutableState mutableState3 = (MutableState) obj8;
                MutableState mutableState4 = (MutableState) obj7;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj6;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj5;
                MutableState mutableState5 = (MutableState) obj4;
                Composer composer9 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer9.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    if (((FeedViewState) mutableState3.getF10755b()).f57931k instanceof FeedBottomSheet.CalendarEvent) {
                        composer9.L(-1606524721);
                        CalendarEventUiModel calendarEventUiModel = ((FeedViewState) mutableState3.getF10755b()).l;
                        FeedTab feedTab = (FeedTab) mutableState4.getF10755b();
                        c cVar = new c(feedViewModel, context, ref$ObjectRef, managedActivityResultLauncher, 0);
                        c cVar2 = new c(feedViewModel, context, ref$ObjectRef, managedActivityResultLauncher, 1);
                        boolean zY4 = composer9.y(feedViewModel);
                        Object objX5 = composer9.x();
                        if (zY4 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new hx(feedViewModel, 2);
                            composer9.q(objX5);
                        }
                        CalendarEventBottomSheetContentKt.a(calendarEventUiModel, feedTab, cVar, cVar2, (Function0) objX5, composer9, 0);
                        composer2 = composer9;
                        composer2.F();
                    } else {
                        composer2 = composer9;
                        composer2.L(1738052498);
                        composer2.F();
                    }
                    if (Intrinsics.c(((PermissionsUiModel) mutableState5.getF10755b()).f62372a, PermissionsBottomSheet.None.f62367f)) {
                        composer2.L(1739006740);
                        composer2.F();
                    } else {
                        composer2.L(1738197578);
                        PermissionsUiModel permissionsUiModel = (PermissionsUiModel) mutableState5.getF10755b();
                        boolean zY5 = composer2.y(permissionsViewModel);
                        Object objX6 = composer2.x();
                        if (zY5 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new up(permissionsViewModel, 2);
                            composer2.q(objX6);
                        }
                        Function0 function22 = (Function0) objX6;
                        boolean zY6 = composer2.y(context);
                        Object objX7 = composer2.x();
                        if (zY6 || objX7 == composer$Companion$Empty$1) {
                            objX7 = new je(context, 7);
                            composer2.q(objX7);
                        }
                        PermissionBottomSheetContentKt.a(permissionsUiModel, function22, (Function0) objX7, composer2, 0);
                        composer2.F();
                    }
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 6:
                OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) obj11;
                Function0 function23 = (Function0) obj10;
                Function0 function24 = (Function0) obj7;
                Function0 function25 = (Function0) obj4;
                Function1 function26 = (Function1) obj9;
                Function2 function27 = (Function2) obj6;
                Function2 function28 = (Function2) obj5;
                Function1 function29 = (Function1) obj8;
                Composer composer10 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer10.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    boolean zK = composer10.K(function25) | composer10.K(function26);
                    Object objX8 = composer10.x();
                    if (zK || objX8 == composer$Companion$Empty$1) {
                        objX8 = new wz(function25, function26, 3);
                        composer10.q(objX8);
                    }
                    OsaLocationFormScreenKt.a(osaLocationFormViewState, function23, function24, (Function0) objX8, function27, function28, function29, composer10, 0);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 7:
                ProductUiModel productUiModel = (ProductUiModel) obj11;
                PdpViewState pdpViewState = (PdpViewState) obj10;
                Function1 function30 = (Function1) obj9;
                GA4Tracker gA4Tracker = (GA4Tracker) obj6;
                PdpTracker pdpTracker = (PdpTracker) obj5;
                Function1 function31 = (Function1) obj8;
                ImmutableList immutableList = (ImmutableList) obj4;
                Function1 function32 = (Function1) obj7;
                Composer composer11 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer11.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    SpacerKt.a(composer11, SizeKt.f(new DTFunctionNameModifier("PdpMainView$lambda$3$0$14"), LVAppDesignKitTheme.l(composer11).f48417f));
                    EditoUiModel editoUiModel = productUiModel.s;
                    if ((editoUiModel != null ? editoUiModel.f61684b : null) != null) {
                        composer11.L(792568628);
                        EditoUiModel editoUiModel2 = productUiModel.s;
                        str = editoUiModel2.f61684b;
                        if (str == null) {
                            str2 = "";
                        } else {
                            str2 = str;
                        }
                        str3 = editoUiModel2.f61685c;
                        if (str3 == null) {
                            str4 = "";
                        } else {
                            str4 = str3;
                        }
                        String str12 = editoUiModel2.d;
                        str5 = pdpViewState.u;
                        if (str5 == null) {
                            str6 = "";
                        } else {
                            str6 = str5;
                        }
                        PdpTraceabilityKt.a(null, str2, str4, str12, str6, function30, composer11, 0);
                        composer3 = composer11;
                        composer3.F();
                    } else {
                        if ((editoUiModel != null ? editoUiModel.f61685c : null) != null) {
                            composer11.L(792568628);
                            EditoUiModel editoUiModel3 = productUiModel.s;
                            str = editoUiModel3.f61684b;
                            if (str == null) {
                                str2 = "";
                            } else {
                                str2 = str;
                            }
                            str3 = editoUiModel3.f61685c;
                            if (str3 == null) {
                                str4 = "";
                            } else {
                                str4 = str3;
                            }
                            String str13 = editoUiModel3.d;
                            str5 = pdpViewState.u;
                            if (str5 == null) {
                                str6 = "";
                            } else {
                                str6 = str5;
                            }
                            PdpTraceabilityKt.a(null, str2, str4, str13, str6, function30, composer11, 0);
                            composer3 = composer11;
                            composer3.F();
                        } else {
                            composer11.L(792941496);
                            composer11.F();
                            composer3 = composer11;
                        }
                    }
                    boolean z = pdpViewState.p;
                    boolean z2 = pdpViewState.m;
                    if (!z || z2 || (!pdpViewState.r && pdpViewState.q.isEmpty())) {
                        composer3.L(796103000);
                        composer3.F();
                    } else {
                        composer3.L(793228649);
                        Object objX9 = composer3.x();
                        if (objX9 == composer$Companion$Empty$1) {
                            objX9 = SnapshotStateKt.g(Boolean.FALSE);
                            composer3.q(objX9);
                        }
                        MutableState mutableState6 = (MutableState) objX9;
                        Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("PdpMainView$lambda$3$0$14"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, 5);
                        boolean zY7 = composer3.y(pdpViewState) | composer3.y(gA4Tracker);
                        Object objX10 = composer3.x();
                        if (zY7 || objX10 == composer$Companion$Empty$1) {
                            objX10 = new cl0(pdpViewState, gA4Tracker, mutableState6, i3);
                            composer3.q(objX10);
                        }
                        Modifier modifierB = com.vuitton.android.presentation.extensions.ModifierExtKt.b(modifierM3, (Function1) objX10);
                        String strC2 = StringResources_androidKt.c(composer3, R.string.Pdp_YMAL);
                        ImmutableList immutableList2 = pdpViewState.q;
                        boolean z3 = pdpViewState.r;
                        LVColorScheme lVColorScheme = LVColorScheme.DEFAULT;
                        float f4 = LVAppDesignKitTheme.l(composer3).f48416e;
                        boolean zY8 = composer3.y(pdpTracker) | composer3.y(pdpViewState) | composer3.y(gA4Tracker) | composer3.K(function31);
                        Object objX11 = composer3.x();
                        if (zY8 || objX11 == composer$Companion$Empty$1) {
                            objX11 = new uv(pdpTracker, pdpViewState, gA4Tracker, function31, 25);
                            composer3.q(objX11);
                        }
                        Function2 function33 = (Function2) objX11;
                        boolean zY9 = composer3.y(pdpTracker);
                        Object objX12 = composer3.x();
                        if (zY9 || objX12 == composer$Companion$Empty$1) {
                            objX12 = new x60(pdpTracker, 26);
                            composer3.q(objX12);
                        }
                        CarouselSKt.a(modifierB, strC2, null, null, immutableList2, true, z3, lVColorScheme, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, true, function33, null, (Function0) objX12, null, composer3, 12779520, 48, 42508);
                        composer3.F();
                    }
                    if (immutableList == null || immutableList.isEmpty() || z2) {
                        composer3.L(796545432);
                        composer3.F();
                    } else {
                        ReinsuranceListKt.b(BackgroundKt.b(PaddingKt.m(pq0.j(796187940, composer3, "PdpMainView$lambda$3$0$14"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer3).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), immutableList, 0, function32, composer3, 0, 4);
                        composer3.F();
                    }
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            default:
                PSPViewModel pSPViewModel = (PSPViewModel) obj11;
                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) obj10;
                Function0 function34 = (Function0) obj9;
                String str14 = (String) obj8;
                Function0 function35 = (Function0) obj7;
                NavBackStack navBackStack = (NavBackStack) obj6;
                Function0 function36 = (Function0) obj5;
                Function0 function37 = (Function0) obj4;
                Composer composer12 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ((SearchRoutes.PSP) obj).getClass();
                if (composer12.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    PSPStyle pSPStyle = PSPStyle.SEARCH;
                    boolean zK2 = composer12.K(function34);
                    Object objX13 = composer12.x();
                    if (zK2 || objX13 == composer$Companion$Empty$1) {
                        objX13 = new bo0(function34, 6);
                        composer12.q(objX13);
                    }
                    Function1 function38 = (Function1) objX13;
                    boolean zY10 = composer12.y(quickAccessFiltersViewModel) | composer12.K(str14) | composer12.K(function35) | composer12.y(navBackStack);
                    Object objX14 = composer12.x();
                    if (zY10 || objX14 == composer$Companion$Empty$1) {
                        objX14 = new r0(quickAccessFiltersViewModel, str14, function35, navBackStack, 26);
                        composer12.q(objX14);
                    }
                    Function0 function39 = (Function0) objX14;
                    boolean zY11 = composer12.y(quickAccessFiltersViewModel) | composer12.K(function36);
                    Object objX15 = composer12.x();
                    if (zY11 || objX15 == composer$Companion$Empty$1) {
                        objX15 = new sb0(quickAccessFiltersViewModel, function36, 2);
                        composer12.q(objX15);
                    }
                    Function0 function40 = (Function0) objX15;
                    boolean zY12 = composer12.y(quickAccessFiltersViewModel) | composer12.K(function37);
                    Object objX16 = composer12.x();
                    if (zY12 || objX16 == composer$Companion$Empty$1) {
                        objX16 = new sb0(quickAccessFiltersViewModel, function37, 3);
                        composer12.q(objX16);
                    }
                    PSPComposableKt.a(pSPViewModel, quickAccessFiltersViewModel, pSPStyle, function38, function39, function40, (Function0) objX16, composer12, KyberEngine.KyberPolyBytes);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ lf(BookingUiModel bookingUiModel, List list, Function1 function1, Function2 function2, Function2 function3, Function2 function4, Function1 function5, Function1 function6) {
        this.f76016b = 0;
        this.f76018e = bookingUiModel;
        this.f76019f = list;
        this.f76017c = function1;
        this.f76020h = function2;
        this.f76021i = function3;
        this.f76022j = function4;
        this.d = function5;
        this.g = function6;
    }

    public /* synthetic */ lf(CatalogViewState catalogViewState, Modifier modifier, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, LazyListState lazyListState, Function1 function2, LVModalBottomSheetState lVModalBottomSheetState2, Function0 function0) {
        this.f76016b = 1;
        this.f76018e = catalogViewState;
        this.f76019f = modifier;
        this.g = lVModalBottomSheetState;
        this.f76017c = function1;
        this.f76020h = lazyListState;
        this.d = function2;
        this.f76021i = lVModalBottomSheetState2;
        this.f76022j = function0;
    }

    public /* synthetic */ lf(DistantRepairContactMethod distantRepairContactMethod, Step3StateUIModel step3StateUIModel, List list, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function0) {
        this.f76016b = 4;
        this.f76018e = distantRepairContactMethod;
        this.f76020h = step3StateUIModel;
        this.f76019f = list;
        this.f76017c = function1;
        this.d = function2;
        this.g = function3;
        this.f76021i = function4;
        this.f76022j = function0;
    }

    public /* synthetic */ lf(OsaLocationFormViewState osaLocationFormViewState, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function2 function4, Function2 function5, Function1 function6) {
        this.f76016b = 6;
        this.f76018e = osaLocationFormViewState;
        this.f76019f = function0;
        this.g = function1;
        this.f76022j = function2;
        this.f76017c = function3;
        this.f76020h = function4;
        this.f76021i = function5;
        this.d = function6;
    }

    public /* synthetic */ lf(ContextualSizingTracker contextualSizingTracker, Function0 function0, PagerState pagerState, ArrayList arrayList, PagerState pagerState2, CoroutineScope coroutineScope, Function1 function1, MutableState mutableState) {
        this.f76016b = 2;
        this.f76018e = contextualSizingTracker;
        this.f76019f = function0;
        this.d = pagerState;
        this.g = arrayList;
        this.f76020h = pagerState2;
        this.f76021i = coroutineScope;
        this.f76017c = function1;
        this.f76022j = mutableState;
    }

    public /* synthetic */ lf(ProductUiModel productUiModel, PdpViewState pdpViewState, Function1 function1, GA4Tracker gA4Tracker, PdpTracker pdpTracker, Function1 function2, ImmutableList immutableList, Function1 function3) {
        this.f76016b = 7;
        this.f76018e = productUiModel;
        this.f76019f = pdpViewState;
        this.f76017c = function1;
        this.f76020h = gA4Tracker;
        this.f76021i = pdpTracker;
        this.d = function2;
        this.f76022j = immutableList;
        this.g = function3;
    }

    public /* synthetic */ lf(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, int i2) {
        this.f76016b = i2;
        this.f76018e = obj;
        this.f76019f = obj2;
        this.f76017c = obj3;
        this.d = obj4;
        this.g = obj5;
        this.f76020h = obj6;
        this.f76021i = obj7;
        this.f76022j = obj8;
    }
}
