package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVNavBarScopeInstance;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.designkit.ui.theme.templates.bottomsheet.BottomSheetIconScopeInstance;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPDispatchFilterComposableKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.ServicesViewModelImpl;
import com.vuitton.android.presentation.screen.services.components.ServicesComposableKt;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import com.vuitton.android.presentation.screen.webview.WebViewUiModel;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dh implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f68581c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f68582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f68583f;

    public /* synthetic */ dh(int i2, Function0 function0, Function1 function1, int i3) {
        this.f68580b = 2;
        this.f68581c = i2;
        this.f68582e = function0;
        this.f68583f = function1;
        this.d = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68580b;
        int i3 = 13;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i4 = this.d;
        int i5 = this.f68581c;
        Object obj3 = this.f68583f;
        Object obj4 = this.f68582e;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                ((BottomSheetIconScopeInstance) obj4).a((Modifier) obj3, (Composer) obj, i5, RecomposeScopeImplKt.a(i4 | 1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                DispatchComposableKt.b((Pair) obj4, this.f68581c, this.d, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).intValue();
                DistantRepairFormBottomSheetScreenKt.a(i5, (Function0) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                ((LVNavBarScopeInstance) obj4).a(i5, RecomposeScopeImplKt.a(i4 | 1), (Composer) obj, (String) obj3);
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                LVSnackbarKt.a((Modifier) obj3, (SnackbarHostState) obj4, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i4);
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).intValue();
                PLPDispatchFilterComposableKt.a((ProductFilterValueUiModel) obj4, i5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1));
                return Unit.f71739a;
            case 6:
                Function3 function3 = (Function3) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                    if (viewModelStoreOwnerA == null) {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return null;
                    }
                    ServicesViewModel servicesViewModel = (ServicesViewModel) ViewModelKt.a(Reflection.f71922a.b(ServicesViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                    boolean zK = composer.K(function3) | composer.d(i5) | composer.d(i4);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new tj(function3, i5, i4, 13);
                        composer.q(objX);
                    }
                    ServicesComposableKt.a(servicesViewModel, (Function1) objX, function0, composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                WebViewFragment webViewFragment = (WebViewFragment) obj4;
                MutableState mutableState = (MutableState) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                WebViewFragment.Companion companion = WebViewFragment.n1;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ContactUsUiModel contactUsUiModel = ((WebViewUiModel) mutableState.getF10755b()).f65535a;
                    boolean zY = composer2.y(webViewFragment);
                    Object objX2 = composer2.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new l61(webViewFragment, i3);
                        composer2.q(objX2);
                    }
                    Function0 function1 = (Function0) objX2;
                    boolean zY2 = composer2.y(webViewFragment) | composer2.d(i5) | composer2.d(i4);
                    Object objX3 = composer2.x();
                    if (zY2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new a20(i5, i4, 3, webViewFragment);
                        composer2.q(objX3);
                    }
                    ContactUsIconKt.a(null, contactUsUiModel, function1, (Function0) objX3, false, null, composer2, 0, 49);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ dh(Modifier modifier, SnackbarHostState snackbarHostState, int i2, int i3) {
        this.f68580b = 4;
        this.f68583f = modifier;
        this.f68582e = snackbarHostState;
        this.f68581c = i2;
        this.d = i3;
    }

    public /* synthetic */ dh(ProductFilterValueUiModel productFilterValueUiModel, int i2, Function0 function0, int i3) {
        this.f68580b = 5;
        this.f68582e = productFilterValueUiModel;
        this.f68581c = i2;
        this.f68583f = function0;
        this.d = i3;
    }

    public /* synthetic */ dh(Object obj, int i2, int i3, Object obj2, int i4) {
        this.f68580b = i4;
        this.f68582e = obj;
        this.f68581c = i2;
        this.d = i3;
        this.f68583f = obj2;
    }

    public /* synthetic */ dh(Object obj, Object obj2, int i2, int i3, int i4) {
        this.f68580b = i4;
        this.f68582e = obj;
        this.f68583f = obj2;
        this.f68581c = i2;
        this.d = i3;
    }

    public /* synthetic */ dh(Pair pair, int i2, int i3, Function1 function1, int i4) {
        this.f68580b = 1;
        this.f68582e = pair;
        this.f68581c = i2;
        this.d = i3;
        this.f68583f = function1;
    }
}
