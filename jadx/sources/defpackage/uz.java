package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordScreenKt;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordViewState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainNavBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class uz implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80440b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80441c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f80442e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f80443f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f80444h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f80445i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function2 f80446j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function1 f80447k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ Function1 m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ uz(Modifier modifier, MainNavigationState mainNavigationState, QuickAccessFiltersViewState quickAccessFiltersViewState, boolean z, boolean z2, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function1 function4, Function2 function5, Function1 function6, Function0 function7, Function1 function8, int i2) {
        this.n = modifier;
        this.o = mainNavigationState;
        this.p = quickAccessFiltersViewState;
        this.f80441c = z;
        this.d = z2;
        this.f80442e = function0;
        this.f80443f = function1;
        this.g = function2;
        this.f80444h = function3;
        this.f80445i = function4;
        this.f80446j = function5;
        this.f80447k = function6;
        this.l = function7;
        this.m = function8;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80440b;
        Object obj3 = this.p;
        Object obj4 = this.o;
        Object obj5 = this.n;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(385);
                ForgetPasswordScreenKt.a((ForgetPasswordViewState) obj5, (PagerState) obj4, (SnackbarHostState) obj3, this.f80441c, this.f80445i, this.f80442e, this.f80443f, this.f80447k, this.f80446j, this.d, this.g, this.f80444h, this.l, this.m, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(805306369);
                MainNavBarKt.a((Modifier) obj5, (MainNavigationState) obj4, (QuickAccessFiltersViewState) obj3, this.f80441c, this.d, this.f80442e, this.f80443f, this.g, this.f80444h, this.f80445i, this.f80446j, this.f80447k, this.l, this.m, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ uz(ForgetPasswordViewState forgetPasswordViewState, PagerState pagerState, SnackbarHostState snackbarHostState, boolean z, Function1 function1, Function0 function0, Function0 function2, Function1 function3, Function2 function4, boolean z2, Function0 function5, Function0 function6, Function0 function7, Function1 function8, int i2) {
        this.n = forgetPasswordViewState;
        this.o = pagerState;
        this.p = snackbarHostState;
        this.f80441c = z;
        this.f80445i = function1;
        this.f80442e = function0;
        this.f80443f = function2;
        this.f80447k = function3;
        this.f80446j = function4;
        this.d = z2;
        this.g = function5;
        this.f80444h = function6;
        this.l = function7;
        this.m = function8;
    }
}
