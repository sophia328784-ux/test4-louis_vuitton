package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/Job;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {1003, 1005}, m = "invokeSuspend", v = 1)
public final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Job>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LockFreeLinkedListHead f74692c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f74693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f74694f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f74695h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ JobSupport f74696i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(JobSupport jobSupport, Continuation continuation) {
        super(2, continuation);
        this.f74696i = jobSupport;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.f74696i, continuation);
        jobSupport$children$1.f74695h = obj;
        return jobSupport$children$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((JobSupport$children$1) create((SequenceScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    /* JADX WARN: Code duplicated, block: B:24:0x0068  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0066 -> B:27:0x0080). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:27:0x0080). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f74695h
            kotlin.sequences.SequenceScope r0 = (kotlin.sequences.SequenceScope) r0
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r7.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L29
            if (r2 == r4) goto L25
            if (r2 != r3) goto L1f
            int r2 = r7.f74694f
            int r4 = r7.f74693e
            java.lang.Object r5 = r7.d
            kotlinx.coroutines.internal.LockFreeLinkedListNode r5 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r5
            kotlinx.coroutines.internal.LockFreeLinkedListHead r6 = r7.f74692c
            kotlin.ResultKt.b(r8)
            goto L80
        L1f:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r5
        L25:
            kotlin.ResultKt.b(r8)
            goto L85
        L29:
            kotlin.ResultKt.b(r8)
            kotlinx.coroutines.JobSupport r8 = r7.f74696i
            java.lang.Object r8 = r8.getState$kotlinx_coroutines_core()
            boolean r2 = r8 instanceof kotlinx.coroutines.ChildHandleNode
            if (r2 == 0) goto L45
            kotlinx.coroutines.ChildHandleNode r8 = (kotlinx.coroutines.ChildHandleNode) r8
            kotlinx.coroutines.ChildJob r8 = r8.f74642i
            r7.f74695h = r5
            r7.g = r4
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = r0.a(r8, r7)
            if (r7 != r1) goto L85
            goto L7f
        L45:
            boolean r2 = r8 instanceof kotlinx.coroutines.Incomplete
            if (r2 == 0) goto L85
            kotlinx.coroutines.Incomplete r8 = (kotlinx.coroutines.Incomplete) r8
            kotlinx.coroutines.NodeList r8 = r8.getF74687b()
            if (r8 == 0) goto L85
            java.lang.Object r2 = r8.j()
            r2.getClass()
            kotlinx.coroutines.internal.LockFreeLinkedListNode r2 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r2
            r4 = 0
            r6 = r8
            r5 = r2
            r2 = r4
        L5e:
            boolean r8 = r5.equals(r6)
            if (r8 != 0) goto L85
            boolean r8 = r5 instanceof kotlinx.coroutines.ChildHandleNode
            if (r8 == 0) goto L80
            r8 = r5
            kotlinx.coroutines.ChildHandleNode r8 = (kotlinx.coroutines.ChildHandleNode) r8
            kotlinx.coroutines.ChildJob r8 = r8.f74642i
            r7.f74695h = r0
            r7.f74692c = r6
            r7.d = r5
            r7.f74693e = r4
            r7.f74694f = r2
            r7.g = r3
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = r0.a(r8, r7)
            if (r8 != r1) goto L80
        L7f:
            return r1
        L80:
            kotlinx.coroutines.internal.LockFreeLinkedListNode r5 = r5.k()
            goto L5e
        L85:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
