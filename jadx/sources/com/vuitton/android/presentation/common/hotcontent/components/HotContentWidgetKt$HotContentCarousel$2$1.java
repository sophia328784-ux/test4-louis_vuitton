package com.vuitton.android.presentation.common.hotcontent.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.common.hotcontent.components.HotContentWidgetKt$HotContentCarousel$2$1", f = "HotContentWidget.kt", l = {}, m = "invokeSuspend", v = 2)
final class HotContentWidgetKt$HotContentCarousel$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PagerState f50886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f50887c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f50888e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HotContentWidgetKt$HotContentCarousel$2$1(PagerState pagerState, int i2, Function0 function0, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f50886b = pagerState;
        this.f50887c = i2;
        this.d = function0;
        this.f50888e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new HotContentWidgetKt$HotContentCarousel$2$1(this.f50886b, this.f50887c, this.d, this.f50888e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((HotContentWidgetKt$HotContentCarousel$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f50886b.k() != this.f50887c) {
            this.d.mo47invoke();
            this.f50888e.setValue(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
