package androidx.room;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "connection", "Landroidx/room/Transactor;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1", f = "InvalidationTracker.kt", l = {301, 309}, m = "invokeSuspend")
final class TriggerBasedInvalidationTracker$syncTriggers$2$1 extends SuspendLambda implements Function2<Transactor, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f19571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f19572c;
    public final /* synthetic */ TriggerBasedInvalidationTracker d;

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/room/TransactionScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1", f = "InvalidationTracker.kt", l = {313, 314}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<Unit>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ObservedTableStates.ObserveOp[] f19573b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TriggerBasedInvalidationTracker f19574c;
        public Transactor d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f19575e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f19576f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f19577h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ObservedTableStates.ObserveOp[] f19578i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ TriggerBasedInvalidationTracker f19579j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ Transactor f19580k;

        /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$WhenMappings */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f19581a;

            static {
                int[] iArr = new int[ObservedTableStates.ObserveOp.values().length];
                try {
                    iArr[ObservedTableStates.ObserveOp.NO_OP.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ObservedTableStates.ObserveOp.ADD.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ObservedTableStates.ObserveOp.REMOVE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f19581a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, Continuation continuation) {
            super(2, continuation);
            this.f19578i = observeOpArr;
            this.f19579j = triggerBasedInvalidationTracker;
            this.f19580k = transactor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f19578i, this.f19579j, this.f19580k, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((TransactionScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0033  */
        /* JADX WARN: Code duplicated, block: B:26:0x0077  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0077 -> B:27:0x0078). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r12.f19577h
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L23
                if (r1 == r4) goto Ld
                if (r1 != r3) goto L1d
            Ld:
                int r1 = r12.g
                int r5 = r12.f19576f
                int r6 = r12.f19575e
                androidx.room.Transactor r7 = r12.d
                androidx.room.TriggerBasedInvalidationTracker r8 = r12.f19574c
                androidx.room.ObservedTableStates$ObserveOp[] r9 = r12.f19573b
                kotlin.ResultKt.b(r13)
                goto L5c
            L1d:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r12)
                return r2
            L23:
                kotlin.ResultKt.b(r13)
                androidx.room.ObservedTableStates$ObserveOp[] r13 = r12.f19578i
                int r1 = r13.length
                r5 = 0
                androidx.room.TriggerBasedInvalidationTracker r6 = r12.f19579j
                androidx.room.Transactor r7 = r12.f19580k
                r9 = r13
                r13 = r5
                r8 = r6
            L31:
                if (r5 >= r1) goto L7a
                r6 = r9[r5]
                int r10 = r13 + 1
                int[] r11 = androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1.AnonymousClass1.WhenMappings.f19581a
                int r6 = r6.ordinal()
                r6 = r11[r6]
                if (r6 == r4) goto L77
                if (r6 == r3) goto L62
                r11 = 3
                if (r6 != r11) goto L5e
                r12.f19573b = r9
                r12.f19574c = r8
                r12.d = r7
                r12.f19575e = r10
                r12.f19576f = r5
                r12.g = r1
                r12.f19577h = r3
                java.lang.Object r13 = androidx.room.TriggerBasedInvalidationTracker.d(r8, r7, r13, r12)
                if (r13 != r0) goto L5b
                goto L76
            L5b:
                r6 = r10
            L5c:
                r13 = r6
                goto L78
            L5e:
                defpackage.v40.g()
                return r2
            L62:
                r12.f19573b = r9
                r12.f19574c = r8
                r12.d = r7
                r12.f19575e = r10
                r12.f19576f = r5
                r12.g = r1
                r12.f19577h = r4
                java.lang.Object r13 = androidx.room.TriggerBasedInvalidationTracker.c(r8, r7, r13, r12)
                if (r13 != r0) goto L5b
            L76:
                return r0
            L77:
                r13 = r10
            L78:
                int r5 = r5 + r4
                goto L31
            L7a:
                kotlin.Unit r12 = kotlin.Unit.f71739a
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$syncTriggers$2$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
        super(2, continuation);
        this.d = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this.d, continuation);
        triggerBasedInvalidationTracker$syncTriggers$2$1.f19572c = obj;
        return triggerBasedInvalidationTracker$syncTriggers$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1) create((Transactor) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x009f, code lost:
    
        if (r2.a(r5, r7, r19) == r1) goto L47;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            r19 = this;
            r0 = r19
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f19571b
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L24
            if (r2 == r5) goto L1a
            if (r2 != r3) goto L14
            kotlin.ResultKt.b(r20)
            goto La2
        L14:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r4
        L1a:
            java.lang.Object r2 = r0.f19572c
            androidx.room.Transactor r2 = (androidx.room.Transactor) r2
            kotlin.ResultKt.b(r20)
            r6 = r20
            goto L37
        L24:
            kotlin.ResultKt.b(r20)
            java.lang.Object r2 = r0.f19572c
            androidx.room.Transactor r2 = (androidx.room.Transactor) r2
            r0.f19572c = r2
            r0.f19571b = r5
            java.lang.Boolean r6 = r2.c(r0)
            if (r6 != r1) goto L37
            goto La1
        L37:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L42
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        L42:
            androidx.room.TriggerBasedInvalidationTracker r6 = r0.d
            androidx.room.ObservedTableStates r7 = r6.f19524h
            long[] r8 = r7.f19442b
            java.util.concurrent.locks.ReentrantLock r9 = r7.f19441a
            r9.lock()
            boolean r10 = r7.d     // Catch: java.lang.Throwable -> L79
            if (r10 != 0) goto L56
            r9.unlock()
            r12 = r4
            goto L8e
        L56:
            r10 = 0
            r7.d = r10     // Catch: java.lang.Throwable -> L79
            int r11 = r8.length     // Catch: java.lang.Throwable -> L79
            androidx.room.ObservedTableStates$ObserveOp[] r12 = new androidx.room.ObservedTableStates.ObserveOp[r11]     // Catch: java.lang.Throwable -> L79
            r13 = r10
            r14 = r13
        L5e:
            if (r13 >= r11) goto L87
            r15 = r8[r13]     // Catch: java.lang.Throwable -> L79
            r17 = 0
            int r15 = (r15 > r17 ? 1 : (r15 == r17 ? 0 : -1))
            if (r15 <= 0) goto L6a
            r15 = r5
            goto L6b
        L6a:
            r15 = r10
        L6b:
            boolean[] r5 = r7.f19443c     // Catch: java.lang.Throwable -> L79
            boolean r10 = r5[r13]     // Catch: java.lang.Throwable -> L79
            if (r15 == r10) goto L7e
            r5[r13] = r15     // Catch: java.lang.Throwable -> L79
            if (r15 == 0) goto L7b
            androidx.room.ObservedTableStates$ObserveOp r5 = androidx.room.ObservedTableStates.ObserveOp.ADD     // Catch: java.lang.Throwable -> L79
        L77:
            r14 = 1
            goto L80
        L79:
            r0 = move-exception
            goto La5
        L7b:
            androidx.room.ObservedTableStates$ObserveOp r5 = androidx.room.ObservedTableStates.ObserveOp.REMOVE     // Catch: java.lang.Throwable -> L79
            goto L77
        L7e:
            androidx.room.ObservedTableStates$ObserveOp r5 = androidx.room.ObservedTableStates.ObserveOp.NO_OP     // Catch: java.lang.Throwable -> L79
        L80:
            r12[r13] = r5     // Catch: java.lang.Throwable -> L79
            int r13 = r13 + 1
            r5 = 1
            r10 = 0
            goto L5e
        L87:
            if (r14 == 0) goto L8a
            goto L8b
        L8a:
            r12 = r4
        L8b:
            r9.unlock()
        L8e:
            if (r12 == 0) goto La2
            androidx.room.Transactor$SQLiteTransactionType r5 = androidx.room.Transactor.SQLiteTransactionType.IMMEDIATE
            androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1 r7 = new androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1
            r7.<init>(r12, r6, r2, r4)
            r0.f19572c = r4
            r0.f19571b = r3
            java.lang.Object r0 = r2.a(r5, r7, r0)
            if (r0 != r1) goto La2
        La1:
            return r1
        La2:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        La5:
            r9.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
