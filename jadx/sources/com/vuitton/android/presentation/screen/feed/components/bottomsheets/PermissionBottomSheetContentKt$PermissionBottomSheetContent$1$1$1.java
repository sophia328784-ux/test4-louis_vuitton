package com.vuitton.android.presentation.screen.feed.components.bottomsheets;

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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.bottomsheets.PermissionBottomSheetContentKt$PermissionBottomSheetContent$1$1$1", f = "PermissionBottomSheetContent.kt", l = {}, m = "invokeSuspend", v = 2)
final class PermissionBottomSheetContentKt$PermissionBottomSheetContent$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FeedTracker f57861b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionBottomSheetContentKt$PermissionBottomSheetContent$1$1$1(FeedTracker feedTracker, Continuation continuation) {
        super(2, continuation);
        this.f57861b = feedTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PermissionBottomSheetContentKt$PermissionBottomSheetContent$1$1$1(this.f57861b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PermissionBottomSheetContentKt$PermissionBottomSheetContent$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f57861b.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.PermissionsBottomSheetScreen.f57973a));
        return Unit.f71739a;
    }
}
