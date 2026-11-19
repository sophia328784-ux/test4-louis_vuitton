package defpackage;

import android.net.Uri;
import androidx.activity.result.ActivityResult;
import androidx.camera.core.impl.utils.MappingRedirectableLiveData;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavHostController;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import androidx.navigationevent.NavigationEventTransitionState;
import androidx.navigationevent.compose.NavigationEventState;
import com.sightcall.advancedannotations.domain.drawer.annotation.PointerAnnotation;
import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.account.myicons.MyIconsActivity;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginFragment;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginRoute;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginRouteName;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.MyBookingsRoutes;
import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.main.MainActivityViewModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainActivityComposableKt;
import com.vuitton.android.presentation.screen.main.models.BottomBarTrackingUiModel;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModel;
import com.vuitton.android.presentation.screen.onboarding.OnboardingViewModel;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingTrackingUiModel;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaDestinations;
import com.vuitton.android.presentation.screen.osa.OsaDestinationsKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.utils.PermissionUtils;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ObjectSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tb0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80033c;

    public /* synthetic */ tb0(Object obj, int i2) {
        this.f80032b = i2;
        this.f80033c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        BottomBarTrackingUiModel bottomBarTrackingUiModel;
        FragmentManager supportFragmentManager;
        int i2 = this.f80032b;
        Object obj2 = this.f80033c;
        switch (i2) {
            case 0:
                MainActivityViewModel mainActivityViewModel = (MainActivityViewModel) obj2;
                MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) obj;
                mainTopLevelDestination.getClass();
                int i3 = MainActivityComposableKt.WhenMappings.f59106a[mainTopLevelDestination.ordinal()];
                if (i3 == 1) {
                    bottomBarTrackingUiModel = BottomBarTrackingUiModel.OnExploreHitEvent.f59118a;
                } else if (i3 == 2) {
                    bottomBarTrackingUiModel = BottomBarTrackingUiModel.OnCatalogHitEvent.f59117a;
                } else if (i3 == 3) {
                    bottomBarTrackingUiModel = BottomBarTrackingUiModel.OnServicesHitEvent.f59119a;
                } else if (i3 == 4) {
                    bottomBarTrackingUiModel = BottomBarTrackingUiModel.OnWishlistHitEvent.f59120a;
                } else {
                    if (i3 != 5) {
                        v40.g();
                        return null;
                    }
                    bottomBarTrackingUiModel = BottomBarTrackingUiModel.OnCartHitEvent.f59116a;
                }
                mainActivityViewModel.p2(bottomBarTrackingUiModel);
                return Unit.f71739a;
            case 1:
                NavOptionsBuilder navOptionsBuilder = (NavOptionsBuilder) obj;
                navOptionsBuilder.getClass();
                NavGraph.Companion companion = NavGraph.f18164i;
                NavGraph navGraphJ = ((MainNavigationState) obj2).f59095a.f18122b.j();
                companion.getClass();
                navOptionsBuilder.d = ((NavDestination) SequencesKt.q(SequencesKt.n(navGraphJ, new ag0(11)))).f18152c.f18344e;
                navOptionsBuilder.f18194e = false;
                PopUpToBuilder popUpToBuilder = new PopUpToBuilder();
                popUpToBuilder.f18216b = true;
                navOptionsBuilder.f18194e = popUpToBuilder.f18215a;
                navOptionsBuilder.f18195f = true;
                navOptionsBuilder.f18192b = true;
                return Unit.f71739a;
            case 2:
                MappingRedirectableLiveData mappingRedirectableLiveData = (MappingRedirectableLiveData) obj2;
                mappingRedirectableLiveData.setValue(mappingRedirectableLiveData.f2426c.mo0apply(obj));
                return Unit.f71739a;
            case 3:
                ((LayoutNodeDrawScope) obj2).R1();
                return Unit.f71739a;
            case 4:
                return ((MatcherMatchResult$groups$1) obj2).h(((Integer) obj).intValue());
            case 5:
                return MediaCaptureFragment.onCreate$lambda$1((MediaCaptureFragment) obj2, (Uri) obj);
            case 6:
                return MultiMediaFragment.onCreateView$lambda$0((MultiMediaFragment) obj2, (Uri) obj);
            case 7:
                BookingPassViewModelImpl.Factory factory = (BookingPassViewModelImpl.Factory) obj;
                factory.getClass();
                return factory.a(((MyBookingsRoutes.Pass) obj2).f54334a);
            case 8:
                MyBookingsRoutes.Modify modify = (MyBookingsRoutes.Modify) obj2;
                BookingExperienceViewModelImpl.Factory factory2 = (BookingExperienceViewModelImpl.Factory) obj;
                factory2.getClass();
                return BookingExperienceViewModelImpl.Factory.a(factory2, modify.f54331a, null, modify.f54332b, false, 10);
            case 9:
                String str = (String) obj;
                MyIconsActivity.Companion companion2 = MyIconsActivity.q;
                str.getClass();
                ((MyLvViewModel) ((MyIconsActivity) obj2).p.getF71699b()).W(new MyLvTrackingUiModel.IconsConfirmEvent(str));
                return Unit.f71739a;
            case 10:
                GiftOption giftOption = (GiftOption) obj;
                giftOption.getClass();
                ((NativeCartViewModel) obj2).fa(giftOption);
                return Unit.f71739a;
            case 11:
                String str2 = (String) obj;
                NativeLoginFragment.Companion companion3 = NativeLoginFragment.A;
                str2.getClass();
                NavController.d((NavHostController) obj2, new NativeLoginRoute.ForgetPassword(str2), null, 6);
                return Unit.f71739a;
            case 12:
                NativeRegisterTrackingUiModel nativeRegisterTrackingUiModel = (NativeRegisterTrackingUiModel) obj;
                nativeRegisterTrackingUiModel.getClass();
                ((NativeRegisterViewModel) obj2).L4(nativeRegisterTrackingUiModel);
                return Unit.f71739a;
            case 13:
                NativeRegisterFragment nativeRegisterFragment = (NativeRegisterFragment) obj2;
                String str3 = (String) obj;
                NativeRegisterFragment.Companion companion4 = NativeRegisterFragment.G;
                str3.getClass();
                if (nativeRegisterFragment.F == null) {
                    Intrinsics.h("authenticationActivityRouter");
                    throw null;
                }
                FragmentActivity activity = nativeRegisterFragment.getActivity();
                if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
                    FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                    fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
                    NativeLoginFragment.Companion companion5 = NativeLoginFragment.A;
                    NativeLoginRouteName nativeLoginRouteName = NativeLoginRouteName.FORGET_PASSWORD;
                    companion5.getClass();
                    fragmentTransactionD.i(R.id.fragment_container, NativeLoginFragment.Companion.a(str3, nativeLoginRouteName), NativeLoginFragment.B, 1);
                    FragmentTransactionExtKt.a(fragmentTransactionD, activity);
                    fragmentTransactionD.e();
                }
                return Unit.f71739a;
            case 14:
                ((SnapshotMutableStateImpl) ((NavigationEventState) obj2).f18500a).setValue((NavigationEventTransitionState) obj);
                return Unit.f71739a;
            case 15:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                List list = ((ObjectSerializer) obj2).f75654b;
                list.getClass();
                classSerialDescriptorBuilder.f75529b = list;
                return Unit.f71739a;
            case 16:
                String str4 = (String) obj;
                str4.getClass();
                ((OnboardingViewModel) obj2).D4(new OnboardingTrackingUiModel.IconsConfirmClickEvent(str4));
                return Unit.f71739a;
            case 17:
                NotificationsPreferencesViewModel notificationsPreferencesViewModel = (NotificationsPreferencesViewModel) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    notificationsPreferencesViewModel.M();
                }
                return Unit.f71739a;
            case 18:
                OsaActivity osaActivity = (OsaActivity) obj2;
                ActivityResult activityResult2 = (ActivityResult) obj;
                OsaActivity.Companion companion6 = OsaActivity.u;
                activityResult2.getClass();
                if (activityResult2.f731b == -1) {
                    osaActivity.startActivity(OsaDestinationsKt.a(OsaDestinations.ToMyExperiencesPage.f60568a, osaActivity));
                    osaActivity.finish();
                }
                return Unit.f71739a;
            case 19:
                OsaContactFormViewModelImpl osaContactFormViewModelImpl = (OsaContactFormViewModelImpl) obj2;
                return osaContactFormViewModelImpl.g.a(new x60(osaContactFormViewModelImpl, 22), (FormSectionTypeUiModel) obj, null);
            case 20:
                String str5 = (String) obj;
                str5.getClass();
                ((PLPCategoryViewModel) obj2).O0(new PLPTrackingUiModel.ScreenshotTakenEvent(str5));
                return Unit.f71739a;
            case 21:
                PlpSectionUiModel.HalfEdito halfEdito = (PlpSectionUiModel.HalfEdito) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                List listP = CollectionsKt.P(halfEdito.f62921c, halfEdito.f62920b, halfEdito.d);
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : listP) {
                    if (!StringsKt.w((String) obj3)) {
                        arrayList.add(obj3);
                    }
                }
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, CollectionsKt.K(arrayList, ". ", null, null, null, 62));
                return Unit.f71739a;
            case 22:
                PLPTrackingUiModel pLPTrackingUiModel = (PLPTrackingUiModel) obj;
                pLPTrackingUiModel.getClass();
                ((PLPSkusViewModelImpl) obj2).O0(pLPTrackingUiModel);
                return Unit.f71739a;
            case 23:
                PLPStoreModeViewModel pLPStoreModeViewModel = (PLPStoreModeViewModel) obj2;
                StoreModeContentUiModel storeModeContentUiModel = (StoreModeContentUiModel) obj;
                storeModeContentUiModel.getClass();
                if (pLPStoreModeViewModel.q0()) {
                    pLPStoreModeViewModel.Z(storeModeContentUiModel);
                }
                return Unit.f71739a;
            case 24:
                InspectorInfo inspectorInfo = (InspectorInfo) obj;
                inspectorInfo.getClass();
                inspectorInfo.f10105b.b((PaddingValues) obj2, "paddingValues");
                return Unit.f71739a;
            case 25:
                ((PermissionUtils.PermissionListener) obj2).onSuccess();
                return Unit.f71739a;
            case 26:
                PersonalSelectionsCurationAdvisorViewModel personalSelectionsCurationAdvisorViewModel = (PersonalSelectionsCurationAdvisorViewModel) obj2;
                ActivityResult activityResult3 = (ActivityResult) obj;
                activityResult3.getClass();
                if (activityResult3.f731b == -1) {
                    personalSelectionsCurationAdvisorViewModel.h7();
                }
                return Unit.f71739a;
            case 27:
                PersonalSelectionsInStoreViewModel personalSelectionsInStoreViewModel = (PersonalSelectionsInStoreViewModel) obj2;
                ActivityResult activityResult4 = (ActivityResult) obj;
                activityResult4.getClass();
                if (activityResult4.f731b == -1) {
                    personalSelectionsInStoreViewModel.F8();
                }
                return Unit.f71739a;
            case 28:
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj2;
                int iIntValue = ((Integer) obj).intValue();
                return serialDescriptor.f(iIntValue) + ": " + serialDescriptor.h(iIntValue).getF75659a();
            default:
                return PointerAnnotation._init_$lambda$0((PointerAnnotation) obj2, (ConstraintSet) obj);
        }
    }
}
