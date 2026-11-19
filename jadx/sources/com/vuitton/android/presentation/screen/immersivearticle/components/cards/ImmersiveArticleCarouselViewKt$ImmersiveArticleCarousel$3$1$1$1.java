package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.immersivearticle.models.CarouselArticleSectionUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1", f = "ImmersiveArticleCarouselView.kt", l = {100}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f58485c;
    public final /* synthetic */ PagerState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CarouselArticleSectionUiModel f58486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f58487f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1(boolean z, PagerState pagerState, CarouselArticleSectionUiModel carouselArticleSectionUiModel, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58485c = z;
        this.d = pagerState;
        this.f58486e = carouselArticleSectionUiModel;
        this.f58487f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1(this.f58485c, this.d, this.f58486e, this.f58487f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58484b;
        MutableState mutableState = this.f58487f;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (this.f58485c && ((Boolean) mutableState.getF10755b()).booleanValue()) {
                PagerState pagerState = this.d;
                if (pagerState.k() < CollectionsKt.F(this.f58486e.d)) {
                    int iK = pagerState.k() + 1;
                    this.f58484b = 1;
                    if (PagerState.g(pagerState, iK, null, this, 6) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        mutableState.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
