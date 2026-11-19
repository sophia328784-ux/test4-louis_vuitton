package com.vuitton.android.presentation.screen.feed.components;

import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$5$1", f = "FeedForYouSuccessScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FeedTracker f57827b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$5$1(FeedTracker feedTracker, Continuation continuation) {
        super(2, continuation);
        this.f57827b = feedTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$5$1(this.f57827b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f57827b.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.FeedForYouScreen.f57943a));
        return Unit.f71739a;
    }
}
