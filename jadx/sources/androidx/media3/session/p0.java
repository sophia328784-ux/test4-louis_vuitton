package androidx.media3.session;

import android.os.Looper;
import androidx.media3.common.Player;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p0 implements MediaControllerStub.ControllerTask, MediaSessionImpl.RemoteControllerTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Player.Commands f17887b;

    public /* synthetic */ p0(Player.Commands commands) {
        this.f17887b = commands;
    }

    @Override // androidx.media3.session.MediaControllerStub.ControllerTask
    public void a(MediaControllerImplBase mediaControllerImplBase) {
        boolean z;
        boolean z2;
        int i2 = MediaControllerStub.f17365j;
        MediaController mediaController = mediaControllerImplBase.f17327a;
        if (mediaControllerImplBase.isConnected()) {
            Player.Commands commands = mediaControllerImplBase.z;
            Player.Commands commands2 = this.f17887b;
            if (Objects.equals(commands, commands2)) {
                return;
            }
            mediaControllerImplBase.z = commands2;
            Player.Commands commands3 = mediaControllerImplBase.A;
            Player.Commands commandsT0 = mediaControllerImplBase.T0(mediaControllerImplBase.y, commands2);
            mediaControllerImplBase.A = commandsT0;
            if (commandsT0.equals(commands3)) {
                z = false;
                z2 = false;
            } else {
                ImmutableList immutableList = mediaControllerImplBase.v;
                ImmutableList immutableList2 = mediaControllerImplBase.w;
                ImmutableList immutableListR1 = MediaControllerImplBase.r1(mediaControllerImplBase.u, mediaControllerImplBase.t, mediaControllerImplBase.x, mediaControllerImplBase.A, mediaControllerImplBase.K);
                mediaControllerImplBase.v = immutableListR1;
                mediaControllerImplBase.w = MediaControllerImplBase.q1(immutableListR1, mediaControllerImplBase.t, mediaControllerImplBase.K, mediaControllerImplBase.x, mediaControllerImplBase.A, mediaControllerImplBase.d1());
                z = !mediaControllerImplBase.v.equals(immutableList);
                z2 = !mediaControllerImplBase.w.equals(immutableList2);
                mediaControllerImplBase.f17333i.f(13, new o(mediaControllerImplBase, 14));
            }
            if (z2) {
                mediaController.getClass();
                Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
                mediaController.d.getClass();
            }
            if (z) {
                mediaController.getClass();
                Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
                mediaController.d.x();
            }
        }
    }

    @Override // androidx.media3.session.MediaSessionImpl.RemoteControllerTask
    public void d(MediaSession.ControllerCb controllerCb, int i2) {
        SessionResult sessionResult = MediaSessionImpl.F;
        controllerCb.h(i2, this.f17887b);
    }
}
