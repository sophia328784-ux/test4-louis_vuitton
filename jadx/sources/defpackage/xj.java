package defpackage;

import androidx.compose.material3.DateInputKt;
import androidx.compose.material3.DateInputValidator;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.catalog.CatalogViewModel;
import com.vuitton.android.presentation.screen.catalog.components.CatalogComposableKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xj implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81136b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f81137c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f81138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81139f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81140h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81141i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f81142j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f81143k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ xj(Modifier modifier, Long l, Function1 function1, CalendarModel calendarModel, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, DateInputValidator dateInputValidator, DateInputFormat dateInputFormat, Locale locale, DatePickerColors datePickerColors, FocusRequester focusRequester, int i2, int i3) {
        this.f81139f = modifier;
        this.g = l;
        this.f81137c = function1;
        this.f81140h = calendarModel;
        this.f81141i = composableLambdaImpl;
        this.f81142j = composableLambdaImpl2;
        this.f81143k = dateInputValidator;
        this.l = dateInputFormat;
        this.m = locale;
        this.n = datePickerColors;
        this.o = focusRequester;
        this.d = i2;
        this.f81138e = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81136b;
        int i3 = this.f81138e;
        int i4 = this.d;
        Object obj3 = this.o;
        Object obj4 = this.n;
        Object obj5 = this.m;
        Object obj6 = this.l;
        Object obj7 = this.f81143k;
        Object obj8 = this.f81142j;
        Object obj9 = this.f81141i;
        Object obj10 = this.f81140h;
        Object obj11 = this.g;
        Object obj12 = this.f81139f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i4 | 1);
                int iA2 = RecomposeScopeImplKt.a(i3);
                CatalogComposableKt.a((CatalogRoute) obj12, (MainNavigationState) obj11, (NavHostController) obj10, (CatalogViewModel) obj9, (ContributionLinkNavigator) obj8, (QuickAccessFiltersViewModel) obj7, (Function3) obj6, this.f81137c, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, iA, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i4 | 1);
                int iA4 = RecomposeScopeImplKt.a(i3);
                DateInputKt.b((Modifier) obj12, (Long) obj11, this.f81137c, (CalendarModel) obj10, (ComposableLambdaImpl) obj9, (ComposableLambdaImpl) obj8, (DateInputValidator) obj7, (DateInputFormat) obj6, (Locale) obj5, (DatePickerColors) obj4, (FocusRequester) obj3, (Composer) obj, iA3, iA4);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ xj(CatalogRoute catalogRoute, MainNavigationState mainNavigationState, NavHostController navHostController, CatalogViewModel catalogViewModel, ContributionLinkNavigator contributionLinkNavigator, QuickAccessFiltersViewModel quickAccessFiltersViewModel, Function3 function3, Function1 function1, Function0 function0, Function0 function2, Function0 function4, int i2, int i3) {
        this.f81139f = catalogRoute;
        this.g = mainNavigationState;
        this.f81140h = navHostController;
        this.f81141i = catalogViewModel;
        this.f81142j = contributionLinkNavigator;
        this.f81143k = quickAccessFiltersViewModel;
        this.l = function3;
        this.f81137c = function1;
        this.m = function0;
        this.n = function2;
        this.o = function4;
        this.d = i2;
        this.f81138e = i3;
    }
}
