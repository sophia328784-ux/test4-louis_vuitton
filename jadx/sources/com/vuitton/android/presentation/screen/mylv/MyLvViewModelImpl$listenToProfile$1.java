package com.vuitton.android.presentation.screen.mylv;

import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1", f = "MyLvViewModelImpl.kt", l = {240, 240}, m = "invokeSuspend", v = 2)
final class MyLvViewModelImpl$listenToProfile$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f59298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f59299c;
    public final /* synthetic */ MyLvViewModelImpl d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "profile", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1$1", f = "MyLvViewModelImpl.kt", l = {248, 248, 250}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Profile, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MutableStateFlow f59300b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f59301c;
        public /* synthetic */ Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ MyLvViewModelImpl f59302e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Ref$ObjectRef f59303f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MyLvViewModelImpl myLvViewModelImpl, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
            super(2, continuation);
            this.f59302e = myLvViewModelImpl;
            this.f59303f = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f59302e, this.f59303f, continuation);
            anonymousClass1.d = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Profile) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0072 A[PHI: r5 r7
          0x0072: PHI (r5v4 kotlinx.coroutines.flow.MutableStateFlow) = (r5v3 kotlinx.coroutines.flow.MutableStateFlow), (r5v9 kotlinx.coroutines.flow.MutableStateFlow) binds: [B:21:0x006f, B:10:0x0025] A[DONT_GENERATE, DONT_INLINE]
          0x0072: PHI (r7v2 java.lang.Object) = (r7v1 java.lang.Object), (r7v15 java.lang.Object) binds: [B:21:0x006f, B:10:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:25:0x0078  */
        /* JADX WARN: Code duplicated, block: B:28:0x007d  */
        /* JADX WARN: Code duplicated, block: B:29:0x0080  */
        /* JADX WARN: Code duplicated, block: B:34:0x0097  */
        /* JADX WARN: Code duplicated, block: B:37:0x00c5 A[LOOP:0: B:35:0x00bf->B:37:0x00c5, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:40:0x0184  */
        /* JADX WARN: Code duplicated, block: B:41:0x018b  */
        /* JADX WARN: Code duplicated, block: B:43:0x01a5  */
        /* JADX WARN: Code duplicated, block: B:46:0x01b3  */
        /* JADX WARN: Code duplicated, block: B:47:0x01b6  */
        /* JADX WARN: Code duplicated, block: B:49:0x01b9  */
        /* JADX WARN: Code duplicated, block: B:52:0x01c6  */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0092, code lost:
        
            if (r5.a(com.vuitton.android.core.events.AppEvent.RefreshUserAvatar.f43508a, r66) == r4) goto L32;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r67) {
            /*
                Method dump skipped, instruction units count: 463
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$listenToProfile$1(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
        super(2, continuation);
        this.d = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyLvViewModelImpl$listenToProfile$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyLvViewModelImpl$listenToProfile$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.g((kotlinx.coroutines.flow.Flow) r8, r3, r7) == r0) goto L19;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f59299c
            r2 = 2
            r3 = 1
            r4 = 0
            com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl r5 = r7.d
            if (r1 == 0) goto L1f
            if (r1 == r3) goto L19
            if (r1 != r2) goto L13
            kotlin.ResultKt.b(r8)
            goto L56
        L13:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r4
        L19:
            kotlin.jvm.internal.Ref$ObjectRef r1 = r7.f59298b
            kotlin.ResultKt.b(r8)
            goto L44
        L1f:
            kotlin.ResultKt.b(r8)
            kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef
            r1.<init>()
            com.vuitton.android.domain.monitoring.MonitorAction r8 = r5.U
            if (r8 == 0) goto L32
            com.vuitton.android.domain.monitoring.mylv.MyLvMonitoring$Action$LoadUsername r6 = com.vuitton.android.domain.monitoring.mylv.MyLvMonitoring.Action.LoadUsername.f48936a
            com.vuitton.android.data.monitoring.DynatraceMonitorAction r8 = r8.a(r6)
            goto L33
        L32:
            r8 = r4
        L33:
            r1.f71921b = r8
            com.vuitton.android.domain.usecase.account.profile.ListenProfileUseCase r8 = r5.x
            r7.f59298b = r1
            r7.f59299c = r3
            com.vuitton.android.domain.repository.AccountRepository r8 = r8.f49134a
            com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$listenProfile$$inlined$map$1 r8 = r8.c()
            if (r8 != r0) goto L44
            goto L55
        L44:
            kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8
            com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1$1 r3 = new com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1$1
            r3.<init>(r5, r1, r4)
            r7.f59298b = r4
            r7.f59299c = r2
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.g(r8, r3, r7)
            if (r7 != r0) goto L56
        L55:
            return r0
        L56:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$listenToProfile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
