package com.vuitton.android.presentation.chat;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
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
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1", f = "ChatLifecycleObserver.kt", l = {173}, m = "invokeSuspend", v = 2)
final class ChatLifecycleObserver$listenToChatConsentEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LifecycleOwner f50696c;
    public final /* synthetic */ ChatLifecycleObserver d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1", f = "ChatLifecycleObserver.kt", l = {175}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f50697b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ChatLifecycleObserver f50698c;
        public final /* synthetic */ LifecycleOwner d;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/core/events/AppEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1$2", f = "ChatLifecycleObserver.kt", l = {}, m = "invokeSuspend", v = 2)
        final class AnonymousClass2 extends SuspendLambda implements Function2<AppEvent, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f50699b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ChatLifecycleObserver f50700c;
            public final /* synthetic */ LifecycleOwner d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(LifecycleOwner lifecycleOwner, ChatLifecycleObserver chatLifecycleObserver, Continuation continuation) {
                super(2, continuation);
                this.f50700c = chatLifecycleObserver;
                this.d = lifecycleOwner;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.d, this.f50700c, continuation);
                anonymousClass2.f50699b = obj;
                return anonymousClass2;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass2) create((AppEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                AppEvent appEvent = (AppEvent) this.f50699b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                if (appEvent instanceof AppEvent.ChatConsentUpdatedEvent) {
                    boolean z = ((AppEvent.ChatConsentUpdatedEvent) appEvent).f43494a;
                    LifecycleOwner lifecycleOwner = this.d;
                    ChatLifecycleObserver chatLifecycleObserver = this.f50700c;
                    if (z) {
                        chatLifecycleObserver.c(lifecycleOwner);
                    } else {
                        chatLifecycleObserver.a(lifecycleOwner);
                    }
                }
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LifecycleOwner lifecycleOwner, ChatLifecycleObserver chatLifecycleObserver, Continuation continuation) {
            super(2, continuation);
            this.f50698c = chatLifecycleObserver;
            this.d = lifecycleOwner;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.d, this.f50698c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f50697b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ChatLifecycleObserver chatLifecycleObserver = this.f50698c;
                final SharedFlow sharedFlow = chatLifecycleObserver.g.f43512c;
                Flow<AppEvent> flow = new Flow<AppEvent>() { // from class: com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1$invokeSuspend$$inlined$filter$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f50702b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1$invokeSuspend$$inlined$filter$1$2", f = "ChatLifecycleObserver.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f50703b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f50704c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f50703b = obj;
                                this.f50704c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f50702b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f50704c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f50704c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f50703b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f50704c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (((AppEvent) obj) instanceof AppEvent.ChatConsentUpdatedEvent) {
                                    anonymousClass1.f50704c = 1;
                                    if (this.f50702b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.d, chatLifecycleObserver, null);
                this.f50697b = 1;
                if (FlowKt.g(flow, anonymousClass2, this) == coroutineSingletons) {
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
    public ChatLifecycleObserver$listenToChatConsentEvents$1(LifecycleOwner lifecycleOwner, ChatLifecycleObserver chatLifecycleObserver, Continuation continuation) {
        super(2, continuation);
        this.f50696c = lifecycleOwner;
        this.d = chatLifecycleObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ChatLifecycleObserver$listenToChatConsentEvents$1(this.f50696c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ChatLifecycleObserver$listenToChatConsentEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50695b;
        if (i2 == 0) {
            ResultKt.b(obj);
            LifecycleOwner lifecycleOwner = this.f50696c;
            Lifecycle f13561b = lifecycleOwner.getD();
            Lifecycle.State state = Lifecycle.State.CREATED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(lifecycleOwner, this.d, null);
            this.f50695b = 1;
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
