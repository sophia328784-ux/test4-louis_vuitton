package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthContentKt;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialRegisterLayoutKt;
import com.vuitton.android.presentation.screen.options.settings.SettingsNavHostKt;
import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListItemKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightDataItemKt;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel2ScreenKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistComposableKt;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zs0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f81708c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81710f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81711h;

    public /* synthetic */ zs0(StoreModeViewModel storeModeViewModel, StoreModeViewState storeModeViewState, String str, Function1 function1, Function0 function0, Function0 function2, int i2) {
        this.f81707b = 8;
        this.d = storeModeViewModel;
        this.f81709e = storeModeViewState;
        this.g = str;
        this.f81710f = function1;
        this.f81708c = function0;
        this.f81711h = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f81707b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                RepairListItemKt.c((RepairsViewState) this.d, (CareServiceUiModel) this.f81709e, this.f81708c, (Function1) this.f81710f, (Function1) this.g, (Function1) this.f81711h, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                SettingsComposableKt.e((SettingsViewModel) this.d, (PrivacyViewModel) this.f81709e, this.f81708c, (Function0) this.f81710f, (Function0) this.g, (Function0) this.f81711h, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                SettingsNavHostKt.a((NavHostController) this.d, (SettingsViewModel) this.f81709e, (PrivacyViewModel) this.f81710f, (MyInformationViewModel) this.g, this.f81708c, (Function0) this.f81711h, (Composer) obj, iA3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(49);
                ShadeFinderResultScreenKt.d((ShadeFinderViewState) this.d, (SnackbarHostState) this.f81709e, this.f81708c, (Function1) this.f81710f, (Function2) this.f81711h, (Function1) this.g, (Composer) obj, iA4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(1);
                SharedWishlistComposableKt.a((WishlistViewModel) this.d, (String) this.f81709e, this.f81708c, (Function2) this.g, (Function1) this.f81710f, (Function0) this.f81711h, (Composer) obj, iA5);
                break;
            case 5:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(49);
                SocialRegisterLayoutKt.a((SocialRegisterViewModel) this.d, (Modifier) this.f81709e, (Function2) this.f81710f, this.f81708c, (Function0) this.g, (Function0) this.f81711h, (Composer) obj, iA6);
                break;
            case 6:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(1);
                SpotlightDataItemKt.a((Modifier) this.d, (String) this.f81709e, (String) this.f81710f, (String) this.g, (String) this.f81711h, this.f81708c, (Composer) obj, iA7);
                break;
            case 7:
                ((Integer) obj2).getClass();
                int iA8 = RecomposeScopeImplKt.a(1);
                StoreModeHomeComposableKt.b((StoreModeViewModel) this.d, (PSPStoreModeViewModel) this.f81709e, this.f81708c, (Function0) this.g, (Function0) this.f81711h, (Function1) this.f81710f, (Composer) obj, iA8);
                break;
            case 8:
                ((Integer) obj2).getClass();
                int iA9 = RecomposeScopeImplKt.a(1);
                StoreModeLevel2ScreenKt.a((StoreModeViewModel) this.d, (StoreModeViewState) this.f81709e, (String) this.g, (Function1) this.f81710f, this.f81708c, (Function0) this.f81711h, (Composer) obj, iA9);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA10 = RecomposeScopeImplKt.a(1);
                WebViewAuthContentKt.a((AuthenticationViewModel) this.d, (AkamaiSecurityHelper) this.f81709e, (AnalyticsWebInterface) this.f81710f, this.f81708c, (Function0) this.g, (Modifier) this.f81711h, (Composer) obj, iA10);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ zs0(NavHostController navHostController, SettingsViewModel settingsViewModel, PrivacyViewModel privacyViewModel, MyInformationViewModel myInformationViewModel, Function0 function0, Function0 function1, int i2) {
        this.f81707b = 2;
        this.d = navHostController;
        this.f81709e = settingsViewModel;
        this.f81710f = privacyViewModel;
        this.g = myInformationViewModel;
        this.f81708c = function0;
        this.f81711h = function1;
    }

    public /* synthetic */ zs0(ShadeFinderViewState shadeFinderViewState, SnackbarHostState snackbarHostState, Function0 function0, Function1 function1, Function2 function2, Function1 function3, int i2) {
        this.f81707b = 3;
        this.d = shadeFinderViewState;
        this.f81709e = snackbarHostState;
        this.f81708c = function0;
        this.f81710f = function1;
        this.f81711h = function2;
        this.g = function3;
    }

    public /* synthetic */ zs0(StoreModeViewModel storeModeViewModel, PSPStoreModeViewModel pSPStoreModeViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, int i2) {
        this.f81707b = 7;
        this.d = storeModeViewModel;
        this.f81709e = pSPStoreModeViewModel;
        this.f81708c = function0;
        this.g = function1;
        this.f81711h = function2;
        this.f81710f = function3;
    }

    public /* synthetic */ zs0(Modifier modifier, String str, String str2, String str3, String str4, Function0 function0, int i2) {
        this.f81707b = 6;
        this.d = modifier;
        this.f81709e = str;
        this.f81710f = str2;
        this.g = str3;
        this.f81711h = str4;
        this.f81708c = function0;
    }

    public /* synthetic */ zs0(WishlistViewModel wishlistViewModel, String str, Function0 function0, Function2 function2, Function1 function1, Function0 function3, int i2) {
        this.f81707b = 4;
        this.d = wishlistViewModel;
        this.f81709e = str;
        this.f81708c = function0;
        this.g = function2;
        this.f81710f = function1;
        this.f81711h = function3;
    }

    public /* synthetic */ zs0(Object obj, Object obj2, Object obj3, Function0 function0, Function0 function1, Object obj4, int i2, int i3) {
        this.f81707b = i3;
        this.d = obj;
        this.f81709e = obj2;
        this.f81710f = obj3;
        this.f81708c = function0;
        this.g = function1;
        this.f81711h = obj4;
    }

    public /* synthetic */ zs0(Object obj, Object obj2, Function0 function0, Function function, Function function2, Function function3, int i2, int i3) {
        this.f81707b = i3;
        this.d = obj;
        this.f81709e = obj2;
        this.f81708c = function0;
        this.f81710f = function;
        this.g = function2;
        this.f81711h = function3;
    }
}
