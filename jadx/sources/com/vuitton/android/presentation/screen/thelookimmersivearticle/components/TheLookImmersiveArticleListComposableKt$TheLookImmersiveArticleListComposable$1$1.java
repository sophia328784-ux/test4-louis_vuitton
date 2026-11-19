package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleListComposableKt$TheLookImmersiveArticleListComposable$1$1", f = "TheLookImmersiveArticleListComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class TheLookImmersiveArticleListComposableKt$TheLookImmersiveArticleListComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TheLookImmersiveArticleViewModel f65360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f65361c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TheLookImmersiveArticleListComposableKt$TheLookImmersiveArticleListComposable$1$1(TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel, State state, Continuation continuation) {
        super(2, continuation);
        this.f65360b = theLookImmersiveArticleViewModel;
        this.f65361c = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TheLookImmersiveArticleListComposableKt$TheLookImmersiveArticleListComposable$1$1(this.f65360b, this.f65361c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TheLookImmersiveArticleListComposableKt$TheLookImmersiveArticleListComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        State state = this.f65361c;
        this.f65360b.w2(new TheLookImmersiveArticleTrackingUiModel.LookGridScreenImmersiveArticle(((TheLookImmersiveArticleViewState) state.getF10755b()).f65392a, ((TheLookImmersiveArticleViewState) state.getF10755b()).f65393b));
        return Unit.f71739a;
    }
}
