package androidx.room.concurrent;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/room/concurrent/CloseBarrier;", "", "Landroidx/room/concurrent/SynchronizedObject;", "Lkotlin/Function0;", "", "closeAction", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CloseBarrier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f19585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f19586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f19587c;

    public CloseBarrier(Function0<Unit> function0) {
        function0.getClass();
        this.f19585a = function0;
        this.f19586b = new AtomicInteger(0);
        this.f19587c = new AtomicBoolean(false);
    }

    public final boolean a() {
        synchronized (this) {
            if (this.f19587c.get()) {
                return false;
            }
            this.f19586b.incrementAndGet();
            return true;
        }
    }

    public final void b() {
        synchronized (this) {
            this.f19586b.decrementAndGet();
            if (this.f19586b.get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
        }
    }
}
