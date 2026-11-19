package defpackage;

import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersContainerKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormComposableKt;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListComposableKt;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListViewState;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPScreenKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p9 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f78792c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f78793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f78794f;
    public final /* synthetic */ Function g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f78795h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f78796i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f78797j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f78798k;

    public /* synthetic */ p9(OsaLocationFormViewModel osaLocationFormViewModel, OsaReasonsFormViewModel osaReasonsFormViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function0 function4, Function1 function5, Function1 function6, int i2) {
        this.f78791b = 1;
        this.f78795h = osaLocationFormViewModel;
        this.f78796i = osaReasonsFormViewModel;
        this.f78792c = function0;
        this.d = function1;
        this.f78793e = function2;
        this.f78794f = function3;
        this.f78797j = function4;
        this.g = function5;
        this.f78798k = function6;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78791b;
        Function function = this.g;
        Object obj3 = this.f78798k;
        Object obj4 = this.f78797j;
        Object obj5 = this.f78796i;
        Object obj6 = this.f78795h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AssessmentPreliminaryComponentKt.a((InAppDispatch) obj6, (StepState) obj5, (CareServiceDetailUiModel) obj4, (String) obj3, this.f78794f, this.f78792c, this.d, this.f78793e, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                OsaLocationFormComposableKt.a((OsaLocationFormViewModel) obj6, (OsaReasonsFormViewModel) obj5, this.f78792c, this.d, this.f78793e, this.f78794f, (Function0) obj4, (Function1) function, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                PSPStyle pSPStyle = (PSPStyle) obj6;
                QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) obj5;
                String str = (String) obj3;
                Function2 function2 = (Function2) obj4;
                Function0 function0 = (Function0) function;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    int i3 = PSPScreenKt.WhenMappings.f62772a[pSPStyle.ordinal()];
                    if (i3 == 1) {
                        composer.L(1506431695);
                        composer.F();
                    } else {
                        if (i3 != 2) {
                            throw o60.v(composer, 325689397);
                        }
                        composer.L(1506521812);
                        boolean z = !quickAccessFiltersViewState.f58170b;
                        if (str == null) {
                            str = "";
                        }
                        SearchBottomBarKt.a(0, 1, composer, null, str, this.f78792c, z);
                        Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("PSPScreen$lambda$6"), LVAppDesignKitTheme.c(composer).f48361b.u, RectangleShapeKt.f8913a));
                        boolean z2 = quickAccessFiltersViewState.f58170b;
                        boolean z3 = quickAccessFiltersViewState.f58171c;
                        EnterTransition enterTransition = EnterTransitionKt.f50932a;
                        TweenSpec tweenSpecC = AnimationSpecKt.c(400, 200, null, 4);
                        Alignment.f8582a.getClass();
                        BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                        QuickAccessFiltersContainerKt.a(quickAccessFiltersViewState, modifierB, z2, z3, enterTransition.b(EnterExitTransitionKt.d(tweenSpecC, vertical, null, 12)), ExitTransitionKt.f50933a.b(EnterExitTransitionKt.n(null, vertical, null, 13)), function2, this.d, this.f78793e, function0, this.f78794f, composer, 221184, 0);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                PersonalSelectionsListComposableKt.a((PersonalSelectionsListViewState) obj6, (ContactUsUiModel) obj5, (Function3) obj4, this.f78792c, this.d, (Function2) obj3, this.f78794f, this.f78793e, (Function0) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                RepairConfirmAddressBffComposableKt.a((RepairBffViewModel) obj6, (DistantRepairAssessmentBffViewModel) obj5, this.f78792c, this.d, this.f78793e, (Function0) obj4, (Function0) obj3, this.f78794f, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                RepairConfirmAddressComposableKt.a((RepairViewModel) obj6, (DistantRepairAssessmentViewModel) obj5, this.f78792c, this.d, this.f78793e, (Function0) obj4, (Function0) obj3, this.f78794f, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ p9(ContactUsDelegate contactUsDelegate, Object obj, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function1 function5, Function1 function6, int i2, int i3) {
        this.f78791b = i3;
        this.f78795h = contactUsDelegate;
        this.f78796i = obj;
        this.f78792c = function0;
        this.d = function1;
        this.f78793e = function2;
        this.f78797j = function3;
        this.f78798k = function4;
        this.f78794f = function5;
        this.g = function6;
    }

    public /* synthetic */ p9(PersonalSelectionsListViewState personalSelectionsListViewState, ContactUsUiModel contactUsUiModel, Function3 function3, Function0 function0, Function0 function1, Function2 function2, Function1 function4, Function0 function5, Function0 function6, int i2) {
        this.f78791b = 3;
        this.f78795h = personalSelectionsListViewState;
        this.f78796i = contactUsUiModel;
        this.f78797j = function3;
        this.f78792c = function0;
        this.d = function1;
        this.f78798k = function2;
        this.f78794f = function4;
        this.f78793e = function5;
        this.g = function6;
    }

    public /* synthetic */ p9(PSPStyle pSPStyle, QuickAccessFiltersViewState quickAccessFiltersViewState, String str, Function0 function0, Function2 function2, Function0 function1, Function0 function3, Function0 function4, Function1 function5) {
        this.f78791b = 2;
        this.f78795h = pSPStyle;
        this.f78796i = quickAccessFiltersViewState;
        this.f78798k = str;
        this.f78792c = function0;
        this.f78797j = function2;
        this.d = function1;
        this.f78793e = function3;
        this.g = function4;
        this.f78794f = function5;
    }

    public /* synthetic */ p9(InAppDispatch inAppDispatch, StepState stepState, CareServiceDetailUiModel careServiceDetailUiModel, String str, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function1 function4, int i2) {
        this.f78791b = 0;
        this.f78795h = inAppDispatch;
        this.f78796i = stepState;
        this.f78797j = careServiceDetailUiModel;
        this.f78798k = str;
        this.f78794f = function1;
        this.f78792c = function0;
        this.d = function2;
        this.f78793e = function3;
        this.g = function4;
    }
}
