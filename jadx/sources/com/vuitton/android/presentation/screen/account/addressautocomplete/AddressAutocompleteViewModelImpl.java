package com.vuitton.android.presentation.screen.account.addressautocomplete;

import androidx.compose.ui.autofill.AutofillNode;
import androidx.compose.ui.autofill.AutofillType;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.address.AddressBookMonitoring;
import com.vuitton.android.domain.usecase.account.address.GetAddressAutocompleteUseCase;
import com.vuitton.android.domain.usecase.account.address.GetAddressDetailsUseCase;
import com.vuitton.android.domain.usecase.config.CachedAppConfigOrNullUseCase;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContextKt$WhenMappings;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.AddressAutocompleteTrackingUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.TrackingAutocompleteAddressSearch;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.config.AddressAutocompleteConfig;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000fB1\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/account/address/GetAddressAutocompleteUseCase;", "getAddressAutocompleteUseCase", "Lcom/vuitton/android/domain/usecase/account/address/GetAddressDetailsUseCase;", "getAddressDetailsUseCase", "Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;", "cachedAppConfigOrNullUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/account/address/GetAddressAutocompleteUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressDetailsUseCase;Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressAutocompleteViewModelImpl extends ViewModel implements AddressAutocompleteViewModel {
    public static final List q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f52044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f52045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetAddressAutocompleteUseCase f52046c;
    public final GetAddressDetailsUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f52047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f52048f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f52049h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f52050i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f52051j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final BufferedChannel f52052k;
    public final Flow l;
    public String m;
    public AutocompleteContext n;
    public MonitorAction o;
    public final StateFlow p;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1", f = "AddressAutocompleteViewModelImpl.kt", l = {104}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f52053b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "query", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1$2", f = "AddressAutocompleteViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class AnonymousClass2 extends SuspendLambda implements Function2<String, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f52055b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AddressAutocompleteViewModelImpl f52056c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.f52056c = addressAutocompleteViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f52056c, continuation);
                anonymousClass2.f52055b = obj;
                return anonymousClass2;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass2) create((String) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                String str = (String) this.f52055b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl = this.f52056c;
                if (((Boolean) addressAutocompleteViewModelImpl.f52051j.getValue()).booleanValue()) {
                    BuildersKt.c(ViewModelKt.a(addressAutocompleteViewModelImpl), null, null, new AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1(addressAutocompleteViewModelImpl, str, addressAutocompleteViewModelImpl.m, addressAutocompleteViewModelImpl.n, null), 3);
                }
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return AddressAutocompleteViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f52053b;
            if (i2 == 0) {
                ResultKt.b(obj);
                AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl = AddressAutocompleteViewModelImpl.this;
                boolean zBooleanValue = ((Boolean) addressAutocompleteViewModelImpl.f52051j.getValue()).booleanValue();
                final Flow flowJ = addressAutocompleteViewModelImpl.g;
                if (zBooleanValue) {
                    flowJ = FlowKt.j(flowJ, 300L);
                }
                Flow<String> flow = new Flow<String>() { // from class: com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1$invokeSuspend$$inlined$filter$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f52058b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1$invokeSuspend$$inlined$filter$1$2", f = "AddressAutocompleteViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f52059b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f52060c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f52059b = obj;
                                this.f52060c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f52058b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f52060c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f52060c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f52059b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f52060c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (!StringsKt.w((String) obj)) {
                                    anonymousClass1.f52060c = 1;
                                    if (this.f52058b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                    public final Object f(FlowCollector flowCollector, Continuation continuation) {
                        Object objF = flowJ.f(new AnonymousClass2(flowCollector), continuation);
                        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                    }
                };
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(addressAutocompleteViewModelImpl, null);
                this.f52053b = 1;
                if (FlowKt.g(flow, anonymousClass2, this) == coroutineSingletons) {
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$Companion;", "", "", "Landroidx/compose/ui/autofill/AutofillType;", "autofillTypeList", "Ljava/util/List;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        q = CollectionsKt.O(AutofillType.PostalAddress);
    }

    @Inject
    public AddressAutocompleteViewModelImpl(Logger logger, AnalyticsTracker analyticsTracker, GetAddressAutocompleteUseCase getAddressAutocompleteUseCase, GetAddressDetailsUseCase getAddressDetailsUseCase, CachedAppConfigOrNullUseCase cachedAppConfigOrNullUseCase) {
        AddressAutocompleteConfig addressAutocompleteConfig;
        logger.getClass();
        analyticsTracker.getClass();
        getAddressAutocompleteUseCase.getClass();
        getAddressDetailsUseCase.getClass();
        cachedAppConfigOrNullUseCase.getClass();
        this.f52044a = logger;
        this.f52045b = analyticsTracker;
        this.f52046c = getAddressAutocompleteUseCase;
        this.d = getAddressDetailsUseCase;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.f52047e = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.f52048f = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new String());
        this.g = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(EmptyList.f71768b);
        this.f52049h = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.f52050i = mutableStateFlowA5;
        AppConfig appConfigC = cachedAppConfigOrNullUseCase.f49660a.c();
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(Boolean.valueOf((appConfigC == null || (addressAutocompleteConfig = appConfigC.d0) == null) ? true : addressAutocompleteConfig.f67229a));
        this.f52051j = mutableStateFlowA6;
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.f52052k = bufferedChannelA;
        this.l = FlowKt.y(bufferedChannelA);
        this.m = new String();
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6};
        Flow<AddressAutocompleteViewState> flow = new Flow<AddressAutocompleteViewState>() { // from class: com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$special$$inlined$combine$1$3", f = "AddressAutocompleteViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super AddressAutocompleteViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f52074b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f52075c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f52075c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f52075c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f52074b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        String str = (String) objArr[1];
                        Object obj3 = objArr[2];
                        obj3.getClass();
                        String str2 = (String) obj3;
                        Object obj4 = objArr[3];
                        obj4.getClass();
                        List list = (List) obj4;
                        AutofillNode autofillNode = (AutofillNode) objArr[4];
                        Object obj5 = objArr[5];
                        obj5.getClass();
                        AddressAutocompleteViewState addressAutocompleteViewState = new AddressAutocompleteViewState(zBooleanValue, str, str2, list, autofillNode, ((Boolean) obj5).booleanValue());
                        this.f52075c = null;
                        this.d = null;
                        this.f52074b = 1;
                        if (flowCollector.emit(addressAutocompleteViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.p = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new AddressAutocompleteViewState(false, null, null, null, null, false, 63, null));
        mutableStateFlowA2.setValue(UUID.randomUUID().toString());
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    public final void N1(AddressAutocompleteTrackingUiModel addressAutocompleteTrackingUiModel) {
        Hit defaultEventHit;
        if (addressAutocompleteTrackingUiModel.equals(AddressAutocompleteTrackingUiModel.AddressAutocompletePage.f52129a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/MyAddressBook/autocomplete", "LVPass/my_address_book/autocomplete", "mylv", null, 17, null);
        } else if (addressAutocompleteTrackingUiModel instanceof AddressAutocompleteTrackingUiModel.OpenAddressSearchClickedEvent) {
            AddressAutocompleteTrackingUiModel.OpenAddressSearchClickedEvent openAddressSearchClickedEvent = (AddressAutocompleteTrackingUiModel.OpenAddressSearchClickedEvent) addressAutocompleteTrackingUiModel;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyAddressBook/autocomplete", openAddressSearchClickedEvent.f52133a == TrackingAutocompleteAddressSearch.ADD_ADDRESS ? "add_address" : "edit_address", "mylv", "address_search_opened", null, CollectionsKt.O(new AdditionalProperty.NumberOfTypedCharacters(openAddressSearchClickedEvent.f52134b)), 33, null);
        } else if (addressAutocompleteTrackingUiModel instanceof AddressAutocompleteTrackingUiModel.AutocompleteSucceededEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyAddressBook/autocomplete", "success", "mylv", "address_search_opened", null, CollectionsKt.O(new AdditionalProperty.NumberOfTypedCharacters(((AddressAutocompleteTrackingUiModel.AutocompleteSucceededEvent) addressAutocompleteTrackingUiModel).f52132a)), 33, null);
        } else if (addressAutocompleteTrackingUiModel instanceof AddressAutocompleteTrackingUiModel.AutocompleteManualAddressClickedEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyAddressBook/autocomplete", "click_adress_manual", "mylv", "address_search_opened", null, CollectionsKt.O(new AdditionalProperty.NumberOfTypedCharacters(((AddressAutocompleteTrackingUiModel.AutocompleteManualAddressClickedEvent) addressAutocompleteTrackingUiModel).f52130a)), 33, null);
        } else {
            if (!(addressAutocompleteTrackingUiModel instanceof AddressAutocompleteTrackingUiModel.AutocompleteManualConfirmClickedEvent)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyAddressBook/autocomplete", "click_confirm_manual", "mylv", "address_search_opened", null, CollectionsKt.O(new AdditionalProperty.NumberOfTypedCharacters(((AddressAutocompleteTrackingUiModel.AutocompleteManualConfirmClickedEvent) addressAutocompleteTrackingUiModel).f52131a)), 33, null);
        }
        this.f52045b.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    public final void Ra(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AddressAutocompleteViewModelImpl$selectAutocompleteResult$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    public final void X5(String str) {
        this.g.setValue(str == null ? new String() : str);
        if (str == null || str.length() == 0) {
            this.f52049h.setValue(EmptyList.f71768b);
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    /* JADX INFO: renamed from: g4, reason: from getter */
    public final Flow getL() {
        return this.l;
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    public final void l1(MonitorAction monitorAction) {
        this.o = monitorAction != null ? monitorAction.a(AddressBookMonitoring.Action.AddressAutocomplete.f48808a) : null;
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    public final void n0() {
        MonitorAction monitorAction = this.o;
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion = Result.INSTANCE;
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    public final void pa(String str, AddressAutocompleteScreenContext addressAutocompleteScreenContext) {
        AutocompleteContext autocompleteContext;
        str.getClass();
        addressAutocompleteScreenContext.getClass();
        this.m = str;
        addressAutocompleteScreenContext.getClass();
        int i2 = AddressAutocompleteScreenContextKt$WhenMappings.f52115a[addressAutocompleteScreenContext.ordinal()];
        if (i2 == 1) {
            autocompleteContext = AutocompleteContext.ADDRESS_BOOK;
        } else {
            if (i2 != 2) {
                v40.g();
                return;
            }
            autocompleteContext = AutocompleteContext.REGISTER;
        }
        this.n = autocompleteContext;
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    public final void w7() {
        String str = (String) this.g.getValue();
        if (StringsKt.w(str)) {
            return;
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1(this, str, this.m, this.n, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel
    public final void zb(Function1 function1) {
        this.f52050i.setValue(new AutofillNode(q, null, function1, 2, null));
    }
}
