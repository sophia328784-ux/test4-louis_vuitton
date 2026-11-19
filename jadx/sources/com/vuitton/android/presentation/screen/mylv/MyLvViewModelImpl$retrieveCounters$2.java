package com.vuitton.android.presentation.screen.mylv;

import com.sightcall.uvc.Camera;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2", f = "MyLvViewModelImpl.kt", l = {432}, m = "invokeSuspend", v = 2)
final class MyLvViewModelImpl$retrieveCounters$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyLvViewModelImpl f59310c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1", f = "MyLvViewModelImpl.kt", l = {467, 468, 477, 485}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CoroutineExceptionHandler f59311b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List f59312c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ Object f59313e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MyLvViewModelImpl f59314f;
        public final /* synthetic */ boolean g;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1$1", f = "MyLvViewModelImpl.kt", l = {448}, m = "invokeSuspend", v = 2)
        final class C02921 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59315b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MyLvViewModelImpl f59316c;
            public final /* synthetic */ boolean d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02921(MyLvViewModelImpl myLvViewModelImpl, boolean z, Continuation continuation) {
                super(2, continuation);
                this.f59316c = myLvViewModelImpl;
                this.d = z;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02921(this.f59316c, this.d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02921) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f59315b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    this.f59315b = 1;
                    if (MyLvViewModelImpl.Dc(this.f59316c, this.d, this) == coroutineSingletons) {
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

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1$2", f = "MyLvViewModelImpl.kt", l = {461}, m = "invokeSuspend", v = 2)
        final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59317b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MyLvViewModelImpl f59318c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
                super(2, continuation);
                this.f59318c = myLvViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(continuation, this.f59318c);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f59317b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    this.f59317b = 1;
                    if (MyLvViewModelImpl.Ec(this.f59318c, this) == coroutineSingletons) {
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

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1$3, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1$3", f = "MyLvViewModelImpl.kt", l = {472}, m = "invokeSuspend", v = 2)
        final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59319b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MyLvViewModelImpl f59320c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
                super(2, continuation);
                this.f59320c = myLvViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass3(continuation, this.f59320c);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f59319b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    this.f59319b = 1;
                    if (MyLvViewModelImpl.zc(this.f59320c, this) == coroutineSingletons) {
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

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1$4, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1$4", f = "MyLvViewModelImpl.kt", l = {Camera.DEFAULT_PREVIEW_HEIGHT}, m = "invokeSuspend", v = 2)
        final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59321b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MyLvViewModelImpl f59322c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass4(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
                super(2, continuation);
                this.f59322c = myLvViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass4(continuation, this.f59322c);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f59321b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    this.f59321b = 1;
                    if (MyLvViewModelImpl.Ac(this.f59322c, this) == coroutineSingletons) {
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
        public AnonymousClass1(MyLvViewModelImpl myLvViewModelImpl, boolean z, Continuation continuation) {
            super(2, continuation);
            this.f59314f = myLvViewModelImpl;
            this.g = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f59314f, this.g, continuation);
            anonymousClass1.f59313e = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:38:0x0126 A[PHI: r2 r3 r6
          0x0126: PHI (r2v24 java.util.List) = (r2v37 java.util.List), (r2v38 java.util.List) binds: [B:36:0x0123, B:11:0x002f] A[DONT_GENERATE, DONT_INLINE]
          0x0126: PHI (r3v2 java.lang.Object) = (r3v1 java.lang.Object), (r3v8 java.lang.Object) binds: [B:36:0x0123, B:11:0x002f] A[DONT_GENERATE, DONT_INLINE]
          0x0126: PHI (r6v5 kotlinx.coroutines.CoroutineExceptionHandler) = (r6v3 kotlinx.coroutines.CoroutineExceptionHandler), (r6v8 kotlinx.coroutines.CoroutineExceptionHandler) binds: [B:36:0x0123, B:11:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:40:0x012e  */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00f6, code lost:
        
            if (r2 == r5) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0148, code lost:
        
            if (kotlinx.coroutines.AwaitKt.b(r2, r16) == r5) goto L43;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r17) {
            /*
                Method dump skipped, instruction units count: 354
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$retrieveCounters$2(MyLvViewModelImpl myLvViewModelImpl, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f59310c = myLvViewModelImpl;
        this.d = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyLvViewModelImpl$retrieveCounters$2(this.f59310c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyLvViewModelImpl$retrieveCounters$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59309b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f59310c, this.d, null);
            this.f59309b = 1;
            if (SupervisorKt.c(anonymousClass1, this) == coroutineSingletons) {
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
