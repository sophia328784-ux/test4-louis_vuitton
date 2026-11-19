package defpackage;

import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$AssessmentFormBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.ComposableSingletons$OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g9 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69338b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f69339c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f69340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f69341f;
    public final /* synthetic */ Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function1 f69342h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69343i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69344j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function f69345k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ g9(AssessmentBffViewState assessmentBffViewState, Function1 function1, Function0 function0, LVModalBottomSheetState lVModalBottomSheetState, Function0 function2, Function1 function3, Function0 function4, Function1 function5, CoroutineScope coroutineScope, LazyListState lazyListState, Function1 function6, Function1 function7) {
        this.f69343i = assessmentBffViewState;
        this.f69339c = function1;
        this.d = function0;
        this.l = lVModalBottomSheetState;
        this.f69340e = function2;
        this.g = function3;
        this.f69341f = function4;
        this.f69342h = function5;
        this.m = coroutineScope;
        this.n = lazyListState;
        this.f69344j = function6;
        this.f69345k = function7;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69338b;
        Object obj2 = this.n;
        Object obj3 = this.m;
        Object obj4 = this.l;
        Function function = this.f69345k;
        Object obj5 = this.f69344j;
        Object obj6 = this.f69343i;
        switch (i2) {
            case 0:
                AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) obj6;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj4;
                CoroutineScope coroutineScope = (CoroutineScope) obj3;
                LazyListState lazyListState = (LazyListState) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$AssessmentFormBffComponentKt.f57062a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormBffComponentKt.f57063b, 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormBffComponentKt.f57064c, 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormBffComponentKt.d, 3);
                Function1 function1 = this.f69339c;
                Function0 function0 = this.d;
                Function0 function2 = this.f69340e;
                Function1 function3 = this.g;
                Function0 function4 = this.f69341f;
                Function1 function5 = this.f69342h;
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-13916309, true, new f9(assessmentBffViewState, function1, function0, lVModalBottomSheetState, function2, function3, function4, function5, coroutineScope, lazyListState)), 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormBffComponentKt.f57065e, 3);
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1835675795, true, new n4(assessmentBffViewState, function1, function5, coroutineScope, lazyListState, 2)), 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormBffComponentKt.f57066f, 3);
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(637532015, true, new w0(assessmentBffViewState, (Function1) obj5, (Function1) function, function1, function5, coroutineScope, lazyListState, 2)), 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormBffComponentKt.g, 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormBffComponentKt.f57067h, 3);
                LazyListScope.f(lazyListScope, null, ComposableSingletons$AssessmentFormBffComponentKt.f57068i, 3);
                break;
            default:
                OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) obj6;
                OsaReasonsFormViewState osaReasonsFormViewState = (OsaReasonsFormViewState) obj5;
                Function0 function6 = (Function0) function;
                Function0 function7 = (Function0) obj4;
                Function2 function8 = (Function2) obj3;
                Function2 function9 = (Function2) obj2;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                if (osaLocationFormViewState.q) {
                    LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(-1624972955, true, new n4((Object) osaReasonsFormViewState, (Object) this.f69339c, this.d, (Object) osaLocationFormViewState, (Object) this.f69340e, 17)), 3);
                }
                if (!osaReasonsFormViewState.f60971e || osaLocationFormViewState.v != null) {
                    LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(-663566770, true, new lf(osaLocationFormViewState, this.f69341f, function6, function7, this.g, function8, function9, this.f69342h)), 3);
                }
                ComposableSingletons$OsaLocationFormScreenKt.f60801a.getClass();
                LazyListScope.f(lazyListScope2, null, ComposableSingletons$OsaLocationFormScreenKt.f60802b, 3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ g9(OsaLocationFormViewState osaLocationFormViewState, OsaReasonsFormViewState osaReasonsFormViewState, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function1 function6, Function2 function7, Function2 function8, Function1 function9) {
        this.f69343i = osaLocationFormViewState;
        this.f69344j = osaReasonsFormViewState;
        this.f69339c = function1;
        this.d = function0;
        this.f69340e = function2;
        this.f69341f = function3;
        this.f69345k = function4;
        this.l = function5;
        this.g = function6;
        this.m = function7;
        this.n = function8;
        this.f69342h = function9;
    }
}
