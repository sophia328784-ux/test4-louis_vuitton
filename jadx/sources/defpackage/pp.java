package defpackage;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.DatePickerState;
import androidx.compose.material3.ExposedDropdownMenuAnchorType;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.unit.IntOffset;
import com.appsflyer.share.AFInAppEventParameterName;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.profile.models.PhoneNumberUiModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoTrackingUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetScreen;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.models.GiftTrackingUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartContributionUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceInformationUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModelKt;
import com.vuitton.android.presentation.screen.cart.models.ContributionPackagingUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.FeedDestinations;
import com.vuitton.android.presentation.screen.feed.FeedDestinationsKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.AudioGuideBannerUiModel;
import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.components.MainActivityBottomSheetType;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinations;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinationsKt;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvViewState;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTracker;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionContext;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTrackingUiModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTrackingUiModelKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pp implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78903c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78904e;

    public /* synthetic */ pp(LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, MainActivityBottomSheetType mainActivityBottomSheetType) {
        this.f78902b = 19;
        this.d = lVModalBottomSheetState;
        this.f78904e = function1;
        this.f78903c = mainActivityBottomSheetType;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x036d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:139:0x036f  */
    /* JADX WARN: Code duplicated, block: B:140:0x0372  */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        ContentInViewNode contentInViewNode;
        Rect rect;
        boolean zJ2;
        MyInfoTrackingUiModel myInfoTrackingUiModel;
        TopAppBarState f6904a;
        TopAppBarState f6904a2;
        ContributionPackagingUiModel contributionPackagingUiModel;
        String str;
        String str2;
        int i2 = this.f78902b;
        DistantRepairTrackingUiModel.RepairListInitiateClickedEvent repairListInitiateClickedEvent = DistantRepairTrackingUiModel.RepairListInitiateClickedEvent.f57453a;
        int i3 = 2;
        fValueOf = null;
        Float fValueOf = null;
        Object obj = this.f78904e;
        Object obj2 = this.d;
        Object obj3 = this.f78903c;
        switch (i2) {
            case 0:
                ContactUsMethod.Chat chat = ContactUsMethod.Chat.f51131a;
                ((ContactUsTracker) obj3).b(chat);
                ((LVModalBottomSheetState) obj2).b(new k40(28));
                ((Function1) obj).invoke(chat);
                return Unit.f71739a;
            case 1:
                ContentInViewNode contentInViewNode2 = (ContentInViewNode) obj3;
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) obj2;
                BringIntoViewSpec bringIntoViewSpec = (BringIntoViewSpec) obj;
                BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue = contentInViewNode2.u;
                while (true) {
                    MutableVector mutableVector = bringIntoViewRequestPriorityQueue.f4423a;
                    int i4 = mutableVector.d;
                    if (i4 == 0) {
                        contentInViewNode = contentInViewNode2;
                    } else {
                        if (i4 == 0) {
                            zy0.c("MutableVector is empty.");
                            return null;
                        }
                        Rect rect2 = (Rect) ((ContentInViewNode.Request) mutableVector.f8165b[i4 - 1]).f4430a.mo47invoke();
                        if (rect2 == null) {
                            contentInViewNode = contentInViewNode2;
                            zJ2 = true;
                        } else {
                            contentInViewNode = contentInViewNode2;
                            zJ2 = ContentInViewNode.j2(contentInViewNode, rect2, 0L, 0L, 3);
                        }
                        if (zJ2) {
                            MutableVector mutableVector2 = bringIntoViewRequestPriorityQueue.f4423a;
                            CancellableContinuation cancellableContinuation = ((ContentInViewNode.Request) mutableVector2.o(mutableVector2.d - 1)).f4431b;
                            Unit unit = Unit.f71739a;
                            Result.Companion companion = Result.INSTANCE;
                            cancellableContinuation.resumeWith(unit);
                            contentInViewNode2 = contentInViewNode;
                        }
                    }
                }
                if (contentInViewNode.v && (rect = (Rect) contentInViewNode.t.mo47invoke()) != null) {
                    ContentInViewNode contentInViewNode3 = contentInViewNode;
                    contentInViewNode = contentInViewNode3;
                    if (ContentInViewNode.j2(contentInViewNode3, rect, 0L, 0L, 3)) {
                        contentInViewNode.v = false;
                    }
                }
                IntOffset.f11012b.getClass();
                updatableAnimationState.f4828e = ContentInViewNode.h2(contentInViewNode, bringIntoViewSpec, 0L);
                return Unit.f71739a;
            case 2:
                ContextualSizingTracker contextualSizingTracker = (ContextualSizingTracker) obj3;
                String str3 = ((ModelSizeVariationUiModel) ((MutableState) obj).getF10755b()).f61533b;
                contextualSizingTracker.getClass();
                contextualSizingTracker.f61526a.a(ContextualSizingTrackingUiModelKt.a(new ContextualSizingTrackingUiModel.OnClickOnClose(str3, null)));
                ((Function0) obj2).mo47invoke();
                return Unit.f71739a;
            case 3:
                ((LVModalBottomSheetState) obj2).b(new dt((MutableState) obj3, (DispatchCountryViewModel) obj, i3));
                return Unit.f71739a;
            case 4:
                ((DistantRepairFormBffViewModel) obj3).d(repairListInitiateClickedEvent);
                LVModalBottomSheetState.Companion companion2 = LVModalBottomSheetState.d;
                ((LVModalBottomSheetState) obj2).b(new k40(28));
                ((MutableState) obj).setValue(null);
                return Unit.f71739a;
            case 5:
                ((DistantRepairFormViewModel) obj3).d(repairListInitiateClickedEvent);
                LVModalBottomSheetState.Companion companion3 = LVModalBottomSheetState.d;
                ((LVModalBottomSheetState) obj2).b(new k40(28));
                ((MutableState) obj).setValue(null);
                return Unit.f71739a;
            case 6:
                MyInformationViewModel myInformationViewModel = (MyInformationViewModel) obj2;
                ((Function0) obj3).mo47invoke();
                MyInformationViewState myInformationViewState = (MyInformationViewState) ((MutableState) obj).getF10755b();
                boolean z = myInformationViewState.g;
                if (z) {
                    PhoneNumberUiModel phoneNumberUiModel = myInformationViewState.f52668e.f52662f;
                    String str4 = phoneNumberUiModel != null ? phoneNumberUiModel.d : null;
                    if (str4 == null || str4.length() == 0) {
                        myInfoTrackingUiModel = MyInfoTrackingUiModel.SaveProfileWithMissingPhoneNumber.f52654a;
                    } else if (z) {
                        myInfoTrackingUiModel = MyInfoTrackingUiModel.SaveProfileWithSmsDisclaimerEvent.f52655a;
                    } else {
                        myInfoTrackingUiModel = MyInfoTrackingUiModel.SaveProfileEvent.f52653a;
                    }
                } else if (z) {
                    myInfoTrackingUiModel = MyInfoTrackingUiModel.SaveProfileWithSmsDisclaimerEvent.f52655a;
                } else {
                    myInfoTrackingUiModel = MyInfoTrackingUiModel.SaveProfileEvent.f52653a;
                }
                myInformationViewModel.m5(myInfoTrackingUiModel);
                return Unit.f71739a;
            case 7:
                SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) obj;
                int i5 = ExposedDropdownMenuKt.f6925a;
                ((nd) obj3).mo47invoke();
                ExposedDropdownMenuAnchorType.f6913b.getClass();
                if (Intrinsics.c((String) obj2, ExposedDropdownMenuAnchorType.d) && softwareKeyboardController != null) {
                    softwareKeyboardController.a();
                }
                return Boolean.TRUE;
            case 8:
                IntentExtensionKt.b(FeedDestinationsKt.a(new FeedDestinations.ToAudioGuidePage(((AudioGuideBannerUiModel) obj3).f57976a), (Context) obj2), (ManagedActivityResultLauncher) obj);
                return Unit.f71739a;
            case 9:
                Function0 function0 = (Function0) obj2;
                Function0 function1 = (Function0) obj;
                if (((SegmentedControlState) obj3).a() == 0) {
                    function0.mo47invoke();
                } else {
                    function1.mo47invoke();
                }
                return Unit.f71739a;
            case 10:
                MutableState mutableState = (MutableState) obj2;
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                ((Function1) obj).invoke((StoreUiModel) obj3);
                return Unit.f71739a;
            case 11:
                ((GiftMessageViewModel) obj3).i3(GiftTrackingUiModel.DiscoverGiftingExperienceEvent.f55101a);
                ((Function1) obj).invoke((String) obj2);
                return Unit.f71739a;
            case 12:
                Function0 function2 = (Function0) obj3;
                Function0 function3 = (Function0) obj2;
                MutableState mutableState2 = (MutableState) obj;
                mutableState2.setValue(Boolean.valueOf(!((Boolean) mutableState2.getF10755b()).booleanValue()));
                if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                    function2.mo47invoke();
                } else {
                    function3.mo47invoke();
                }
                return Unit.f71739a;
            case 13:
                Function0 function4 = (Function0) obj3;
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj2;
                if (((PermissionsUiModel) ((MutableState) obj).getF10755b()).f62372a instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
                    function4.mo47invoke();
                }
                permissionsViewModel.v5(PermissionContext.INBOX);
                return Unit.f71739a;
            case 14:
                ((Function1) obj).invoke((InboxNotificationUiModel) obj3);
                ((Function0) obj2).mo47invoke();
                return Unit.f71739a;
            case 15:
                ((Function1) obj).invoke(((DatePickerState) obj3).c());
                ((Function0) obj2).mo47invoke();
                return Unit.f71739a;
            case 16:
                CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                ((MutableFloatState) obj).w(((MutableFloatState) obj2).a() + ((MutableFloatState) obj3).a());
                return Unit.f71739a;
            case 17:
                TopAppBarScrollBehavior topAppBarScrollBehavior = (TopAppBarScrollBehavior) obj3;
                MutableFloatState mutableFloatState = (MutableFloatState) obj2;
                MutableFloatState mutableFloatState2 = (MutableFloatState) obj;
                CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                if (topAppBarScrollBehavior != null && (f6904a2 = topAppBarScrollBehavior.getF6904a()) != null) {
                    fValueOf = Float.valueOf(f6904a2.f7439a);
                }
                if (!Intrinsics.b(fValueOf, mutableFloatState.a() - mutableFloatState2.a()) && topAppBarScrollBehavior != null && (f6904a = topAppBarScrollBehavior.getF6904a()) != null) {
                    f6904a.f7439a = mutableFloatState.a() - mutableFloatState2.a();
                }
                return Unit.f71739a;
            case 18:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSwitchKt.f48506a;
                HapticFeedbackType.f9193b.getClass();
                int i6 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj3).a(0);
                ((Function1) obj).invoke((LVSwitchLegalState) obj2);
                return Unit.f71739a;
            case 19:
                ((LVModalBottomSheetState) obj2).b(new k40(28));
                ((Function1) obj).invoke(((MainActivityBottomSheetType.SighCallBottomSheet) ((MainActivityBottomSheetType) obj3)).f59105a);
                return Unit.f71739a;
            case 20:
                ((MutableState) obj).setValue(Boolean.TRUE);
                ((AICompanionTracker) obj3).b((ScreenOrigin) obj2);
                return Unit.f71739a;
            case 21:
                MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) obj3;
                ((Function1) obj).invoke(mainTopLevelDestination);
                ((MainNavigationState) obj2).d(mainTopLevelDestination, null);
                return Unit.f71739a;
            case 22:
                ((MyLvViewModel) obj3).W(MyLvTrackingUiModel.OpenMyLV.f59439a);
                ((ManagedActivityResultLauncher) obj2).a(MyLvDestinationsKt.a(MyLvDestinations.ToEditAvatarPage.f59241a, (Context) obj));
                return Unit.f71739a;
            case 23:
                Context context = (Context) obj2;
                State state = (State) obj;
                ((MyLvViewModel) obj3).W(MyLvTrackingUiModel.OpenCareServiceEvent.f59433a);
                if (((MyLvViewState) state.getF10755b()).n == null || ((MyLvViewState) state.getF10755b()).f59452h.f59411a != 0) {
                    context.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToCareServicesPage.f59238a, context));
                } else {
                    String str5 = ((MyLvViewState) state.getF10755b()).n;
                    str5.getClass();
                    context.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToImmersiveArticlePage(str5), context));
                }
                return Unit.f71739a;
            case 24:
                NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) obj3;
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj;
                CartUiModel cartUiModel = ((NativeCartViewState) ((MutableState) obj2).getF10755b()).f55204a;
                if (cartUiModel != null) {
                    List list = cartUiModel.f55183c;
                    CartPriceInformationUiModel cartPriceInformationUiModel = cartUiModel.d;
                    if (cartPriceInformationUiModel != null) {
                        List list2 = list;
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((CartItemUiModel) it.next()).f55144a);
                        }
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                        Iterator it2 = list2.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(Integer.valueOf(((CartItemUiModel) it2.next()).d));
                        }
                        CartPriceUiModel cartPriceUiModel = cartPriceInformationUiModel.f55153a;
                        double d = cartPriceUiModel.f55158a;
                        String str6 = cartPriceUiModel.f55160c;
                        appsFlyerUiTracker.getClass();
                        str6.getClass();
                        appsFlyerUiTracker.a(new AppsFlyerEvent.InitiateCheckout(MapsKt.i(new Pair(AFInAppEventParameterName.CONTENT_ID, arrayList), new Pair(AFInAppEventParameterName.QUANTITY, arrayList2), new Pair(AFInAppEventParameterName.PRICE, Double.valueOf(d)), new Pair(AFInAppEventParameterName.CURRENCY, str6))));
                    }
                }
                nativeCartViewModel.mc();
                return Unit.f71739a;
            case 25:
                ReinsuranceTracker reinsuranceTracker = (ReinsuranceTracker) obj3;
                MutableState mutableState3 = (MutableState) obj;
                if (Intrinsics.c((NativeCartBottomSheetScreen) ((MutableState) obj2).getF10755b(), NativeCartBottomSheetScreen.BottomSheetReinsurance.f55061a)) {
                    reinsuranceTracker.f63415a.a(ReinsuranceTrackingUiModelKt.a(new ReinsuranceTrackingUiModel.CloseReinsurance((ReinsuranceUiModel) mutableState3.getF10755b())));
                }
                return Unit.f71739a;
            case 26:
                Function3 function5 = (Function3) obj2;
                Function0 function6 = (Function0) obj;
                CartUiModel cartUiModel2 = ((NativeCartViewState) obj3).f55204a;
                if (cartUiModel2 != null) {
                    if (CartUiModelKt.a(cartUiModel2)) {
                        function5.A(NativeCartBottomSheetScreen.BottomSheetOutOfStock.f55060a, null, null);
                    } else {
                        function6.mo47invoke();
                    }
                }
                return Unit.f71739a;
            case 27:
                Function1 function7 = (Function1) obj;
                Function0 function8 = (Function0) obj2;
                CartContributionUiModel cartContributionUiModel = ((NativeCartViewState) obj3).o;
                if (cartContributionUiModel == null || (contributionPackagingUiModel = cartContributionUiModel.f55138c) == null || (str = contributionPackagingUiModel.d) == null) {
                    function8.mo47invoke();
                } else {
                    function7.invoke(str);
                }
                return Unit.f71739a;
            case 28:
                SoftwareKeyboardController softwareKeyboardController2 = (SoftwareKeyboardController) obj3;
                NativeLoginViewModel nativeLoginViewModel = (NativeLoginViewModel) obj2;
                MutableState mutableState4 = (MutableState) obj;
                if (softwareKeyboardController2 != null) {
                    softwareKeyboardController2.b();
                }
                if (((NativeLoginViewState) mutableState4.getF10755b()).f53692a.f53691c) {
                    nativeLoginViewModel.P6(NativeLoginTrackingUiModel.OnLoginClickEvent.f53686a);
                    nativeLoginViewModel.c7(null);
                }
                return Unit.f71739a;
            default:
                NativeRegisterViewModel nativeRegisterViewModel = (NativeRegisterViewModel) obj2;
                ((Function0) obj3).mo47invoke();
                int iK = ((PagerState) obj).k();
                if (iK == 0) {
                    str2 = "credentials_step";
                } else if (iK == 1) {
                    str2 = "personal_info_step";
                } else if (iK != 2) {
                    str2 = iK != 3 ? "" : "account_activation_step";
                } else {
                    str2 = "birth_info_step";
                }
                nativeRegisterViewModel.L4(new NativeRegisterTrackingUiModel.OnRegistrationCloseEvent(str2));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ pp(LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, DispatchCountryViewModel dispatchCountryViewModel) {
        this.f78902b = 3;
        this.d = lVModalBottomSheetState;
        this.f78903c = mutableState;
        this.f78904e = dispatchCountryViewModel;
    }

    public /* synthetic */ pp(Object obj, Object obj2, Object obj3, int i2) {
        this.f78902b = i2;
        this.f78903c = obj;
        this.d = obj2;
        this.f78904e = obj3;
    }

    public /* synthetic */ pp(Object obj, Function1 function1, Object obj2, int i2) {
        this.f78902b = i2;
        this.f78903c = obj;
        this.f78904e = function1;
        this.d = obj2;
    }

    public /* synthetic */ pp(Function1 function1, Object obj, Object obj2, int i2) {
        this.f78902b = i2;
        this.f78904e = function1;
        this.f78903c = obj;
        this.d = obj2;
    }
}
