package androidx.room;

import defpackage.md;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1", f = "InvalidationTracker.kt", l = {233, 233, 237}, m = "invokeSuspend")
final class TriggerBasedInvalidationTracker$createFlow$1 extends SuspendLambda implements Function2<FlowCollector<? super Set<? extends String>>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f19531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f19532c;
    public final /* synthetic */ TriggerBasedInvalidationTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int[] f19533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String[] f19534f;

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1", f = "InvalidationTracker.kt", l = {233}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19535b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ TriggerBasedInvalidationTracker f19536c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
            super(2, continuation);
            this.f19536c = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f19536c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f19535b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f19535b = 1;
                if (this.f19536c.f(this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    final class AnonymousClass2<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Ref$ObjectRef f19537b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ FlowCollector f19538c;
        public final /* synthetic */ String[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ int[] f19539e;

        public AnonymousClass2(Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector, String[] strArr, int[] iArr) {
            this.f19537b = ref$ObjectRef;
            this.f19538c = flowCollector;
            this.d = strArr;
            this.f19539e = iArr;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0019  */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
        
            if (r10.emit(r2, r3) == r4) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00a6, code lost:
        
            if (r10.emit(r2, r3) == r4) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00a8, code lost:
        
            return r4;
         */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(int[] r18, kotlin.coroutines.Continuation r19) {
            /*
                r17 = this;
                r0 = r17
                r1 = r18
                r2 = r19
                boolean r3 = r2 instanceof androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
                if (r3 == 0) goto L19
                r3 = r2
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r3 = (androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) r3
                int r4 = r3.f19543f
                r5 = -2147483648(0xffffffff80000000, float:-0.0)
                r6 = r4 & r5
                if (r6 == 0) goto L19
                int r4 = r4 - r5
                r3.f19543f = r4
                goto L1e
            L19:
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r3 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
                r3.<init>(r0, r2)
            L1e:
                java.lang.Object r2 = r3.d
                kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r5 = r3.f19543f
                r6 = 0
                r7 = 2
                r8 = 1
                if (r5 == 0) goto L43
                if (r5 == r8) goto L34
                if (r5 != r7) goto L2e
                goto L34
            L2e:
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r0)
                return r6
            L34:
                int[] r0 = r3.f19541c
                java.lang.Object r1 = r3.f19540b
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 r1 = (androidx.room.TriggerBasedInvalidationTracker$createFlow$1.AnonymousClass2) r1
                kotlin.ResultKt.b(r2)
                r16 = r1
                r1 = r0
                r0 = r16
                goto La9
            L43:
                kotlin.ResultKt.b(r2)
                kotlin.jvm.internal.Ref$ObjectRef r2 = r0.f19537b
                java.lang.Object r5 = r2.f71921b
                java.lang.String[] r9 = r0.d
                kotlinx.coroutines.flow.FlowCollector r10 = r0.f19538c
                if (r5 != 0) goto L61
                java.util.Set r2 = kotlin.collections.ArraysKt.Z(r9)
                r3.f19540b = r0
                r3.f19541c = r1
                r3.f19543f = r8
                java.lang.Object r2 = r10.emit(r2, r3)
                if (r2 != r4) goto La9
                goto La8
            L61:
                java.util.ArrayList r5 = new java.util.ArrayList
                r5.<init>()
                int r8 = r9.length
                r11 = 0
                r12 = r11
            L69:
                if (r11 >= r8) goto L92
                r13 = r9[r11]
                int r14 = r12 + 1
                java.lang.Object r15 = r2.f71921b
                if (r15 == 0) goto L8a
                int[] r15 = (int[]) r15
                r19 = r6
                int[] r6 = r0.f19539e
                r6 = r6[r12]
                r12 = r15[r6]
                r6 = r1[r6]
                if (r12 == r6) goto L84
                r5.add(r13)
            L84:
                int r11 = r11 + 1
                r6 = r19
                r12 = r14
                goto L69
            L8a:
                r19 = r6
                java.lang.String r0 = "Required value was null."
                defpackage.md.k(r0)
                return r19
            L92:
                boolean r2 = r5.isEmpty()
                if (r2 != 0) goto La9
                java.util.Set r2 = kotlin.collections.CollectionsKt.B0(r5)
                r3.f19540b = r0
                r3.f19541c = r1
                r3.f19543f = r7
                java.lang.Object r2 = r10.emit(r2, r3)
                if (r2 != r4) goto La9
            La8:
                return r4
            La9:
                kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f19537b
                r0.f71921b = r1
                kotlin.Unit r0 = kotlin.Unit.f71739a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1.AnonymousClass2.emit(int[], kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$createFlow$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, int[] iArr, String[] strArr, Continuation continuation) {
        super(2, continuation);
        this.d = triggerBasedInvalidationTracker;
        this.f19533e = iArr;
        this.f19534f = strArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TriggerBasedInvalidationTracker$createFlow$1 triggerBasedInvalidationTracker$createFlow$1 = new TriggerBasedInvalidationTracker$createFlow$1(this.d, this.f19533e, this.f19534f, continuation);
        triggerBasedInvalidationTracker$createFlow$1.f19532c = obj;
        return triggerBasedInvalidationTracker$createFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TriggerBasedInvalidationTracker$createFlow$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
    
        if (kotlinx.coroutines.BuildersKt.f((kotlin.coroutines.CoroutineContext) r11, r6, r10) == r0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0079, code lost:
    
        if (r5.a(r6, r10) == r0) goto L27;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r10.f19531b
            r2 = 0
            int[] r3 = r10.f19533e
            r4 = 3
            r5 = 2
            r6 = 1
            androidx.room.TriggerBasedInvalidationTracker r7 = r10.d
            if (r1 == 0) goto L30
            if (r1 == r6) goto L28
            if (r1 == r5) goto L20
            if (r1 == r4) goto L1a
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r2
        L1a:
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L1e
            goto L7c
        L1e:
            r10 = move-exception
            goto L82
        L20:
            java.lang.Object r1 = r10.f19532c
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.b(r11)
            goto L62
        L28:
            java.lang.Object r1 = r10.f19532c
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.b(r11)
            goto L50
        L30:
            kotlin.ResultKt.b(r11)
            java.lang.Object r11 = r10.f19532c
            kotlinx.coroutines.flow.FlowCollector r11 = (kotlinx.coroutines.flow.FlowCollector) r11
            androidx.room.ObservedTableStates r1 = r7.f19524h
            boolean r1 = r1.a(r3)
            if (r1 == 0) goto L63
            androidx.room.RoomDatabase r1 = r7.f19519a
            r10.f19532c = r11
            r10.f19531b = r6
            r6 = 0
            kotlin.coroutines.CoroutineContext r1 = androidx.room.util.DBUtil.b(r1, r6, r10)
            if (r1 != r0) goto L4d
            goto L7b
        L4d:
            r9 = r1
            r1 = r11
            r11 = r9
        L50:
            kotlin.coroutines.CoroutineContext r11 = (kotlin.coroutines.CoroutineContext) r11
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1 r6 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1
            r6.<init>(r7, r2)
            r10.f19532c = r1
            r10.f19531b = r5
            java.lang.Object r11 = kotlinx.coroutines.BuildersKt.f(r11, r6, r10)
            if (r11 != r0) goto L62
            goto L7b
        L62:
            r11 = r1
        L63:
            kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Throwable -> L1e
            r1.<init>()     // Catch: java.lang.Throwable -> L1e
            androidx.room.ObservedTableVersions r5 = r7.f19525i     // Catch: java.lang.Throwable -> L1e
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 r6 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2     // Catch: java.lang.Throwable -> L1e
            java.lang.String[] r8 = r10.f19534f     // Catch: java.lang.Throwable -> L1e
            r6.<init>(r1, r11, r8, r3)     // Catch: java.lang.Throwable -> L1e
            r10.f19532c = r2     // Catch: java.lang.Throwable -> L1e
            r10.f19531b = r4     // Catch: java.lang.Throwable -> L1e
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = r5.a(r6, r10)     // Catch: java.lang.Throwable -> L1e
            if (r10 != r0) goto L7c
        L7b:
            return r0
        L7c:
            kotlin.KotlinNothingValueException r10 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L1e
            r10.<init>()     // Catch: java.lang.Throwable -> L1e
            throw r10     // Catch: java.lang.Throwable -> L1e
        L82:
            androidx.room.ObservedTableStates r11 = r7.f19524h
            r11.b(r3)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
