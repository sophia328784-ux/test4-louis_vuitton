package defpackage;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.navigation3.scene.SceneState;
import androidx.navigation3.ui.NavDisplayKt;
import androidx.navigationevent.compose.NavigationEventState;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSearchBar;
import com.vuitton.android.designkit.ui.theme.molecules.LVTextFieldInternal;
import com.vuitton.android.presentation.common.editorial.components.AuthenticationSectionKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryBottomSheetContentKt;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateUiModel;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt;
import com.vuitton.android.presentation.screen.placesearch.models.PlacesUiModel;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w3 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80739c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f80740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80741f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f80742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80743i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80744j;

    public /* synthetic */ w3(SnackbarHostState snackbarHostState, PlacesUiModel placesUiModel, Function2 function2, Function1 function1, PlaceSearchActivity.PlaceInfoType placeInfoType, String str, Function0 function0, int i2) {
        this.f80738b = 11;
        this.f80741f = snackbarHostState;
        this.g = placesUiModel;
        this.d = function2;
        this.f80743i = function1;
        this.f80742h = placeInfoType;
        this.f80744j = str;
        this.f80739c = function0;
        this.f80740e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80738b;
        Object obj3 = this.f80739c;
        Object obj4 = this.f80744j;
        Object obj5 = this.f80742h;
        Object obj6 = this.f80743i;
        Object obj7 = this.g;
        int i3 = this.f80740e;
        Object obj8 = this.d;
        Object obj9 = this.f80741f;
        switch (i2) {
            case 0:
                ((Integer) obj2).intValue();
                AddCertificateComposableKt.d((SnackbarHostState) obj9, (AddCertificateUiModel) obj7, (Function0) obj3, (Function0) obj8, (Function1) obj6, (Function1) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                ((Integer) obj2).intValue();
                AuthenticationSectionKt.a((Modifier) obj9, (String) obj7, (String) obj5, (AssetImageUiModel) obj6, (LVColorScheme) obj4, (Function0) obj3, (Function0) obj8, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                CatalogSubcategoryBottomSheetContentKt.a((LazyListState) obj9, (EditorialModuleUiModel.CarouselMUiModel) obj7, (List) obj3, (String) obj8, (A11ySettings) obj5, (Function1) obj6, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3) | 1;
                ((ComposableLambdaImpl) obj9).d(this.g, this.f80739c, (Boolean) obj8, this.f80742h, this.f80743i, this.f80744j, (Composer) obj, iA);
                break;
            case 4:
                ((Integer) obj2).getClass();
                LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48685a;
                ((LVTextFieldInternal) obj9).a((String) obj7, (String) obj3, (ComposableLambdaImpl) obj8, (ComposableLambdaImpl) obj5, (Function2) obj6, (ConfigurationSearchBar) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).intValue();
                MyInformationScreenKt.d((PaddingValues) obj9, (MyInformationViewState) obj7, (Function0) obj3, (Function0) obj8, (Function0) obj5, (Function0) obj6, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                NavDisplayKt.a((SceneState) obj9, (NavigationEventState) obj7, (Modifier) obj3, (Alignment) obj8, (Function1) obj6, (Function1) obj4, (Function2) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                OnboardingIconComposableKt.a((OnboardingViewState) obj9, (Function0) obj3, (Function0) obj8, (Function1) obj6, (Function1) obj4, (Function1) obj7, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 8:
                ((Integer) obj2).intValue();
                OrderDetailScreenKt.d((OrderViewState) obj7, (SnackbarHostState) obj9, (Function0) obj3, (Function4) obj8, (Function2) obj5, (Function3) obj6, (Function4) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 9:
                ((Integer) obj2).intValue();
                OrderExchangeVariantSelectionScreenKt.b((OrderReturnOrExchangeViewState) obj7, (SnackbarHostState) obj9, (Function1) obj6, (Function3) obj5, (Function0) obj3, (Function1) obj4, (Function0) obj8, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 10:
                ((Integer) obj2).intValue();
                OrderReturnOrExchangeSelectionScreenKt.b((OrderReturnOrExchangeViewState) obj7, (SnackbarHostState) obj9, (Function0) obj3, (Function0) obj8, (Function0) obj5, (Function0) obj6, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                PlaceSearchPageComposableKt.d((SnackbarHostState) obj9, (PlacesUiModel) obj7, (Function2) obj8, (Function1) obj6, (PlaceSearchActivity.PlaceInfoType) obj5, (String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ w3(Modifier modifier, String str, String str2, AssetImageUiModel assetImageUiModel, LVColorScheme lVColorScheme, Function0 function0, Function0 function1, int i2) {
        this.f80738b = 1;
        this.f80741f = modifier;
        this.g = str;
        this.f80742h = str2;
        this.f80743i = assetImageUiModel;
        this.f80744j = lVColorScheme;
        this.f80739c = function0;
        this.d = function1;
        this.f80740e = i2;
    }

    public /* synthetic */ w3(OnboardingViewState onboardingViewState, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function5, int i2) {
        this.f80738b = 7;
        this.f80741f = onboardingViewState;
        this.f80739c = function0;
        this.d = function1;
        this.f80743i = function2;
        this.f80744j = function3;
        this.g = function4;
        this.f80742h = function5;
        this.f80740e = i2;
    }

    public /* synthetic */ w3(OrderReturnOrExchangeViewState orderReturnOrExchangeViewState, SnackbarHostState snackbarHostState, Function1 function1, Function3 function3, Function0 function0, Function1 function2, Function0 function4, int i2) {
        this.f80738b = 9;
        this.g = orderReturnOrExchangeViewState;
        this.f80741f = snackbarHostState;
        this.f80743i = function1;
        this.f80742h = function3;
        this.f80739c = function0;
        this.f80744j = function2;
        this.d = function4;
        this.f80740e = i2;
    }

    public /* synthetic */ w3(Object obj, SnackbarHostState snackbarHostState, Function0 function0, Function function, Function function2, Function function3, Function function4, int i2, int i3) {
        this.f80738b = i3;
        this.g = obj;
        this.f80741f = snackbarHostState;
        this.f80739c = function0;
        this.d = function;
        this.f80742h = function2;
        this.f80743i = function3;
        this.f80744j = function4;
        this.f80740e = i2;
    }

    public /* synthetic */ w3(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, int i2, int i3) {
        this.f80738b = i3;
        this.f80741f = obj;
        this.g = obj2;
        this.f80739c = obj3;
        this.d = obj4;
        this.f80742h = obj5;
        this.f80743i = obj6;
        this.f80744j = obj7;
        this.f80740e = i2;
    }

    public /* synthetic */ w3(Object obj, Object obj2, Object obj3, Object obj4, Function1 function1, Function1 function2, Function function, int i2, int i3) {
        this.f80738b = i3;
        this.f80741f = obj;
        this.g = obj2;
        this.f80739c = obj3;
        this.d = obj4;
        this.f80743i = function1;
        this.f80744j = function2;
        this.f80742h = function;
        this.f80740e = i2;
    }
}
