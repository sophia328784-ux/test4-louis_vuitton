package androidx.media3.common.util;

import android.os.Looper;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public final class ListenerSet<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Clock f14159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Thread f14160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HandlerWrapper f14161c;
    public final IterationFinishedEvent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CopyOnWriteArraySet f14162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f14163f;
    public final ArrayDeque g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f14164h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f14165i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f14166j;

    public interface Event<T> {
        void invoke(Object obj);
    }

    public interface IterationFinishedEvent<T> {
        void a(Object obj, FlagSet flagSet);
    }

    public static final class ListenerHolder<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f14167a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public FlagSet.Builder f14168b = new FlagSet.Builder();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14169c;
        public boolean d;

        public ListenerHolder(T t) {
            this.f14167a = t;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ListenerHolder.class != obj.getClass()) {
                return false;
            }
            return this.f14167a.equals(((ListenerHolder) obj).f14167a);
        }

        public final int hashCode() {
            return this.f14167a.hashCode();
        }
    }

    public ListenerSet(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, Thread thread, Clock clock, IterationFinishedEvent iterationFinishedEvent, boolean z) {
        this.f14159a = clock;
        this.f14160b = thread;
        this.f14162e = copyOnWriteArraySet;
        this.d = iterationFinishedEvent;
        this.f14164h = new Object();
        this.f14163f = new ArrayDeque();
        this.g = new ArrayDeque();
        if (looper == null || clock == null || iterationFinishedEvent == null) {
            this.f14161c = null;
        } else {
            this.f14161c = clock.e(looper, new a(this, 0));
        }
        this.f14166j = z;
    }

    public final void a(Object obj) {
        obj.getClass();
        synchronized (this.f14164h) {
            try {
                if (this.f14165i) {
                    return;
                }
                this.f14162e.add(new ListenerHolder(obj));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        if (this.f14166j) {
            Preconditions.q(Thread.currentThread() == this.f14160b);
        }
        ArrayDeque arrayDeque = this.g;
        if (arrayDeque.isEmpty()) {
            return;
        }
        if (this.d != null) {
            HandlerWrapper handlerWrapper = this.f14161c;
            handlerWrapper.getClass();
            if (!handlerWrapper.d(1)) {
                handlerWrapper.j(handlerWrapper.b(1));
            }
        }
        ArrayDeque arrayDeque2 = this.f14163f;
        boolean zIsEmpty = arrayDeque2.isEmpty();
        arrayDeque2.addAll(arrayDeque);
        arrayDeque.clear();
        if (zIsEmpty) {
            while (!arrayDeque2.isEmpty()) {
                ((Runnable) arrayDeque2.peekFirst()).run();
                arrayDeque2.removeFirst();
            }
        }
    }

    public final void c(final int i2, final Event event) {
        if (this.f14166j) {
            Preconditions.q(Thread.currentThread() == this.f14160b);
        }
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f14162e);
        this.g.add(new Runnable() { // from class: androidx.media3.common.util.b
            @Override // java.lang.Runnable
            public final void run() {
                for (ListenerSet.ListenerHolder listenerHolder : copyOnWriteArraySet) {
                    if (!listenerHolder.d) {
                        int i3 = i2;
                        if (i3 != -1) {
                            listenerHolder.f14168b.a(i3);
                        }
                        listenerHolder.f14169c = true;
                        event.invoke(listenerHolder.f14167a);
                    }
                }
            }
        });
    }

    public final void d() {
        if (this.f14166j) {
            Preconditions.q(Thread.currentThread() == this.f14160b);
        }
        synchronized (this.f14164h) {
            this.f14165i = true;
        }
        for (ListenerHolder listenerHolder : this.f14162e) {
            IterationFinishedEvent iterationFinishedEvent = this.d;
            listenerHolder.d = true;
            if (iterationFinishedEvent != null && listenerHolder.f14169c) {
                listenerHolder.f14169c = false;
                iterationFinishedEvent.a(listenerHolder.f14167a, listenerHolder.f14168b.c());
            }
        }
        this.f14162e.clear();
    }

    public final void e(Player.Listener listener) {
        if (this.f14166j) {
            Preconditions.q(Thread.currentThread() == this.f14160b);
        }
        CopyOnWriteArraySet<ListenerHolder> copyOnWriteArraySet = this.f14162e;
        for (ListenerHolder listenerHolder : copyOnWriteArraySet) {
            if (listenerHolder.f14167a.equals(listener)) {
                listenerHolder.d = true;
                IterationFinishedEvent iterationFinishedEvent = this.d;
                if (iterationFinishedEvent != null && listenerHolder.f14169c) {
                    listenerHolder.f14169c = false;
                    iterationFinishedEvent.a(listenerHolder.f14167a, listenerHolder.f14168b.c());
                }
                copyOnWriteArraySet.remove(listenerHolder);
            }
        }
    }

    public final void f(int i2, Event event) {
        c(i2, event);
        b();
    }

    public ListenerSet(Thread thread) {
        this(new CopyOnWriteArraySet(), null, thread, null, null, true);
    }

    public ListenerSet(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        this(new CopyOnWriteArraySet(), looper, looper.getThread(), clock, iterationFinishedEvent, true);
    }

    public ListenerSet(Looper looper) {
        this(looper.getThread());
    }
}
