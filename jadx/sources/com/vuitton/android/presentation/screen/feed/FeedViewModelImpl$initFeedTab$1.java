package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$initFeedTab$1", f = "FeedViewModelImpl.kt", l = {301}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$initFeedTab$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f57673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f57674c;
    public final /* synthetic */ FeedViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$initFeedTab$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$initFeedTab$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$initFeedTab$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57674c;
        if (i2 == 0) {
            ResultKt.b(obj);
            FeedViewModelImpl feedViewModelImpl = this.d;
            MutableStateFlow mutableStateFlow2 = feedViewModelImpl.J;
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = feedViewModelImpl.s;
            Feature[] featureArr = {Feature.FEED_FOR_YOU_DEFAULT_TAB};
            this.f57673b = mutableStateFlow2;
            this.f57674c = 1;
            obj = isFeatureAvailableUseCase.c(featureArr, false, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutableStateFlow = mutableStateFlow2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableStateFlow = (MutableStateFlow) this.f57673b;
            ResultKt.b(obj);
        }
        mutableStateFlow.setValue(((Boolean) obj).booleanValue() ? FeedTab.FOR_YOU : FeedTab.DISCOVER);
        return Unit.f71739a;
    }
}
