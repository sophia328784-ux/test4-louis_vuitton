package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1", f = "TheLookImmersiveArticleDetailScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f65347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedFlow f65348c;
    public final /* synthetic */ Function3 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TheLookImmersiveArticleViewState f65349e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1$1", f = "TheLookImmersiveArticleDetailScreen.kt", l = {88}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65350b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SharedFlow f65351c;
        public final /* synthetic */ Function3 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ TheLookImmersiveArticleViewState f65352e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SharedFlow sharedFlow, Function3 function3, TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, Continuation continuation) {
            super(2, continuation);
            this.f65351c = sharedFlow;
            this.d = function3;
            this.f65352e = theLookImmersiveArticleViewState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f65351c, this.d, this.f65352e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65350b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final Function3 function3 = this.d;
                final TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = this.f65352e;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt.TheLookImmersiveArticleDetailScreen.3.1.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        String str = (String) obj2;
                        if (str != null) {
                            TheLookImmersiveArticleViewState theLookImmersiveArticleViewState2 = theLookImmersiveArticleViewState;
                            function3.A(str, ((ImmersiveArticleLookCardUiModel) theLookImmersiveArticleViewState2.f65395e.get(theLookImmersiveArticleViewState2.f65396f)).f58681a, theLookImmersiveArticleViewState2.d);
                        }
                        return Unit.f71739a;
                    }
                };
                this.f65350b = 1;
                if (this.f65351c.f(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            os.d();
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1(CoroutineScope coroutineScope, SharedFlow sharedFlow, Function3 function3, TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, Continuation continuation) {
        super(2, continuation);
        this.f65347b = coroutineScope;
        this.f65348c = sharedFlow;
        this.d = function3;
        this.f65349e = theLookImmersiveArticleViewState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1(this.f65347b, this.f65348c, this.d, this.f65349e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        BuildersKt.c(this.f65347b, null, null, new AnonymousClass1(this.f65348c, this.d, this.f65349e, null), 3);
        return Unit.f71739a;
    }
}
