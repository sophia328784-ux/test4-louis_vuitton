package com.vuitton.android.presentation.screen.services;

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
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1", f = "ServicesViewModelImpl.kt", l = {261, 269, Sink.ORIENTATION_270, 279, 287}, m = "invokeSuspend", v = 2)
final class ServicesViewModelImpl$initCounters$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CoroutineExceptionHandler f64328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f64329c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f64330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModelImpl f64331f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1$1", f = "ServicesViewModelImpl.kt", l = {264}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64332b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ServicesViewModelImpl f64333c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
            super(2, continuation);
            this.f64333c = servicesViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f64333c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64332b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f64332b = 1;
                if (ServicesViewModelImpl.yc(this.f64333c, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1$2", f = "ServicesViewModelImpl.kt", l = {274}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ServicesViewModelImpl f64335c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
            super(2, continuation);
            this.f64335c = servicesViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(continuation, this.f64335c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64334b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f64334b = 1;
                if (ServicesViewModelImpl.zc(this.f64335c, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1$3", f = "ServicesViewModelImpl.kt", l = {282}, m = "invokeSuspend", v = 2)
    final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64336b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ServicesViewModelImpl f64337c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
            super(2, continuation);
            this.f64337c = servicesViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass3(continuation, this.f64337c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64336b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f64336b = 1;
                if (ServicesViewModelImpl.Ac(this.f64337c, this) == coroutineSingletons) {
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
    public ServicesViewModelImpl$initCounters$1$1$1(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
        super(2, continuation);
        this.f64331f = servicesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ServicesViewModelImpl$initCounters$1$1$1 servicesViewModelImpl$initCounters$1$1$1 = new ServicesViewModelImpl$initCounters$1$1$1(continuation, this.f64331f);
        servicesViewModelImpl$initCounters$1$1$1.f64330e = obj;
        return servicesViewModelImpl$initCounters$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServicesViewModelImpl$initCounters$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:31:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d7 A[PHI: r4 r10
      0x00d7: PHI (r4v7 java.util.List) = (r4v4 java.util.List), (r4v8 java.util.List) binds: [B:27:0x00b3, B:34:0x00d6] A[DONT_GENERATE, DONT_INLINE]
      0x00d7: PHI (r10v7 kotlinx.coroutines.CoroutineExceptionHandler) = (r10v4 kotlinx.coroutines.CoroutineExceptionHandler), (r10v8 kotlinx.coroutines.CoroutineExceptionHandler) binds: [B:27:0x00b3, B:34:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x00e4 A[PHI: r4 r8
      0x00e4: PHI (r4v5 java.util.List) = (r4v7 java.util.List), (r4v8 java.util.List) binds: [B:35:0x00d7, B:33:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x00e4: PHI (r8v2 kotlinx.coroutines.CoroutineExceptionHandler) = (r8v3 kotlinx.coroutines.CoroutineExceptionHandler), (r8v4 kotlinx.coroutines.CoroutineExceptionHandler) binds: [B:35:0x00d7, B:33:0x00d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:42:0x0106  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0120, code lost:
    
        if (kotlinx.coroutines.AwaitKt.b(r1, r14) == r3) goto L45;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
