package androidx.compose.runtime;

import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.AwaiterQueue;
import defpackage.t30;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/NextFrameEndCallbackQueue;", "", "Lkotlin/Function0;", "", "onNewAwaiters", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "NextFrameEndAwaiter", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NextFrameEndCallbackQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicInt f8042a = new AtomicInt(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AwaiterQueue f8043b = new AwaiterQueue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t30 f8044c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;", "Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;", "Lkotlin/Function0;", "", "onNextFrameEnd", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class NextFrameEndAwaiter extends AwaiterQueue.Awaiter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Function0 f8045a;

        public NextFrameEndAwaiter(Function0<Unit> function0) {
            this.f8045a = function0;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public final void a() {
            this.f8045a = null;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public final void b(Throwable th) throws Throwable {
            throw th;
        }
    }

    public NextFrameEndCallbackQueue(Function0<Unit> function0) {
        this.f8044c = new t30(this, function0, 24);
    }
}
