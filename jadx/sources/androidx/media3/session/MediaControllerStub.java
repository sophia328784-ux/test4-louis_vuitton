package androidx.media3.session;

import android.os.Binder;
import android.os.Bundle;
import androidx.media3.common.Player;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerStub extends IMediaController.Stub {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f17365j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f17366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17367b = -1;

    public interface ControllerTask<T extends MediaControllerImplBase> {
        void a(MediaControllerImplBase mediaControllerImplBase);
    }

    public MediaControllerStub(MediaControllerImplBase mediaControllerImplBase) {
        this.f17366a = new WeakReference(mediaControllerImplBase);
    }

    @Override // androidx.media3.session.IMediaController
    public final void A1(int i2, Bundle bundle) {
        int i3;
        if (bundle == null || (i3 = this.f17367b) == -1) {
            return;
        }
        try {
            F2(new o0(SessionPositionInfo.b(i3, bundle), 1));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for SessionPositionInfo", e2);
        }
    }

    @Override // androidx.media3.session.IMediaController
    public final void C1(int i2, Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            Log.g("Ignoring custom command with null args.");
            return;
        }
        try {
            F2(new m0(i2, SessionCommand.a(bundle), bundle2));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for SessionCommand", e2);
        }
    }

    @Override // androidx.media3.session.IMediaController
    public final void E(int i2, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            ConnectionState connectionStateA = ConnectionState.a(bundle);
            this.f17367b = connectionStateA.f17272b;
            F2(new o0(connectionStateA, 0));
        } catch (RuntimeException e2) {
            Log.h("Malformed Bundle for ConnectionResult. Disconnected from the session.", e2);
            e();
        }
    }

    public final void F2(ControllerTask controllerTask) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) this.f17366a.get();
            if (mediaControllerImplBase == null) {
                return;
            }
            Util.W(mediaControllerImplBase.f17327a.f17316e, new g0(mediaControllerImplBase, controllerTask, 1));
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    public final void G2(int i2, Object obj) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) this.f17366a.get();
            if (mediaControllerImplBase == null) {
                return;
            }
            mediaControllerImplBase.f17328b.d(i2, obj);
            mediaControllerImplBase.f17327a.Y0(new o1(mediaControllerImplBase, i2, 2));
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // androidx.media3.session.IMediaController
    public final void H1(int i2, Bundle bundle, Bundle bundle2) {
        int i3;
        if (bundle == null || bundle2 == null || (i3 = this.f17367b) == -1) {
            return;
        }
        try {
            try {
                F2(new s(PlayerInfo.h(i3, bundle), new PlayerInfo.BundlingExclusions(bundle2.getBoolean(PlayerInfo.BundlingExclusions.d, false), bundle2.getBoolean(PlayerInfo.BundlingExclusions.f17514e, false)), 5));
            } catch (RuntimeException e2) {
                Log.h("Ignoring malformed Bundle for BundlingExclusions", e2);
            }
        } catch (RuntimeException e3) {
            Log.h("Ignoring malformed Bundle for PlayerInfo", e3);
        }
    }

    @Override // androidx.media3.session.IMediaController
    public final void O0(int i2, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            G2(i2, SessionResult.a(bundle));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for SessionResult", e2);
        }
    }

    @Override // androidx.media3.session.IMediaController
    public final void a0(int i2, Bundle bundle) {
        int i3;
        if (bundle == null || (i3 = this.f17367b) == -1) {
            return;
        }
        try {
            G2(i2, LibraryResult.a(i3, bundle));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for LibraryResult", e2);
        }
    }

    @Override // androidx.media3.session.IMediaController
    public final void e() {
        F2(new q0(2));
    }

    @Override // androidx.media3.session.IMediaController
    public final void f(int i2) {
        F2(new q0(1));
    }

    @Override // androidx.media3.session.IMediaController
    public final void g(int i2, int i3, int i4) {
        F2(new r0(i3, i4, 0));
    }

    @Override // androidx.media3.session.IMediaController
    public final void v2(int i2, Bundle bundle, boolean z) {
        PlayerInfo.BundlingExclusions bundlingExclusions = new PlayerInfo.BundlingExclusions(z, true);
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean(PlayerInfo.BundlingExclusions.d, bundlingExclusions.f17515a);
        bundle2.putBoolean(PlayerInfo.BundlingExclusions.f17514e, bundlingExclusions.f17516b);
        H1(i2, bundle, bundle2);
    }

    @Override // androidx.media3.session.IMediaController
    public final void w1(int i2, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            F2(new p0(Player.Commands.b(bundle)));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for Commands", e2);
        }
    }
}
