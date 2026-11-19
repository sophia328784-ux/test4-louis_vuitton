package com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel;

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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$listenToWishlistEvents$1", f = "ThematicPlpViewModelImpl.kt", l = {469}, m = "invokeSuspend", v = 2)
final class ThematicPlpViewModelImpl$listenToWishlistEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThematicPlpViewModelImpl f55546c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$listenToWishlistEvents$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$listenToWishlistEvents$1$1", f = "ThematicPlpViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<AppEvent.WishListUpdatedEvent, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ThematicPlpViewModelImpl f55547b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ThematicPlpViewModelImpl thematicPlpViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.f55547b = thematicPlpViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f55547b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((AppEvent.WishListUpdatedEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            this.f55547b.r.setValue(null);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpViewModelImpl$listenToWishlistEvents$1(ThematicPlpViewModelImpl thematicPlpViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f55546c = thematicPlpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpViewModelImpl$listenToWishlistEvents$1(this.f55546c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpViewModelImpl$listenToWishlistEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55545b;
        if (i2 == 0) {
            ResultKt.b(obj);
            ThematicPlpViewModelImpl thematicPlpViewModelImpl = this.f55546c;
            final SharedFlow sharedFlow = thematicPlpViewModelImpl.d.f43512c;
            Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$listenToWishlistEvents$1$invokeSuspend$$inlined$filterIsInstance$1

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$listenToWishlistEvents$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                public final class AnonymousClass2<T> implements FlowCollector {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ FlowCollector f55549b;

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$listenToWishlistEvents$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$listenToWishlistEvents$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "ThematicPlpViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                    public final class AnonymousClass1 extends ContinuationImpl {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public /* synthetic */ Object f55550b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f55551c;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.f55550b = obj;
                            this.f55551c |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.f55549b = flowCollector;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i2 = anonymousClass1.f55551c;
                            if ((i2 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.f55551c = i2 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.f55550b;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i3 = anonymousClass1.f55551c;
                        if (i3 == 0) {
                            ResultKt.b(obj2);
                            if (obj instanceof AppEvent.WishListUpdatedEvent) {
                                anonymousClass1.f55551c = 1;
                                if (this.f55549b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(thematicPlpViewModelImpl, null);
            this.f55545b = 1;
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
