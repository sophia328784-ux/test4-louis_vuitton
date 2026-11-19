package kotlinx.coroutines;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/Incomplete;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class JobNode extends LockFreeLinkedListNode implements DisposableHandle, Incomplete {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public JobSupport f74680h;

    @Override // kotlinx.coroutines.Incomplete
    /* JADX INFO: renamed from: b */
    public final NodeList getF74687b() {
        return null;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void dispose() {
        p().removeNode$kotlinx_coroutines_core(this);
    }

    public Job getParent() {
        return p();
    }

    @Override // kotlinx.coroutines.Incomplete
    public final boolean isActive() {
        return true;
    }

    public final JobSupport p() {
        JobSupport jobSupport = this.f74680h;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.h("job");
        throw null;
    }

    public abstract boolean q();

    public abstract void r(Throwable th);

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public final String toString() {
        return getClass().getSimpleName() + AnnotationParser.AnnotationInstruction + DebugStringsKt.a(this) + "[job@" + DebugStringsKt.a(p()) + ']';
    }
}
