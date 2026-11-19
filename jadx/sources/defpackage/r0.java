package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.PathMeasure;
import android.view.View;
import android.view.Window;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.TargetBasedAnimation;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.scene.SceneInfo;
import androidx.navigationevent.compose.NavigationEventState;
import com.perfectcorp.perfectlib.SkuInfo;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.AddressAutocompleteTrackingUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.TrackingAutocompleteAddressSearch;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewState;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewType;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewTypeKt$WhenMappings;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatHistoryUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationCardKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoTypeUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.feed.components.c;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuTrackingUiModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuViewState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTrackingUiModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTrackingUiModelKt;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.components.ServicesComposableKt;
import com.vuitton.android.presentation.screen.services.models.ServicesTrackingUiModel;
import com.vuitton.android.presentation.screen.services.models.ServicesUrls;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.AudioGuideActions;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79208c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79210f;

    public /* synthetic */ r0(Function1 function1, MutableState mutableState, MutableState mutableState2, MutableLongState mutableLongState) {
        this.f79207b = 4;
        this.d = function1;
        this.f79208c = mutableState;
        this.f79209e = mutableState2;
        this.f79210f = mutableLongState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        TrackingAutocompleteAddressSearch trackingAutocompleteAddressSearch;
        AudioGuideUiModel audioGuideUiModel;
        Object emailForm;
        int i2 = this.f79207b;
        String str = null;
        Object obj = this.f79210f;
        Object obj2 = this.d;
        Object obj3 = this.f79208c;
        Object obj4 = this.f79209e;
        switch (i2) {
            case 0:
                HapticFeedbackType.f9193b.getClass();
                ((HapticFeedback) obj2).a(PlatformHapticFeedbackType.f9196a);
                ((ClipboardManager) obj).setPrimaryClip(ClipData.newPlainText("Session Id", ((ChatHistoryUiModel) obj4).f52899a));
                ((MutableState) obj3).setValue(null);
                return Unit.f71739a;
            case 1:
                AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) obj4;
                MutableState mutableState = (MutableState) obj3;
                MutableState mutableState2 = (MutableState) obj;
                if (((AddressAutocompleteScreenContext) obj2) != AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS) {
                    AddressEditorViewType addressEditorViewType = ((AddressEditorViewState) mutableState.getF10755b()).f52271c;
                    addressEditorViewType.getClass();
                    int i3 = AddressEditorViewTypeKt$WhenMappings.f52273a[addressEditorViewType.ordinal()];
                    if (i3 == 1 || i3 == 2) {
                        trackingAutocompleteAddressSearch = TrackingAutocompleteAddressSearch.EDIT_ADDRESS;
                    } else {
                        if (i3 != 3 && i3 != 4) {
                            v40.g();
                            return null;
                        }
                        trackingAutocompleteAddressSearch = TrackingAutocompleteAddressSearch.ADD_ADDRESS;
                    }
                    addressAutocompleteViewModel.N1(new AddressAutocompleteTrackingUiModel.OpenAddressSearchClickedEvent(trackingAutocompleteAddressSearch, ((AddressAutocompleteViewState) mutableState2.getF10755b()).f52118c.length()));
                }
                return Unit.f71739a;
            case 2:
                Function1 function1 = (Function1) obj4;
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj;
                ((AudioGuideViewModel) obj2).Fb();
                AudioGuideViewState audioGuideViewState = (AudioGuideViewState) ((MutableState) obj3).getF10755b();
                AudioGuideViewState.Success success = audioGuideViewState instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) audioGuideViewState : null;
                if (success != null) {
                    appsFlyerUiTracker.b(AudioGuideActions.COMPLETED, success.f53225a.f53201i.f53212a);
                }
                if (success != null && (audioGuideUiModel = success.f53225a) != null) {
                    str = audioGuideUiModel.f53200h;
                }
                function1.invoke(str);
                return Unit.f71739a;
            case 3:
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj4;
                TrackDetailUiModel trackDetailUiModel = (TrackDetailUiModel) obj;
                Function0 function0 = (Function0) obj3;
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                if (((AudioGuideViewState.Success) obj2).f53227c == PlayerState.PLAYING) {
                    String str2 = trackDetailUiModel.f53231b;
                    audioGuideTracker.getClass();
                    str2.getClass();
                    audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(new AudioGuideTrackingUiModel.OnHitPauseEvent(str2)));
                } else {
                    String str3 = trackDetailUiModel.f53231b;
                    audioGuideTracker.getClass();
                    str3.getClass();
                    audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(new AudioGuideTrackingUiModel.OnHitPlayEvent(str3)));
                }
                function0.mo47invoke();
                return Unit.f71739a;
            case 4:
                ((MutableState) obj3).setValue(Boolean.FALSE);
                ((MutableState) obj4).setValue(null);
                ((Function1) obj2).invoke(Long.valueOf(((MutableLongState) obj).b()));
                return Unit.f71739a;
            case 5:
                BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) obj2;
                Context context = (Context) obj4;
                CoroutineScope coroutineScope = (CoroutineScope) obj;
                BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
                SkuInfo skuInfo = ((BeautyVtoViewState) ((MutableState) obj3).getF10755b()).m;
                if (skuInfo != null) {
                    beautyVtoActivity.I(coroutineScope, skuInfo, new w9(20));
                }
                String string = context.getString(R.string.look_title);
                string.getClass();
                BeautyVtoActivity.H(beautyVtoActivity, string);
                return Unit.f71739a;
            case 6:
                BookingInfoUiModel bookingInfoUiModel = (BookingInfoUiModel) obj2;
                Function1 function2 = (Function1) obj4;
                Function2 function3 = (Function2) obj;
                BookingUiModel bookingUiModel = (BookingUiModel) obj3;
                BookingInfoTypeUiModel bookingInfoTypeUiModel = bookingInfoUiModel.f54609c;
                String str4 = bookingInfoUiModel.f54608b;
                int i4 = BookingConfirmationCardKt.WhenMappings.f54385a[bookingInfoTypeUiModel.ordinal()];
                if (i4 == 1) {
                    function2.invoke(str4);
                } else if (i4 == 2) {
                    function3.invoke(bookingUiModel.f54615b, str4);
                }
                return Unit.f71739a;
            case 7:
                ((FeedTracker) obj2).f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnHitAddToCalendarEvent((FeedTab) obj4, ((CalendarEventUiModel) obj).f51766a)));
                ((c) obj3).mo47invoke();
                return Unit.f71739a;
            case 8:
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj4;
                Context context2 = (Context) obj;
                Function1 function4 = (Function1) obj3;
                ((ContactUsTracker) obj2).b(new ContactUsMethod.EmailForm(null));
                int i5 = ContactUsBottomSheetKt.WhenMappings.f51130a[contactUsUiModel.l.ordinal()];
                String str5 = contactUsUiModel.f51155b;
                if (i5 == 1) {
                    StringResourceUiModel stringResourceUiModel = contactUsUiModel.f51156c;
                    emailForm = new ContactUsMethod.EmailNative(str5, stringResourceUiModel != null ? StringResourceUiModelKt.a(stringResourceUiModel, context2) : null);
                } else {
                    emailForm = new ContactUsMethod.EmailForm(str5);
                }
                function4.invoke(emailForm);
                return Unit.f71739a;
            case 9:
                ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) obj2;
                Function0 function5 = (Function0) obj4;
                ContactUsTracker contactUsTracker = (ContactUsTracker) obj;
                Function0 function6 = (Function0) obj3;
                if (contactUsUiModel2.f51160i) {
                    function5.mo47invoke();
                    AnalyticsTracker analyticsTracker = contactUsTracker.f51122a;
                    String str6 = contactUsTracker.f51123b;
                    String str7 = contactUsTracker.f51124c;
                    if (str7 == null) {
                        str7 = str6;
                    }
                    analyticsTracker.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnIconClickEvent(true, str7, str6)));
                } else {
                    function6.mo47invoke();
                    contactUsTracker.c(Intrinsics.c(contactUsUiModel2.f51159h, ChatContactUsUiModel.Available.f50674a));
                    AnalyticsTracker analyticsTracker2 = contactUsTracker.f51122a;
                    String str8 = contactUsTracker.f51123b;
                    String str9 = contactUsTracker.f51124c;
                    if (str9 == null) {
                        str9 = str8;
                    }
                    analyticsTracker2.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnIconClickEvent(false, str9, str8)));
                }
                return Unit.f71739a;
            case 10:
                Context context3 = (Context) obj2;
                ((MutableState) obj3).setValue(Boolean.TRUE);
                String string2 = context3.getString(R.string.alt_loading_status);
                string2.getClass();
                AccessibilityUtils.a(context3, string2);
                ((Function1) obj4).invoke(obj);
                return Unit.f71739a;
            case 11:
                GapComposer gapComposer = (GapComposer) obj2;
                ChangeList changeList = (ChangeList) obj4;
                SlotReader slotReader = (SlotReader) obj;
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) obj3;
                ComposerChangeListWriter composerChangeListWriter = gapComposer.M;
                ChangeList changeList2 = composerChangeListWriter.f8237b;
                try {
                    composerChangeListWriter.f8237b = changeList;
                    SlotReader slotReader2 = gapComposer.G;
                    int[] iArr = gapComposer.o;
                    MutableIntObjectMap mutableIntObjectMap = gapComposer.v;
                    gapComposer.o = null;
                    gapComposer.v = null;
                    try {
                        gapComposer.G = slotReader;
                        boolean z = composerChangeListWriter.f8239e;
                        try {
                            composerChangeListWriter.f8239e = false;
                            gapComposer.j0(movableContentStateReference.f8024a, movableContentStateReference.g, movableContentStateReference.f8025b, true);
                            composerChangeListWriter.f8239e = z;
                            gapComposer.G = slotReader2;
                            gapComposer.o = iArr;
                            gapComposer.v = mutableIntObjectMap;
                            composerChangeListWriter.f8237b = changeList2;
                            return Unit.f71739a;
                        } catch (Throwable th) {
                            composerChangeListWriter.f8239e = z;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        gapComposer.G = slotReader2;
                        gapComposer.o = iArr;
                        gapComposer.v = mutableIntObjectMap;
                        throw th2;
                    }
                } catch (Throwable th3) {
                    composerChangeListWriter.f8237b = changeList2;
                    throw th3;
                }
            case 12:
                ((Function1) obj2).invoke(null);
                ((ImmersiveArticleViewModel) obj4).U8(new ImmersiveArticleTrackingUiModel.ShareButtonClickEvent((String) obj, (ImmersiveArticleType) obj3));
                return Unit.f71739a;
            case 13:
                ((MutableState) obj3).setValue(Boolean.TRUE);
                ((ImmersiveArticleViewModel) obj2).U8(new ImmersiveArticleTrackingUiModel.OnExpandedPlayerOpenEvent((String) obj4, (ImmersiveArticleType) obj));
                return Unit.f71739a;
            case 14:
                InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) obj4;
                InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) obj3;
                Object obj5 = transitionAnimationState.f3880b;
                Object obj6 = this.d;
                boolean zEquals = obj6.equals(obj5);
                Object obj7 = this.f79210f;
                if (!zEquals || !obj7.equals(transitionAnimationState.f3881c)) {
                    transitionAnimationState.f3880b = obj6;
                    transitionAnimationState.f3881c = obj7;
                    transitionAnimationState.g = new TargetBasedAnimation(infiniteRepeatableSpec, transitionAnimationState.d, obj6, obj7, (AnimationVector) null, 16, (DefaultConstructorMarker) null);
                    ((SnapshotMutableStateImpl) InfiniteTransition.this.f3878b).setValue(Boolean.TRUE);
                    transitionAnimationState.f3884h = false;
                    transitionAnimationState.f3885i = true;
                }
                return Unit.f71739a;
            case 15:
                Function0 function7 = (Function0) obj2;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj4;
                PathMeasure pathMeasure = OnboardingIconComposableKt.f59551a;
                if (((IconLauncherType) ((MutableState) obj3).getF10755b()) == ((IconLauncherType) ((MutableState) obj).getF10755b())) {
                    function7.mo47invoke();
                } else {
                    lVModalBottomSheetState.e();
                }
                return Unit.f71739a;
            case 16:
                WebViewRouter webViewRouter = (WebViewRouter) obj;
                State state = (State) obj3;
                ((OptOutPrivacyMenuViewModel) obj2).H2(OptOutPrivacyMenuTrackingUiModel.OnContactUsEvent.f59977a);
                AppCompatActivity appCompatActivityB = ContextExtKt.b((Context) obj4);
                if (appCompatActivityB != null) {
                    WebViewRouter.b(webViewRouter, appCompatActivityB, ((OptOutPrivacyMenuViewState) state.getF10755b()).f59984c, false, 120);
                }
                return Unit.f71739a;
            case 17:
                ((LVModalBottomSheetState) obj2).b(new of0((Function0) obj4, (OsaContactFormViewModel) obj, (MutableState) obj3, 9));
                return Unit.f71739a;
            case 18:
                OsaReasonsFormViewModel osaReasonsFormViewModel = (OsaReasonsFormViewModel) obj2;
                OsaLocationFormViewModel osaLocationFormViewModel = (OsaLocationFormViewModel) obj4;
                NavBackStack navBackStack = (NavBackStack) obj;
                Function0 function8 = (Function0) obj3;
                if (!((OsaReasonsFormViewState) osaReasonsFormViewModel.getL().getValue()).f60971e || ((OsaReasonsFormViewState) osaReasonsFormViewModel.getL().getValue()).d == null) {
                    navBackStack.getClass();
                    if (!Nav3ExtKt.b(navBackStack)) {
                        function8.mo47invoke();
                    }
                } else {
                    osaReasonsFormViewModel.G4(((OsaLocationFormViewState) osaLocationFormViewModel.getU().getValue()).r);
                }
                return Unit.f71739a;
            case 19:
                AppCompatActivity appCompatActivity = (AppCompatActivity) obj2;
                View decorView = appCompatActivity.getWindow().getDecorView();
                decorView.getClass();
                Window window = appCompatActivity.getWindow();
                window.getClass();
                ViewExtKt.c(decorView, window, new jx((Function2) obj4, (String) obj, (Function1) obj3, 29));
                return Unit.f71739a;
            case 20:
                PLPStoreModeViewModel pLPStoreModeViewModel = (PLPStoreModeViewModel) obj;
                MutableState mutableState3 = (MutableState) obj3;
                ((ProductFilterViewModel) obj2).zc((String) obj4, false);
                String str10 = ((ProductFilterViewState) mutableState3.getF10755b()).f65027h;
                if (str10 == null) {
                    str10 = "";
                }
                pLPStoreModeViewModel.l(str10, ((ProductFilterViewState) mutableState3.getF10755b()).f65028i);
                return Unit.f71739a;
            case 21:
                PdpTracker pdpTracker = (PdpTracker) obj4;
                Function2 function9 = (Function2) obj;
                Function0 function10 = (Function0) obj3;
                PdpBottomSheetType.MultipleCustomizations multipleCustomizations = (PdpBottomSheetType.MultipleCustomizations) ((PdpBottomSheetType) obj2);
                int i6 = PdpBottomSheetContentKt.WhenMappings.f61369b[multipleCustomizations.f61383c.ordinal()];
                if (i6 == 1) {
                    pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnCancelHotstampingBottomSheetConfirmEvent.f61604a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                } else if (i6 == 2) {
                    pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnCancelPerfumeEngravingBottomSheetConfirmEvent.f61606a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                }
                function9.invoke(multipleCustomizations.f61381a, multipleCustomizations.f61382b);
                function10.mo47invoke();
                return Unit.f71739a;
            case 22:
                PdpTracker pdpTracker2 = (PdpTracker) obj2;
                pdpTracker2.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnVirtualStudioConsentAcceptedEvent.f61658a, pdpTracker2.f61586b, pdpTracker2.f61587c, pdpTracker2.d));
                ((Function1) obj4).invoke(((PdpBottomSheetType.VirtualStudioConsents) ((PdpBottomSheetType) obj)).f61394a);
                ((Function0) obj3).mo47invoke();
                return Unit.f71739a;
            case 23:
                PdpTracker pdpTracker3 = (PdpTracker) obj2;
                Function1 function11 = (Function1) obj4;
                Function0 function12 = (Function0) obj;
                if (((PdpViewState) ((MutableState) obj3).getF10755b()).x) {
                    pdpTracker3.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnCancelProductCustomizationBottomSheetOpenEvent.f61609a, pdpTracker3.f61586b, pdpTracker3.f61587c, pdpTracker3.d));
                    function11.invoke(PdpBottomSheetType.CancelProductCustomization.f61373a);
                } else {
                    function12.mo47invoke();
                }
                return Unit.f71739a;
            case 24:
                PdpTracker pdpTracker4 = (PdpTracker) obj2;
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) obj4;
                ReinsuranceTracker reinsuranceTracker = (ReinsuranceTracker) obj;
                MutableState mutableState4 = (MutableState) obj3;
                PdpBottomSheetType pdpBottomSheetType = (PdpBottomSheetType) mutableState4.getF10755b();
                if (pdpBottomSheetType instanceof PdpBottomSheetType.AddToCart) {
                    pdpTracker4.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnCloseAddCartEvent.f61611a, pdpTracker4.f61586b, pdpTracker4.f61587c, pdpTracker4.d));
                } else if (pdpBottomSheetType instanceof PdpBottomSheetType.Permissions) {
                    permissionsViewModel.E4();
                } else if (pdpBottomSheetType instanceof PdpBottomSheetType.SizeGuide) {
                    pdpTracker4.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnSizeGuideClosedEvent.f61648a, pdpTracker4.f61586b, pdpTracker4.f61587c, pdpTracker4.d));
                } else if (pdpBottomSheetType instanceof PdpBottomSheetType.Reinsurance) {
                    reinsuranceTracker.f63415a.a(ReinsuranceTrackingUiModelKt.a(new ReinsuranceTrackingUiModel.CloseReinsurance(((PdpBottomSheetType.Reinsurance) pdpBottomSheetType).f61385a)));
                } else if (pdpBottomSheetType instanceof PdpBottomSheetType.CancelProductCustomization) {
                    pdpTracker4.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnCancelProductCustomizationBottomSheetCancelEvent.f61607a, pdpTracker4.f61586b, pdpTracker4.f61587c, pdpTracker4.d));
                } else if (pdpBottomSheetType instanceof PdpBottomSheetType.ServerOverload) {
                    pdpTracker4.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnDismissServerOverloadSheet.f61616a, pdpTracker4.f61586b, pdpTracker4.f61587c, pdpTracker4.d));
                }
                mutableState4.setValue(null);
                return Unit.f71739a;
            case 25:
                NavigationEventState navigationEventState = (NavigationEventState) obj2;
                ((SnapshotMutableStateImpl) navigationEventState.f18502c).setValue((SceneInfo) obj4);
                ((SnapshotMutableStateImpl) navigationEventState.f18501b).setValue((List) obj);
                ((SnapshotMutableStateImpl) navigationEventState.d).setValue((List) obj3);
                return Unit.f71739a;
            case 26:
                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) obj2;
                String str11 = (String) obj4;
                Function0 function13 = (Function0) obj;
                NavBackStack navBackStack2 = (NavBackStack) obj3;
                quickAccessFiltersViewModel.Q1(FiltersButtonState.Hidden);
                quickAccessFiltersViewModel.M4(false);
                if (str11 != null) {
                    function13.mo47invoke();
                } else {
                    Nav3ExtKt.b(navBackStack2);
                }
                return Unit.f71739a;
            case 27:
                Context context4 = (Context) obj4;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj;
                State state2 = (State) obj3;
                ((ServicesViewModel) obj2).L7(ServicesTrackingUiModel.RequestRepairEvent.f64396a);
                if (((ServicesViewState) state2.getF10755b()).f64412k == 0 && ((ServicesViewState) state2.getF10755b()).n != null) {
                    String str12 = ((ServicesViewState) state2.getF10755b()).n;
                    str12.getClass();
                    Intent intentA = ServicesDestinationsKt.a(new ServicesDestinations.ToImmersiveArticlePage(str12), context4);
                    if (intentA != null) {
                        context4.startActivity(intentA);
                    }
                } else if (((ServicesViewState) state2.getF10755b()).f64406c) {
                    Intent intentA2 = ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesPage.f64292a, context4);
                    if (intentA2 != null) {
                        context4.startActivity(intentA2);
                    }
                } else {
                    Intent intentA3 = ServicesDestinationsKt.a(ServicesDestinations.ToWelcomePage.f64303a, context4);
                    if (intentA3 != null) {
                        IntentExtensionKt.b(intentA3, managedActivityResultLauncher);
                    }
                }
                return Unit.f71739a;
            case 28:
                AppsFlyerUiTracker appsFlyerUiTracker2 = (AppsFlyerUiTracker) obj4;
                Context context5 = (Context) obj;
                ((ServicesViewModel) obj2).L7(ServicesTrackingUiModel.OpenStoreLocatorEvent.f64395a);
                appsFlyerUiTracker2.getClass();
                appsFlyerUiTracker2.a(AppsFlyerEvent.OpenStoreLocator.f52956c);
                ServicesUrls servicesUrls = ((ServicesViewState) ((State) obj3).getF10755b()).f64408f;
                ServicesComposableKt.b(context5, servicesUrls != null ? servicesUrls.f64398a : null);
                return Unit.f71739a;
            default:
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj2;
                Function0 function14 = (Function0) obj4;
                MutableState mutableState5 = (MutableState) obj3;
                MutableState mutableState6 = (MutableState) obj;
                float f3 = StoreModeWelcomeComposableKt.f64839a;
                if (!storeModeViewState.f65082b) {
                    function14.mo47invoke();
                }
                Boolean bool = Boolean.TRUE;
                mutableState5.setValue(bool);
                if (storeModeViewState.f65082b) {
                    mutableState6.setValue(bool);
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ r0(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f79207b = i2;
        this.d = obj;
        this.f79209e = obj2;
        this.f79210f = obj3;
        this.f79208c = obj4;
    }

    public /* synthetic */ r0(Object obj, Object obj2, MutableState mutableState, Object obj3, int i2) {
        this.f79207b = i2;
        this.d = obj;
        this.f79209e = obj2;
        this.f79208c = mutableState;
        this.f79210f = obj3;
    }
}
