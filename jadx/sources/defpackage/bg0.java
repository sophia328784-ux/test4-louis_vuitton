package defpackage;

import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavController$onBackPressedCallback$1;
import androidx.navigation.NavGraph;
import androidx.navigation.NavInflater;
import com.vuitton.android.presentation.screen.options.OptionsRoutes;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bg0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavController f20859c;

    public /* synthetic */ bg0(NavController navController, int i2) {
        this.f20858b = i2;
        this.f20859c = navController;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2;
        int i3 = this.f20858b;
        NavController navController = this.f20859c;
        switch (i3) {
            case 0:
                NavController$onBackPressedCallback$1 navController$onBackPressedCallback$1 = navController.f18125f;
                boolean z = false;
                if (navController.g) {
                    ArrayDeque arrayDeque = navController.f18122b.f18336f;
                    if (arrayDeque == null || !arrayDeque.isEmpty()) {
                        Iterator<E> it = arrayDeque.iterator();
                        i2 = 0;
                        while (it.hasNext()) {
                            if (!(((NavBackStackEntry) it.next()).f18113c instanceof NavGraph) && (i2 = i2 + 1) < 0) {
                                CollectionsKt.s0();
                                throw null;
                            }
                        }
                    } else {
                        i2 = 0;
                    }
                    if (i2 > 1) {
                        z = true;
                    }
                }
                navController$onBackPressedCallback$1.f(z);
                return Unit.f71739a;
            case 1:
                boolean z2 = NavController.f18120i;
                return new NavInflater(navController.f18121a, navController.f18122b.t);
            case 2:
                NavController.d(navController, OptionsRoutes.LegalMentions.INSTANCE, null, 6);
                return Unit.f71739a;
            case 3:
                NavController.d(navController, OptionsRoutes.PrivacyPolicy.INSTANCE, null, 6);
                return Unit.f71739a;
            case 4:
                NavController.d(navController, OptionsRoutes.Dispatch.INSTANCE, null, 6);
                return Unit.f71739a;
            default:
                NavController.d(navController, OptionsRoutes.Accessibility.INSTANCE, null, 6);
                return Unit.f71739a;
        }
    }
}
