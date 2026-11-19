package androidx.media3.session;

import androidx.collection.ArrayMap;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class ConnectedControllersManager<T> {
    public final WeakReference d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayMap f17255b = new ArrayMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayMap f17256c = new ArrayMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f17254a = new Object();

    public interface AsyncCommand {
        ListenableFuture run();
    }

    public static final class ConnectedControllerRecord<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f17257a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SequencedFutureManager f17258b;
        public SessionCommands d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Player.Commands f17260e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f17261f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayDeque f17259c = new ArrayDeque();
        public Player.Commands g = Player.Commands.f13922b;

        public ConnectedControllerRecord(T t, SequencedFutureManager sequencedFutureManager, SessionCommands sessionCommands, Player.Commands commands) {
            this.f17257a = t;
            this.f17258b = sequencedFutureManager;
            this.d = sessionCommands;
            this.f17260e = commands;
        }
    }

    public ConnectedControllersManager(MediaSessionImpl mediaSessionImpl) {
        this.d = new WeakReference(mediaSessionImpl);
    }

    public final void a(Object obj, MediaSession.ControllerInfo controllerInfo, SessionCommands sessionCommands, Player.Commands commands) {
        synchronized (this.f17254a) {
            try {
                MediaSession.ControllerInfo controllerInfoG = g(obj);
                if (controllerInfoG == null) {
                    this.f17255b.put(obj, controllerInfo);
                    this.f17256c.put(controllerInfo, new ConnectedControllerRecord(obj, new SequencedFutureManager(), sessionCommands, commands));
                } else {
                    ConnectedControllerRecord connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.get(controllerInfoG);
                    connectedControllerRecord.getClass();
                    connectedControllerRecord.d = sessionCommands;
                    connectedControllerRecord.f17260e = commands;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(MediaSession.ControllerInfo controllerInfo, int i2, AsyncCommand asyncCommand) {
        synchronized (this.f17254a) {
            try {
                ConnectedControllerRecord connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.get(controllerInfo);
                if (connectedControllerRecord != null) {
                    Player.Commands commands = connectedControllerRecord.g;
                    commands.getClass();
                    Player.Commands.Builder builder = new Player.Commands.Builder(commands);
                    builder.f13926a.a(i2);
                    connectedControllerRecord.g = builder.c();
                    connectedControllerRecord.f17259c.add(asyncCommand);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(ConnectedControllerRecord connectedControllerRecord) {
        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.d.get();
        if (mediaSessionImpl == null) {
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        while (atomicBoolean.get()) {
            atomicBoolean.set(false);
            AsyncCommand asyncCommand = (AsyncCommand) connectedControllerRecord.f17259c.poll();
            if (asyncCommand == null) {
                connectedControllerRecord.f17261f = false;
                return;
            }
            AtomicBoolean atomicBoolean2 = new AtomicBoolean(true);
            ConnectedControllersManager<T> connectedControllersManager = this;
            Util.W(mediaSessionImpl.l, new g0(mediaSessionImpl, this.g(connectedControllerRecord.f17257a), new d(connectedControllersManager, asyncCommand, atomicBoolean2, connectedControllerRecord, atomicBoolean)));
            atomicBoolean2.set(false);
            this = connectedControllersManager;
        }
    }

    public final void d(final MediaSession.ControllerInfo controllerInfo) {
        synchronized (this.f17254a) {
            try {
                ConnectedControllerRecord connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.get(controllerInfo);
                if (connectedControllerRecord == null) {
                    return;
                }
                final Player.Commands commands = connectedControllerRecord.g;
                connectedControllerRecord.g = Player.Commands.f13922b;
                connectedControllerRecord.f17259c.add(new AsyncCommand(controllerInfo, commands) { // from class: androidx.media3.session.b

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ MediaSession.ControllerInfo f17606b;

                    @Override // androidx.media3.session.ConnectedControllersManager.AsyncCommand
                    public final ListenableFuture run() {
                        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17605a.d.get();
                        if (mediaSessionImpl != null) {
                            mediaSessionImpl.s(this.f17606b);
                        }
                        return Futures.h();
                    }
                });
                if (connectedControllerRecord.f17261f) {
                    return;
                }
                connectedControllerRecord.f17261f = true;
                c(connectedControllerRecord);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Player.Commands e(MediaSession.ControllerInfo controllerInfo) {
        synchronized (this.f17254a) {
            try {
                ConnectedControllerRecord connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.get(controllerInfo);
                if (connectedControllerRecord == null) {
                    return null;
                }
                return connectedControllerRecord.f17260e;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ImmutableList f() {
        ImmutableList immutableListT;
        synchronized (this.f17254a) {
            immutableListT = ImmutableList.t(this.f17255b.values());
        }
        return immutableListT;
    }

    public final MediaSession.ControllerInfo g(Object obj) {
        MediaSession.ControllerInfo controllerInfo;
        synchronized (this.f17254a) {
            controllerInfo = (MediaSession.ControllerInfo) this.f17255b.get(obj);
        }
        return controllerInfo;
    }

    public final PlaybackException h(MediaSession.ControllerInfo controllerInfo) {
        synchronized (this.f17254a) {
            try {
                return ((ConnectedControllerRecord) this.f17256c.get(controllerInfo)) != null ? null : null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final PlayerInfo i(MediaSession.ControllerInfo controllerInfo) {
        synchronized (this.f17254a) {
            try {
                return ((ConnectedControllerRecord) this.f17256c.get(controllerInfo)) != null ? null : null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final SequencedFutureManager j(MediaSession.ControllerInfo controllerInfo) {
        ConnectedControllerRecord connectedControllerRecord;
        synchronized (this.f17254a) {
            connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.get(controllerInfo);
        }
        if (connectedControllerRecord != null) {
            return connectedControllerRecord.f17258b;
        }
        return null;
    }

    public final boolean k(MediaSession.ControllerInfo controllerInfo) {
        boolean z;
        synchronized (this.f17254a) {
            z = this.f17256c.get(controllerInfo) != null;
        }
        return z;
    }

    public final boolean l(MediaSession.ControllerInfo controllerInfo, int i2) {
        ConnectedControllerRecord connectedControllerRecord;
        synchronized (this.f17254a) {
            connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.get(controllerInfo);
        }
        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.d.get();
        return connectedControllerRecord != null && connectedControllerRecord.f17260e.a(i2) && mediaSessionImpl != null && mediaSessionImpl.u.i0().a(i2);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003a A[RETURN] */
    public final boolean m(MediaSession.ControllerInfo controllerInfo, int i2) {
        ConnectedControllerRecord connectedControllerRecord;
        boolean z;
        synchronized (this.f17254a) {
            connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.get(controllerInfo);
        }
        if (connectedControllerRecord != null) {
            SessionCommands sessionCommands = connectedControllerRecord.d;
            sessionCommands.getClass();
            Preconditions.h(i2 != 0, "Use contains(Command) for custom command");
            Iterator<E> it = sessionCommands.f17544a.iterator();
            while (it.hasNext()) {
                if (((SessionCommand) it.next()).f17539a == i2) {
                    z = true;
                    if (z) {
                        return true;
                    }
                }
            }
            z = false;
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final boolean n(MediaSession.ControllerInfo controllerInfo, SessionCommand sessionCommand) {
        ConnectedControllerRecord connectedControllerRecord;
        synchronized (this.f17254a) {
            connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.get(controllerInfo);
        }
        if (connectedControllerRecord == null) {
            return false;
        }
        ImmutableSet immutableSet = connectedControllerRecord.d.f17544a;
        sessionCommand.getClass();
        return immutableSet.contains(sessionCommand) || CommandButton.n(sessionCommand.f17540b);
    }

    public final void o(MediaSession.ControllerInfo controllerInfo) {
        synchronized (this.f17254a) {
            try {
                ConnectedControllerRecord connectedControllerRecord = (ConnectedControllerRecord) this.f17256c.remove(controllerInfo);
                if (connectedControllerRecord == null) {
                    return;
                }
                this.f17255b.remove(connectedControllerRecord.f17257a);
                connectedControllerRecord.f17258b.c();
                MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.d.get();
                if (mediaSessionImpl == null || mediaSessionImpl.k()) {
                    return;
                }
                Util.W(mediaSessionImpl.l, new c(mediaSessionImpl, controllerInfo, 0));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
