package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavHostController;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBffScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x8 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81051c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81052e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f81053f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f81054h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f81055i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function0 f81056j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function f81057k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ Function1 m;
    public final /* synthetic */ Function1 n;
    public final /* synthetic */ Function1 o;
    public final /* synthetic */ Function p;
    public final /* synthetic */ Function q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Function1 s;
    public final /* synthetic */ Object t;
    public final /* synthetic */ int u;
    public final /* synthetic */ int v;
    public final /* synthetic */ Object w;

    public /* synthetic */ x8(Object obj, SnackbarHostState snackbarHostState, CoroutineScope coroutineScope, NavHostController navHostController, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function1 function6, Function1 function7, Function1 function8, Function1 function9, Function0 function10, Function0 function11, ContactUsUiModel contactUsUiModel, Function1 function12, LVModalBottomSheetState lVModalBottomSheetState, int i2, int i3, int i4) {
        this.f81050b = i4;
        this.w = obj;
        this.f81051c = snackbarHostState;
        this.d = coroutineScope;
        this.f81052e = navHostController;
        this.f81053f = function1;
        this.g = function0;
        this.f81054h = function2;
        this.f81055i = function3;
        this.f81056j = function4;
        this.f81057k = function5;
        this.l = function6;
        this.m = function7;
        this.n = function8;
        this.o = function9;
        this.p = function10;
        this.q = function11;
        this.r = contactUsUiModel;
        this.s = function12;
        this.t = lVModalBottomSheetState;
        this.u = i2;
        this.v = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f81050b) {
            case 0:
                ((Integer) obj2).intValue();
                int iA = RecomposeScopeImplKt.a(this.u | 1);
                int iA2 = RecomposeScopeImplKt.a(this.v);
                AssessmentBffScreenKt.a((AssessmentBffViewState) this.w, (SnackbarHostState) this.f81051c, (CoroutineScope) this.d, (NavHostController) this.f81052e, this.f81053f, this.g, this.f81054h, this.f81055i, this.f81056j, (Function0) this.f81057k, this.l, this.m, this.n, this.o, (Function0) this.p, (Function0) this.q, (ContactUsUiModel) this.r, this.s, (LVModalBottomSheetState) this.t, (Composer) obj, iA, iA2);
                break;
            case 1:
                ((Integer) obj2).intValue();
                int iA3 = RecomposeScopeImplKt.a(this.u | 1);
                int iA4 = RecomposeScopeImplKt.a(this.v);
                AssessmentScreenKt.a((AssessmentViewState) this.w, (SnackbarHostState) this.f81051c, (CoroutineScope) this.d, (NavHostController) this.f81052e, this.f81053f, this.g, this.f81054h, this.f81055i, this.f81056j, (Function0) this.f81057k, this.l, this.m, this.n, this.o, (Function0) this.p, (Function0) this.q, (ContactUsUiModel) this.r, this.s, (LVModalBottomSheetState) this.t, (Composer) obj, iA3, iA4);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(this.u | 1);
                int iA6 = RecomposeScopeImplKt.a(this.v);
                NativeCartFilledScreenKt.c((Modifier) this.w, (NativeCartViewState) this.f81051c, (ReinsuranceUiModel) this.d, (ReinsuranceViewModelImpl.ReinsuranceState) this.f81052e, this.f81053f, this.g, this.f81054h, this.f81055i, this.f81056j, this.l, (Function0) this.f81057k, (Function2) this.p, this.m, (Function3) this.q, this.n, this.o, this.s, (Function1) this.r, (Function1) this.t, (Composer) obj, iA5, iA6);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(this.u | 1);
                int iA8 = RecomposeScopeImplKt.a(this.v);
                RepairDetailScreenKt.d((RepairsViewState) this.w, (AssessmentViewState) this.d, (SnackbarHostState) this.f81051c, (DistantRepairCalendarViewState) this.f81052e, (Function3) this.f81057k, (Function3) this.p, (Function2) this.q, this.g, this.f81054h, this.f81053f, this.f81055i, this.l, this.m, this.n, this.f81056j, (ContactUsUiModel) this.r, this.o, (LVModalBottomSheetState) this.t, this.s, (Composer) obj, iA7, iA8);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ x8(RepairsViewState repairsViewState, AssessmentViewState assessmentViewState, SnackbarHostState snackbarHostState, DistantRepairCalendarViewState distantRepairCalendarViewState, Function3 function3, Function3 function4, Function2 function2, Function0 function0, Function0 function1, Function1 function5, Function0 function6, Function1 function7, Function1 function8, Function1 function9, Function0 function10, ContactUsUiModel contactUsUiModel, Function1 function11, LVModalBottomSheetState lVModalBottomSheetState, Function1 function12, int i2, int i3) {
        this.f81050b = 3;
        this.w = repairsViewState;
        this.d = assessmentViewState;
        this.f81051c = snackbarHostState;
        this.f81052e = distantRepairCalendarViewState;
        this.f81057k = function3;
        this.p = function4;
        this.q = function2;
        this.g = function0;
        this.f81054h = function1;
        this.f81053f = function5;
        this.f81055i = function6;
        this.l = function7;
        this.m = function8;
        this.n = function9;
        this.f81056j = function10;
        this.r = contactUsUiModel;
        this.o = function11;
        this.t = lVModalBottomSheetState;
        this.s = function12;
        this.u = i2;
        this.v = i3;
    }

    public /* synthetic */ x8(Modifier modifier, NativeCartViewState nativeCartViewState, ReinsuranceUiModel reinsuranceUiModel, ReinsuranceViewModelImpl.ReinsuranceState reinsuranceState, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function1 function5, Function0 function6, Function2 function7, Function1 function8, Function3 function9, Function1 function10, Function1 function11, Function1 function12, Function1 function13, Function1 function14, int i2, int i3) {
        this.f81050b = 2;
        this.w = modifier;
        this.f81051c = nativeCartViewState;
        this.d = reinsuranceUiModel;
        this.f81052e = reinsuranceState;
        this.f81053f = function1;
        this.g = function0;
        this.f81054h = function2;
        this.f81055i = function3;
        this.f81056j = function4;
        this.l = function5;
        this.f81057k = function6;
        this.p = function7;
        this.m = function8;
        this.q = function9;
        this.n = function10;
        this.o = function11;
        this.s = function12;
        this.r = function13;
        this.t = function14;
        this.u = i2;
        this.v = i3;
    }
}
