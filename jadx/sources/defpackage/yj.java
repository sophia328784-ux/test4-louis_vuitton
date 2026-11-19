package defpackage;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.cart.NativeCartRoute;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes;
import com.vuitton.android.presentation.screen.options.OptionsRoutes;
import com.vuitton.android.presentation.screen.options.settings.SettingsRoutes;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleRoutes;
import com.vuitton.android.presentation.screen.wishlist.WishlistRoutes;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yj implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavHostController f81374c;

    public /* synthetic */ yj(NavHostController navHostController, int i2) {
        this.f81373b = i2;
        this.f81374c = navHostController;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f81373b;
        NavHostController navHostController = this.f81374c;
        switch (i2) {
            case 0:
                if (navHostController.f18122b.h() != null && navHostController.b() != null) {
                    navHostController.e();
                }
                break;
            case 1:
                if (navHostController.f18122b.h() != null && navHostController.b() != null) {
                    navHostController.e();
                }
                break;
            case 2:
                if (navHostController.f18122b.h() != null && navHostController.b() != null) {
                    navHostController.e();
                }
                break;
            case 3:
                float f2 = CatalogStoreModeKt.f64850a;
                navHostController.e();
                break;
            case 4:
                NavController.d(navHostController, CertificateRoute.AddConfirmation.INSTANCE, null, 6);
                break;
            case 5:
                NavController.d(navHostController, NativeCartRoute.Packaging.INSTANCE, null, 6);
                break;
            case 6:
                navHostController.e();
                break;
            case 7:
                NavController.d(navHostController, OnboardingRoutes.StartNow.INSTANCE, null, 6);
                break;
            case 8:
                NavController.d(navHostController, OnboardingRoutes.Accessibility.INSTANCE, null, 6);
                break;
            case 9:
                NavController.d(navHostController, OnboardingRoutes.Privacy.INSTANCE, null, 6);
                break;
            case 10:
                navHostController.e();
                break;
            case 11:
                NavController.d(navHostController, OptionsRoutes.PrivacyPolicy.INSTANCE, null, 6);
                break;
            case 12:
                NavController.d(navHostController, OptionsRoutes.AppInfo.INSTANCE, null, 6);
                break;
            case 13:
                NavController.d(navHostController, OptionsRoutes.FeatureFlagMenu.INSTANCE, null, 6);
                break;
            case 14:
                NavController.d(navHostController, PrivacyRoutes.Privacy.INSTANCE, null, 6);
                break;
            case 15:
                NavController.d(navHostController, SettingsRoutes.EditProfile.INSTANCE, null, 6);
                break;
            case 16:
                navHostController.e();
                break;
            case 17:
                NavController.d(navHostController, TheLookImmersiveArticleRoutes.LookDetail.INSTANCE, null, 6);
                break;
            case 18:
                NavController.d(navHostController, WishlistRoutes.Wishlist.INSTANCE, null, 6);
                break;
            default:
                NavController.d(navHostController, WishlistRoutes.Share.INSTANCE, null, 6);
                break;
        }
        return Unit.f71739a;
    }
}
