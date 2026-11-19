package com.vuitton.android.presentation.screen.connectivity.travel.form;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.account.GetCachedUserIdUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.travel.CreateTravelUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.models.TravelTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.models.TravelTrackingUiModelKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;", "Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;", "createTravelUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;", "getCachedUserIdUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TravelFormViewModelImpl extends ViewModel implements TravelFormViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CreateTravelUseCase f56415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetProfileUseCase f56416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetCachedUserIdUseCase f56417c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableLiveData f56418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableLiveData f56419f;
    public final MutableLiveData g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableLiveData f56420h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableLiveData f56421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableLiveData f56422j;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl$1", f = "TravelFormViewModelImpl.kt", l = {EACTags.CURRENCY_CODE, EACTags.CURRENCY_CODE}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f56423b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return TravelFormViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        
            if (r5 == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r5.f56423b
                r2 = 2
                r3 = 1
                com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl r4 = com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl.this
                if (r1 == 0) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L16
                kotlin.ResultKt.b(r6)
                kotlin.Result r6 = (kotlin.Result) r6
                java.lang.Object r5 = r6.f71708b
                goto L47
            L16:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r5)
                r5 = 0
                return r5
            L1d:
                kotlin.ResultKt.b(r6)
                goto L3c
            L21:
                kotlin.ResultKt.b(r6)
                com.vuitton.android.domain.usecase.account.GetCachedUserIdUseCase r6 = r4.f56417c
                com.vuitton.android.domain.repository.UserPreferencesRepository r6 = r6.f49029a
                java.lang.String r6 = r6.getUserId()
                androidx.lifecycle.MutableLiveData r1 = r4.f56421i
                r1.postValue(r6)
                com.vuitton.android.domain.usecase.account.GetProfileUseCase r6 = r4.f56416b
                r5.f56423b = r3
                java.lang.Object r6 = r6.a(r5)
                if (r6 != r0) goto L3c
                goto L46
            L3c:
                com.vuitton.foundation.model.domain.model.common.ResultStrategy r6 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r6
                r5.f56423b = r2
                java.lang.Object r5 = r6.c(r5)
                if (r5 != r0) goto L47
            L46:
                return r0
            L47:
                kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
                boolean r6 = r5 instanceof kotlin.Result.Failure
                if (r6 != 0) goto L54
                com.vuitton.foundation.model.domain.model.profile.Profile r5 = (com.vuitton.foundation.model.domain.model.profile.Profile) r5
                androidx.lifecycle.MutableLiveData r6 = r4.g
                r6.postValue(r5)
            L54:
                kotlin.Unit r5 = kotlin.Unit.f71739a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public TravelFormViewModelImpl(CreateTravelUseCase createTravelUseCase, GetProfileUseCase getProfileUseCase, GetCachedUserIdUseCase getCachedUserIdUseCase, AnalyticsTracker analyticsTracker) {
        createTravelUseCase.getClass();
        getProfileUseCase.getClass();
        getCachedUserIdUseCase.getClass();
        analyticsTracker.getClass();
        this.f56415a = createTravelUseCase;
        this.f56416b = getProfileUseCase;
        this.f56417c = getCachedUserIdUseCase;
        this.d = analyticsTracker;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f56418e = mutableLiveData;
        this.f56419f = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.g = mutableLiveData2;
        this.f56420h = mutableLiveData2;
        MutableLiveData mutableLiveData3 = new MutableLiveData();
        this.f56421i = mutableLiveData3;
        this.f56422j = mutableLiveData3;
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(closeableCoroutineScopeA, DefaultIoScheduler.f75161b, null, new AnonymousClass1(null), 2);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModel
    /* JADX INFO: renamed from: T, reason: from getter */
    public final MutableLiveData getF56420h() {
        return this.f56420h;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModel
    public final void W6(TravelUiModel travelUiModel) {
        travelUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new TravelFormViewModelImpl$createTravel$1(this, travelUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModel
    public final LiveData getUserId() {
        return this.f56422j;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModel
    public final void t0(TravelTrackingUiModel travelTrackingUiModel) {
        this.d.a(TravelTrackingUiModelKt.a(travelTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModel
    /* JADX INFO: renamed from: w, reason: from getter */
    public final MutableLiveData getF56419f() {
        return this.f56419f;
    }
}
