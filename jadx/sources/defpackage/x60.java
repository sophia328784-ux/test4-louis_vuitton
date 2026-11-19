package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.WindowManager;
import android.view.inputmethod.BaseInputConnection;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import androidx.navigation.NavInflater;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.fragment.DialogFragmentNavigator;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.navigation.fragment.NavHostFragment;
import androidx.navigation.internal.NavControllerImpl;
import coil3.ImageLoader;
import coil3.network.okhttp.internal.CallFactoryNetworkClient;
import com.dynatrace.agent.di.LifecycleModule;
import com.dynatrace.agent.events.enrichment.StoredMetricsSupplier;
import com.dynatrace.agent.storage.preference.MetricsData;
import com.sightcall.mediacapture.presenter.extensions.FragmentExtensionsKt;
import com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment;
import com.vuitton.android.R;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginFragment;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetScreen;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModel;
import com.vuitton.android.presentation.screen.options.OptionsActivity;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.orders.OrderActivity;
import com.vuitton.android.presentation.screen.orders.OrderDestinations;
import com.vuitton.android.presentation.screen.orders.OrderDestinationsKt;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsActivity;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.utils.NotificationUtils;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import okhttp3.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x60 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81040c;

    public /* synthetic */ x60(Object obj, int i2) {
        this.f81039b = i2;
        this.f81040c = obj;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() throws Throwable {
        int i2 = this.f81039b;
        Object obj = this.f81040c;
        switch (i2) {
            case 0:
                LVPassActivity lVPassActivity = (LVPassActivity) obj;
                LVPassActivity.Companion companion = LVPassActivity.s;
                WindowManager.LayoutParams attributes = lVPassActivity.getWindow().getAttributes();
                attributes.getClass();
                attributes.screenBrightness = -1.0f;
                lVPassActivity.getWindow().setAttributes(attributes);
                lVPassActivity.finish();
                return Unit.f71739a;
            case 1:
                DrawModifierNode drawModifierNode = ((LazyLayoutItemAnimator) obj).f5461j;
                if (drawModifierNode != null) {
                    DrawModifierNodeKt.a(drawModifierNode);
                }
                return Unit.f71739a;
            case 2:
                return new BaseInputConnection(((LegacyTextInputMethodRequest) obj).f6226a, false);
            case 3:
                return ((LifecycleModule) obj).g.getF26852j();
            case 4:
                return LightUpActivity.O((LightUpActivity) obj);
            case 5:
                ((MainTopLevelDestination) obj).v(true);
                return Unit.f71739a;
            case 6:
                return FragmentExtensionsKt.getViewModelOwner((MultiMediaFragment) obj);
            case 7:
                return ((Boolean) ((MyInformationViewModelImpl) obj).y.getValue()).booleanValue() ? new StringResourceUiModel.ResId(R.string.mylv_lva_sms_phone_number_mandatory_account_creation_error_message, null, 2, null) : new StringResourceUiModel.ResId(R.string.mandatory_field, null, 2, null);
            case 8:
                return MyLvActivity.H((MyLvActivity) obj);
            case 9:
                ((MyLvViewModel) obj).W(MyLvTrackingUiModel.OrderCarouselFirstSwipeEvent.f59444a);
                return Unit.f71739a;
            case 10:
                ((Function3) obj).A(NativeCartBottomSheetScreen.BottomSheetCommercial.f55058a, null, null);
                return Unit.f71739a;
            case 11:
                NativeLoginFragment nativeLoginFragment = (NativeLoginFragment) obj;
                NativeLoginFragment.Companion companion2 = NativeLoginFragment.A;
                FragmentActivity activity = nativeLoginFragment.getActivity();
                AuthenticationActivity authenticationActivity = activity instanceof AuthenticationActivity ? (AuthenticationActivity) activity : null;
                if (authenticationActivity != null) {
                    authenticationActivity.K(LoginState.LOGGED_IN);
                }
                FragmentActivity activity2 = nativeLoginFragment.getActivity();
                if (activity2 != null) {
                    activity2.finish();
                }
                return Unit.f71739a;
            case 12:
                return (FormUiModel) ((NativeLoginViewModelImpl) obj).g.getF57468c().getValue();
            case 13:
                return ((NavBackStackEntry) obj).f18117i.b();
            case 14:
                NavHostFragment navHostFragment = (NavHostFragment) obj;
                int i3 = NavHostFragment.E;
                Context context = navHostFragment.getContext();
                if (context == null) {
                    md.k("NavController cannot be created before the fragment is attached");
                    return null;
                }
                NavHostController navHostController = new NavHostController(context);
                navHostController.i(navHostFragment);
                ViewModelStore viewModelStore = navHostFragment.getF13587c();
                viewModelStore.getClass();
                navHostController.j(viewModelStore);
                NavControllerImpl navControllerImpl = navHostController.f18122b;
                NavigatorProvider navigatorProvider = navControllerImpl.t;
                Context contextRequireContext = navHostFragment.requireContext();
                contextRequireContext.getClass();
                FragmentManager childFragmentManager = navHostFragment.getChildFragmentManager();
                childFragmentManager.getClass();
                navigatorProvider.a(new DialogFragmentNavigator(contextRequireContext, childFragmentManager));
                NavigatorProvider navigatorProvider2 = navControllerImpl.t;
                Context contextRequireContext2 = navHostFragment.requireContext();
                contextRequireContext2.getClass();
                FragmentManager childFragmentManager2 = navHostFragment.getChildFragmentManager();
                childFragmentManager2.getClass();
                int id = navHostFragment.getId();
                if (id == 0 || id == -1) {
                    id = R.id.nav_host_fragment_container;
                }
                navigatorProvider2.a(new FragmentNavigator(contextRequireContext2, childFragmentManager2, id));
                Bundle bundleA = navHostFragment.getF13586b().a("android-support-nav:fragment:navControllerState");
                if (bundleA != null) {
                    navHostController.g(bundleA);
                }
                navHostFragment.getF13586b().c("android-support-nav:fragment:navControllerState", new dn(navHostController, 3));
                Bundle bundleA2 = navHostFragment.getF13586b().a("android-support-nav:fragment:graphId");
                if (bundleA2 != null) {
                    navHostFragment.C = bundleA2.getInt("android-support-nav:fragment:graphId");
                }
                navHostFragment.getF13586b().c("android-support-nav:fragment:graphId", new dn(navHostFragment, 4));
                int i4 = navHostFragment.C;
                Lazy lazy = navHostController.f18126h;
                if (i4 != 0) {
                    navControllerImpl.v(((NavInflater) lazy.getF71699b()).b(i4), null);
                } else {
                    Bundle arguments = navHostFragment.getArguments();
                    int i5 = arguments != null ? arguments.getInt("android-support-nav:fragment:graphId") : 0;
                    Bundle bundle = arguments != null ? arguments.getBundle("android-support-nav:fragment:startDestinationArgs") : null;
                    if (i5 != 0) {
                        navControllerImpl.v(((NavInflater) lazy.getF71699b()).b(i5), bundle);
                    }
                }
                return navHostController;
            case 15:
                return ((ImageLoader) obj).a();
            case 16:
                NotificationsPreferencesActivity notificationsPreferencesActivity = (NotificationsPreferencesActivity) obj;
                NotificationsPreferencesActivity.Companion companion3 = NotificationsPreferencesActivity.q;
                ((NotificationsPreferencesViewModel) notificationsPreferencesActivity.p.getF71699b()).O7();
                NotificationUtils.b(notificationsPreferencesActivity);
                return Unit.f71739a;
            case 17:
                return new CallFactoryNetworkClient((Call.Factory) ((gp0) obj).mo47invoke());
            case 18:
                return CollectionsKt.O(new StoredMetricsSupplier((MetricsData) obj));
            case 19:
                OptionsActivity.Companion companion4 = OptionsActivity.u;
                NotificationUtils.b((OptionsActivity) obj);
                return Unit.f71739a;
            case 20:
                OrderActivity orderActivity = (OrderActivity) obj;
                OrderActivity.Companion companion5 = OrderActivity.q;
                orderActivity.startActivity(OrderDestinationsKt.a(OrderDestinations.ToCatalogPage.f60087a, orderActivity));
                return Unit.f71739a;
            case 21:
                OsaActivity osaActivity = (OsaActivity) obj;
                OsaActivity.Companion companion6 = OsaActivity.u;
                osaActivity.J().R2(((OsaReasonsFormViewState) ((OsaReasonsFormViewModel) osaActivity.s.getF71699b()).getL().getValue()).d);
                return Unit.f71739a;
            case 22:
                return (FormUiModel) ((OsaContactFormViewModelImpl) obj).f60628h.getF57468c().getValue();
            case 23:
                ((OsaListViewModel) obj).o(OsaTrackingUiModel.PrepareAppointmentEvent.f61008a);
                return Unit.f71739a;
            case 24:
                ((PLPCategoryViewModel) obj).C1(null);
                return Unit.f71739a;
            case 25:
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj;
                appsFlyerUiTracker.getClass();
                appsFlyerUiTracker.a(AppsFlyerEvent.OpenProductLocator.f52955c);
                return Unit.f71739a;
            case 26:
                PdpTracker pdpTracker = (PdpTracker) obj;
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnSwipeYMALCarouselEvent.f61654a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                return Unit.f71739a;
            case 27:
                return Integer.valueOf(((ImmutableList) obj).size());
            case 28:
                PersonalSelectionsActivity personalSelectionsActivity = (PersonalSelectionsActivity) obj;
                ChatLifecycleObserver chatLifecycleObserver = personalSelectionsActivity.q;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver.c(personalSelectionsActivity);
                }
                return Unit.f71739a;
            default:
                ((PersonalSelectionsCurationAdvisorViewModel) obj).h7();
                return Unit.f71739a;
        }
    }
}
