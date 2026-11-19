package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.Segment;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0010\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t8\u0006¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreSegment;", "Lkotlinx/coroutines/internal/Segment;", "", com.batch.android.s.b.a.f24015b, "prev", "", "pointers", "<init>", "(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V", "Lkotlinx/atomicfu/AtomicArray;", "", "acquirers", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class SemaphoreSegment extends Segment<SemaphoreSegment> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f75225h;

    public SemaphoreSegment(long j2, SemaphoreSegment semaphoreSegment, int i2) {
        super(j2, semaphoreSegment, i2);
        this.f75225h = new AtomicReferenceArray(SemaphoreKt.f75224f);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final int l() {
        return SemaphoreKt.f75224f;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final void m(CoroutineContext coroutineContext, int i2) {
        this.f75225h.set(i2, SemaphoreKt.f75223e);
        n();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.f75137f + ", hashCode=" + hashCode() + ']';
    }
}
