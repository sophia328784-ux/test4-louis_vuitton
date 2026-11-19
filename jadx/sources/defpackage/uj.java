package defpackage;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.presentation.compose.components.AvatarSize;
import com.vuitton.android.presentation.compose.components.LVAvatarKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.cart.NativeCartNavHostKt;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormKt;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationCardState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class uj implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f80329c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80331f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f80332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80333i;

    public /* synthetic */ uj(qb0 qb0Var, Context context, Function3 function3, int i2, int i3, Function0 function0, ContributionLinkNavigator contributionLinkNavigator) {
        this.f80328b = 0;
        this.f80330e = qb0Var;
        this.f80331f = context;
        this.g = function3;
        this.f80329c = i2;
        this.d = i3;
        this.f80332h = function0;
        this.f80333i = contributionLinkNavigator;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80328b;
        int i3 = this.f80329c;
        Object obj3 = this.f80332h;
        Object obj4 = this.f80333i;
        Object obj5 = this.g;
        Object obj6 = this.f80331f;
        Object obj7 = this.f80330e;
        switch (i2) {
            case 0:
                qb0 qb0Var = (qb0) obj7;
                Context context = (Context) obj6;
                Function3 function3 = (Function3) obj5;
                Function0 function0 = (Function0) obj3;
                ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj4;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
                    if (viewModelStoreOwnerA != null) {
                        HiltViewModelFactory hiltViewModelFactoryA = HiltViewModelKt.a(viewModelStoreOwnerA, composer);
                        CreationExtras defaultViewModelCreationExtras = viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
                        ReflectionFactory reflectionFactory = Reflection.f71922a;
                        byte b2 = 0;
                        NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) ViewModelKt.a(reflectionFactory.b(NativeCartViewModelImpl.class), viewModelStoreOwnerA, null, hiltViewModelFactoryA, defaultViewModelCreationExtras, composer);
                        ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer);
                        if (viewModelStoreOwnerA2 != null) {
                            ReinsuranceViewModel reinsuranceViewModel = (ReinsuranceViewModel) ViewModelKt.a(reflectionFactory.b(ReinsuranceViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
                            CartPreviousScreen cartPreviousScreen = CartPreviousScreen.MAIN;
                            boolean zY = composer.y(context);
                            Object objX = composer.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (zY || objX == composer$Companion$Empty$1) {
                                objX = new sj(context, b2, b2);
                                composer.q(objX);
                            }
                            Function2 function2 = (Function2) objX;
                            boolean zK = composer.K(function3) | composer.d(i3);
                            int i4 = this.d;
                            boolean zD = zK | composer.d(i4);
                            Object objX2 = composer.x();
                            if (zD || objX2 == composer$Companion$Empty$1) {
                                objX2 = new tj(function3, i3, i4, 0);
                                composer.q(objX2);
                            }
                            Function1 function1 = (Function1) objX2;
                            boolean zY2 = composer.y(contributionLinkNavigator) | composer.y(context);
                            Object objX3 = composer.x();
                            if (zY2 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new m(contributionLinkNavigator, context, 1);
                                composer.q(objX3);
                            }
                            Function1 function4 = (Function1) objX3;
                            boolean zY3 = composer.y(contributionLinkNavigator) | composer.y(context);
                            Object objX4 = composer.x();
                            if (zY3 || objX4 == composer$Companion$Empty$1) {
                                objX4 = new m(contributionLinkNavigator, context, 2);
                                composer.q(objX4);
                            }
                            NativeCartNavHostKt.a(nativeCartViewModel, reinsuranceViewModel, cartPreviousScreen, qb0Var, function2, function1, function0, function4, (Function1) objX4, composer, KyberEngine.KyberPolyBytes);
                        } else {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        }
                    } else {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    }
                    return null;
                }
                composer.D();
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                CertificateFormKt.a((Modifier) obj7, (InAppDispatch) obj6, (CertificateFormState) obj5, (List) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.d);
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                CustomizationConfigurationCardKt.a((Modifier) obj7, (CustomizationConfigurationUiModel) obj6, (CustomizationCardState) obj5, (String) obj3, (String) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.d);
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                LVAvatarKt.a((Modifier) obj7, (AvatarItemUiModel) obj6, (String) obj5, (AvatarSize) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.d);
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                ThankYouScreenKt.m((Modifier) obj7, (SnackbarHostState) obj6, (ThankYouViewState) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), this.d);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ uj(Modifier modifier, SnackbarHostState snackbarHostState, ThankYouViewState thankYouViewState, Function1 function1, Function0 function0, int i2, int i3) {
        this.f80328b = 4;
        this.f80330e = modifier;
        this.f80331f = snackbarHostState;
        this.g = thankYouViewState;
        this.f80333i = function1;
        this.f80332h = function0;
        this.f80329c = i2;
        this.d = i3;
    }

    public /* synthetic */ uj(Modifier modifier, Object obj, Object obj2, Object obj3, Object obj4, int i2, int i3, int i4) {
        this.f80328b = i4;
        this.f80330e = modifier;
        this.f80331f = obj;
        this.g = obj2;
        this.f80332h = obj3;
        this.f80333i = obj4;
        this.f80329c = i2;
        this.d = i3;
    }
}
