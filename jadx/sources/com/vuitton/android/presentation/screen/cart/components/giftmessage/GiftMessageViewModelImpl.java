package com.vuitton.android.presentation.screen.cart.components.giftmessage;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.cart.NativeCartRoute;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.models.GiftMessageViewState;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.models.GiftTrackingUiModel;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.cart.GiftDraftUiModel;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import defpackage.md;
import defpackage.v40;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GiftMessageViewModelImpl extends AndroidViewModel implements GiftMessageViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f55075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GiftOption f55076c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SharedFlowImpl f55077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateFlow f55078f;
    public final SharedFlow g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:29:0x0075  */
    @Inject
    public GiftMessageViewModelImpl(Application application, SavedStateHandle savedStateHandle, AnalyticsTracker analyticsTracker) {
        boolean z;
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        analyticsTracker.getClass();
        this.f55075b = analyticsTracker;
        Map mapC = MapsKt.c();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        String str = ((NativeCartRoute.GiftMessage) SavedStateHandleKt.a(savedStateHandle, reflectionFactory.b(NativeCartRoute.GiftMessage.class), mapC)).f54866a;
        GiftOption message = ((NativeCartRoute.GiftMessage) SavedStateHandleKt.a(savedStateHandle, reflectionFactory.b(NativeCartRoute.GiftMessage.class), MapsKt.c())).f54867b ? GiftOption.Blank.f66976a : !StringsKt.w(str) ? new GiftOption.Message(str) : GiftOption.None.f66980a;
        this.f55076c = message;
        boolean z2 = message instanceof GiftOption.Blank;
        boolean z3 = message instanceof GiftOption.Message;
        GiftOption.Message message2 = z3 ? (GiftOption.Message) message : null;
        String str2 = message2 != null ? message2.f66977a : null;
        str2 = str2 == null ? "" : str2;
        if (z2) {
            z = true;
        } else {
            GiftOption.Message message3 = z3 ? (GiftOption.Message) message : null;
            if ((message3 != null ? message3.f66977a : null) != null) {
                z = true;
            } else {
                z = false;
            }
        }
        final MutableStateFlow mutableStateFlowA = StateFlowKt.a(new GiftDraftUiModel(z2, str2, false, z, 0, 20, null));
        this.d = mutableStateFlowA;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 0, null, 7);
        this.f55077e = sharedFlowImplB;
        Flow<GiftMessageViewState> flow = new Flow<GiftMessageViewState>() { // from class: com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f55080b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl$special$$inlined$map$1$2", f = "GiftMessageViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f55081b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f55082c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f55081b = obj;
                        this.f55082c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f55080b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f55082c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f55082c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f55081b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f55082c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        GiftMessageViewState giftMessageViewState = new GiftMessageViewState((GiftDraftUiModel) obj);
                        anonymousClass1.f55082c = 1;
                        if (this.f55080b.emit(giftMessageViewState, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i3 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objF = mutableStateFlowA.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.f55078f = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new GiftMessageViewState(null, 1, null));
        this.g = FlowKt.a(sharedFlowImplB);
    }

    @Override // com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel
    /* JADX INFO: renamed from: C9, reason: from getter */
    public final SharedFlow getG() {
        return this.g;
    }

    @Override // com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel
    public final void F5() {
        Object value;
        MutableStateFlow mutableStateFlow = this.d;
        GiftDraftUiModel giftDraftUiModel = (GiftDraftUiModel) mutableStateFlow.getValue();
        if (giftDraftUiModel.f66972a || !StringsKt.w(giftDraftUiModel.f66973b)) {
            i3(GiftTrackingUiModel.ConfirmGiftMessageEvent.f55100a);
            BuildersKt.c(ViewModelKt.a(this), null, null, new GiftMessageViewModelImpl$validateDraft$2(giftDraftUiModel, this, null), 3);
        } else {
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, GiftDraftUiModel.a((GiftDraftUiModel) value, false, null, false, 0, 27)));
        }
    }

    @Override // com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF55078f() {
        return this.f55078f;
    }

    @Override // com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel
    public final void i3(GiftTrackingUiModel giftTrackingUiModel) {
        Hit defaultEventHit;
        if (giftTrackingUiModel instanceof GiftTrackingUiModel.GiftMessageScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "gift_message", "gift_message", "cart_page", null, 17, null);
        } else if (giftTrackingUiModel instanceof GiftTrackingUiModel.PrintMyMessageEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "gift_message", "print_my_message", "cart_gift_message", "click", null, null, 97, null);
        } else if (giftTrackingUiModel instanceof GiftTrackingUiModel.BlankCardGiftEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "gift_message", "blank_card_gift", "cart_gift_message", "click", null, null, 97, null);
        } else if (giftTrackingUiModel instanceof GiftTrackingUiModel.ConfirmGiftMessageEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "gift_message", "confirm_gift_message", "cart_gift_message", "click", null, null, 97, null);
        } else {
            if (!(giftTrackingUiModel instanceof GiftTrackingUiModel.DiscoverGiftingExperienceEvent)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "gift_message", "discover_gifting_experience", "cart_gift_message", "click", null, null, 97, null);
        }
        this.f55075b.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel
    public final void m2(boolean z) {
        boolean z2;
        while (true) {
            MutableStateFlow mutableStateFlow = this.d;
            Object value = mutableStateFlow.getValue();
            z2 = z;
            if (mutableStateFlow.i(value, GiftDraftUiModel.a((GiftDraftUiModel) value, z2, null, true, 0, 18))) {
                break;
            } else {
                z = z2;
            }
        }
        i3(z2 ? GiftTrackingUiModel.BlankCardGiftEvent.f55099a : GiftTrackingUiModel.PrintMyMessageEvent.f55103a);
    }

    @Override // com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel
    public final void y9(String str) {
        str.getClass();
        if (StringsKt.M(str, new char[]{'\n'}).size() > 6) {
            return;
        }
        int size = StringsKt.w(str) ? 0 : StringsKt.M(str, new char[]{'\n'}).size();
        while (true) {
            MutableStateFlow mutableStateFlow = this.d;
            Object value = mutableStateFlow.getValue();
            String str2 = str;
            if (mutableStateFlow.i(value, GiftDraftUiModel.a((GiftDraftUiModel) value, false, str2, true, 6 - size, 1))) {
                return;
            } else {
                str = str2;
            }
        }
    }
}
