package defpackage;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryKt;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanComposableKt;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairProductComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step3StateUIModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.navigation.CatalogNavigationKt;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListComposableKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ik implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f69994c;
    public final /* synthetic */ Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function f69995e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function f69996f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f70000k;
    public final /* synthetic */ Object l;

    public /* synthetic */ ik(CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl, Function0 function0, Function3 function3, Function0 function1, Function0 function2, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function1 function8, int i2) {
        this.f69993b = 1;
        this.g = certificateNfcScanViewModelImpl;
        this.f69994c = function0;
        this.d = function3;
        this.f69995e = function1;
        this.f69996f = function2;
        this.f69997h = function4;
        this.f69998i = function5;
        this.f69999j = function6;
        this.f70000k = function7;
        this.l = function8;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69993b;
        Function function = this.d;
        Object obj3 = this.l;
        Object obj4 = this.f70000k;
        Object obj5 = this.f69999j;
        Object obj6 = this.f69998i;
        Object obj7 = this.f69997h;
        Function function2 = this.f69996f;
        Function function3 = this.f69995e;
        Object obj8 = this.g;
        switch (i2) {
            case 0:
                MainNavigationState mainNavigationState = (MainNavigationState) obj8;
                Context context = (Context) obj7;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj6;
                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) obj5;
                PassAppLinkBuilder passAppLinkBuilder = (PassAppLinkBuilder) obj4;
                ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj3;
                Function3 function4 = (Function3) function;
                Function0 function0 = (Function0) function3;
                Function0 function1 = (Function0) function2;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    CatalogNavigationKt.a(mainNavigationState, context, (CatalogRoute) NavBackStackEntryKt.a(navBackStackEntry, Reflection.f71922a.b(CatalogRoute.class)), null, quickAccessFiltersViewModel, passAppLinkBuilder, contributionLinkNavigator, function4, this.f69994c, function0, function1, composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 1:
                ((Integer) obj2).getClass();
                CertificateNfcScanComposableKt.a((CertificateNfcScanViewModelImpl) obj8, this.f69994c, (Function3) function, (Function0) function3, (Function0) function2, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                DistantRepairProductComponentKt.a((StepState) obj8, (DistantRepairContactMethod) obj7, (Step3StateUIModel) obj6, (List) obj5, (Function1) obj4, (Function1) obj3, (Function1) function, (Function1) function3, (Function1) function2, this.f69994c, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                RepairListBffComposableKt.a((RepairBffViewModel) obj8, this.f69994c, (Function0) function3, (Function0) function2, (Function1) obj7, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Function0) obj3, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            default:
                ((Integer) obj2).getClass();
                RepairListComposableKt.a((RepairViewModel) obj8, this.f69994c, (Function0) function3, (Function0) function2, (Function1) obj7, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Function0) obj3, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ik(ContactUsDelegate contactUsDelegate, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, Function0 function7, Function1 function8, int i2, int i3) {
        this.f69993b = i3;
        this.g = contactUsDelegate;
        this.f69994c = function0;
        this.f69995e = function1;
        this.f69996f = function2;
        this.f69997h = function3;
        this.f69998i = function4;
        this.f69999j = function5;
        this.f70000k = function6;
        this.l = function7;
        this.d = function8;
    }

    public /* synthetic */ ik(StepState stepState, DistantRepairContactMethod distantRepairContactMethod, Step3StateUIModel step3StateUIModel, List list, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, int i2) {
        this.f69993b = 2;
        this.g = stepState;
        this.f69997h = distantRepairContactMethod;
        this.f69998i = step3StateUIModel;
        this.f69999j = list;
        this.f70000k = function1;
        this.l = function2;
        this.d = function3;
        this.f69995e = function4;
        this.f69996f = function5;
        this.f69994c = function0;
    }

    public /* synthetic */ ik(MainNavigationState mainNavigationState, Context context, NavBackStackEntry navBackStackEntry, QuickAccessFiltersViewModel quickAccessFiltersViewModel, PassAppLinkBuilder passAppLinkBuilder, ContributionLinkNavigator contributionLinkNavigator, Function3 function3, Function0 function0, Function0 function1, Function0 function2) {
        this.f69993b = 0;
        this.g = mainNavigationState;
        this.f69997h = context;
        this.f69998i = navBackStackEntry;
        this.f69999j = quickAccessFiltersViewModel;
        this.f70000k = passAppLinkBuilder;
        this.l = contributionLinkNavigator;
        this.d = function3;
        this.f69994c = function0;
        this.f69995e = function1;
        this.f69996f = function2;
    }
}
