package androidx.room;

import java.lang.ref.WeakReference;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/room/WeakObserver;", "Landroidx/room/InvalidationTracker$Observer;", "Landroidx/room/InvalidationTracker;", "tracker", "delegate", "<init>", "(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WeakObserver extends InvalidationTracker.Observer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InvalidationTracker f19582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference f19583c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WeakObserver(InvalidationTracker invalidationTracker, InvalidationTracker.Observer observer) {
        super(observer.f19408a);
        invalidationTracker.getClass();
        observer.getClass();
        this.f19582b = invalidationTracker;
        this.f19583c = new WeakReference(observer);
    }

    @Override // androidx.room.InvalidationTracker.Observer
    public final void a(Set set) {
        set.getClass();
        InvalidationTracker.Observer observer = (InvalidationTracker.Observer) this.f19583c.get();
        if (observer == null) {
            this.f19582b.c(this);
        } else {
            observer.a(set);
        }
    }
}
