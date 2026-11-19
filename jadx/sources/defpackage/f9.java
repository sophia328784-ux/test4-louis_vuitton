package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.core.consent.ConsentViewModel;
import com.sightcall.core.consent.compose.ConsentLayoutKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.TabItem;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.a;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.AppointmentCalendarContext;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersBackGradientKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorScreenKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.repairs.detail.components.BottomSheetScreen;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBottomSheetLayoutKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.LocalDate;
import java.time.LocalDateTime;
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
public final /* synthetic */ class f9 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69076b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f69077c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69079f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69080h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69081i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69082j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69083k;
    public final /* synthetic */ Object l;

    public /* synthetic */ f9(Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function1 function4, LVModalBottomSheetState lVModalBottomSheetState, Function0 function5, MutableState mutableState, MutableState mutableState2, MyInformationViewModel myInformationViewModel) {
        this.f69077c = function0;
        this.d = function1;
        this.f69078e = function2;
        this.f69079f = function3;
        this.g = function4;
        this.f69082j = lVModalBottomSheetState;
        this.f69080h = function5;
        this.f69081i = mutableState;
        this.f69083k = mutableState2;
        this.l = myInformationViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        StoreInformationItemUiModel storeInformationItemUiModel;
        Object obj4;
        CareServiceDetailUiModel.Store store;
        Composer composer;
        int i2 = this.f69076b;
        Function0 function0 = this.f69077c;
        Function0 function1 = this.d;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.l;
        Object obj6 = this.f69083k;
        Object obj7 = this.f69081i;
        Object obj8 = this.f69080h;
        Object obj9 = this.f69082j;
        Object obj10 = this.g;
        Object obj11 = this.f69079f;
        Object obj12 = this.f69078e;
        final int i3 = 1;
        boolean z = false;
        switch (i2) {
            case 0:
                AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) obj11;
                Function1 function2 = (Function1) obj10;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj9;
                Function1 function3 = (Function1) obj8;
                Function0 function4 = (Function0) obj12;
                Function1 function5 = (Function1) obj7;
                CoroutineScope coroutineScope = (CoroutineScope) obj6;
                LazyListState lazyListState = (LazyListState) obj5;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    StepState stepState = assessmentBffViewState.f57346c.f57341a;
                    CareServiceDetailUiModel careServiceDetailUiModel = assessmentBffViewState.d;
                    CareServiceDetailUiModel.Assessment assessment = careServiceDetailUiModel != null ? careServiceDetailUiModel.l : null;
                    boolean zK = composer2.K(function0) | composer2.y(lVModalBottomSheetState);
                    Object objX = composer2.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new t3(function0, lVModalBottomSheetState, 3);
                        composer2.q(objX);
                    }
                    Function0 function6 = (Function0) objX;
                    boolean zY = composer2.y(assessmentBffViewState) | composer2.K(function1) | composer2.K(function3);
                    Object objX2 = composer2.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new q(assessmentBffViewState, function1, function3, 6);
                        composer2.q(objX2);
                    }
                    Function0 function7 = (Function0) objX2;
                    boolean zK2 = composer2.K(function5) | composer2.y(coroutineScope) | composer2.K(lazyListState);
                    Object objX3 = composer2.x();
                    if (zK2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new a(function5, coroutineScope, lazyListState, 1);
                        composer2.q(objX3);
                    }
                    AssessmentPreliminaryBffComponentKt.a(stepState, assessment, function2, function6, function7, function4, (Function1) objX3, composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 1:
                return ConsentLayoutKt.ConsentParentScreen$lambda$1((Context) obj11, (String) obj10, (AnnotatedString) obj8, this.f69077c, this.d, (ConsentViewModel) obj7, (String) obj9, (String) obj6, (Function0) obj12, (State) obj5, (PaddingValues) obj, (Composer) obj2, ((Integer) obj3).intValue());
            case 2:
                OsaContactFormBottomSheetScreen osaContactFormBottomSheetScreen = (OsaContactFormBottomSheetScreen) obj11;
                final OsaContactFormViewState osaContactFormViewState = (OsaContactFormViewState) obj8;
                final Function0 function8 = (Function0) obj12;
                final Function1 function9 = (Function1) obj10;
                Function2 function10 = (Function2) obj7;
                final Function0 function11 = (Function0) obj9;
                final Function0 function12 = (Function0) obj6;
                final Function0 function13 = (Function0) obj5;
                Composer composer3 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (osaContactFormBottomSheetScreen == null) {
                        composer3.L(1274255309);
                        composer3.F();
                    } else {
                        composer3.L(1274255310);
                        InAppDispatch inAppDispatch = osaContactFormViewState.f60736a;
                        OsaItemUiModel osaItemUiModel = osaContactFormViewState.p;
                        String str = (osaItemUiModel == null || (storeInformationItemUiModel = osaItemUiModel.f60929h) == null) ? null : storeInformationItemUiModel.f60939b;
                        LocalDateTime localDateTime = osaItemUiModel != null ? osaItemUiModel.f60928f : null;
                        boolean z2 = osaContactFormViewState.l;
                        OsaItemUiModel osaItemUiModel2 = osaContactFormViewState.s;
                        LocalDateTime localDateTime2 = osaItemUiModel2 != null ? osaItemUiModel2.f60928f : null;
                        OsaFormItemUiModel osaFormItemUiModel = osaContactFormViewState.g;
                        String str2 = osaFormItemUiModel != null ? osaFormItemUiModel.f60915c : null;
                        boolean zK3 = composer3.K(function9) | composer3.y(osaContactFormViewState) | composer3.K(function10);
                        Object objX4 = composer3.x();
                        if (zK3 || objX4 == composer$Companion$Empty$1) {
                            objX4 = new of0(function9, osaContactFormViewState, function10, 10);
                            composer3.q(objX4);
                        }
                        Function0 function14 = (Function0) objX4;
                        boolean zK4 = composer3.K(function9) | composer3.y(osaContactFormViewState) | composer3.K(function11);
                        Object objX5 = composer3.x();
                        if (zK4 || objX5 == composer$Companion$Empty$1) {
                            final int i4 = 0;
                            objX5 = new Function0() { // from class: hj0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i4) {
                                        case 0:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetCreateAccountClickedEvent(osaContactFormViewState.l));
                                            function11.mo47invoke();
                                            break;
                                        case 1:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetCancelKeepPreviousAppointmentClickedEvent(osaContactFormViewState.l));
                                            function11.mo47invoke();
                                            break;
                                        case 2:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetReplaceAppointmentClickedEvent(osaContactFormViewState.l));
                                            function11.mo47invoke();
                                            break;
                                        default:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetGoToAppointmentClickedEvent(osaContactFormViewState.l));
                                            function11.mo47invoke();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer3.q(objX5);
                        }
                        Function0 function15 = (Function0) objX5;
                        boolean zK5 = composer3.K(function9) | composer3.y(osaContactFormViewState) | composer3.K(function8);
                        Object objX6 = composer3.x();
                        if (zK5 || objX6 == composer$Companion$Empty$1) {
                            final int i5 = 1;
                            objX6 = new Function0() { // from class: hj0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i5) {
                                        case 0:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetCreateAccountClickedEvent(osaContactFormViewState.l));
                                            function8.mo47invoke();
                                            break;
                                        case 1:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetCancelKeepPreviousAppointmentClickedEvent(osaContactFormViewState.l));
                                            function8.mo47invoke();
                                            break;
                                        case 2:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetReplaceAppointmentClickedEvent(osaContactFormViewState.l));
                                            function8.mo47invoke();
                                            break;
                                        default:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetGoToAppointmentClickedEvent(osaContactFormViewState.l));
                                            function8.mo47invoke();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer3.q(objX6);
                        }
                        Function0 function16 = (Function0) objX6;
                        boolean zK6 = composer3.K(function9) | composer3.y(osaContactFormViewState) | composer3.K(function12);
                        Object objX7 = composer3.x();
                        if (zK6 || objX7 == composer$Companion$Empty$1) {
                            final int i6 = 2;
                            objX7 = new Function0() { // from class: hj0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i6) {
                                        case 0:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetCreateAccountClickedEvent(osaContactFormViewState.l));
                                            function12.mo47invoke();
                                            break;
                                        case 1:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetCancelKeepPreviousAppointmentClickedEvent(osaContactFormViewState.l));
                                            function12.mo47invoke();
                                            break;
                                        case 2:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetReplaceAppointmentClickedEvent(osaContactFormViewState.l));
                                            function12.mo47invoke();
                                            break;
                                        default:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetGoToAppointmentClickedEvent(osaContactFormViewState.l));
                                            function12.mo47invoke();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer3.q(objX7);
                        }
                        Function0 function17 = (Function0) objX7;
                        boolean zK7 = composer3.K(function9) | composer3.y(osaContactFormViewState) | composer3.K(function13);
                        Object objX8 = composer3.x();
                        if (zK7 || objX8 == composer$Companion$Empty$1) {
                            final int i7 = 3;
                            objX8 = new Function0() { // from class: hj0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    switch (i7) {
                                        case 0:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetCreateAccountClickedEvent(osaContactFormViewState.l));
                                            function13.mo47invoke();
                                            break;
                                        case 1:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetCancelKeepPreviousAppointmentClickedEvent(osaContactFormViewState.l));
                                            function13.mo47invoke();
                                            break;
                                        case 2:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetReplaceAppointmentClickedEvent(osaContactFormViewState.l));
                                            function13.mo47invoke();
                                            break;
                                        default:
                                            function9.invoke(new OsaTrackingUiModel.BottomSheetGoToAppointmentClickedEvent(osaContactFormViewState.l));
                                            function13.mo47invoke();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer3.q(objX8);
                        }
                        OsaContactFormBottomSheetScreenKt.e(null, inAppDispatch, osaContactFormBottomSheetScreen, str, localDateTime, z2, localDateTime2, str2, this.f69077c, this.d, function8, function14, function15, function16, function17, (Function0) objX8, composer3, 0, 0, 1);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                OsaListViewState osaListViewState = (OsaListViewState) obj11;
                Function1 function18 = (Function1) obj10;
                Function2 function19 = (Function2) obj6;
                Function1 function20 = (Function1) obj8;
                Function1 function21 = (Function1) obj7;
                LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) obj9;
                MutableState mutableState = (MutableState) obj5;
                Function0 function22 = (Function0) obj12;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer4.K(paddingValues) ? 4 : 2;
                }
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("OsaListScreen$lambda$7").o(SizeKt.f5052c), paddingValues), LVAppDesignKitTheme.c(composer4).f48361b.f48375b, RectangleShapeKt.f8913a);
                    boolean zK8 = composer4.K(function0) | composer4.K(function18);
                    Object objX9 = composer4.x();
                    if (zK8 || objX9 == composer$Companion$Empty$1) {
                        objX9 = new wz(function0, function18, 2);
                        composer4.q(objX9);
                    }
                    Function0 function23 = (Function0) objX9;
                    boolean zK9 = composer4.K(function20) | composer4.K(function18);
                    Object objX10 = composer4.x();
                    if (zK9 || objX10 == composer$Companion$Empty$1) {
                        objX10 = new pj0(function20, function18, 0);
                        composer4.q(objX10);
                    }
                    OsaListDataScreenKt.d(modifierB, osaListViewState, function23, function19, (Function1) objX10, function21, composer4, 0);
                    if (lVModalBottomSheetState2.a()) {
                        composer4.L(459901250);
                        LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer4, R.string.alt_close), null, lVModalBottomSheetState2, null, 0L, false, null, ComposableLambdaKt.b(1958142912, new g1(28, mutableState, function22, function1), composer4), composer4, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                        composer4.F();
                    } else {
                        composer4.L(460509873);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) obj11;
                Function1 function24 = (Function1) obj10;
                Function0 function25 = (Function0) obj12;
                Function1 function26 = (Function1) obj8;
                Function2 function27 = (Function2) obj9;
                Function1 function28 = (Function1) obj7;
                Function0 function29 = (Function0) obj6;
                MutableState mutableState2 = (MutableState) obj5;
                Composer composer5 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PSPScreen$lambda$8$1$15");
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment = Alignment.Companion.f8589i;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                ActiveFiltersBackGradientKt.a(0, composer5, boxScopeInstance.g(dTFunctionNameModifier, biasAlignment), quickAccessFiltersViewState.d && !quickAccessFiltersViewState.f58170b);
                Modifier modifierG = boxScopeInstance.g(new DTFunctionNameModifier("PSPScreen$lambda$8$1$15"), Alignment.Companion.f8588h);
                boolean zBooleanValue = ((Boolean) mutableState2.getF10755b()).booleanValue();
                boolean z3 = quickAccessFiltersViewState.d;
                boolean zK10 = composer5.K(function1) | composer5.K(function25);
                Object objX11 = composer5.x();
                if (zK10 || objX11 == composer$Companion$Empty$1) {
                    objX11 = new eg(function1, function25, 2);
                    composer5.q(objX11);
                }
                Function1 function30 = (Function1) objX11;
                boolean zK11 = composer5.K(function26);
                Object objX12 = composer5.x();
                if (zK11 || objX12 == composer$Companion$Empty$1) {
                    objX12 = new k0(function26, 23);
                    composer5.q(objX12);
                }
                QuickAccessFiltersEntryPointKt.a(modifierG, quickAccessFiltersViewState, zBooleanValue, z3, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.f69077c, function24, function30, (Function1) objX12, function27, function28, function29, composer5, 221184, 64);
                return Unit.f71739a;
            case 5:
                PersonalSelectionsCurationAdvisorViewState.Success success = (PersonalSelectionsCurationAdvisorViewState.Success) obj11;
                PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState = (PersonalSelectionsCurationAdvisorProductState) obj12;
                Function1 function31 = (Function1) obj10;
                Function1 function32 = (Function1) obj8;
                Function1 function33 = (Function1) obj7;
                Function1 function34 = (Function1) obj9;
                Function1 function35 = (Function1) obj6;
                Function1 function36 = (Function1) obj5;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer6.K(paddingValues2) ? 4 : 2;
                }
                if (composer6.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    List listP = CollectionsKt.P(new TabItem(StringResources_androidKt.c(composer6, R.string.ips_tab_board), true), new TabItem(StringResources_androidKt.c(composer6, R.string.ips_tab_products), true));
                    boolean zY2 = composer6.y(listP);
                    Object objX13 = composer6.x();
                    if (zY2 || objX13 == composer$Companion$Empty$1) {
                        obj4 = objX13;
                        db dbVar = new db(listP, 10);
                        composer6.q(dbVar);
                        obj4 = dbVar;
                    }
                    PagerState pagerStateB = PagerStateKt.b(0, (Function0) obj4, composer6, 0, 3);
                    LazyListState lazyListStateA = LazyListStateKt.a(0, composer6, 3);
                    Object objX14 = composer6.x();
                    Object obj13 = objX14;
                    if (objX14 == composer$Companion$Empty$1) {
                        CoroutineScope coroutineScopeJ = EffectsKt.j(EmptyCoroutineContext.f71840b, composer6);
                        composer6.q(coroutineScopeJ);
                        obj13 = coroutineScopeJ;
                    }
                    CoroutineScope coroutineScope2 = (CoroutineScope) obj13;
                    Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorScreen$lambda$3"), LVAppDesignKitTheme.c(composer6).f48361b.f48374a, RectangleShapeKt.f8913a), paddingValues2);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, composer6, 0);
                    int iHashCode = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer6.n();
                    Modifier modifierC = ComposedModifierKt.c(composer6, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function37 = ComposeUiNode.Companion.f9641b;
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function37);
                    } else {
                        composer6.o();
                    }
                    Function2 function38 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer6, columnMeasurePolicyA, function38);
                    Function2 function39 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer6, persistentCompositionLocalMapN, function39);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function40 = ComposeUiNode.Companion.g;
                    Updater.c(composer6, numValueOf, function40);
                    Function1 function41 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer6, function41);
                    Function2 function42 = ComposeUiNode.Companion.d;
                    Updater.c(composer6, modifierC, function42);
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorScreen$lambda$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer6).f48416e, 7);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, composer6, 0);
                    int iHashCode2 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer6.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer6, modifierM);
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function37);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, columnMeasurePolicyA2, function38);
                    Updater.c(composer6, persistentCompositionLocalMapN2, function39);
                    cj.s(iHashCode2, composer6, function40, composer6, function41);
                    Updater.c(composer6, modifierC2, function42);
                    PersonalSelectionsCurationAdvisorScreenKt.a(success, composer6, 0);
                    PersonalSelectionsCurationAdvisorScreenKt.d(0, pagerStateB, composer6, PaddingKt.k(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorScreen$lambda$3"), LVAppDesignKitTheme.l(composer6).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), listP, coroutineScope2);
                    composer6.r();
                    Modifier modifierA = ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorScreen$lambda$3"), 1.0f, true);
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer6.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer6.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer6, modifierA);
                    if (composer6.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer6.B();
                    if (composer6.getS()) {
                        composer6.C(function37);
                    } else {
                        composer6.o();
                    }
                    Updater.c(composer6, measurePolicyD, function38);
                    Updater.c(composer6, persistentCompositionLocalMapN3, function39);
                    cj.s(iHashCode3, composer6, function40, composer6, function41);
                    PersonalSelectionsCurationAdvisorScreenKt.b(a.f(composer6, modifierC3, function42, "PersonalSelectionsCurationAdvisorScreen$lambda$3").o(SizeKt.f5052c), success, personalSelectionsCurationAdvisorProductState, pagerStateB, lazyListStateA.d(), function31, function32, function33, function34, function35, function36, ComposableLambdaKt.b(1270464740, new gi0(success, function0, function1, 15), composer6), composer6, 6);
                    composer6.r();
                    composer6.r();
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 6:
                MutableState mutableState3 = (MutableState) obj11;
                RepairsBffViewState repairsBffViewState = (RepairsBffViewState) obj7;
                DistantRepairCalendarViewState distantRepairCalendarViewState = (DistantRepairCalendarViewState) obj12;
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj9;
                final Function1 function43 = (Function1) obj10;
                final Function3 function44 = (Function3) obj6;
                final DistantRepairContactMethod distantRepairContactMethod = (DistantRepairContactMethod) obj5;
                Function1 function45 = (Function1) obj8;
                Composer composer7 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer7.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    BottomSheetScreen bottomSheetScreen = (BottomSheetScreen) mutableState3.getF10755b();
                    if (bottomSheetScreen == null) {
                        composer7.L(-417489843);
                        composer7.F();
                    } else {
                        composer7.L(-417489842);
                        if (bottomSheetScreen.equals(BottomSheetScreen.BottomSheetRescheduleCalendar.f63787a)) {
                            composer7.L(237759781);
                            CareServiceDetailUiModel careServiceDetailUiModel2 = repairsBffViewState.f64088h;
                            String str3 = (careServiceDetailUiModel2 == null || (store = careServiceDetailUiModel2.g) == null) ? null : store.f64053b;
                            if (str3 == null) {
                                str3 = "";
                            }
                            String str4 = str3;
                            boolean zK12 = composer7.K(function43) | composer7.K(function44) | composer7.d(distantRepairContactMethod == null ? -1 : distantRepairContactMethod.ordinal());
                            Object objX15 = composer7.x();
                            if (zK12 || objX15 == composer$Companion$Empty$1) {
                                final boolean z4 = z ? 1 : 0;
                                objX15 = new Function2() { // from class: zr0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj14, Object obj15) {
                                        int i8 = z4;
                                        DistantRepairContactMethod distantRepairContactMethod2 = distantRepairContactMethod;
                                        Function3 function46 = function44;
                                        Function1 function47 = function43;
                                        LocalDate localDate = (LocalDate) obj14;
                                        String str5 = (String) obj15;
                                        switch (i8) {
                                            case 0:
                                                localDate.getClass();
                                                str5.getClass();
                                                function47.invoke(new DistantRepairTrackingUiModel.RescheduleSelectDateEvent(AppointmentCalendarContext.RESCHEDULE));
                                                function46.A(localDate, str5, distantRepairContactMethod2);
                                                break;
                                            default:
                                                localDate.getClass();
                                                str5.getClass();
                                                function47.invoke(new DistantRepairTrackingUiModel.RescheduleSelectDateEvent(AppointmentCalendarContext.RESCHEDULE));
                                                function46.A(localDate, str5, distantRepairContactMethod2);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer7.q(objX15);
                            }
                            Function2 function46 = (Function2) objX15;
                            boolean zK13 = composer7.K(function43) | composer7.K(function45);
                            Object objX16 = composer7.x();
                            if (zK13 || objX16 == composer$Companion$Empty$1) {
                                objX16 = new pj0(function43, function45, 4);
                                composer7.q(objX16);
                            }
                            Function1 function47 = (Function1) objX16;
                            boolean zK14 = composer7.K(function43);
                            Object objX17 = composer7.x();
                            if (zK14 || objX17 == composer$Companion$Empty$1) {
                                objX17 = new tf0(function43, 14);
                                composer7.q(objX17);
                            }
                            DistantRepairBottomSheetDatePickerKt.a(str4, distantRepairCalendarViewState, snackbarHostState, function46, function47, (Function0) objX17, StringResources_androidKt.c(composer7, R.string.dr_cta_confirm_modify_datetime), composer7, 0, 0);
                            composer7.F();
                        } else {
                            composer7.L(239917071);
                            RepairDetailBottomSheetLayoutKt.c(bottomSheetScreen, function0, function1, composer7, 0);
                            composer7.F();
                        }
                        composer7.F();
                    }
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 7:
                MutableState mutableState4 = (MutableState) obj11;
                RepairsViewState repairsViewState = (RepairsViewState) obj7;
                DistantRepairCalendarViewState distantRepairCalendarViewState2 = (DistantRepairCalendarViewState) obj12;
                SnackbarHostState snackbarHostState2 = (SnackbarHostState) obj9;
                final Function1 function48 = (Function1) obj10;
                final Function3 function49 = (Function3) obj6;
                final DistantRepairContactMethod distantRepairContactMethod2 = (DistantRepairContactMethod) obj5;
                Function1 function50 = (Function1) obj8;
                Composer composer8 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer8.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    BottomSheetScreen bottomSheetScreen2 = (BottomSheetScreen) mutableState4.getF10755b();
                    if (bottomSheetScreen2 == null) {
                        composer8.L(906448476);
                        composer8.F();
                    } else {
                        composer8.L(906448477);
                        if (bottomSheetScreen2.equals(BottomSheetScreen.BottomSheetRescheduleCalendar.f63787a)) {
                            composer8.L(227884148);
                            com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel careServiceDetailUiModel3 = repairsViewState.f64018h;
                            String str5 = careServiceDetailUiModel3 != null ? careServiceDetailUiModel3.I : null;
                            if (str5 == null) {
                                str5 = "";
                            }
                            String str6 = str5;
                            boolean zK15 = composer8.K(function48) | composer8.K(function49) | composer8.d(distantRepairContactMethod2 == null ? -1 : distantRepairContactMethod2.ordinal());
                            Object objX18 = composer8.x();
                            if (zK15 || objX18 == composer$Companion$Empty$1) {
                                objX18 = new Function2() { // from class: zr0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj14, Object obj15) {
                                        int i8 = i3;
                                        DistantRepairContactMethod distantRepairContactMethod3 = distantRepairContactMethod2;
                                        Function3 function410 = function49;
                                        Function1 function411 = function48;
                                        LocalDate localDate = (LocalDate) obj14;
                                        String str7 = (String) obj15;
                                        switch (i8) {
                                            case 0:
                                                localDate.getClass();
                                                str7.getClass();
                                                function411.invoke(new DistantRepairTrackingUiModel.RescheduleSelectDateEvent(AppointmentCalendarContext.RESCHEDULE));
                                                function410.A(localDate, str7, distantRepairContactMethod3);
                                                break;
                                            default:
                                                localDate.getClass();
                                                str7.getClass();
                                                function411.invoke(new DistantRepairTrackingUiModel.RescheduleSelectDateEvent(AppointmentCalendarContext.RESCHEDULE));
                                                function410.A(localDate, str7, distantRepairContactMethod3);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer8.q(objX18);
                            }
                            Function2 function51 = (Function2) objX18;
                            boolean zK16 = composer8.K(function48) | composer8.K(function0) | composer8.K(function50);
                            Object objX19 = composer8.x();
                            if (zK16 || objX19 == composer$Companion$Empty$1) {
                                objX19 = new cl0(function48, function0, function50, 7);
                                composer8.q(objX19);
                            }
                            Function1 function52 = (Function1) objX19;
                            boolean zK17 = composer8.K(function48);
                            Object objX20 = composer8.x();
                            if (zK17 || objX20 == composer$Companion$Empty$1) {
                                objX20 = new tf0(function48, 16);
                                composer8.q(objX20);
                            }
                            DistantRepairBottomSheetDatePickerKt.a(str6, distantRepairCalendarViewState2, snackbarHostState2, function51, function52, (Function0) objX20, StringResources_androidKt.c(composer8, R.string.dr_cta_confirm_modify_datetime), composer8, 0, 0);
                            composer8.F();
                        } else {
                            composer8.L(229909781);
                            RepairDetailBottomSheetLayoutKt.c(bottomSheetScreen2, function1, function0, composer8, 0);
                            composer8.F();
                        }
                        composer8.F();
                    }
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            default:
                Function0 function53 = (Function0) obj12;
                Function0 function54 = (Function0) obj11;
                Function1 function55 = (Function1) obj10;
                LVModalBottomSheetState lVModalBottomSheetState3 = (LVModalBottomSheetState) obj9;
                Function0 function56 = (Function0) obj8;
                State state = (State) obj7;
                MutableState mutableState5 = (MutableState) obj6;
                MyInformationViewModel myInformationViewModel = (MyInformationViewModel) obj5;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue7 & 6) == 0) {
                    iIntValue7 |= composer9.K(paddingValues3) ? 4 : 2;
                }
                if (composer9.p(iIntValue7 & 1, (iIntValue7 & 19) != 18)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    if (((MyInformationViewState) state.getF10755b()).f52668e.equals(MyInfoUiModel.f52657k)) {
                        composer = composer9;
                        composer.L(-1045912957);
                        composer.F();
                    } else {
                        composer9.L(-1046308889);
                        MyInformationViewState myInformationViewState = (MyInformationViewState) state.getF10755b();
                        boolean zK18 = composer9.K(function55);
                        Object objX21 = composer9.x();
                        if (zK18 || objX21 == composer$Companion$Empty$1) {
                            objX21 = new tf0(function55, 21);
                            composer9.q(objX21);
                        }
                        MyInformationScreenKt.d(paddingValues3, myInformationViewState, this.f69077c, this.d, function53, function54, (Function0) objX21, composer9, iIntValue7 & 14);
                        composer = composer9;
                        composer.F();
                    }
                    if (((MyInformationViewState) state.getF10755b()).f52666b) {
                        ProgressViewKt.a(pq0.j(-1045876067, composer, "SeeMyInfoComposable$lambda$12").o(SizeKt.f5052c), 0L, false, composer, 6, 6);
                        composer.F();
                    } else {
                        composer.L(-1045778045);
                        composer.F();
                    }
                    if (lVModalBottomSheetState3.a()) {
                        composer.L(-1045695554);
                        LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer, R.string.alt_close), function56, lVModalBottomSheetState3, null, 0L, false, null, ComposableLambdaKt.b(135475528, new yj0(mutableState5, myInformationViewModel, function56, 8), composer), composer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                        composer.F();
                    } else {
                        composer.L(-1045004285);
                        composer.F();
                    }
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ f9(MutableState mutableState, RepairsViewState repairsViewState, DistantRepairCalendarViewState distantRepairCalendarViewState, SnackbarHostState snackbarHostState, Function1 function1, Function3 function3, DistantRepairContactMethod distantRepairContactMethod, Function0 function0, Function1 function2, Function0 function4) {
        this.f69079f = mutableState;
        this.f69081i = repairsViewState;
        this.f69078e = distantRepairCalendarViewState;
        this.f69082j = snackbarHostState;
        this.g = function1;
        this.f69083k = function3;
        this.l = distantRepairContactMethod;
        this.f69077c = function0;
        this.f69080h = function2;
        this.d = function4;
    }

    public /* synthetic */ f9(MutableState mutableState, RepairsBffViewState repairsBffViewState, DistantRepairCalendarViewState distantRepairCalendarViewState, SnackbarHostState snackbarHostState, Function1 function1, Function3 function3, DistantRepairContactMethod distantRepairContactMethod, Function1 function2, Function0 function0, Function0 function4) {
        this.f69079f = mutableState;
        this.f69081i = repairsBffViewState;
        this.f69078e = distantRepairCalendarViewState;
        this.f69082j = snackbarHostState;
        this.g = function1;
        this.f69083k = function3;
        this.l = distantRepairContactMethod;
        this.f69080h = function2;
        this.f69077c = function0;
        this.d = function4;
    }

    public /* synthetic */ f9(AssessmentBffViewState assessmentBffViewState, Function1 function1, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, Function0 function2, Function1 function3, Function0 function4, Function1 function5, CoroutineScope coroutineScope, LazyListState lazyListState) {
        this.f69079f = assessmentBffViewState;
        this.g = function1;
        this.f69077c = function0;
        this.f69082j = lVModalBottomSheetState;
        this.d = function2;
        this.f69080h = function3;
        this.f69078e = function4;
        this.f69081i = function5;
        this.f69083k = coroutineScope;
        this.l = lazyListState;
    }

    public /* synthetic */ f9(QuickAccessFiltersViewState quickAccessFiltersViewState, Function0 function0, Function1 function1, Function0 function2, Function0 function3, Function1 function4, Function2 function5, Function1 function6, Function0 function7, MutableState mutableState) {
        this.f69079f = quickAccessFiltersViewState;
        this.f69077c = function0;
        this.g = function1;
        this.d = function2;
        this.f69078e = function3;
        this.f69080h = function4;
        this.f69082j = function5;
        this.f69081i = function6;
        this.f69083k = function7;
        this.l = mutableState;
    }

    public /* synthetic */ f9(OsaContactFormBottomSheetScreen osaContactFormBottomSheetScreen, OsaContactFormViewState osaContactFormViewState, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function2 function4, Function0 function5, Function0 function6, Function0 function7) {
        this.f69079f = osaContactFormBottomSheetScreen;
        this.f69080h = osaContactFormViewState;
        this.f69077c = function0;
        this.d = function1;
        this.f69078e = function2;
        this.g = function3;
        this.f69081i = function4;
        this.f69082j = function5;
        this.f69083k = function6;
        this.l = function7;
    }

    public /* synthetic */ f9(OsaListViewState osaListViewState, Function0 function0, Function1 function1, Function2 function2, Function1 function3, Function1 function4, LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, Function0 function5, Function0 function6) {
        this.f69079f = osaListViewState;
        this.f69077c = function0;
        this.g = function1;
        this.f69083k = function2;
        this.f69080h = function3;
        this.f69081i = function4;
        this.f69082j = lVModalBottomSheetState;
        this.l = mutableState;
        this.d = function5;
        this.f69078e = function6;
    }

    public /* synthetic */ f9(PersonalSelectionsCurationAdvisorViewState.Success success, PersonalSelectionsCurationAdvisorProductState personalSelectionsCurationAdvisorProductState, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, Function0 function0, Function0 function7) {
        this.f69079f = success;
        this.f69078e = personalSelectionsCurationAdvisorProductState;
        this.g = function1;
        this.f69080h = function2;
        this.f69081i = function3;
        this.f69082j = function4;
        this.f69083k = function5;
        this.l = function6;
        this.f69077c = function0;
        this.d = function7;
    }

    public /* synthetic */ f9(Context context, String str, AnnotatedString annotatedString, Function0 function0, Function0 function1, ConsentViewModel consentViewModel, String str2, String str3, Function0 function2, MutableState mutableState) {
        this.f69079f = context;
        this.g = str;
        this.f69080h = annotatedString;
        this.f69077c = function0;
        this.d = function1;
        this.f69081i = consentViewModel;
        this.f69082j = str2;
        this.f69083k = str3;
        this.f69078e = function2;
        this.l = mutableState;
    }
}
