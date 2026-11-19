package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposableSingletons$CompositionKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDragHandleKt;
import com.vuitton.android.presentation.common.editorial.components.carousels.ComposableSingletons$CarouselSKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$CollapsingDetailListKt;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryBottomSheetContentKt;
import com.vuitton.android.presentation.screen.catalog.components.ComposableSingletons$CatalogCategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.components.ComposableSingletons$CatalogSubcategoryBottomSheetContentKt;
import com.vuitton.android.presentation.screen.catalog.components.ComposableSingletons$CatalogSubcategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.MocksKt;
import com.vuitton.android.presentation.screen.catalog.models.SectionUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.ComposableSingletons$DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.ComposableSingletons$DistantRepairFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.ComposableSingletons$DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedDiscoverLoadingScreenKt;
import com.vuitton.android.presentation.screen.feed.components.FeedDiscoverLoadingScreenKt;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlItem;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsErrorScreenKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsLoadingScreenKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.ComposableSingletons$CancellationReasonsErrorScreenKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.ComposableSingletons$CancellationReasonsLoadingScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$CatalogStoreModeKt;
import com.vuitton.android.presentation.utils.MockUtilsKt;
import java.time.LocalDate;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pn implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78896b;

    public /* synthetic */ pn(int i2) {
        this.f78896b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        List list;
        SectionUiModel sectionUiModel;
        List list2;
        int i2 = this.f78896b;
        int i3 = 4;
        int i4 = 5;
        int i5 = 29;
        int i6 = 6;
        CategoryUiModel categoryUiModel = null;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i7 = 2;
        int i8 = 3;
        int i9 = 1;
        boolean z = false;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$CancellationReasonsErrorScreenKt composableSingletons$CancellationReasonsErrorScreenKt = ComposableSingletons$CancellationReasonsErrorScreenKt.f63622a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    CancellationReasonsErrorScreenKt.a(ComposableSingletons$CancellationReasonsErrorScreenKt.f63624c, composer, 6);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$CancellationReasonsLoadingScreenKt composableSingletons$CancellationReasonsLoadingScreenKt = ComposableSingletons$CancellationReasonsLoadingScreenKt.f63625a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$CancellationReasonsLoadingScreenKt composableSingletons$CancellationReasonsLoadingScreenKt2 = ComposableSingletons$CancellationReasonsLoadingScreenKt.f63625a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    CancellationReasonsLoadingScreenKt.a(ComposableSingletons$CancellationReasonsLoadingScreenKt.f63627c, composer3, 6);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).intValue();
                ComposableSingletons$CarouselSKt composableSingletons$CarouselSKt = ComposableSingletons$CarouselSKt.f50753a;
                ((CarouselSItemUiModel) obj).getClass();
                return Unit.f71739a;
            case 4:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ComposableSingletons$CarouselSKt composableSingletons$CarouselSKt2 = ComposableSingletons$CarouselSKt.f50753a;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Object objX = composer4.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new rn(z ? 1 : 0);
                        composer4.q(objX);
                    }
                    LazyDslKt.a(null, null, null, null, null, null, false, null, (Function1) objX, composer4, 805306368, 511);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).intValue();
                ComposableSingletons$CarouselSKt composableSingletons$CarouselSKt3 = ComposableSingletons$CarouselSKt.f50753a;
                ((CarouselSItemUiModel) obj).getClass();
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).intValue();
                ComposableSingletons$CarouselSKt composableSingletons$CarouselSKt4 = ComposableSingletons$CarouselSKt.f50753a;
                ((CarouselSItemUiModel) obj).getClass();
                return Unit.f71739a;
            case 7:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogCategoryScreenKt composableSingletons$CatalogCategoryScreenKt = ComposableSingletons$CatalogCategoryScreenKt.f55302a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogCategoryScreenKt composableSingletons$CatalogCategoryScreenKt2 = ComposableSingletons$CatalogCategoryScreenKt.f55302a;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogCategoryScreenKt composableSingletons$CatalogCategoryScreenKt3 = ComposableSingletons$CatalogCategoryScreenKt.f55302a;
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    CatalogViewState catalogViewState = (CatalogViewState) MocksKt.f55371e.getF71699b();
                    Object objX2 = composer7.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new rn(i9);
                        composer7.q(objX2);
                    }
                    Function1 function1 = (Function1) objX2;
                    Object objX3 = composer7.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new rn(i7);
                        composer7.q(objX3);
                    }
                    Function1 function2 = (Function1) objX3;
                    Object objX4 = composer7.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new nn(26);
                        composer7.q(objX4);
                    }
                    Function0 function0 = (Function0) objX4;
                    Object objX5 = composer7.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new rn(i8);
                        composer7.q(objX5);
                    }
                    CatalogCategoryScreenKt.a(null, catalogViewState, function1, function2, function0, (Function1) objX5, composer7, 224640);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogCategoryScreenKt composableSingletons$CatalogCategoryScreenKt4 = ComposableSingletons$CatalogCategoryScreenKt.f55302a;
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    CompositionLocalKt.a(ContactUsTrackerEntryPointKt.f51125a.c(MockUtilsKt.f65861b), ComposableSingletons$CatalogCategoryScreenKt.d, composer8, 56);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogStoreModeKt composableSingletons$CatalogStoreModeKt = ComposableSingletons$CatalogStoreModeKt.f64862a;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    LVDragHandleKt.a(null, null, null, composer9, 0, 7);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 12:
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogSubcategoryBottomSheetContentKt composableSingletons$CatalogSubcategoryBottomSheetContentKt = ComposableSingletons$CatalogSubcategoryBottomSheetContentKt.f55305a;
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    LazyListState lazyListStateA = LazyListStateKt.a(0, composer10, 3);
                    EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = MocksKt.d;
                    List list3 = MocksKt.f55369b;
                    A11ySettings a11ySettings = new A11ySettings(false, false, false, 7, null);
                    Object objX6 = composer10.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new rn(i3);
                        composer10.q(objX6);
                    }
                    Function1 function3 = (Function1) objX6;
                    Object objX7 = composer10.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new rn(i4);
                        composer10.q(objX7);
                    }
                    CatalogSubcategoryBottomSheetContentKt.a(lazyListStateA, carouselMUiModel, list3, "Category", a11ySettings, function3, (Function1) objX7, composer10, 1772544);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogSubcategoryScreenKt composableSingletons$CatalogSubcategoryScreenKt = ComposableSingletons$CatalogSubcategoryScreenKt.f55307a;
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer11).H, composer11, 0), StringResources_androidKt.c(composer11, R.string.alt_back), null, LVAppDesignKitTheme.c(composer11).f48361b.m, composer11, 8, 4);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 14:
                Composer composer12 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogSubcategoryScreenKt composableSingletons$CatalogSubcategoryScreenKt2 = ComposableSingletons$CatalogSubcategoryScreenKt.f55307a;
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    CatalogUiModel catalogUiModel = ((CatalogViewState) MocksKt.f55371e.getF71699b()).f55354a;
                    if (catalogUiModel != null && (list = catalogUiModel.f55353b) != null && (sectionUiModel = (SectionUiModel) CollectionsKt.B(list)) != null && (list2 = sectionUiModel.f55376b) != null) {
                        categoryUiModel = (CategoryUiModel) CollectionsKt.B(list2);
                    }
                    if (categoryUiModel == null) {
                        composer12.L(793026061);
                        composer12.F();
                    } else {
                        composer12.L(793026062);
                        CompositionLocalKt.a(ContactUsTrackerEntryPointKt.f51125a.c(MockUtilsKt.f65861b), ComposableLambdaKt.b(-1703079646, new c(categoryUiModel, 16), composer12), composer12, 56);
                        composer12.F();
                    }
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer13 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                ComposableSingletons$CollapsingDetailListKt composableSingletons$CollapsingDetailListKt = ComposableSingletons$CollapsingDetailListKt.f50943a;
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("lambda_1725243758$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer13).f48417f, 7);
                    int i10 = AnnotatedString.f10418f;
                    TextKt.d(Html_androidKt.b("<ul>\n<li>Example 1</li>\n<li>Example 2</li>\n<li>Example 3</li>\n</ul>", null, 6), modifierM, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer13).f48427h, composer13, 0, 0, 262140);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer14 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                ComposableSingletons$CollapsingDetailListKt composableSingletons$CollapsingDetailListKt2 = ComposableSingletons$CollapsingDetailListKt.f50943a;
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    CollapsingDetailListKt.b(null, null, "Click me !", null, null, ComposableSingletons$CollapsingDetailListKt.f50945c, composer14, 196992, 27);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer15 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                ComposableSingletons$CollapsingDetailListKt composableSingletons$CollapsingDetailListKt3 = ComposableSingletons$CollapsingDetailListKt.f50943a;
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    CollapsingState collapsingState = CollapsingState.COLLAPSED;
                    CollapsingDetailListKt.c(null, CollectionsKt.P(new PanelInfoHtmlItem("This is an introduction", "Surprise !", "Click me", collapsingState, null, 16, null), new PanelInfoHtmlItem("This is an introduction", "Surprise !", "Click me", collapsingState, null, 16, null), new PanelInfoHtmlItem("This is an introduction", "Surprise !", "Click me", collapsingState, null, 16, null)), 0L, ComposableSingletons$CollapsingDetailListKt.d, ComposableSingletons$CollapsingDetailListKt.f50946e, null, composer15, 27648, 37);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer16 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                ComposableSingletons$CompositionKt composableSingletons$CompositionKt = ComposableSingletons$CompositionKt.f7928a;
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer17 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                ComposableSingletons$CompositionKt composableSingletons$CompositionKt2 = ComposableSingletons$CompositionKt.f7928a;
                if (composer17.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer18 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                ComposableSingletons$DistantRepairBottomSheetDatePickerKt composableSingletons$DistantRepairBottomSheetDatePickerKt = ComposableSingletons$DistantRepairBottomSheetDatePickerKt.f57290a;
                if (composer18.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    DistantRepairCalendarViewState distantRepairCalendarViewState = new DistantRepairCalendarViewState(InAppDispatchMockKt.f59833a, null, false, false, null, null, false, 126, null);
                    SnackbarHostState snackbarHostState = new SnackbarHostState();
                    Object objX8 = composer18.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new pn(21);
                        composer18.q(objX8);
                    }
                    Function2 function4 = (Function2) objX8;
                    Object objX9 = composer18.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new rn(10);
                        composer18.q(objX9);
                    }
                    DistantRepairBottomSheetDatePickerKt.a("", distantRepairCalendarViewState, snackbarHostState, function4, (Function1) objX9, null, null, composer18, 27654, 96);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 21:
                ComposableSingletons$DistantRepairBottomSheetDatePickerKt composableSingletons$DistantRepairBottomSheetDatePickerKt2 = ComposableSingletons$DistantRepairBottomSheetDatePickerKt.f57290a;
                ((LocalDate) obj).getClass();
                ((String) obj2).getClass();
                return Unit.f71739a;
            case 22:
                Composer composer19 = (Composer) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                ComposableSingletons$DistantRepairFormBottomSheetScreenKt composableSingletons$DistantRepairFormBottomSheetScreenKt = ComposableSingletons$DistantRepairFormBottomSheetScreenKt.f57210a;
                if (composer19.p(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda_651303564$lambda$0");
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer19, 0);
                    int iHashCode = Long.hashCode(composer19.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer19.n();
                    Modifier modifierC = ComposedModifierKt.c(composer19, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function5 = ComposeUiNode.Companion.f9641b;
                    if (composer19.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer19.B();
                    if (composer19.getS()) {
                        composer19.C(function5);
                    } else {
                        composer19.o();
                    }
                    Updater.c(composer19, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer19, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer19, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer19, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer19, modifierC, ComposeUiNode.Companion.d);
                    Object objX10 = composer19.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new tn(i8);
                        composer19.q(objX10);
                    }
                    Function0 function6 = (Function0) objX10;
                    Object objX11 = composer19.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new rn(12);
                        composer19.q(objX11);
                    }
                    DistantRepairFormBottomSheetScreenKt.a(0, function6, (Function1) objX11, composer19, 438);
                    composer19.r();
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer20 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                ComposableSingletons$DistantRepairFormBottomSheetScreenKt composableSingletons$DistantRepairFormBottomSheetScreenKt2 = ComposableSingletons$DistantRepairFormBottomSheetScreenKt.f57210a;
                if (composer20.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("lambda_1757014268$lambda$0");
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer20, 0);
                    int iHashCode2 = Long.hashCode(composer20.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer20.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer20, dTFunctionNameModifier2);
                    ComposeUiNode.b0.getClass();
                    Function0 function7 = ComposeUiNode.Companion.f9641b;
                    if (composer20.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer20.B();
                    if (composer20.getS()) {
                        composer20.C(function7);
                    } else {
                        composer20.o();
                    }
                    Updater.c(composer20, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer20, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer20, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer20, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer20, modifierC2, ComposeUiNode.Companion.d);
                    DistantRepairFormBottomSheetScreenKt.f(composer20, 0);
                    composer20.r();
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer21 = (Composer) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                ComposableSingletons$DistantRepairFormBottomSheetScreenKt composableSingletons$DistantRepairFormBottomSheetScreenKt3 = ComposableSingletons$DistantRepairFormBottomSheetScreenKt.f57210a;
                if (composer21.p(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("lambda_1759639067$lambda$0");
                    Arrangement$Top$1 arrangement$Top$3 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$3, Alignment.Companion.n, composer21, 0);
                    int iHashCode3 = Long.hashCode(composer21.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer21.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer21, dTFunctionNameModifier3);
                    ComposeUiNode.b0.getClass();
                    Function0 function8 = ComposeUiNode.Companion.f9641b;
                    if (composer21.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer21.B();
                    if (composer21.getS()) {
                        composer21.C(function8);
                    } else {
                        composer21.o();
                    }
                    Updater.c(composer21, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer21, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer21, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer21, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer21, modifierC3, ComposeUiNode.Companion.d);
                    Object objX12 = composer21.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new tn(i3);
                        composer21.q(objX12);
                    }
                    DistantRepairFormBottomSheetScreenKt.e((Function0) objX12, composer21, 6);
                    composer21.r();
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 25:
                Composer composer22 = (Composer) obj;
                int iIntValue22 = ((Integer) obj2).intValue();
                ComposableSingletons$DistantRepairFormBottomSheetScreenKt composableSingletons$DistantRepairFormBottomSheetScreenKt4 = ComposableSingletons$DistantRepairFormBottomSheetScreenKt.f57210a;
                if (composer22.p(iIntValue22 & 1, (iIntValue22 & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("lambda_2126645756$lambda$0");
                    Arrangement$Top$1 arrangement$Top$4 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(arrangement$Top$4, Alignment.Companion.n, composer22, 0);
                    int iHashCode4 = Long.hashCode(composer22.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer22.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer22, dTFunctionNameModifier4);
                    ComposeUiNode.b0.getClass();
                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                    if (composer22.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer22.B();
                    if (composer22.getS()) {
                        composer22.C(function9);
                    } else {
                        composer22.o();
                    }
                    Updater.c(composer22, columnMeasurePolicyA4, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer22, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer22, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer22, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer22, modifierC4, ComposeUiNode.Companion.d);
                    Object objX13 = composer22.x();
                    if (objX13 == composer$Companion$Empty$1) {
                        objX13 = new tn(i9);
                        composer22.q(objX13);
                    }
                    Function0 function10 = (Function0) objX13;
                    Object objX14 = composer22.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new tn(i7);
                        composer22.q(objX14);
                    }
                    DistantRepairFormBottomSheetScreenKt.b(function10, (Function0) objX14, composer22, 54);
                    composer22.r();
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 26:
                Composer composer23 = (Composer) obj;
                int iIntValue23 = ((Integer) obj2).intValue();
                ComposableSingletons$DistantRepairFormBottomSheetScreenKt composableSingletons$DistantRepairFormBottomSheetScreenKt5 = ComposableSingletons$DistantRepairFormBottomSheetScreenKt.f57210a;
                if (composer23.p(iIntValue23 & 1, (iIntValue23 & 3) != 2)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("lambda_372848681$lambda$0");
                    Arrangement$Top$1 arrangement$Top$5 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA5 = ColumnKt.a(arrangement$Top$5, Alignment.Companion.n, composer23, 0);
                    int iHashCode5 = Long.hashCode(composer23.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer23.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer23, dTFunctionNameModifier5);
                    ComposeUiNode.b0.getClass();
                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                    if (composer23.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer23.B();
                    if (composer23.getS()) {
                        composer23.C(function11);
                    } else {
                        composer23.o();
                    }
                    Updater.c(composer23, columnMeasurePolicyA5, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer23, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer23, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                    Updater.b(composer23, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer23, modifierC5, ComposeUiNode.Companion.d);
                    Object objX15 = composer23.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new nn(i5);
                        composer23.q(objX15);
                    }
                    Function0 function12 = (Function0) objX15;
                    Object objX16 = composer23.x();
                    if (objX16 == composer$Companion$Empty$1) {
                        objX16 = new tn(z ? 1 : 0);
                        composer23.q(objX16);
                    }
                    Function0 function13 = (Function0) objX16;
                    Object objX17 = composer23.x();
                    if (objX17 == composer$Companion$Empty$1) {
                        objX17 = new rn(11);
                        composer23.q(objX17);
                    }
                    DistantRepairFormBottomSheetScreenKt.d(function12, function13, (Function1) objX17, composer23, 438);
                    composer23.r();
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 27:
                Composer composer24 = (Composer) obj;
                int iIntValue24 = ((Integer) obj2).intValue();
                ComposableSingletons$DistantRepairFormComponentKt composableSingletons$DistantRepairFormComponentKt = ComposableSingletons$DistantRepairFormComponentKt.f57212a;
                if (composer24.p(iIntValue24 & 1, (iIntValue24 & 3) != 2)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    Object objX18 = composer24.x();
                    if (objX18 == composer$Companion$Empty$1) {
                        objX18 = EffectsKt.j(EmptyCoroutineContext.f71840b, composer24);
                        composer24.q(objX18);
                    }
                    CoroutineScope coroutineScope = (CoroutineScope) objX18;
                    DistantRepairFormViewState distantRepairFormViewState = new DistantRepairFormViewState(InAppDispatchMockKt.f59833a, null, null, null, null, null, false, null, null, null, null, 2046, null);
                    Object objX19 = composer24.x();
                    if (objX19 == composer$Companion$Empty$1) {
                        objX19 = new tn(7);
                        composer24.q(objX19);
                    }
                    Function0 function14 = (Function0) objX19;
                    Object objX20 = composer24.x();
                    if (objX20 == composer$Companion$Empty$1) {
                        objX20 = new rn(17);
                        composer24.q(objX20);
                    }
                    Function1 function15 = (Function1) objX20;
                    Object objX21 = composer24.x();
                    if (objX21 == composer$Companion$Empty$1) {
                        objX21 = new rn(18);
                        composer24.q(objX21);
                    }
                    Function1 function16 = (Function1) objX21;
                    Object objX22 = composer24.x();
                    if (objX22 == composer$Companion$Empty$1) {
                        objX22 = new rn(19);
                        composer24.q(objX22);
                    }
                    Function1 function17 = (Function1) objX22;
                    Object objX23 = composer24.x();
                    if (objX23 == composer$Companion$Empty$1) {
                        objX23 = new mn(i5);
                        composer24.q(objX23);
                    }
                    Function3 function18 = (Function3) objX23;
                    Object objX24 = composer24.x();
                    if (objX24 == composer$Companion$Empty$1) {
                        objX24 = new rn(13);
                        composer24.q(objX24);
                    }
                    Function1 function19 = (Function1) objX24;
                    Object objX25 = composer24.x();
                    if (objX25 == composer$Companion$Empty$1) {
                        objX25 = new rn(14);
                        composer24.q(objX25);
                    }
                    Function1 function20 = (Function1) objX25;
                    Object objX26 = composer24.x();
                    if (objX26 == composer$Companion$Empty$1) {
                        objX26 = new rn(15);
                        composer24.q(objX26);
                    }
                    Function1 function21 = (Function1) objX26;
                    Object objX27 = composer24.x();
                    if (objX27 == composer$Companion$Empty$1) {
                        objX27 = new tn(i4);
                        composer24.q(objX27);
                    }
                    Function0 function22 = (Function0) objX27;
                    Object objX28 = composer24.x();
                    if (objX28 == composer$Companion$Empty$1) {
                        objX28 = new tn(i6);
                        composer24.q(objX28);
                    }
                    Function0 function23 = (Function0) objX28;
                    Object objX29 = composer24.x();
                    if (objX29 == composer$Companion$Empty$1) {
                        objX29 = new tn(8);
                        composer24.q(objX29);
                    }
                    Function0 function24 = (Function0) objX29;
                    Object objX30 = composer24.x();
                    if (objX30 == composer$Companion$Empty$1) {
                        objX30 = new rn(16);
                        composer24.q(objX30);
                    }
                    Function1 function25 = (Function1) objX30;
                    Object objX31 = composer24.x();
                    if (objX31 == composer$Companion$Empty$1) {
                        objX31 = new pn(28);
                        composer24.q(objX31);
                    }
                    DistantRepairFormComponentKt.a(distantRepairFormViewState, coroutineScope, function14, function15, function16, function17, function18, function19, function20, function21, function22, function23, function24, function25, (Function2) objX31, composer24, 920350080, 28086);
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 28:
                ComposableSingletons$DistantRepairFormComponentKt composableSingletons$DistantRepairFormComponentKt2 = ComposableSingletons$DistantRepairFormComponentKt.f57212a;
                ((FormSectionTypeUiModel) obj).getClass();
                obj2.getClass();
                return Unit.f71739a;
            default:
                Composer composer25 = (Composer) obj;
                int iIntValue25 = ((Integer) obj2).intValue();
                ComposableSingletons$FeedDiscoverLoadingScreenKt composableSingletons$FeedDiscoverLoadingScreenKt = ComposableSingletons$FeedDiscoverLoadingScreenKt.f57751a;
                if (composer25.p(iIntValue25 & 1, (iIntValue25 & 3) != 2)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    FeedDiscoverLoadingScreenKt.a(composer25, 0);
                } else {
                    composer25.D();
                }
                return Unit.f71739a;
        }
    }
}
