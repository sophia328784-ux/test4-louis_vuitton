package com.vuitton.android.presentation.screen.feed.components.bottomsheets;

import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.bottomsheets.CalendarEventBottomSheetContentKt$CalendarEventBottomSheetContent$1$1$1", f = "CalendarEventBottomSheetContent.kt", l = {}, m = "invokeSuspend", v = 2)
final class CalendarEventBottomSheetContentKt$CalendarEventBottomSheetContent$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FeedTracker f57859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CalendarEventUiModel f57860c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CalendarEventBottomSheetContentKt$CalendarEventBottomSheetContent$1$1$1(FeedTracker feedTracker, CalendarEventUiModel calendarEventUiModel, Continuation continuation) {
        super(2, continuation);
        this.f57859b = feedTracker;
        this.f57860c = calendarEventUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CalendarEventBottomSheetContentKt$CalendarEventBottomSheetContent$1$1$1(this.f57859b, this.f57860c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CalendarEventBottomSheetContentKt$CalendarEventBottomSheetContent$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = this.f57860c.f51766a;
        if (str == null) {
            str = "";
        }
        FeedTracker feedTracker = this.f57859b;
        feedTracker.getClass();
        feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.NotifyMeBottomSheetScreen(str)));
        return Unit.f71739a;
    }
}
