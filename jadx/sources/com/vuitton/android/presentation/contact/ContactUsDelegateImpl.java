package com.vuitton.android.presentation.contact;

import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.chat.IsChatEnabledUseCase;
import com.vuitton.android.domain.usecase.chat.StreamChatEventUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import com.vuitton.android.presentation.chat.consent.ChatConsentDelegate;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.DistantRepairsConfig;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BA\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "chatConsentDelegate", "Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;", "streamChatEventUseCase", "Lcom/vuitton/android/domain/usecase/chat/IsChatEnabledUseCase;", "isChatEnabledUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "<init>", "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;Lcom/vuitton/android/domain/usecase/chat/IsChatEnabledUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ContactUsDelegateImpl implements ContactUsDelegate, ChatConsentDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f51090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChatConsentDelegate f51091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StreamChatEventUseCase f51092c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LVEventSender f51093e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f51094f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f51095h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f51096i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f51097j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f51098k;
    public final AppConfig l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final ContactUsDelegateImpl$special$$inlined$combine$1 u;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51099a;

        static {
            int[] iArr = new int[ContactUsMode.values().length];
            try {
                iArr[ContactUsMode.DISTANT_CARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f51099a = iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [com.vuitton.android.presentation.contact.ContactUsDelegateImpl$special$$inlined$combine$1] */
    @Inject
    public ContactUsDelegateImpl(IsFeatureAvailableUseCase isFeatureAvailableUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, ChatConsentDelegate chatConsentDelegate, StreamChatEventUseCase streamChatEventUseCase, IsChatEnabledUseCase isChatEnabledUseCase, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender) {
        isFeatureAvailableUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        chatConsentDelegate.getClass();
        streamChatEventUseCase.getClass();
        isChatEnabledUseCase.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        this.f51090a = isFeatureAvailableUseCase;
        this.f51091b = chatConsentDelegate;
        this.f51092c = streamChatEventUseCase;
        this.d = analyticsTracker;
        this.f51093e = lVEventSender;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.f51094f = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.g = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.f51095h = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.POWERFRONT})));
        this.f51096i = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.POWERFRONT_CARE_SERVICE})));
        this.f51097j = mutableStateFlowA5;
        this.l = requireCachedAppConfigUseCase.a();
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.m = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.n = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(null);
        this.o = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(null);
        this.p = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(null);
        this.q = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(null);
        this.r = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(ContactUsMode.DEFAULT);
        this.t = mutableStateFlowA13;
        final Flow[] flowArr = {mutableStateFlowA12, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, new FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3(new Flow[]{mutableStateFlowA13, mutableStateFlowA4, mutableStateFlowA5, chatConsentDelegate.U0(), isChatEnabledUseCase.f49647a.g()}, new ContactUsDelegateImpl$getState$1(null)), mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA13};
        this.u = new Flow<ContactUsUiModel>() { // from class: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.contact.ContactUsDelegateImpl$special$$inlined$combine$1$3", f = "ContactUsDelegateImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ContactUsUiModel>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f51120b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f51121c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f51121c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f51121c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f51120b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        String str = (String) objArr[1];
                        String str2 = (String) objArr[2];
                        String str3 = (String) objArr[3];
                        StringResourceUiModel stringResourceUiModel = (StringResourceUiModel) objArr[4];
                        String str4 = (String) objArr[5];
                        String str5 = (String) objArr[6];
                        Object obj3 = objArr[7];
                        obj3.getClass();
                        ChatContactUsUiModel chatContactUsUiModel = (ChatContactUsUiModel) obj3;
                        Object obj4 = objArr[8];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[9];
                        obj5.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[10];
                        obj6.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[11];
                        obj7.getClass();
                        ContactUsUiModel contactUsUiModel = new ContactUsUiModel(zBooleanValue, str3, stringResourceUiModel, str2, str, str4, str5, chatContactUsUiModel, zBooleanValue2, zBooleanValue3, zBooleanValue4, (ContactUsMode) obj7);
                        this.f51121c = null;
                        this.d = null;
                        this.f51120b = 1;
                        if (flowCollector.emit(contactUsUiModel, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f51091b.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f51091b.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        final SharedFlow sharedFlow = this.f51093e.f43512c;
        Object objG = FlowKt.g(new Flow<AppEvent>() { // from class: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLogOutEvent$$inlined$filter$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLogOutEvent$$inlined$filter$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f51108b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLogOutEvent$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLogOutEvent$$inlined$filter$1$2", f = "ContactUsDelegateImpl.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f51109b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f51110c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f51109b = obj;
                        this.f51110c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f51108b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f51110c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f51110c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f51109b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f51110c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        if (((AppEvent) obj) instanceof AppEvent.LogOutEvent) {
                            anonymousClass1.f51110c = 1;
                            if (this.f51108b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
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
            public final Object f(FlowCollector flowCollector, Continuation continuation2) {
                Object objF = sharedFlow.f(new AnonymousClass2(flowCollector), continuation2);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        }, new ContactUsDelegateImpl$listenToLogOutEvent$3(this, null), continuation);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f51091b.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        Object objG = FlowKt.g(this.f51092c.f49648a.d(), new ContactUsDelegateImpl$collectChatEvent$2(this, contactUsOrigin, null), continuation);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f51091b.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        Object objS0 = this.f51091b.S0(continuation);
        return objS0 == CoroutineSingletons.COROUTINE_SUSPENDED ? objS0 : Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Flow U0() {
        return this.f51091b.U0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        int i2 = WhenMappings.f51099a[contactUsMode.ordinal()];
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = this.f51090a;
        MutableStateFlow mutableStateFlow = this.s;
        MutableStateFlow mutableStateFlow2 = this.t;
        MutableStateFlow mutableStateFlow3 = this.r;
        MutableStateFlow mutableStateFlow4 = this.q;
        boolean z = false;
        MutableStateFlow mutableStateFlow5 = this.o;
        MutableStateFlow mutableStateFlow6 = this.n;
        MutableStateFlow mutableStateFlow7 = this.m;
        AppConfig appConfig = this.l;
        if (i2 == 1) {
            DistantRepairsConfig distantRepairsConfig = appConfig.Q;
            DistantRepairsConfig distantRepairsConfig2 = appConfig.Q;
            mutableStateFlow7.setValue(distantRepairsConfig.f67244c);
            mutableStateFlow6.setValue(distantRepairsConfig2.f67243b);
            mutableStateFlow5.setValue(distantRepairsConfig2.f67242a);
            mutableStateFlow4.setValue(distantRepairsConfig2.d);
            mutableStateFlow3.setValue(appConfig.N);
            mutableStateFlow2.setValue(ContactUsMode.DISTANT_CARE);
            if (isFeatureAvailableUseCase.b(new Feature[]{Feature.CONTACT_US_CARE_SERVICE}) && (StringKtExtKt.g((String) mutableStateFlow7.getValue()) || StringKtExtKt.g((String) mutableStateFlow6.getValue()) || StringKtExtKt.g((String) mutableStateFlow5.getValue()))) {
                z = true;
            }
            mutableStateFlow.setValue(Boolean.valueOf(z));
            return;
        }
        mutableStateFlow6.setValue(appConfig.K);
        String str = appConfig.L;
        if (!StringExtKt.a(str)) {
            str = null;
        }
        mutableStateFlow5.setValue(str);
        mutableStateFlow7.setValue(appConfig.J);
        mutableStateFlow4.setValue(appConfig.M);
        mutableStateFlow3.setValue(appConfig.N);
        mutableStateFlow2.setValue(ContactUsMode.DEFAULT);
        if (isFeatureAvailableUseCase.b(new Feature[]{Feature.CONTACT_US}) && (StringKtExtKt.g((String) mutableStateFlow7.getValue()) || StringKtExtKt.g((String) mutableStateFlow6.getValue()) || StringKtExtKt.g((String) mutableStateFlow5.getValue()))) {
            z = true;
        }
        mutableStateFlow.setValue(Boolean.valueOf(z));
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.p.setValue(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f51091b.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f51091b.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f51091b.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        final SharedFlow sharedFlow = this.f51093e.f43512c;
        Object objG = FlowKt.g(new Flow<AppEvent>() { // from class: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLoginEvent$$inlined$filter$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLoginEvent$$inlined$filter$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f51113b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLoginEvent$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.contact.ContactUsDelegateImpl$listenToLoginEvent$$inlined$filter$1$2", f = "ContactUsDelegateImpl.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f51114b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f51115c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f51114b = obj;
                        this.f51115c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f51113b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f51115c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f51115c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f51114b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f51115c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        if (((AppEvent) obj) instanceof AppEvent.LogInEvent) {
                            anonymousClass1.f51115c = 1;
                            if (this.f51113b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
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
            public final Object f(FlowCollector flowCollector, Continuation continuation2) {
                Object objF = sharedFlow.f(new AnonymousClass2(flowCollector), continuation2);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        }, new ContactUsDelegateImpl$listenToLoginEvent$3(this, null), continuation);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f51091b.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f51091b.z();
    }
}
