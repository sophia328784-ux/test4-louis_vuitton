package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.feed.FeedMonitoring;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.feed.GetFeedForYouUseCase;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedTabState;
import com.vuitton.android.presentation.screen.feed.models.mappers.FeedUiModelMapperKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModelKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.common.Coordinates;
import com.vuitton.foundation.model.domain.model.feed.Feed;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
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
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$fetchFeedForYou$1", f = "FeedViewModelImpl.kt", l = {456, 453}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$fetchFeedForYou$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f57648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public GetFeedForYouUseCase f57649c;
    public Coordinates d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f57650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f57651f;
    public final /* synthetic */ FeedViewModelImpl g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$fetchFeedForYou$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.g = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$fetchFeedForYou$1(this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$fetchFeedForYou$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:47:0x0100  */
    /* JADX WARN: Code duplicated, block: B:52:0x0114  */
    /* JADX WARN: Code duplicated, block: B:57:0x012a A[LOOP:2: B:55:0x0124->B:57:0x012a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:61:0x0142  */
    /* JADX WARN: Code duplicated, block: B:64:0x0154  */
    /* JADX WARN: Code duplicated, block: B:72:0x0180 A[LOOP:4: B:72:0x0180->B:98:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:76:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:80:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0118 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x016a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x015e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x014e A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objC;
        Coordinates coordinates;
        boolean z;
        GetFeedForYouUseCase getFeedForYouUseCase;
        Object value;
        Object failure;
        MonitorAction monitorAction;
        Throwable thA;
        Object value2;
        String message;
        FeedUiModel feedUiModel;
        Object value3;
        List<EditorialModuleUiModel> list;
        Iterator it;
        FeedTabState feedTabState;
        FeedViewModelImpl feedViewModelImpl = this.g;
        MutableStateFlow mutableStateFlow = feedViewModelImpl.c0;
        MutableStateFlow mutableStateFlow2 = feedViewModelImpl.O;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57651f;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (((Boolean) mutableStateFlow.getValue()).booleanValue() && (mutableStateFlow2.getValue() instanceof FeedTabState.Success)) {
                return Unit.f71739a;
            }
            monitorActionA = feedViewModelImpl.f57616c.a(feedViewModelImpl.G, FeedMonitoring.Action.LoadForYouFeed.f48902a);
            if (mutableStateFlow2.getValue() instanceof FeedTabState.Error) {
                do {
                    value = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value, FeedTabState.Loading.f57921a));
            }
            GetFeedForYouUseCase getFeedForYouUseCase2 = feedViewModelImpl.f57622k;
            Coordinates coordinates2 = feedViewModelImpl.H;
            boolean zB = feedViewModelImpl.g.b();
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = feedViewModelImpl.s;
            Feature[] featureArr = {Feature.EXCLUSIVE_OFFER};
            this.f57648b = monitorActionA;
            this.f57649c = getFeedForYouUseCase2;
            this.d = coordinates2;
            this.f57650e = zB;
            this.f57651f = 1;
            objC = isFeatureAvailableUseCase.c(featureArr, false, this);
            if (objC != coroutineSingletons) {
                coordinates = coordinates2;
                z = zB;
                getFeedForYouUseCase = getFeedForYouUseCase2;
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            z = this.f57650e;
            Coordinates coordinates3 = this.d;
            GetFeedForYouUseCase getFeedForYouUseCase3 = this.f57649c;
            MonitorAction monitorAction2 = this.f57648b;
            ResultKt.b(obj);
            objC = obj;
            monitorActionA = monitorAction2;
            getFeedForYouUseCase = getFeedForYouUseCase3;
            coordinates = coordinates3;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f57648b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                failure = FeedUiModelMapperKt.a((Feed) failure);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            feedUiModel = (FeedUiModel) failure;
            do {
                value3 = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value3, new FeedTabState.Success(feedUiModel)));
            mutableStateFlow.setValue(Boolean.TRUE);
            if (FeedUiModelKt.a(feedUiModel)) {
                FeedViewModelImpl.Cc(feedViewModelImpl);
            }
            list = feedUiModel.f57983a;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (EditorialModuleUiModel editorialModuleUiModel : list) {
                    if (!(editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel) || (editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselSmallUiModel)) {
                        LinkedHashMap linkedHashMap = feedViewModelImpl.d0;
                        it = linkedHashMap.values().iterator();
                        while (it.hasNext()) {
                            ((Job) it.next()).cancel(null);
                        }
                        linkedHashMap.clear();
                        feedTabState = (FeedTabState) mutableStateFlow2.getValue();
                        if (!(feedTabState instanceof FeedTabState.Success)) {
                            break;
                        }
                        for (EditorialModuleUiModel editorialModuleUiModel2 : ((FeedTabState.Success) feedTabState).f57922a.f57983a) {
                            if (editorialModuleUiModel2 instanceof EditorialModuleUiModel.GridSmallUiModel) {
                                EditorialModuleUiModel.GridSmallUiModel gridSmallUiModel = (EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel2;
                                feedViewModelImpl.Kc(gridSmallUiModel.f50835a, gridSmallUiModel.f50837c, gridSmallUiModel.d);
                            } else if (editorialModuleUiModel2 instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                                EditorialModuleUiModel.CarouselSmallUiModel carouselSmallUiModel = (EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel2;
                                feedViewModelImpl.Kc(carouselSmallUiModel.f50828a, carouselSmallUiModel.f50830c, carouselSmallUiModel.d);
                            }
                        }
                        break;
                    }
                }
            }
        }
        thA = Result.a(failure);
        if (thA != null) {
            do {
                value2 = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value2, FeedTabState.Error.f57920a));
            mutableStateFlow.setValue(Boolean.FALSE);
            monitorAction.d(new FeedMonitoring.Error.LoadForYouFeedError(thA));
            Logger logger = feedViewModelImpl.f57615b;
            message = thA.getMessage();
            if (message == null) {
                message = "Unable to retrieve feed for you";
            }
            logger.c("FeedViewModelImpl", message, thA);
        }
        monitorAction.b();
        return Unit.f71739a;
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        this.f57648b = monitorActionA;
        this.f57649c = null;
        this.d = null;
        this.f57651f = 2;
        Object objA = getFeedForYouUseCase.a(coordinates, z, zBooleanValue, this);
        if (objA != coroutineSingletons) {
            MonitorAction monitorAction3 = monitorActionA;
            failure = objA;
            monitorAction = monitorAction3;
            Result.Companion companion3 = Result.INSTANCE;
            if (!(failure instanceof Result.Failure)) {
                failure = FeedUiModelMapperKt.a((Feed) failure);
            }
            if (!(failure instanceof Result.Failure)) {
                feedUiModel = (FeedUiModel) failure;
                do {
                    value3 = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value3, new FeedTabState.Success(feedUiModel)));
                mutableStateFlow.setValue(Boolean.TRUE);
                if (FeedUiModelKt.a(feedUiModel)) {
                    FeedViewModelImpl.Cc(feedViewModelImpl);
                }
                list = feedUiModel.f57983a;
                if (!(list instanceof Collection)) {
                    while (true) {
                        if (!(editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel)) {
                        }
                        LinkedHashMap linkedHashMap2 = feedViewModelImpl.d0;
                        it = linkedHashMap2.values().iterator();
                        while (it.hasNext()) {
                            ((Job) it.next()).cancel(null);
                        }
                        linkedHashMap2.clear();
                        feedTabState = (FeedTabState) mutableStateFlow2.getValue();
                        if (!(feedTabState instanceof FeedTabState.Success)) {
                            break;
                        }
                        while (r3.hasNext()) {
                            if (editorialModuleUiModel2 instanceof EditorialModuleUiModel.GridSmallUiModel) {
                                EditorialModuleUiModel.GridSmallUiModel gridSmallUiModel2 = (EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel2;
                                feedViewModelImpl.Kc(gridSmallUiModel2.f50835a, gridSmallUiModel2.f50837c, gridSmallUiModel2.d);
                            } else if (editorialModuleUiModel2 instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                                EditorialModuleUiModel.CarouselSmallUiModel carouselSmallUiModel2 = (EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel2;
                                feedViewModelImpl.Kc(carouselSmallUiModel2.f50828a, carouselSmallUiModel2.f50830c, carouselSmallUiModel2.d);
                            }
                        }
                        break;
                        break;
                    }
                }
                while (true) {
                    if (!(editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel)) {
                    }
                    LinkedHashMap linkedHashMap3 = feedViewModelImpl.d0;
                    it = linkedHashMap3.values().iterator();
                    while (it.hasNext()) {
                        ((Job) it.next()).cancel(null);
                    }
                    linkedHashMap3.clear();
                    feedTabState = (FeedTabState) mutableStateFlow2.getValue();
                    if (!(feedTabState instanceof FeedTabState.Success)) {
                        break;
                    }
                    while (r3.hasNext()) {
                        if (editorialModuleUiModel2 instanceof EditorialModuleUiModel.GridSmallUiModel) {
                            EditorialModuleUiModel.GridSmallUiModel gridSmallUiModel3 = (EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel2;
                            feedViewModelImpl.Kc(gridSmallUiModel3.f50835a, gridSmallUiModel3.f50837c, gridSmallUiModel3.d);
                        } else if (editorialModuleUiModel2 instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                            EditorialModuleUiModel.CarouselSmallUiModel carouselSmallUiModel3 = (EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel2;
                            feedViewModelImpl.Kc(carouselSmallUiModel3.f50828a, carouselSmallUiModel3.f50830c, carouselSmallUiModel3.d);
                        }
                    }
                    break;
                    break;
                }
            }
            thA = Result.a(failure);
            if (thA != null) {
                do {
                    value2 = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value2, FeedTabState.Error.f57920a));
                mutableStateFlow.setValue(Boolean.FALSE);
                monitorAction.d(new FeedMonitoring.Error.LoadForYouFeedError(thA));
                Logger logger2 = feedViewModelImpl.f57615b;
                message = thA.getMessage();
                if (message == null) {
                    message = "Unable to retrieve feed for you";
                }
                logger2.c("FeedViewModelImpl", message, thA);
            }
            monitorAction.b();
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
