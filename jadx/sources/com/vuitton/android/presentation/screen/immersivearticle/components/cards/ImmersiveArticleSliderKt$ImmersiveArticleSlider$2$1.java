package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.lazy.LazyListState;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSliderUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1", f = "ImmersiveArticleSlider.kt", l = {56}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f58491c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleType f58492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleSliderUiModel f58493f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/foundation/interaction/Interaction;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1", f = "ImmersiveArticleSlider.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Interaction, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f58494b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function1 f58495c;
        public final /* synthetic */ ImmersiveArticleType d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ LazyListState f58496e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ImmersiveArticleSliderUiModel f58497f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LazyListState lazyListState, ImmersiveArticleSliderUiModel immersiveArticleSliderUiModel, ImmersiveArticleType immersiveArticleType, Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.f58495c = function1;
            this.d = immersiveArticleType;
            this.f58496e = lazyListState;
            this.f58497f = immersiveArticleSliderUiModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f58496e, this.f58497f, this.d, continuation, this.f58495c);
            anonymousClass1.f58494b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Interaction) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Interaction interaction = (Interaction) this.f58494b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (interaction instanceof DragInteraction.Start) {
                this.f58495c.invoke(new ImmersiveArticleTrackingUiModel.OnSwipeSliderEvent(this.d, String.valueOf(this.f58496e.h() + 1), String.valueOf(this.f58497f.d.size())));
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1(LazyListState lazyListState, ImmersiveArticleSliderUiModel immersiveArticleSliderUiModel, ImmersiveArticleType immersiveArticleType, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.f58491c = lazyListState;
        this.d = function1;
        this.f58492e = immersiveArticleType;
        this.f58493f = immersiveArticleSliderUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ImmersiveArticleType immersiveArticleType = this.f58492e;
        return new ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1(this.f58491c, this.f58493f, immersiveArticleType, continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58490b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl f4891a = this.f58491c.g.getF4891a();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f58491c, this.f58493f, this.f58492e, null, this.d);
            this.f58490b = 1;
            if (FlowKt.g(f4891a, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
