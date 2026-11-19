package com.vuitton.android.presentation.screen.feed.components.subcomponents;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.subcomponents.FeedGenericSectionKt$FeedGenericSection$9$1", f = "FeedGenericSection.kt", l = {}, m = "invokeSuspend", v = 2)
final class FeedGenericSectionKt$FeedGenericSection$9$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f57900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditorialModuleUiModel f57901c;
    public final /* synthetic */ FeedTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f57902e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedGenericSectionKt$FeedGenericSection$9$1(boolean z, EditorialModuleUiModel editorialModuleUiModel, FeedTracker feedTracker, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f57900b = z;
        this.f57901c = editorialModuleUiModel;
        this.d = feedTracker;
        this.f57902e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedGenericSectionKt$FeedGenericSection$9$1(this.f57900b, this.f57901c, this.d, this.f57902e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedGenericSectionKt$FeedGenericSection$9$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f57900b) {
            EditorialModuleUiModel.CarouselSmallUiModel carouselSmallUiModel = (EditorialModuleUiModel.CarouselSmallUiModel) this.f57901c;
            if (!carouselSmallUiModel.g) {
                MutableState mutableState = this.f57902e;
                if (!((Boolean) mutableState.getF10755b()).booleanValue()) {
                    this.d.c(carouselSmallUiModel.f50831e);
                    mutableState.setValue(Boolean.TRUE);
                }
            }
        }
        return Unit.f71739a;
    }
}
