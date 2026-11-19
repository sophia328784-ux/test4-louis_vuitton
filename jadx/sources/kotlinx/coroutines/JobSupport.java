package kotlinx.coroutines;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.md;
import defpackage.mt;
import defpackage.o91;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause0;
import kotlinx.coroutines.selects.SelectClause0Impl;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectInstance;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\n\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0004¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0012\u001a\u00060\u0010j\u0002`\u0011¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0017\u001a\u00060\u0010j\u0002`\u0011*\u00020\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0004¢\u0006\u0004\b\u0017\u0010\u0018J6\u0010 \u001a\u00020\u001f2'\u0010\u001e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\t0\u0019j\u0002`\u001d¢\u0006\u0004\b \u0010!JF\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042'\u0010\u001e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0014¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\t0\u0019j\u0002`\u001d¢\u0006\u0004\b \u0010$J\u001f\u0010)\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\b'\u0010(J\u0010\u0010*\u001a\u00020\tH\u0086@¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\t2\u0006\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\b,\u0010-J\u001f\u0010/\u001a\u00020\t2\u000e\u0010\u001c\u001a\n\u0018\u00010\u0010j\u0004\u0018\u0001`\u0011H\u0016¢\u0006\u0004\b/\u00100J\u0019\u0010/\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0017¢\u0006\u0004\b/\u00101J\u0017\u00102\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b2\u00103J\u0015\u00105\u001a\u00020\t2\u0006\u00104\u001a\u00020\u0003¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b7\u00101J\u0017\u00108\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b8\u00101J\u0019\u0010<\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u000109H\u0000¢\u0006\u0004\b:\u0010;J(\u0010@\u001a\u00020=2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0080\b¢\u0006\u0004\b>\u0010?J\u0013\u0010A\u001a\u00060\u0010j\u0002`\u0011H\u0016¢\u0006\u0004\bA\u0010\u0013J\u0019\u0010D\u001a\u00020\u00042\b\u0010B\u001a\u0004\u0018\u000109H\u0000¢\u0006\u0004\bC\u0010;J\u001b\u0010G\u001a\u0004\u0018\u0001092\b\u0010B\u001a\u0004\u0018\u000109H\u0000¢\u0006\u0004\bE\u0010FJ\u0015\u0010J\u001a\u00020I2\u0006\u0010H\u001a\u00020\u0002¢\u0006\u0004\bJ\u0010KJ\u0019\u0010\"\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\"\u00103J\u0017\u0010M\u001a\u00020\u00042\u0006\u0010L\u001a\u00020\u0014H\u0014¢\u0006\u0004\bM\u00101J\u000f\u0010N\u001a\u00020\u0015H\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0015H\u0007¢\u0006\u0004\bP\u0010OJ\u000f\u0010Q\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\bQ\u0010RJ\u0011\u0010U\u001a\u0004\u0018\u000109H\u0000¢\u0006\u0004\bS\u0010TJ\u0012\u0010V\u001a\u0004\u0018\u000109H\u0084@¢\u0006\u0004\bV\u0010+R\u0015\u0010Z\u001a\u0006\u0012\u0002\b\u00030W8F¢\u0006\u0006\u001a\u0004\bX\u0010YR(\u0010`\u001a\u0004\u0018\u00010I2\b\u0010[\u001a\u0004\u0018\u00010I8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\ba\u0010bR\u0016\u0010d\u001a\u0004\u0018\u0001098@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bc\u0010TR\u0011\u0010e\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\be\u0010\rR\u0011\u0010f\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bf\u0010\rR\u0016\u0010h\u001a\u0004\u0018\u00010\u00148DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bg\u0010RR\u0014\u0010j\u001a\u00020\u00048DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bi\u0010\rR\u0017\u0010o\u001a\u00020k8F¢\u0006\f\u0012\u0004\bn\u0010\u000f\u001a\u0004\bl\u0010mR\u0014\u0010q\u001a\u00020\u00048PX\u0090\u0004¢\u0006\u0006\u001a\u0004\bp\u0010\rR\u0017\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00010r8F¢\u0006\u0006\u001a\u0004\bs\u0010tR\u0014\u0010w\u001a\u00020\u00048PX\u0090\u0004¢\u0006\u0006\u001a\u0004\bv\u0010\rR\u0011\u0010x\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bx\u0010\rR\u001e\u0010}\u001a\u0006\u0012\u0002\b\u00030y8DX\u0084\u0004¢\u0006\f\u0012\u0004\b|\u0010\u000f\u001a\u0004\bz\u0010{R\u0013\u0010\u007f\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090~8\u0002X\u0082\u0004R\u0014\u0010\u0080\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010I0~8\u0002X\u0082\u0004¨\u0006\u0086\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", "", "active", "<init>", "(Z)V", "parent", "", "initParentJob", "(Lkotlinx/coroutines/Job;)V", "start", "()Z", "onStart", "()V", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "getCancellationException", "()Ljava/util/concurrent/CancellationException;", "", "", "message", "toCancellationException", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "cause", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletion", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "onCancelling", "invokeImmediately", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/JobNode;", "node", "invokeOnCompletionInternal$kotlinx_coroutines_core", "(ZLkotlinx/coroutines/JobNode;)Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletionInternal", "join", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/JobNode;)V", "removeNode", "cancel", "(Ljava/util/concurrent/CancellationException;)V", "(Ljava/lang/Throwable;)Z", "cancelInternal", "(Ljava/lang/Throwable;)V", "parentJob", "parentCancelled", "(Lkotlinx/coroutines/ParentJob;)V", "childCancelled", "cancelCoroutine", "", "cancelImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;)Z", "cancelImpl", "Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException$kotlinx_coroutines_core", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException", "getChildJobCancellationCause", "proposedUpdate", "makeCompleting$kotlinx_coroutines_core", "makeCompleting", "makeCompletingOnce$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "makeCompletingOnce", "child", "Lkotlinx/coroutines/ChildHandle;", "attachChild", "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;", MvelScriptManager.VAR_EXCEPTION, "handleJobException", "toString", "()Ljava/lang/String;", "toDebugString", "getCompletionExceptionOrNull", "()Ljava/lang/Throwable;", "getCompletedInternal$kotlinx_coroutines_core", "()Ljava/lang/Object;", "getCompletedInternal", "awaitInternal", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", ConfigurationName.KEY, "value", "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "parentHandle", "getParent", "()Lkotlinx/coroutines/Job;", "getState$kotlinx_coroutines_core", "state", "isCompleted", "isCancelled", "getCompletionCause", "completionCause", "getCompletionCauseHandled", "completionCauseHandled", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin$annotations", "onJoin", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "children", "getHandlesException$kotlinx_coroutines_core", "handlesException", "isCompletedExceptionally", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal", "()Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal$annotations", "onAwaitInternal", "Lkotlinx/atomicfu/AtomicRef;", "_state", "_parentHandle", "SelectOnJoinCompletionHandler", "Finishing", "ChildCompletion", "AwaitContinuation", "SelectOnAwaitCompletionHandler", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class JobSupport implements Job, ChildJob, ParentJob {
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _parentHandle$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", "T", "Lkotlinx/coroutines/CancellableContinuationImpl;", "delegate", "Lkotlin/coroutines/Continuation;", "job", "Lkotlinx/coroutines/JobSupport;", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "getContinuationCancellationCause", "", "parent", "Lkotlinx/coroutines/Job;", "nameString", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class AwaitContinuation<T> extends CancellableContinuationImpl<T> {
        private final JobSupport job;

        public AwaitContinuation(Continuation<? super T> continuation, JobSupport jobSupport) {
            super(continuation, 1);
            this.job = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public Throwable getContinuationCancellationCause(Job parent) {
            Throwable thD;
            Object state$kotlinx_coroutines_core = this.job.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Finishing) || (thD = ((Finishing) state$kotlinx_coroutines_core).d()) == null) {
                return state$kotlinx_coroutines_core instanceof CompletedExceptionally ? ((CompletedExceptionally) state$kotlinx_coroutines_core).f74648a : parent.getCancellationException();
            }
            return thD;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public String nameString() {
            return "AwaitContinuation";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/JobSupport$ChildCompletion;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/JobSupport;", "parent", "Lkotlinx/coroutines/JobSupport$Finishing;", "state", "Lkotlinx/coroutines/ChildHandleNode;", "child", "", "proposedUpdate", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ChildCompletion extends JobNode {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final JobSupport f74681i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Finishing f74682j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ChildHandleNode f74683k;
        public final Object l;

        public ChildCompletion(JobSupport jobSupport, Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
            this.f74681i = jobSupport;
            this.f74682j = finishing;
            this.f74683k = childHandleNode;
            this.l = obj;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean q() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void r(Throwable th) {
            JobSupport.access$continueCompleting(this.f74681i, this.f74682j, this.f74683k, this.l);
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bR\u000b\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004R\u0013\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u000e8\u0002X\u0082\u0004R\u0013\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e8\u0002X\u0082\u0004¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/JobSupport$Finishing;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/coroutines/Incomplete;", "Lkotlinx/coroutines/NodeList;", "list", "", "isCompleting", "", "rootCause", "<init>", "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V", "Lkotlinx/atomicfu/AtomicBoolean;", "_isCompleting", "Lkotlinx/atomicfu/AtomicRef;", "_rootCause", "_exceptionsHolder", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Finishing implements Incomplete {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f74684c = AtomicIntegerFieldUpdater.newUpdater(Finishing.class, "_isCompleting$volatile");
        public static final /* synthetic */ AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_rootCause$volatile");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ AtomicReferenceFieldUpdater f74685e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ long f74686f;
        public static final /* synthetic */ long g;
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NodeList f74687b;

        static {
            Unsafe unsafe = o91.f76733a;
            g = unsafe.objectFieldOffset(Finishing.class.getDeclaredField("_rootCause$volatile"));
            f74685e = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_exceptionsHolder$volatile");
            f74686f = unsafe.objectFieldOffset(Finishing.class.getDeclaredField("_exceptionsHolder$volatile"));
        }

        public Finishing(NodeList nodeList, boolean z, Throwable th) {
            this.f74687b = nodeList;
            this._isCompleting$volatile = z ? 1 : 0;
            this._rootCause$volatile = th;
        }

        public final void a(Throwable th) {
            Throwable thD = d();
            if (thD == null) {
                h(th);
                return;
            }
            if (th == thD) {
                return;
            }
            Object objC = c();
            if (objC == null) {
                g(th);
                return;
            }
            if (!(objC instanceof Throwable)) {
                if (objC instanceof ArrayList) {
                    ((ArrayList) objC).add(th);
                    return;
                } else {
                    mt.f(objC, "State is ");
                    return;
                }
            }
            if (th == objC) {
                return;
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(objC);
            arrayList.add(th);
            g(arrayList);
        }

        @Override // kotlinx.coroutines.Incomplete
        /* JADX INFO: renamed from: b, reason: from getter */
        public final NodeList getF74670b() {
            return this.f74687b;
        }

        public final Object c() {
            f74685e.getClass();
            return o91.f76733a.getObjectVolatile(this, f74686f);
        }

        public final Throwable d() {
            d.getClass();
            return (Throwable) o91.f76733a.getObjectVolatile(this, g);
        }

        public final boolean e() {
            return d() != null;
        }

        public final ArrayList f(Throwable th) {
            ArrayList arrayList;
            Object objC = c();
            if (objC == null) {
                arrayList = new ArrayList(4);
            } else if (objC instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(objC);
                arrayList = arrayList2;
            } else {
                if (!(objC instanceof ArrayList)) {
                    mt.f(objC, "State is ");
                    return null;
                }
                arrayList = (ArrayList) objC;
            }
            Throwable thD = d();
            if (thD != null) {
                arrayList.add(0, thD);
            }
            if (th != null && !th.equals(thD)) {
                arrayList.add(th);
            }
            g(JobSupportKt.f74703e);
            return arrayList;
        }

        public final void g(Object obj) {
            f74685e.getClass();
            o91.f76733a.putObjectVolatile(this, f74686f, obj);
        }

        public final void h(Throwable th) {
            d.getClass();
            o91.f76733a.putObjectVolatile(this, g, th);
        }

        @Override // kotlinx.coroutines.Incomplete
        /* JADX INFO: renamed from: isActive */
        public final boolean getF74664b() {
            return d() == null;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Finishing[cancelling=");
            sb.append(e());
            sb.append(", completing=");
            sb.append(f74684c.get(this) == 1);
            sb.append(", rootCause=");
            sb.append(d());
            sb.append(", exceptions=");
            sb.append(c());
            sb.append(", list=");
            sb.append(this.f74687b);
            sb.append(']');
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/JobSupport$SelectOnAwaitCompletionHandler;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class SelectOnAwaitCompletionHandler extends JobNode {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final SelectInstance f74688i;

        public SelectOnAwaitCompletionHandler(SelectInstance<?> selectInstance) {
            this.f74688i = selectInstance;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean q() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void r(Throwable th) {
            JobSupport jobSupport = JobSupport.this;
            Object state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                state$kotlinx_coroutines_core = JobSupportKt.a(state$kotlinx_coroutines_core);
            }
            this.f74688i.d(jobSupport, state$kotlinx_coroutines_core);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/JobSupport$SelectOnJoinCompletionHandler;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class SelectOnJoinCompletionHandler extends JobNode {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final SelectInstance f74690i;

        public SelectOnJoinCompletionHandler(SelectInstance<?> selectInstance) {
            this.f74690i = selectInstance;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean q() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void r(Throwable th) {
            this.f74690i.d(JobSupport.this, Unit.f71739a);
        }
    }

    public JobSupport(boolean z) {
        this._state$volatile = z ? JobSupportKt.g : JobSupportKt.f74704f;
    }

    public static ChildHandleNode F(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.m()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.l();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.k();
            if (!lockFreeLinkedListNode.m()) {
                if (lockFreeLinkedListNode instanceof ChildHandleNode) {
                    return (ChildHandleNode) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    public static String K(Object obj) {
        if (!(obj instanceof Finishing)) {
            if (obj instanceof Incomplete) {
                return ((Incomplete) obj).getF74664b() ? "Active" : "New";
            }
            return obj instanceof CompletedExceptionally ? "Cancelled" : "Completed";
        }
        Finishing finishing = (Finishing) obj;
        if (finishing.e()) {
            return "Cancelling";
        }
        return Finishing.f74684c.get(finishing) == 1 ? "Completing" : "Active";
    }

    public static final void access$continueCompleting(JobSupport jobSupport, Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        jobSupport.getClass();
        ChildHandleNode childHandleNodeF = F(childHandleNode);
        if (childHandleNodeF == null || !jobSupport.M(finishing, childHandleNodeF, obj)) {
            finishing.f74687b.f(2);
            ChildHandleNode childHandleNodeF2 = F(childHandleNode);
            if (childHandleNodeF2 == null || !jobSupport.M(finishing, childHandleNodeF2, obj)) {
                jobSupport.afterCompletion(jobSupport.B(finishing, obj));
            }
        }
    }

    public static final Object access$onAwaitInternalProcessResFunc(JobSupport jobSupport, Object obj, Object obj2) throws Throwable {
        jobSupport.getClass();
        if (obj2 instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) obj2).f74648a;
        }
        return obj2;
    }

    public static final void access$onAwaitInternalRegFunc(JobSupport jobSupport, SelectInstance selectInstance, Object obj) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                    state$kotlinx_coroutines_core = JobSupportKt.a(state$kotlinx_coroutines_core);
                }
                selectInstance.b(state$kotlinx_coroutines_core);
                return;
            }
        } while (jobSupport.J(state$kotlinx_coroutines_core) < 0);
        selectInstance.c(JobKt.f(jobSupport, true, jobSupport.new SelectOnAwaitCompletionHandler(selectInstance)));
    }

    public static final void access$registerSelectForOnJoin(JobSupport jobSupport, SelectInstance selectInstance, Object obj) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                selectInstance.b(Unit.f71739a);
                return;
            }
        } while (jobSupport.J(state$kotlinx_coroutines_core) < 0);
        selectInstance.c(JobKt.f(jobSupport, true, jobSupport.new SelectOnJoinCompletionHandler(selectInstance)));
    }

    public static /* synthetic */ JobCancellationException defaultCancellationException$kotlinx_coroutines_core$default(JobSupport jobSupport, String str, Throwable th, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: defaultCancellationException");
            return null;
        }
        if ((i2 & 1) != 0) {
            str = null;
        }
        if ((i2 & 2) != 0) {
            th = null;
        }
        if (str == null) {
            str = jobSupport.cancellationExceptionMessage();
        }
        return new JobCancellationException(str, th, jobSupport);
    }

    public static /* synthetic */ void getOnAwaitInternal$annotations() {
    }

    public static /* synthetic */ void getOnJoin$annotations() {
    }

    public static /* synthetic */ CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th, String str, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: toCancellationException");
            return null;
        }
        if ((i2 & 1) != 0) {
            str = null;
        }
        return jobSupport.toCancellationException(th, str);
    }

    public final Throwable A(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(cancellationExceptionMessage(), null, this) : th;
        }
        obj.getClass();
        return ((ParentJob) obj).getChildJobCancellationCause();
    }

    public final Object B(Finishing finishing, Object obj) throws Throwable {
        boolean zE;
        Throwable thC;
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.f74648a : null;
        synchronized (finishing) {
            zE = finishing.e();
            ArrayList<Throwable> arrayListF = finishing.f(th);
            thC = C(finishing, arrayListF);
            if (thC != null && arrayListF.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListF.size()));
                for (Throwable th2 : arrayListF) {
                    if (th2 != thC && th2 != thC && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        ExceptionsKt.a(thC, th2);
                    }
                }
            }
        }
        if (thC != null && thC != th) {
            obj = new CompletedExceptionally(thC, false, 2, null);
        }
        if (thC != null && (y(thC) || handleJobException(thC))) {
            obj.getClass();
            CompletedExceptionally.f74647b.compareAndSet((CompletedExceptionally) obj, 0, 1);
        }
        if (!zE) {
            onCancelling(thC);
        }
        onCompletionInternal(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        Object incompleteStateBox = obj instanceof Incomplete ? new IncompleteStateBox((Incomplete) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, finishing, incompleteStateBox) && atomicReferenceFieldUpdater.get(this) == finishing) {
        }
        z(finishing, obj);
        return obj;
    }

    public final Throwable C(Finishing finishing, ArrayList arrayList) {
        Object next;
        Object obj = null;
        if (arrayList.isEmpty()) {
            if (finishing.e()) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return null;
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Throwable) next) instanceof CancellationException);
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            for (Object obj2 : arrayList) {
                Throwable th3 = (Throwable) obj2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public final NodeList D(Incomplete incomplete) {
        NodeList f74687b = incomplete.getF74670b();
        if (f74687b != null) {
            return f74687b;
        }
        if (incomplete instanceof Empty) {
            return new NodeList();
        }
        if (incomplete instanceof JobNode) {
            I((JobNode) incomplete);
            return null;
        }
        mt.f(incomplete, "State should have list: ");
        return null;
    }

    public final Object E(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationKt.a(cancellableContinuationImpl, JobKt.f(this, true, new ResumeOnCompletion(cancellableContinuationImpl)));
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.f71739a;
    }

    public final void G(NodeList nodeList, Throwable th) throws Throwable {
        onCancelling(th);
        nodeList.f(4);
        Object objJ = nodeList.j();
        objJ.getClass();
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeK = (LockFreeLinkedListNode) objJ; !lockFreeLinkedListNodeK.equals(nodeList); lockFreeLinkedListNodeK = lockFreeLinkedListNodeK.k()) {
            if ((lockFreeLinkedListNodeK instanceof JobNode) && ((JobNode) lockFreeLinkedListNodeK).q()) {
                try {
                    ((JobNode) lockFreeLinkedListNodeK).r(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ExceptionsKt.a(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNodeK + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
        y(th);
    }

    public final void H(Empty empty) {
        NodeList nodeList = new NodeList();
        Object inactiveNodeList = nodeList;
        if (!empty.f74664b) {
            inactiveNodeList = new InactiveNodeList(nodeList);
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, empty, inactiveNodeList) && atomicReferenceFieldUpdater.get(this) == empty) {
        }
    }

    public final void I(JobNode jobNode) {
        jobNode.e(new NodeList());
        LockFreeLinkedListNode lockFreeLinkedListNodeK = jobNode.k();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, jobNode, lockFreeLinkedListNodeK) && atomicReferenceFieldUpdater.get(this) == jobNode) {
        }
    }

    public final int J(Object obj) {
        if (obj instanceof Empty) {
            if (((Empty) obj).f74664b) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
            Empty empty = JobSupportKt.g;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, empty)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    return -1;
                }
            }
            onStart();
            return 1;
        }
        if (!(obj instanceof InactiveNodeList)) {
            return 0;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _state$volatile$FU;
        NodeList nodeList = ((InactiveNodeList) obj).f74670b;
        while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, nodeList)) {
            if (atomicReferenceFieldUpdater2.get(this) != obj) {
                return -1;
            }
        }
        onStart();
        return 1;
    }

    public final Object L(Object obj, Object obj2) throws Throwable {
        if (!(obj instanceof Incomplete)) {
            return JobSupportKt.f74700a;
        }
        if (((obj instanceof Empty) || (obj instanceof JobNode)) && !(obj instanceof ChildHandleNode) && !(obj2 instanceof CompletedExceptionally)) {
            Incomplete incomplete = (Incomplete) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
            Symbol symbol = JobSupportKt.f74700a;
            Object incompleteStateBox = obj2 instanceof Incomplete ? new IncompleteStateBox((Incomplete) obj2) : obj2;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, incomplete, incompleteStateBox)) {
                if (atomicReferenceFieldUpdater.get(this) != incomplete) {
                    return JobSupportKt.f74702c;
                }
            }
            onCancelling(null);
            onCompletionInternal(obj2);
            z(incomplete, obj2);
            return obj2;
        }
        Incomplete incomplete2 = (Incomplete) obj;
        NodeList nodeListD = D(incomplete2);
        if (nodeListD == null) {
            return JobSupportKt.f74702c;
        }
        Finishing finishing = incomplete2 instanceof Finishing ? (Finishing) incomplete2 : null;
        if (finishing == null) {
            finishing = new Finishing(nodeListD, false, null);
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (finishing) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = Finishing.f74684c;
            if (atomicIntegerFieldUpdater.get(finishing) == 1) {
                return JobSupportKt.f74700a;
            }
            atomicIntegerFieldUpdater.set(finishing, 1);
            if (finishing != incomplete2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _state$volatile$FU;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, incomplete2, finishing)) {
                    if (atomicReferenceFieldUpdater2.get(this) != incomplete2) {
                        return JobSupportKt.f74702c;
                    }
                }
            }
            boolean zE = finishing.e();
            CompletedExceptionally completedExceptionally = obj2 instanceof CompletedExceptionally ? (CompletedExceptionally) obj2 : null;
            if (completedExceptionally != null) {
                finishing.a(completedExceptionally.f74648a);
            }
            Throwable thD = zE ? null : finishing.d();
            ref$ObjectRef.f71921b = thD;
            if (thD != null) {
                G(nodeListD, thD);
            }
            ChildHandleNode childHandleNodeF = F(nodeListD);
            if (childHandleNodeF != null && M(finishing, childHandleNodeF, obj2)) {
                return JobSupportKt.f74701b;
            }
            nodeListD.f(2);
            ChildHandleNode childHandleNodeF2 = F(nodeListD);
            return (childHandleNodeF2 == null || !M(finishing, childHandleNodeF2, obj2)) ? B(finishing, obj2) : JobSupportKt.f74701b;
        }
    }

    public final boolean M(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        while (JobKt.f(childHandleNode.f74642i, false, new ChildCompletion(this, finishing, childHandleNode, obj)) == NonDisposableHandle.f74708b) {
            childHandleNode = F(childHandleNode);
            if (childHandleNode == null) {
                return false;
            }
        }
        return true;
    }

    public void afterCompletion(Object obj) {
    }

    public void afterResume(Object obj) {
        afterCompletion(obj);
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle attachChild(ChildJob child) {
        ChildHandleNode childHandleNode = new ChildHandleNode(child);
        childHandleNode.f74680h = this;
        loop0: while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof Empty) {
                Empty empty = (Empty) state$kotlinx_coroutines_core;
                if (empty.f74664b) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, childHandleNode)) {
                        if (atomicReferenceFieldUpdater.get(this) != state$kotlinx_coroutines_core) {
                        }
                    }
                    break loop0;
                }
                H(empty);
            } else {
                boolean z = state$kotlinx_coroutines_core instanceof Incomplete;
                NonDisposableHandle nonDisposableHandle = NonDisposableHandle.f74708b;
                Throwable thD = null;
                if (!z) {
                    Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
                    CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core2 instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core2 : null;
                    childHandleNode.r(completedExceptionally != null ? completedExceptionally.f74648a : null);
                    return nonDisposableHandle;
                }
                NodeList f74687b = ((Incomplete) state$kotlinx_coroutines_core).getF74670b();
                if (f74687b != null) {
                    if (f74687b.c(childHandleNode, 7)) {
                        break;
                    }
                    boolean zC = f74687b.c(childHandleNode, 3);
                    Object state$kotlinx_coroutines_core3 = getState$kotlinx_coroutines_core();
                    if (state$kotlinx_coroutines_core3 instanceof Finishing) {
                        thD = ((Finishing) state$kotlinx_coroutines_core3).d();
                    } else {
                        CompletedExceptionally completedExceptionally2 = state$kotlinx_coroutines_core3 instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core3 : null;
                        if (completedExceptionally2 != null) {
                            thD = completedExceptionally2.f74648a;
                        }
                    }
                    childHandleNode.r(thD);
                    if (zC) {
                        break;
                    }
                    return nonDisposableHandle;
                }
                I((JobNode) state$kotlinx_coroutines_core);
            }
        }
        return childHandleNode;
    }

    public final Object awaitInternal(Continuation<Object> continuation) throws Throwable {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) state$kotlinx_coroutines_core).f74648a;
                }
                return JobSupportKt.a(state$kotlinx_coroutines_core);
            }
        } while (J(state$kotlinx_coroutines_core) < 0);
        return x(continuation);
    }

    @Deprecated
    public /* synthetic */ boolean cancel(Throwable cause) throws Throwable {
        Throwable jobCancellationException;
        if (cause == null || (jobCancellationException = toCancellationException$default(this, cause, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(jobCancellationException);
        return true;
    }

    public final boolean cancelCoroutine(Throwable cause) {
        return cancelImpl$kotlinx_coroutines_core(cause);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e A[PHI: r0
      0x003e: PHI (r0v1 java.lang.Object) = (r0v0 java.lang.Object), (r0v12 java.lang.Object) binds: [B:3:0x000a, B:16:0x003a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x0042  */
    /* JADX WARN: Code duplicated, block: B:26:0x0057 A[Catch: all -> 0x005d, TRY_LEAVE, TryCatch #0 {, blocks: (B:24:0x004c, B:26:0x0057, B:31:0x005f, B:37:0x0076, B:35:0x006c, B:36:0x0070), top: B:81:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:31:0x005f A[Catch: all -> 0x005d, TRY_ENTER, TryCatch #0 {, blocks: (B:24:0x004c, B:26:0x0057, B:31:0x005f, B:37:0x0076, B:35:0x006c, B:36:0x0070), top: B:81:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:34:0x006a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x006c A[Catch: all -> 0x005d, TryCatch #0 {, blocks: (B:24:0x004c, B:26:0x0057, B:31:0x005f, B:37:0x0076, B:35:0x006c, B:36:0x0070), top: B:81:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:39:0x007f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0083  */
    /* JADX WARN: Code duplicated, block: B:46:0x008f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ee A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:81:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x004b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x0043 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0043 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0043 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:? A[LOOP:2: B:56:0x00b0->B:98:?, LOOP_END, SYNTHETIC] */
    public final boolean cancelImpl$kotlinx_coroutines_core(Object cause) throws Throwable {
        Throwable thA;
        Object state$kotlinx_coroutines_core;
        Throwable thD;
        Symbol symbol;
        Incomplete incomplete;
        NodeList nodeListD;
        Finishing finishing;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object objL;
        Object objL2 = JobSupportKt.f74700a;
        if (getOnCancelComplete$kotlinx_coroutines_core()) {
            do {
                Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
                if (state$kotlinx_coroutines_core2 instanceof Incomplete) {
                    if (state$kotlinx_coroutines_core2 instanceof Finishing) {
                        if (Finishing.f74684c.get((Finishing) state$kotlinx_coroutines_core2) == 1) {
                        }
                    }
                    objL2 = L(state$kotlinx_coroutines_core2, new CompletedExceptionally(A(cause), false, 2, null));
                }
                objL2 = JobSupportKt.f74700a;
                break;
            } while (objL2 == JobSupportKt.f74702c);
            if (objL2 != JobSupportKt.f74701b) {
                if (objL2 == JobSupportKt.f74700a) {
                    thA = null;
                    loop1: while (true) {
                        state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
                        if (state$kotlinx_coroutines_core instanceof Finishing) {
                            synchronized (state$kotlinx_coroutines_core) {
                                if (((Finishing) state$kotlinx_coroutines_core).c() == JobSupportKt.f74703e) {
                                    symbol = JobSupportKt.d;
                                } else {
                                    boolean zE = ((Finishing) state$kotlinx_coroutines_core).e();
                                    if (cause == null || !zE) {
                                        if (thA == null) {
                                            thA = A(cause);
                                        }
                                        ((Finishing) state$kotlinx_coroutines_core).a(thA);
                                    }
                                    thD = zE ? null : ((Finishing) state$kotlinx_coroutines_core).d();
                                    if (thD != null) {
                                        G(((Finishing) state$kotlinx_coroutines_core).f74687b, thD);
                                    }
                                    symbol = JobSupportKt.f74700a;
                                }
                            }
                        } else if (state$kotlinx_coroutines_core instanceof Incomplete) {
                            if (thA == null) {
                                thA = A(cause);
                            }
                            incomplete = (Incomplete) state$kotlinx_coroutines_core;
                            if (incomplete.getF74664b()) {
                                nodeListD = D(incomplete);
                                if (nodeListD == null) {
                                    continue;
                                } else {
                                    finishing = new Finishing(nodeListD, false, thA);
                                    atomicReferenceFieldUpdater = _state$volatile$FU;
                                    while (true) {
                                        if (atomicReferenceFieldUpdater.compareAndSet(this, incomplete, finishing)) {
                                            G(nodeListD, thA);
                                            symbol = JobSupportKt.f74700a;
                                        } else if (atomicReferenceFieldUpdater.get(this) != incomplete) {
                                        }
                                    }
                                }
                            } else {
                                objL = L(state$kotlinx_coroutines_core, new CompletedExceptionally(thA, false, 2, null));
                                if (objL != JobSupportKt.f74700a) {
                                    mt.f(state$kotlinx_coroutines_core, "Cannot happen in ");
                                    return false;
                                }
                                if (objL != JobSupportKt.f74702c) {
                                    objL2 = objL;
                                    break;
                                }
                            }
                        } else {
                            symbol = JobSupportKt.d;
                        }
                        objL2 = symbol;
                        break;
                    }
                }
                if (objL2 != JobSupportKt.f74700a && objL2 != JobSupportKt.f74701b) {
                    if (objL2 == JobSupportKt.d) {
                        return false;
                    }
                    afterCompletion(objL2);
                    return true;
                }
            }
        } else {
            if (objL2 == JobSupportKt.f74700a) {
                thA = null;
                loop1: while (true) {
                    state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
                    if (state$kotlinx_coroutines_core instanceof Finishing) {
                        synchronized (state$kotlinx_coroutines_core) {
                            if (((Finishing) state$kotlinx_coroutines_core).c() == JobSupportKt.f74703e) {
                                symbol = JobSupportKt.d;
                            } else {
                                boolean zE2 = ((Finishing) state$kotlinx_coroutines_core).e();
                                if (cause == null) {
                                    if (thA == null) {
                                        thA = A(cause);
                                    }
                                    ((Finishing) state$kotlinx_coroutines_core).a(thA);
                                } else {
                                    if (thA == null) {
                                        thA = A(cause);
                                    }
                                    ((Finishing) state$kotlinx_coroutines_core).a(thA);
                                }
                                if (zE2) {
                                }
                                if (thD != null) {
                                    G(((Finishing) state$kotlinx_coroutines_core).f74687b, thD);
                                }
                                symbol = JobSupportKt.f74700a;
                            }
                        }
                    } else if (state$kotlinx_coroutines_core instanceof Incomplete) {
                        if (thA == null) {
                            thA = A(cause);
                        }
                        incomplete = (Incomplete) state$kotlinx_coroutines_core;
                        if (incomplete.getF74664b()) {
                            nodeListD = D(incomplete);
                            if (nodeListD == null) {
                                continue;
                            } else {
                                finishing = new Finishing(nodeListD, false, thA);
                                atomicReferenceFieldUpdater = _state$volatile$FU;
                                while (true) {
                                    if (atomicReferenceFieldUpdater.compareAndSet(this, incomplete, finishing)) {
                                        G(nodeListD, thA);
                                        symbol = JobSupportKt.f74700a;
                                    } else if (atomicReferenceFieldUpdater.get(this) != incomplete) {
                                    }
                                }
                            }
                        } else {
                            objL = L(state$kotlinx_coroutines_core, new CompletedExceptionally(thA, false, 2, null));
                            if (objL != JobSupportKt.f74700a) {
                                mt.f(state$kotlinx_coroutines_core, "Cannot happen in ");
                                return false;
                            }
                            if (objL != JobSupportKt.f74702c) {
                                objL2 = objL;
                                break;
                            }
                        }
                    } else {
                        symbol = JobSupportKt.d;
                    }
                    objL2 = symbol;
                    break;
                }
            }
            if (objL2 != JobSupportKt.f74700a) {
                if (objL2 == JobSupportKt.d) {
                    return false;
                }
                afterCompletion(objL2);
                return true;
            }
        }
        return true;
    }

    public void cancelInternal(Throwable cause) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(cause);
    }

    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(Throwable cause) {
        if (cause instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(cause) && getF74679b();
    }

    public final JobCancellationException defaultCancellationException$kotlinx_coroutines_core(String message, Throwable cause) {
        if (message == null) {
            message = cancellationExceptionMessage();
        }
        return new JobCancellationException(message, cause, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) CoroutineContext.Element.DefaultImpls.a(this, r, function2);
    }

    public boolean g(Object obj) {
        return makeCompleting$kotlinx_coroutines_core(obj);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException getCancellationException() {
        CancellationException cancellationException;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof Finishing)) {
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                return state$kotlinx_coroutines_core instanceof CompletedExceptionally ? toCancellationException$default(this, ((CompletedExceptionally) state$kotlinx_coroutines_core).f74648a, null, 1, null) : new JobCancellationException(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            mt.f(this, "Job is still new or active: ");
            return null;
        }
        Throwable thD = ((Finishing) state$kotlinx_coroutines_core).d();
        if (thD != null && (cancellationException = toCancellationException(thD, getClass().getSimpleName().concat(" is cancelling"))) != null) {
            return cancellationException;
        }
        mt.f(this, "Job is still new or active: ");
        return null;
    }

    @Override // kotlinx.coroutines.ParentJob
    public CancellationException getChildJobCancellationCause() {
        Throwable thD;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Finishing) {
            thD = ((Finishing) state$kotlinx_coroutines_core).d();
        } else if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            thD = ((CompletedExceptionally) state$kotlinx_coroutines_core).f74648a;
        } else {
            if (state$kotlinx_coroutines_core instanceof Incomplete) {
                mt.f(state$kotlinx_coroutines_core, "Cannot be cancelling child in this state: ");
                return null;
            }
            thD = null;
        }
        CancellationException cancellationException = thD instanceof CancellationException ? (CancellationException) thD : null;
        return cancellationException == null ? new JobCancellationException("Parent job is ".concat(K(state$kotlinx_coroutines_core)), thD, this) : cancellationException;
    }

    @Override // kotlinx.coroutines.Job
    public final Sequence<Job> getChildren() {
        return new SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1(new JobSupport$children$1(this, null));
    }

    public final Object getCompletedInternal$kotlinx_coroutines_core() throws Throwable {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            md.k("This job has not completed yet");
            return null;
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).f74648a;
        }
        return JobSupportKt.a(state$kotlinx_coroutines_core);
    }

    public final Throwable getCompletionCause() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Finishing) {
            Throwable thD = ((Finishing) state$kotlinx_coroutines_core).d();
            if (thD != null) {
                return thD;
            }
            mt.f(this, "Job is still new or active: ");
            return null;
        }
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            mt.f(this, "Job is still new or active: ");
            return null;
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            return ((CompletedExceptionally) state$kotlinx_coroutines_core).f74648a;
        }
        return null;
    }

    public final boolean getCompletionCauseHandled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            return CompletedExceptionally.f74647b.get((CompletedExceptionally) state$kotlinx_coroutines_core) == 1;
        }
        return false;
    }

    public final Throwable getCompletionExceptionOrNull() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            md.k("This job has not completed yet");
            return null;
        }
        CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core : null;
        if (completedExceptionally != null) {
            return completedExceptionally.f74648a;
        }
        return null;
    }

    /* JADX INFO: renamed from: getHandlesException$kotlinx_coroutines_core */
    public boolean getF74679b() {
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key<?> getKey() {
        return Job.Key.f74677b;
    }

    public final SelectClause1<?> getOnAwaitInternal() {
        JobSupport$onAwaitInternal$1 jobSupport$onAwaitInternal$1 = JobSupport$onAwaitInternal$1.f74697b;
        jobSupport$onAwaitInternal$1.getClass();
        TypeIntrinsics.e(3, jobSupport$onAwaitInternal$1);
        JobSupport$onAwaitInternal$2 jobSupport$onAwaitInternal$2 = JobSupport$onAwaitInternal$2.f74698b;
        jobSupport$onAwaitInternal$2.getClass();
        TypeIntrinsics.e(3, jobSupport$onAwaitInternal$2);
        return new SelectClause1Impl(this, jobSupport$onAwaitInternal$1, jobSupport$onAwaitInternal$2, null, 8, null);
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    public final SelectClause0 getOnJoin() {
        JobSupport$onJoin$1 jobSupport$onJoin$1 = JobSupport$onJoin$1.f74699b;
        jobSupport$onJoin$1.getClass();
        TypeIntrinsics.e(3, jobSupport$onJoin$1);
        return new SelectClause0Impl(this, jobSupport$onJoin$1, null, 4, null);
    }

    public Job getParent() {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            return parentHandle$kotlinx_coroutines_core.getParent();
        }
        return null;
    }

    public final ChildHandle getParentHandle$kotlinx_coroutines_core() {
        return (ChildHandle) _parentHandle$volatile$FU.get(this);
    }

    public final Object getState$kotlinx_coroutines_core() {
        return _state$volatile$FU.get(this);
    }

    public Object h() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    public boolean handleJobException(Throwable exception) {
        return false;
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(Throwable th) throws Throwable {
        throw th;
    }

    public final void initParentJob(Job parent) {
        NonDisposableHandle nonDisposableHandle = NonDisposableHandle.f74708b;
        if (parent == null) {
            setParentHandle$kotlinx_coroutines_core(nonDisposableHandle);
            return;
        }
        parent.start();
        ChildHandle childHandleAttachChild = parent.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(childHandleAttachChild);
        if (isCompleted()) {
            childHandleAttachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(nonDisposableHandle);
        }
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(boolean onCancelling, boolean invokeImmediately, Function1<? super Throwable, Unit> handler) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(invokeImmediately, onCancelling ? new InvokeOnCancelling(handler) : new InvokeOnCompletion(handler));
    }

    public final DisposableHandle invokeOnCompletionInternal$kotlinx_coroutines_core(boolean invokeImmediately, JobNode node) {
        boolean zC;
        node.f74680h = this;
        loop0: while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Empty)) {
                boolean z = state$kotlinx_coroutines_core instanceof Incomplete;
                NonDisposableHandle nonDisposableHandle = NonDisposableHandle.f74708b;
                if (z) {
                    Incomplete incomplete = (Incomplete) state$kotlinx_coroutines_core;
                    NodeList f74687b = incomplete.getF74670b();
                    if (f74687b == null) {
                        I((JobNode) state$kotlinx_coroutines_core);
                    } else {
                        if (node.q()) {
                            Finishing finishing = incomplete instanceof Finishing ? (Finishing) incomplete : null;
                            Throwable thD = finishing != null ? finishing.d() : null;
                            if (thD == null) {
                                zC = f74687b.c(node, 5);
                            } else if (invokeImmediately) {
                                node.r(thD);
                                return nonDisposableHandle;
                            }
                        } else {
                            zC = f74687b.c(node, 1);
                        }
                        if (zC) {
                            break;
                        }
                    }
                } else if (invokeImmediately) {
                    Object state$kotlinx_coroutines_core2 = getState$kotlinx_coroutines_core();
                    CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core2 instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core2 : null;
                    node.r(completedExceptionally != null ? completedExceptionally.f74648a : null);
                }
                return nonDisposableHandle;
            }
            Empty empty = (Empty) state$kotlinx_coroutines_core;
            if (empty.f74664b) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, node)) {
                    if (atomicReferenceFieldUpdater.get(this) != state$kotlinx_coroutines_core) {
                    }
                }
                break loop0;
            }
            H(empty);
        }
        return node;
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof Incomplete) && ((Incomplete) state$kotlinx_coroutines_core).getF74664b();
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            return true;
        }
        return (state$kotlinx_coroutines_core instanceof Finishing) && ((Finishing) state$kotlinx_coroutines_core).e();
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof Incomplete);
    }

    public final boolean isCompletedExceptionally() {
        return getState$kotlinx_coroutines_core() instanceof CompletedExceptionally;
    }

    public boolean isScopedCoroutine() {
        return this instanceof BlockingCoroutine;
    }

    @Override // kotlinx.coroutines.Job
    public final Object join(Continuation<? super Unit> continuation) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                JobKt.d(continuation.getContext());
                return Unit.f71739a;
            }
        } while (J(state$kotlinx_coroutines_core) < 0);
        Object objE = E(continuation);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(Object proposedUpdate) throws Throwable {
        Object objL;
        do {
            objL = L(getState$kotlinx_coroutines_core(), proposedUpdate);
            if (objL == JobSupportKt.f74700a) {
                return false;
            }
            if (objL == JobSupportKt.f74701b) {
                return true;
            }
        } while (objL == JobSupportKt.f74702c);
        afterCompletion(objL);
        return true;
    }

    public final Object makeCompletingOnce$kotlinx_coroutines_core(Object proposedUpdate) throws Throwable {
        Object objL;
        do {
            objL = L(getState$kotlinx_coroutines_core(), proposedUpdate);
            if (objL == JobSupportKt.f74700a) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + proposedUpdate;
                CompletedExceptionally completedExceptionally = proposedUpdate instanceof CompletedExceptionally ? (CompletedExceptionally) proposedUpdate : null;
                throw new IllegalStateException(str, completedExceptionally != null ? completedExceptionally.f74648a : null);
            }
        } while (objL == JobSupportKt.f74702c);
        return objL;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    public String nameString$kotlinx_coroutines_core() {
        return getClass().getSimpleName();
    }

    public void onCancelling(Throwable cause) {
    }

    public void onCompletionInternal(Object obj) {
    }

    public void onStart() {
    }

    @Override // kotlinx.coroutines.ChildJob
    public final void parentCancelled(ParentJob parentJob) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(parentJob);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(coroutineContext, this);
    }

    public final void removeNode$kotlinx_coroutines_core(JobNode node) {
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof JobNode)) {
                if (!(state$kotlinx_coroutines_core instanceof Incomplete) || ((Incomplete) state$kotlinx_coroutines_core).getF74670b() == null) {
                    return;
                }
                node.n();
                return;
            }
            if (state$kotlinx_coroutines_core != node) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
            Empty empty = JobSupportKt.g;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, empty)) {
                if (atomicReferenceFieldUpdater.get(this) != state$kotlinx_coroutines_core) {
                }
            }
            return;
        }
    }

    public final void setParentHandle$kotlinx_coroutines_core(ChildHandle childHandle) {
        _parentHandle$volatile$FU.set(this, childHandle);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int iJ;
        do {
            iJ = J(getState$kotlinx_coroutines_core());
            if (iJ == 0) {
                return false;
            }
        } while (iJ != 1);
        return true;
    }

    public final CancellationException toCancellationException(Throwable th, String str) {
        CancellationException jobCancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (jobCancellationException == null) {
            if (str == null) {
                str = cancellationExceptionMessage();
            }
            jobCancellationException = new JobCancellationException(str, th, this);
        }
        return jobCancellationException;
    }

    public final String toDebugString() {
        return nameString$kotlinx_coroutines_core() + '{' + K(getState$kotlinx_coroutines_core()) + '}';
    }

    public String toString() {
        return toDebugString() + AnnotationParser.AnnotationInstruction + DebugStringsKt.a(this);
    }

    public final Object x(Continuation continuation) {
        AwaitContinuation awaitContinuation = new AwaitContinuation(IntrinsicsKt.b(continuation), this);
        awaitContinuation.initCancellability();
        CancellableContinuationKt.a(awaitContinuation, JobKt.f(this, true, new ResumeAwaitOnCompletion(awaitContinuation)));
        Object result = awaitContinuation.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    public final boolean y(Throwable th) {
        if (!isScopedCoroutine()) {
            boolean z = th instanceof CancellationException;
            ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
            if (parentHandle$kotlinx_coroutines_core == null || parentHandle$kotlinx_coroutines_core == NonDisposableHandle.f74708b) {
                return z;
            }
            return parentHandle$kotlinx_coroutines_core.a(th) || z;
        }
        return true;
    }

    public final void z(Incomplete incomplete, Object obj) throws Throwable {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.f74708b);
        }
        CompletionHandlerException completionHandlerException = null;
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.f74648a : null;
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).r(th);
                return;
            } catch (Throwable th2) {
                handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + incomplete + " for " + this, th2));
                return;
            }
        }
        NodeList f74687b = incomplete.getF74670b();
        if (f74687b != null) {
            f74687b.f(1);
            Object objJ = f74687b.j();
            objJ.getClass();
            for (LockFreeLinkedListNode lockFreeLinkedListNodeK = (LockFreeLinkedListNode) objJ; !lockFreeLinkedListNodeK.equals(f74687b); lockFreeLinkedListNodeK = lockFreeLinkedListNodeK.k()) {
                if (lockFreeLinkedListNodeK instanceof JobNode) {
                    try {
                        ((JobNode) lockFreeLinkedListNodeK).r(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != null) {
                            ExceptionsKt.a(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + lockFreeLinkedListNodeK + " for " + this, th3);
                        }
                    }
                }
            }
            if (completionHandlerException != null) {
                handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
            }
        }
    }

    @Deprecated
    public Job plus(Job job) {
        return job;
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(Function1<? super Throwable, Unit> handler) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(true, new InvokeOnCompletion(handler));
    }

    @Deprecated
    public /* synthetic */ void cancel() {
        cancel((CancellationException) null);
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(CancellationException cause) throws Throwable {
        if (cause == null) {
            cause = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cause);
    }
}
