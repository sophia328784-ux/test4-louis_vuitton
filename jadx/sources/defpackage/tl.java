package defpackage;

import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsNavHostKt;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tl implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavHostController f80096c;

    public /* synthetic */ tl(NavHostController navHostController, int i2) {
        this.f80095b = i2;
        this.f80096c = navHostController;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SavedStateHandle savedStateHandleA;
        SavedStateHandle savedStateHandleA2;
        int i2 = this.f80095b;
        NavHostController navHostController = this.f80096c;
        String str = (String) obj;
        switch (i2) {
            case 0:
                String str2 = (String) obj2;
                str.getClass();
                str2.getClass();
                NavBackStackEntry navBackStackEntryH = navHostController.f18122b.h();
                if (navBackStackEntryH != null && (savedStateHandleA2 = navBackStackEntryH.a()) != null) {
                    savedStateHandleA2.b(str, "owner");
                }
                NavBackStackEntry navBackStackEntryH2 = navHostController.f18122b.h();
                if (navBackStackEntryH2 != null && (savedStateHandleA = navBackStackEntryH2.a()) != null) {
                    savedStateHandleA.b(str2, "keyword");
                }
                NavController.d(navHostController, CertificateRoute.TransferConfirmation.INSTANCE, null, 6);
                return Unit.f71739a;
            default:
                SelectionTypeUiModel selectionTypeUiModel = (SelectionTypeUiModel) obj2;
                str.getClass();
                selectionTypeUiModel.getClass();
                int i3 = PersonalSelectionsNavHostKt.WhenMappings.f62393a[selectionTypeUiModel.ordinal()];
                if (i3 == 1) {
                    NavController.d(navHostController, new PersonalSelectionsRoute.InStoreDetail(str), null, 6);
                } else {
                    if (i3 != 2) {
                        v40.g();
                        return null;
                    }
                    NavController.d(navHostController, new PersonalSelectionsRoute.AdvisorCurationDetail(str), null, 6);
                }
                return Unit.f71739a;
        }
    }
}
