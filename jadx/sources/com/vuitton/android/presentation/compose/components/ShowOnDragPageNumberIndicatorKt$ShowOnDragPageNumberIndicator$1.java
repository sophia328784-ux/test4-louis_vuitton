package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1", f = "ShowOnDragPageNumberIndicator.kt", l = {38}, m = "invokeSuspend", v = 2)
final class ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f51052c;
    public final /* synthetic */ Ref$ObjectRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f51053e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f51054f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.compose.components.ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/foundation/interaction/Interaction;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.compose.components.ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1$1", f = "ShowOnDragPageNumberIndicator.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Interaction, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f51055b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Ref$ObjectRef f51056c;
        public final /* synthetic */ CoroutineScope d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ MutableState f51057e;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.compose.components.ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.compose.components.ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1$1$1", f = "ShowOnDragPageNumberIndicator.kt", l = {EACTags.DATE_OF_BIRTH}, m = "invokeSuspend", v = 2)
        final class C02571 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f51058b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MutableState f51059c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02571(MutableState mutableState, Continuation continuation) {
                super(2, continuation);
                this.f51059c = mutableState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02571(this.f51059c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02571) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f51058b;
                MutableState mutableState = this.f51059c;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    mutableState.setValue(Boolean.TRUE);
                    this.f51058b = 1;
                    if (DelayKt.b(4000L, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Ref$ObjectRef ref$ObjectRef, CoroutineScope coroutineScope, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f51056c = ref$ObjectRef;
            this.d = coroutineScope;
            this.f51057e = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f51056c, this.d, this.f51057e, continuation);
            anonymousClass1.f51055b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Interaction) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Interaction interaction = (Interaction) this.f51055b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (interaction instanceof DragInteraction.Start) {
                Ref$ObjectRef ref$ObjectRef = this.f51056c;
                Job job = (Job) ref$ObjectRef.f71921b;
                if (job != null) {
                    job.cancel(null);
                }
                ref$ObjectRef.f71921b = BuildersKt.c(this.d, null, null, new C02571(this.f51057e, null), 3);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1(PagerState pagerState, Ref$ObjectRef ref$ObjectRef, CoroutineScope coroutineScope, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f51052c = pagerState;
        this.d = ref$ObjectRef;
        this.f51053e = coroutineScope;
        this.f51054f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1(this.f51052c, this.d, this.f51053e, this.f51054f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ShowOnDragPageNumberIndicatorKt$ShowOnDragPageNumberIndicator$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51051b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl f4891a = this.f51052c.p.getF4891a();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f51053e, this.f51054f, null);
            this.f51051b = 1;
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
