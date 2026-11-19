package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$onShouldSwipe$1$1", f = "ImmersiveArticleCarouselView.kt", l = {}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$onShouldSwipe$1$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MutableState f58488b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$onShouldSwipe$1$1(MutableState mutableState, Continuation continuation) {
        super(1, continuation);
        this.f58488b = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$onShouldSwipe$1$1(this.f58488b, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$onShouldSwipe$1$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f58488b.setValue(Boolean.TRUE);
        return Unit.f71739a;
    }
}
