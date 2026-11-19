package com.vuitton.android.presentation.screen.aicompanion;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.core.events.AppEvent;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$listenToWishlistEvents$1", f = "AICompanionViewModelImpl.kt", l = {468}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$listenToWishlistEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModelImpl f52764c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$listenToWishlistEvents$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$listenToWishlistEvents$1$1", f = "AICompanionViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<AppEvent.WishListUpdatedEvent, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AICompanionViewModelImpl f52765b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AICompanionViewModelImpl aICompanionViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.f52765b = aICompanionViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f52765b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((AppEvent.WishListUpdatedEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            String str = AICompanionViewModelImpl.v;
            AICompanionViewModelImpl aICompanionViewModelImpl = this.f52765b;
            BuildersKt.c(ViewModelKt.a(aICompanionViewModelImpl), null, null, new AICompanionViewModelImpl$updateWishlistState$2(aICompanionViewModelImpl, null), 3);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$listenToWishlistEvents$1(AICompanionViewModelImpl aICompanionViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52764c = aICompanionViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$listenToWishlistEvents$1(this.f52764c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$listenToWishlistEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52763b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AICompanionViewModelImpl aICompanionViewModelImpl = this.f52764c;
            final SharedFlow sharedFlow = aICompanionViewModelImpl.f52729a.f43512c;
            Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$listenToWishlistEvents$1$invokeSuspend$$inlined$filterIsInstance$1

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$listenToWishlistEvents$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                public final class AnonymousClass2<T> implements FlowCollector {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ FlowCollector f52767b;

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$listenToWishlistEvents$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$listenToWishlistEvents$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "AICompanionViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                    public final class AnonymousClass1 extends ContinuationImpl {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public /* synthetic */ Object f52768b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f52769c;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.f52768b = obj;
                            this.f52769c |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.f52767b = flowCollector;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i2 = anonymousClass1.f52769c;
                            if ((i2 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.f52769c = i2 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.f52768b;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i3 = anonymousClass1.f52769c;
                        if (i3 == 0) {
                            ResultKt.b(obj2);
                            if (obj instanceof AppEvent.WishListUpdatedEvent) {
                                anonymousClass1.f52769c = 1;
                                if (this.f52767b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            }
                        } else {
                            if (i3 != 1) {
                                md.k("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.b(obj2);
                        }
                        return Unit.f71739a;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object f(FlowCollector flowCollector, Continuation continuation) {
                    Object objF = sharedFlow.f(new AnonymousClass2(flowCollector), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            };
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(aICompanionViewModelImpl, null);
            this.f52763b = 1;
            if (FlowKt.g(flow, anonymousClass1, this) == coroutineSingletons) {
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
