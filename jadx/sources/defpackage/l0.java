package defpackage;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.focus.FocusRequester;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.work.Logger;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTrackerKt;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.steps.AgentUsecaseStep;
import com.vuitton.android.domain.monitoring.address.MonitorActionHolder;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookActivity;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookDestinations;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookDestinationsKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookTrackingUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookViewState;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorRoute;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewState;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModel;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfo;
import com.vuitton.android.presentation.screen.pdp.PdpAddToCartCommonKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContent;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f75911c;
    public final /* synthetic */ Object d;

    public /* synthetic */ l0(Object obj, Object obj2, int i2) {
        this.f75910b = i2;
        this.f75911c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        boolean z = true;
        switch (this.f75910b) {
            case 0:
                Function0 function0 = (Function0) this.f75911c;
                FocusRequester focusRequester = (FocusRequester) this.d;
                function0.mo47invoke();
                FocusRequester.a(focusRequester);
                return Unit.f71739a;
            case 1:
                ((Function1) this.f75911c).invoke(((AddCertificateUiModel) this.d).f55787c.a());
                return Unit.f71739a;
            case 2:
                ((Function1) this.f75911c).invoke(((PlaceAutocompleteUiModel) this.d).f52126a);
                return Unit.f71739a;
            case 3:
                AddressBookActivity addressBookActivity = (AddressBookActivity) this.f75911c;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) this.d;
                AddressBookActivity.Companion companion = AddressBookActivity.q;
                addressBookActivity.H().Z4(AddressBookTrackingUiModel.AddAddressEvent.f52193a);
                managedActivityResultLauncher.a(AddressBookDestinationsKt.a(new AddressBookDestinations.ToAddressEditorPage(((AddressBookViewState) addressBookActivity.H().getM().getValue()).d == null, null), addressBookActivity));
                return Unit.f71739a;
            case 4:
                ((Function2) this.f75911c).invoke((AccountAddressUiModel) this.d, Boolean.TRUE);
                return Unit.f71739a;
            case 5:
                AddressEditorViewModel addressEditorViewModel = (AddressEditorViewModel) this.f75911c;
                if (((AddressEditorViewState) ((MutableState) this.d).getF10755b()).d.i()) {
                    addressEditorViewModel.G6();
                }
                return Unit.f71739a;
            case 6:
                AddressEditorViewModel addressEditorViewModel2 = (AddressEditorViewModel) this.f75911c;
                NavHostController navHostController = (NavHostController) this.d;
                MonitorActionHolder.f48817a = addressEditorViewModel2.p5();
                NavController.d(navHostController, AddressEditorRoute.AddressEditorAutocomplete.INSTANCE, null, 6);
                return Unit.f71739a;
            case 7:
                return ((AgentUsecaseStep) this.f75911c).lambda$getAnalyticsAgentSession$2((Session) this.d);
            case 8:
                ((Ref$ObjectRef) this.d).f71921b = ((Function0) this.f75911c).mo47invoke();
                return Unit.f71739a;
            case 9:
                Channel channel = (Channel) this.f75911c;
                Object obj = this.d;
                SpringSpec springSpec = AnimateAsStateKt.f3796a;
                channel.b(obj);
                return Unit.f71739a;
            case 10:
                ((Function1) this.f75911c).invoke((AppInfo) this.d);
                return Unit.f71739a;
            case 11:
                Function0 function1 = (Function0) this.f75911c;
                DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel = (DistantRepairAssessmentBffViewModel) this.d;
                function1.mo47invoke();
                distantRepairAssessmentBffViewModel.K0(null);
                return Unit.f71739a;
            case 12:
                Function0 function2 = (Function0) this.f75911c;
                DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = (DistantRepairAssessmentViewModel) this.d;
                function2.mo47invoke();
                distantRepairAssessmentViewModel.K0(null);
                return Unit.f71739a;
            case 13:
                ((Function1) this.f75911c).invoke(((AddressUiModel) this.d).f52673b);
                return Unit.f71739a;
            case 14:
                ((Function1) this.f75911c).invoke(((AudioGuideViewState.Success) this.d).f53226b.f53230a);
                return Unit.f71739a;
            case 15:
                ScrollState scrollState = (ScrollState) this.f75911c;
                MutableFloatState mutableFloatState = (MutableFloatState) this.d;
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                return Boolean.valueOf(mutableFloatState.a() < Float.MAX_VALUE && ((float) ((SnapshotMutableIntStateImpl) scrollState.f4290a).f()) >= mutableFloatState.a());
            case 16:
                Function2 function3 = (Function2) this.f75911c;
                AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) this.d;
                function3.invoke(trackUiModel.f53218a, trackUiModel.f53219b);
                return Unit.f71739a;
            case 17:
                MutableState mutableState = (MutableState) this.f75911c;
                MutableLongState mutableLongState = (MutableLongState) this.d;
                Boolean bool = (Boolean) mutableState.getF10755b();
                bool.getClass();
                return new Pair(bool, Long.valueOf(mutableLongState.b()));
            case 18:
                String str = (String) this.f75911c;
                InAppDispatch inAppDispatch = (InAppDispatch) this.d;
                if (!StringsKt.k(str, "/api/publication/maintenance", false) || (!inAppDispatch.p && !InAppDispatchExtKt.g(inAppDispatch))) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 19:
                BaseConstraintController baseConstraintController = (BaseConstraintController) this.f75911c;
                BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1 = (BaseConstraintController$track$1$listener$1) this.d;
                ConstraintTracker constraintTracker = baseConstraintController.f20450a;
                constraintTracker.getClass();
                synchronized (constraintTracker.f20465c) {
                    if (constraintTracker.d.remove(baseConstraintController$track$1$listener$1) && constraintTracker.d.isEmpty()) {
                        BroadcastReceiverConstraintTracker broadcastReceiverConstraintTracker = (BroadcastReceiverConstraintTracker) constraintTracker;
                        Logger loggerA = Logger.a();
                        int i2 = BroadcastReceiverConstraintTrackerKt.f20462a;
                        broadcastReceiverConstraintTracker.getClass().getSimpleName().concat(": unregistering receiver");
                        loggerA.getClass();
                        broadcastReceiverConstraintTracker.f20464b.unregisterReceiver(broadcastReceiverConstraintTracker.f20460f);
                    }
                    break;
                }
                return Unit.f71739a;
            case 20:
                Function1 function4 = (Function1) this.f75911c;
                SnapshotStateMap snapshotStateMap = (SnapshotStateMap) this.d;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : snapshotStateMap.f8494c) {
                    if (((Boolean) entry.getValue()).booleanValue()) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                function4.invoke(CollectionsKt.y0(linkedHashMap.keySet()));
                return Unit.f71739a;
            case 21:
                ((Function1) this.f75911c).invoke(new SkuIdUiModel(((BeautyAddToCartUiModel) this.d).f62125a));
                return Unit.f71739a;
            case 22:
                ((Function1) this.f75911c).invoke((LookUiModel) this.d);
                return Boolean.TRUE;
            case 23:
                BeautyVtoViewState beautyVtoViewState = (BeautyVtoViewState) this.d;
                Function0 function5 = (Function0) this.f75911c;
                if (!beautyVtoViewState.g) {
                    function5.mo47invoke();
                }
                return Unit.f71739a;
            case 24:
                BeautyVtoViewModel beautyVtoViewModel = (BeautyVtoViewModel) this.d;
                Function0 function6 = (Function0) this.f75911c;
                beautyVtoViewModel.r3();
                function6.mo47invoke();
                return Unit.f71739a;
            case 25:
                Context context = (Context) this.f75911c;
                MutableState mutableState2 = (MutableState) this.d;
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    PdpAddToCartCommonKt.a(appCompatActivityB, ((BeautyVtoViewState) mutableState2.getF10755b()).t);
                }
                return Unit.f71739a;
            case 26:
                BookingConfirmationViewModel bookingConfirmationViewModel = (BookingConfirmationViewModel) this.d;
                Function0 function7 = (Function0) this.f75911c;
                bookingConfirmationViewModel.ya(BookingConfirmationTrackingUiModel.CloseEvent.f54390a);
                function7.mo47invoke();
                return Unit.f71739a;
            case 27:
                ((BookingListViewModelImpl) this.f75911c).yc((String) this.d);
                return Unit.f71739a;
            case 28:
                BookingPersonalInfoViewModel bookingPersonalInfoViewModel = (BookingPersonalInfoViewModel) this.f75911c;
                PrebookSummaryViewModel prebookSummaryViewModel = (PrebookSummaryViewModel) this.d;
                bookingPersonalInfoViewModel.va(BookingPersonalInfoTrackingUiModel.PersonalInfoConfirmEvent.f54729a);
                prebookSummaryViewModel.n3(bookingPersonalInfoViewModel.c4());
                return Unit.f71739a;
            default:
                ((Function1) this.f75911c).invoke((BookingExternalContent) this.d);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ l0(Object obj, Function0 function0, int i2) {
        this.f75910b = i2;
        this.d = obj;
        this.f75911c = function0;
    }
}
