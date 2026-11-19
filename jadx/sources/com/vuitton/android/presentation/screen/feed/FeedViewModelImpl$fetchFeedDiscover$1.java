package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.feed.FeedMonitoring;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.feed.GetFeedDiscoverUseCase;
import com.vuitton.android.presentation.screen.feed.models.FeedTabState;
import com.vuitton.android.presentation.screen.feed.models.mappers.FeedUiModelMapperKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.common.Coordinates;
import com.vuitton.foundation.model.domain.model.feed.Feed;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$fetchFeedDiscover$1", f = "FeedViewModelImpl.kt", l = {428, 425}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$fetchFeedDiscover$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f57644c;
    public GetFeedDiscoverUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Coordinates f57645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f57646f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57647h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$fetchFeedDiscover$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f57647h = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$fetchFeedDiscover$1(this.f57647h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$fetchFeedDiscover$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d8 A[LOOP:1: B:39:0x00d8->B:52:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:43:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        GetFeedDiscoverUseCase getFeedDiscoverUseCase;
        Coordinates coordinates;
        boolean zB;
        int i2;
        Object value;
        Object objA;
        MonitorAction monitorAction;
        Throwable thA;
        Object value2;
        String message;
        FeedUiModel feedUiModel;
        Object value3;
        FeedViewModelImpl feedViewModelImpl = this.f57647h;
        MutableStateFlow mutableStateFlow = feedViewModelImpl.N;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            boolean z = mutableStateFlow.getValue() instanceof FeedTabState.Success;
            if (z) {
                return Unit.f71739a;
            }
            monitorActionA = feedViewModelImpl.f57616c.a(feedViewModelImpl.G, FeedMonitoring.Action.LoadDiscoverFeed.f48901a);
            if (mutableStateFlow.getValue() instanceof FeedTabState.Error) {
                do {
                    value = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value, FeedTabState.Loading.f57921a));
            }
            getFeedDiscoverUseCase = feedViewModelImpl.n;
            coordinates = feedViewModelImpl.H;
            zB = feedViewModelImpl.g.b();
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = feedViewModelImpl.s;
            Feature[] featureArr = {Feature.EXCLUSIVE_OFFER};
            this.f57644c = monitorActionA;
            this.d = getFeedDiscoverUseCase;
            this.f57645e = coordinates;
            this.f57643b = z ? 1 : 0;
            this.f57646f = zB;
            this.g = 1;
            Object objC = isFeatureAvailableUseCase.c(featureArr, false, this);
            if (objC != coroutineSingletons) {
                i2 = z ? 1 : 0;
                obj = objC;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            boolean z2 = this.f57646f;
            i2 = this.f57643b;
            coordinates = this.f57645e;
            getFeedDiscoverUseCase = this.d;
            MonitorAction monitorAction2 = this.f57644c;
            ResultKt.b(obj);
            zB = z2;
            monitorActionA = monitorAction2;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f57644c;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            try {
                objA = FeedUiModelMapperKt.a((Feed) objA);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objA = new Result.Failure(th);
            }
        }
        if (!(objA instanceof Result.Failure)) {
            feedUiModel = (FeedUiModel) objA;
            do {
                value3 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value3, new FeedTabState.Success(feedUiModel)));
        }
        thA = Result.a(objA);
        if (thA != null) {
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value2, FeedTabState.Error.f57920a));
            monitorAction.d(new FeedMonitoring.Error.LoadDiscoverFeedError(thA));
            Logger logger = feedViewModelImpl.f57615b;
            message = thA.getMessage();
            if (message == null) {
                message = "Unable to retrieve feed discover";
            }
            logger.c("FeedViewModelImpl", message, thA);
        }
        monitorAction.b();
        return Unit.f71739a;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        this.f57644c = monitorActionA;
        this.d = null;
        this.f57645e = null;
        this.f57643b = i2;
        this.g = 2;
        objA = getFeedDiscoverUseCase.a(coordinates, zB, zBooleanValue, this);
        if (objA != coroutineSingletons) {
            monitorAction = monitorActionA;
            Result.Companion companion3 = Result.INSTANCE;
            if (!(objA instanceof Result.Failure)) {
                objA = FeedUiModelMapperKt.a((Feed) objA);
            }
            if (!(objA instanceof Result.Failure)) {
                feedUiModel = (FeedUiModel) objA;
                do {
                    value3 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value3, new FeedTabState.Success(feedUiModel)));
            }
            thA = Result.a(objA);
            if (thA != null) {
                do {
                    value2 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value2, FeedTabState.Error.f57920a));
                monitorAction.d(new FeedMonitoring.Error.LoadDiscoverFeedError(thA));
                Logger logger2 = feedViewModelImpl.f57615b;
                message = thA.getMessage();
                if (message == null) {
                    message = "Unable to retrieve feed discover";
                }
                logger2.c("FeedViewModelImpl", message, thA);
            }
            monitorAction.b();
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
