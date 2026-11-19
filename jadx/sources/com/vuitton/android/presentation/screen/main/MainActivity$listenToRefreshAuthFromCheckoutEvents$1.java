package com.vuitton.android.presentation.screen.main;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1", f = "MainActivity.kt", l = {642}, m = "invokeSuspend", v = 2)
final class MainActivity$listenToRefreshAuthFromCheckoutEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f58996c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1$1", f = "MainActivity.kt", l = {645}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f58997b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainActivity f58998c;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/core/events/AppEvent$RefreshAuthFromCheckoutEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1$1$1", f = "MainActivity.kt", l = {646}, m = "invokeSuspend", v = 2)
        final class C02891 extends SuspendLambda implements Function2<AppEvent.RefreshAuthFromCheckoutEvent, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f58999b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ Object f59000c;
            public final /* synthetic */ MainActivity d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02891(MainActivity mainActivity, Continuation continuation) {
                super(2, continuation);
                this.d = mainActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C02891 c02891 = new C02891(this.d, continuation);
                c02891.f59000c = obj;
                return c02891;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02891) create((AppEvent.RefreshAuthFromCheckoutEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                AppEvent.RefreshAuthFromCheckoutEvent refreshAuthFromCheckoutEvent = (AppEvent.RefreshAuthFromCheckoutEvent) this.f59000c;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f58999b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    RefreshAuthFromCheckoutUseCase refreshAuthFromCheckoutUseCase = this.d.w;
                    if (refreshAuthFromCheckoutUseCase == null) {
                        Intrinsics.h("refreshAuthFromCheckoutUseCase");
                        throw null;
                    }
                    String str = refreshAuthFromCheckoutEvent.f43500a;
                    this.f59000c = null;
                    this.f58999b = 1;
                    if (refreshAuthFromCheckoutUseCase.a(str, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                    ((Result) obj).getClass();
                }
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MainActivity mainActivity, Continuation continuation) {
            super(2, continuation);
            this.f58998c = mainActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f58998c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f58997b;
            if (i2 == 0) {
                ResultKt.b(obj);
                MainActivity mainActivity = this.f58998c;
                LVEventSender lVEventSender = mainActivity.v;
                if (lVEventSender == null) {
                    Intrinsics.h("eventSender");
                    throw null;
                }
                final SharedFlow sharedFlow = lVEventSender.f43512c;
                Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1$1$invokeSuspend$$inlined$filterIsInstance$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f59002b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$listenToRefreshAuthFromCheckoutEvents$1$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "MainActivity.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f59003b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f59004c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f59003b = obj;
                                this.f59004c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f59002b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f59004c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f59004c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f59003b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f59004c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (obj instanceof AppEvent.RefreshAuthFromCheckoutEvent) {
                                    anonymousClass1.f59004c = 1;
                                    if (this.f59002b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                C02891 c02891 = new C02891(mainActivity, null);
                this.f58997b = 1;
                if (FlowKt.g(flow, c02891, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$listenToRefreshAuthFromCheckoutEvents$1(MainActivity mainActivity, Continuation continuation) {
        super(2, continuation);
        this.f58996c = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivity$listenToRefreshAuthFromCheckoutEvents$1(this.f58996c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivity$listenToRefreshAuthFromCheckoutEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58995b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MainActivity mainActivity = this.f58996c;
            Lifecycle f13561b = mainActivity.getD();
            Lifecycle.State state = Lifecycle.State.CREATED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(mainActivity, null);
            this.f58995b = 1;
            if (RepeatOnLifecycleKt.a(f13561b, state, anonymousClass1, this) == coroutineSingletons) {
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
