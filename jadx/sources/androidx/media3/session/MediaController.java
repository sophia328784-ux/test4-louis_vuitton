package androidx.media3.session;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceBitmapLoader;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.errorprone.annotations.DoNotMock;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@DoNotMock
public class MediaController implements Player {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Timeline.Window f17313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f17314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaControllerImpl f17315c;
    public final Listener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f17316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f17317f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MediaControllerHolder f17318h;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f17319a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SessionToken f17320b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Bundle f17321c;
        public Listener d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Looper f17322e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CacheBitmapLoader f17323f;
        public final long g;

        /* JADX INFO: renamed from: androidx.media3.session.MediaController$Builder$1, reason: invalid class name */
        public class AnonymousClass1 implements Listener {
        }

        public Builder(Context context, SessionToken sessionToken) {
            context.getClass();
            this.f17319a = context;
            sessionToken.getClass();
            this.f17320b = sessionToken;
            this.f17321c = Bundle.EMPTY;
            this.d = new AnonymousClass1();
            String str = Util.f14242a;
            Looper looperMyLooper = Looper.myLooper();
            this.f17322e = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
            this.g = 100L;
        }

        public final ListenableFuture a() {
            MediaControllerHolder mediaControllerHolder = new MediaControllerHolder(this.f17322e);
            SessionToken sessionToken = this.f17320b;
            boolean zF = sessionToken.f17568a.f();
            Context context = this.f17319a;
            if (zF && this.f17323f == null) {
                this.f17323f = new CacheBitmapLoader(new DataSourceBitmapLoader(new DataSourceBitmapLoader.Builder(context)));
            }
            Util.W(new Handler(this.f17322e), new f(mediaControllerHolder, new MediaController(context, sessionToken, this.f17321c, this.d, this.f17322e, mediaControllerHolder, this.f17323f, this.g), 0));
            return mediaControllerHolder;
        }
    }

    public interface ConnectionCallback {
    }

    public interface Listener {
        static ListenableFuture z() {
            return Futures.g(new SessionResult(-6));
        }

        default void T() {
        }

        default ListenableFuture V(SessionCommand sessionCommand) {
            return Futures.g(new SessionResult(-6));
        }

        default void e() {
        }

        default void x() {
        }
    }

    public interface MediaControllerImpl {
        MediaMetadata A();

        void A0(int i2, List list);

        void B(Surface surface);

        long B0();

        long C();

        MediaMetadata C0();

        void D();

        void D0(MediaItem mediaItem, long j2);

        int E();

        void E0(int i2);

        void F();

        void F0(TrackSelectionParameters trackSelectionParameters);

        void G(int i2, boolean z);

        void G0(SurfaceView surfaceView);

        void H();

        void H0(int i2, int i3);

        void I(int i2);

        void I0(int i2, int i3, int i4);

        void J(SurfaceView surfaceView);

        void J0(List list);

        void K(int i2, int i3, List list);

        boolean K0();

        void L(MediaMetadata mediaMetadata);

        void L0(int i2);

        void M(int i2);

        void M0(List list);

        void N(int i2, int i3);

        long N0();

        void O(SurfaceHolder surfaceHolder);

        ImmutableList O0();

        void P(boolean z);

        Bundle P0();

        void Q();

        void R(MediaItem mediaItem);

        void S();

        void T(int i2);

        boolean U();

        void V(Player.Listener listener);

        int W();

        void X(boolean z);

        void Y(Player.Listener listener);

        int Z();

        PlaybackParameters a();

        ListenableFuture a0(SessionCommand sessionCommand, Bundle bundle);

        SessionCommands b();

        void b0();

        void c();

        void c0();

        void connect();

        void d(PlaybackParameters playbackParameters);

        TrackSelectionParameters d0();

        PlaybackException e();

        void e0(TextureView textureView);

        void f();

        int f0();

        void g(float f2);

        long g0();

        long getCurrentPosition();

        long getDuration();

        int h();

        void h0(int i2, long j2);

        int i();

        Player.Commands i0();

        boolean isConnected();

        boolean isPlaying();

        boolean j();

        void j0(boolean z);

        void k();

        long k0();

        void l();

        void l0(int i2, MediaItem mediaItem);

        boolean m();

        long m0();

        Tracks n();

        int n0();

        CueGroup o();

        void o0(TextureView textureView);

        Timeline p();

        void p0(AudioAttributes audioAttributes, boolean z);

        void pause();

        void q();

        float q0();

        boolean r();

        AudioAttributes r0();

        void release();

        VideoSize s();

        DeviceInfo s0();

        void seekTo(long j2);

        void stop();

        void t(float f2);

        void t0(int i2, int i3);

        long u();

        boolean u0();

        int v();

        int v0();

        boolean w();

        void w0(MediaItem mediaItem);

        long x();

        void x0(List list, int i2, long j2);

        void y();

        void y0(int i2);

        void z();

        long z0();
    }

    public interface ProgressListener {
        void a();
    }

    public MediaController(Context context, SessionToken sessionToken, Bundle bundle, Listener listener, Looper looper, MediaControllerHolder mediaControllerHolder, CacheBitmapLoader cacheBitmapLoader, long j2) {
        MediaControllerImpl mediaControllerImplBase;
        Log.f("Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.10.1] [" + Util.f14242a + "]");
        this.f17313a = new Timeline.Window();
        this.f17317f = -9223372036854775807L;
        this.d = listener;
        this.f17316e = new Handler(looper);
        this.f17318h = mediaControllerHolder;
        if (sessionToken.f17568a.f()) {
            cacheBitmapLoader.getClass();
            mediaControllerImplBase = new MediaControllerImplLegacy(context, this, sessionToken, bundle, looper, cacheBitmapLoader, j2);
        } else {
            mediaControllerImplBase = new MediaControllerImplBase(context, this, sessionToken, bundle, looper, false);
        }
        this.f17315c = mediaControllerImplBase;
        mediaControllerImplBase.connect();
    }

    public static void X0(ListenableFuture listenableFuture) {
        if (listenableFuture.cancel(false)) {
            return;
        }
        try {
            ((MediaController) Futures.d(listenableFuture)).release();
        } catch (CancellationException | ExecutionException e2) {
            Log.h("MediaController future failed (so we couldn't release it)", e2);
        }
    }

    @Override // androidx.media3.common.Player
    public final MediaMetadata A() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() ? mediaControllerImpl.A() : MediaMetadata.L;
    }

    @Override // androidx.media3.common.Player
    public final void A0(int i2, List list) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.A0(i2, list);
        } else {
            Log.g("The controller is not connected. Ignoring addMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void B(Surface surface) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.B(surface);
        } else {
            Log.g("The controller is not connected. Ignoring setVideoSurface().");
        }
    }

    @Override // androidx.media3.common.Player
    public final long B0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.B0();
        }
        return 0L;
    }

    @Override // androidx.media3.common.Player
    public final long C() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.C();
        }
        return 0L;
    }

    @Override // androidx.media3.common.Player
    public final MediaMetadata C0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() ? mediaControllerImpl.C0() : MediaMetadata.L;
    }

    @Override // androidx.media3.common.Player
    public final void D() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.D();
        } else {
            Log.g("The controller is not connected. Ignoring clearMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void D0(MediaItem mediaItem, long j2) {
        Z0();
        Preconditions.m(mediaItem, "mediaItems must not be null");
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.D0(mediaItem, j2);
        } else {
            Log.g("The controller is not connected. Ignoring setMediaItem().");
        }
    }

    @Override // androidx.media3.common.Player
    public final int E() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.E();
        }
        return 0;
    }

    @Override // androidx.media3.common.Player
    public final void E0(int i2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.E0(i2);
        } else {
            Log.g("The controller is not connected. Ignoring setRepeatMode().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void F() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.F();
        } else {
            Log.g("The controller is not connected. Ignoring seekToPreviousMediaItem().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void F0(TrackSelectionParameters trackSelectionParameters) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (!mediaControllerImpl.isConnected()) {
            Log.g("The controller is not connected. Ignoring setTrackSelectionParameters().");
        }
        mediaControllerImpl.F0(trackSelectionParameters);
    }

    @Override // androidx.media3.common.Player
    public final void G(int i2, boolean z) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.G(i2, z);
        } else {
            Log.g("The controller is not connected. Ignoring setDeviceMuted().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void G0(SurfaceView surfaceView) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.G0(surfaceView);
        } else {
            Log.g("The controller is not connected. Ignoring clearVideoSurfaceView().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void H() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.H();
        } else {
            Log.g("The controller is not connected. Ignoring decreaseDeviceVolume().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void H0(int i2, int i3) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.H0(i2, i3);
        } else {
            Log.g("The controller is not connected. Ignoring moveMediaItem().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void I(int i2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.I(i2);
        } else {
            Log.g("The controller is not connected. Ignoring increaseDeviceVolume().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void I0(int i2, int i3, int i4) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.I0(i2, i3, i4);
        } else {
            Log.g("The controller is not connected. Ignoring moveMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void J(SurfaceView surfaceView) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.J(surfaceView);
        } else {
            Log.g("The controller is not connected. Ignoring setVideoSurfaceView().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void J0(List list) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.J0(list);
        } else {
            Log.g("The controller is not connected. Ignoring addMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void K(int i2, int i3, List list) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.K(i2, i3, list);
        } else {
            Log.g("The controller is not connected. Ignoring replaceMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean K0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.K0();
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    public final void L(MediaMetadata mediaMetadata) {
        Z0();
        Preconditions.m(mediaMetadata, "playlistMetadata must not be null");
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.L(mediaMetadata);
        } else {
            Log.g("The controller is not connected. Ignoring setPlaylistMetadata().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void L0(int i2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.L0(i2);
        } else {
            Log.g("The controller is not connected. Ignoring setDeviceVolume().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void M(int i2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.M(i2);
        } else {
            Log.g("The controller is not connected. Ignoring removeMediaItem().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void M0(List list) {
        Z0();
        Preconditions.m(list, "mediaItems must not be null");
        for (int i2 = 0; i2 < list.size(); i2++) {
            Preconditions.b(i2, "items must not contain null, index=%s", list.get(i2) != null);
        }
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.M0(list);
        } else {
            Log.g("The controller is not connected. Ignoring setMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void N(int i2, int i3) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.N(i2, i3);
        } else {
            Log.g("The controller is not connected. Ignoring removeMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final long N0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.N0();
        }
        return 0L;
    }

    @Override // androidx.media3.common.Player
    public final void O(SurfaceHolder surfaceHolder) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.O(surfaceHolder);
        } else {
            Log.g("The controller is not connected. Ignoring setVideoSurfaceHolder().");
        }
    }

    @Override // androidx.media3.common.Player
    public final MediaItem O0() {
        Timeline timelineP = p();
        if (timelineP.p()) {
            return null;
        }
        return timelineP.m(v(), this.f17313a, 0L).f13969c;
    }

    @Override // androidx.media3.common.Player
    public final void P(boolean z) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.P(z);
        }
    }

    @Override // androidx.media3.common.Player
    public final void Q() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.Q();
        } else {
            Log.g("The controller is not connected. Ignoring unmute().");
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean Q0() {
        return false;
    }

    @Override // androidx.media3.common.Player
    public final void R(MediaItem mediaItem) {
        Z0();
        Preconditions.m(mediaItem, "mediaItems must not be null");
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.R(mediaItem);
        } else {
            Log.g("The controller is not connected. Ignoring setMediaItem().");
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean R0(int i2) {
        return i0().a(i2);
    }

    @Override // androidx.media3.common.Player
    public final void S() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.S();
        } else {
            Log.g("The controller is not connected. Ignoring seekToNextMediaItem().");
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean S0() {
        Z0();
        Timeline timelineP = p();
        return !timelineP.p() && timelineP.m(v(), this.f17313a, 0L).f13973i;
    }

    @Override // androidx.media3.common.Player
    public final void T(int i2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.T(i2);
        } else {
            Log.g("The controller is not connected. Ignoring decreaseDeviceVolume().");
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean U() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() && mediaControllerImpl.U();
    }

    @Override // androidx.media3.common.Player
    public final boolean U0() {
        Z0();
        Timeline timelineP = p();
        return !timelineP.p() && timelineP.m(v(), this.f17313a, 0L).f13972h;
    }

    @Override // androidx.media3.common.Player
    public final void V(Player.Listener listener) {
        Z0();
        Preconditions.m(listener, "listener must not be null");
        this.f17315c.V(listener);
    }

    @Override // androidx.media3.common.Player
    public final boolean V0() {
        Z0();
        Timeline timelineP = p();
        return !timelineP.p() && timelineP.m(v(), this.f17313a, 0L).a();
    }

    @Override // androidx.media3.common.Player
    public final int W() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.W();
        }
        return -1;
    }

    public final void W0() {
        Preconditions.q(Looper.myLooper() == this.f17316e.getLooper());
        Preconditions.q(!this.g);
        this.g = true;
        MediaControllerHolder mediaControllerHolder = this.f17318h;
        mediaControllerHolder.d = true;
        MediaController mediaController = mediaControllerHolder.f17326c;
        if (mediaController != null) {
            mediaControllerHolder.set(mediaController);
        }
    }

    @Override // androidx.media3.common.Player
    public final void X(boolean z) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.X(z);
        } else {
            Log.g("The controller is not connected. Ignoring setDeviceMuted().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void Y(Player.Listener listener) {
        Preconditions.m(listener, "listener must not be null");
        this.f17315c.Y(listener);
    }

    public final void Y0(Runnable runnable) {
        Util.W(this.f17316e, runnable);
    }

    @Override // androidx.media3.common.Player
    public final int Z() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.Z();
        }
        return 0;
    }

    public final void Z0() {
        Preconditions.p("MediaController method is called from a wrong thread. See javadoc of MediaController for details.", Looper.myLooper() == this.f17316e.getLooper());
    }

    @Override // androidx.media3.common.Player
    public final PlaybackParameters a() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() ? mediaControllerImpl.a() : PlaybackParameters.d;
    }

    @Override // androidx.media3.common.Player
    public final Looper a0() {
        return this.f17316e.getLooper();
    }

    @Override // androidx.media3.common.Player
    public final void b0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.b0();
        } else {
            Log.g("The controller is not connected. Ignoring mute().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void c() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.c();
        } else {
            Log.g("The controller is not connected. Ignoring play().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void c0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.c0();
        } else {
            Log.g("The controller is not connected. Ignoring increaseDeviceVolume().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void d(PlaybackParameters playbackParameters) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.d(playbackParameters);
        } else {
            Log.g("The controller is not connected. Ignoring setPlaybackParameters().");
        }
    }

    @Override // androidx.media3.common.Player
    public final TrackSelectionParameters d0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return !mediaControllerImpl.isConnected() ? TrackSelectionParameters.J : mediaControllerImpl.d0();
    }

    @Override // androidx.media3.common.Player
    public final PlaybackException e() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.e();
        }
        return null;
    }

    @Override // androidx.media3.common.Player
    public final void e0(TextureView textureView) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.e0(textureView);
        } else {
            Log.g("The controller is not connected. Ignoring setVideoTextureView().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void f() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.f();
        } else {
            Log.g("The controller is not connected. Ignoring prepare().");
        }
    }

    @Override // androidx.media3.common.Player
    public final int f0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.f0();
        }
        return 0;
    }

    @Override // androidx.media3.common.Player
    public final void g(float f2) {
        Z0();
        Preconditions.h(f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 <= 1.0f, "volume must be between 0 and 1");
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.g(f2);
        } else {
            Log.g("The controller is not connected. Ignoring setVolume().");
        }
    }

    @Override // androidx.media3.common.Player
    public final long g0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.g0();
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.common.Player
    public final long getCurrentPosition() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.getCurrentPosition();
        }
        return 0L;
    }

    @Override // androidx.media3.common.Player
    public final long getDuration() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.getDuration();
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.common.Player
    public final int h() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.h();
        }
        return 1;
    }

    @Override // androidx.media3.common.Player
    public final void h0(int i2, long j2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.h0(i2, j2);
        } else {
            Log.g("The controller is not connected. Ignoring seekTo().");
        }
    }

    @Override // androidx.media3.common.Player
    public final int i() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.i();
        }
        return 0;
    }

    @Override // androidx.media3.common.Player
    public final Player.Commands i0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return !mediaControllerImpl.isConnected() ? Player.Commands.f13922b : mediaControllerImpl.i0();
    }

    @Override // androidx.media3.common.Player
    public final boolean isPlaying() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() && mediaControllerImpl.isPlaying();
    }

    @Override // androidx.media3.common.Player
    public final boolean j() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() && mediaControllerImpl.j();
    }

    @Override // androidx.media3.common.Player
    public final void j0(boolean z) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.j0(z);
        } else {
            Log.g("The controller is not connected. Ignoring setShuffleMode().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void k() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.k();
        } else {
            Log.g("The controller is not connected. Ignoring seekTo().");
        }
    }

    @Override // androidx.media3.common.Player
    public final long k0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.k0();
        }
        return 0L;
    }

    @Override // androidx.media3.common.Player
    public final void l() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.l();
        } else {
            Log.g("The controller is not connected. Ignoring seekToPrevious().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void l0(int i2, MediaItem mediaItem) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.l0(i2, mediaItem);
        } else {
            Log.g("The controller is not connected. Ignoring replaceMediaItem().");
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean m() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() && mediaControllerImpl.m();
    }

    @Override // androidx.media3.common.Player
    public final long m0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.m0();
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.common.Player
    public final Tracks n() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() ? mediaControllerImpl.n() : Tracks.f14010b;
    }

    @Override // androidx.media3.common.Player
    public final int n0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.n0();
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public final CueGroup o() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() ? mediaControllerImpl.o() : CueGroup.d;
    }

    @Override // androidx.media3.common.Player
    public final void o0(TextureView textureView) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.o0(textureView);
        } else {
            Log.g("The controller is not connected. Ignoring clearVideoTextureView().");
        }
    }

    @Override // androidx.media3.common.Player
    public final Timeline p() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() ? mediaControllerImpl.p() : Timeline.f13952a;
    }

    @Override // androidx.media3.common.Player
    public final void p0(AudioAttributes audioAttributes, boolean z) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.p0(audioAttributes, z);
        } else {
            Log.g("The controller is not connected. Ignoring setAudioAttributes().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void pause() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.pause();
        } else {
            Log.g("The controller is not connected. Ignoring pause().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void q() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.q();
        } else {
            Log.g("The controller is not connected. Ignoring seekToNext().");
        }
    }

    @Override // androidx.media3.common.Player
    public final float q0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.q0();
        }
        return 1.0f;
    }

    @Override // androidx.media3.common.Player
    public final boolean r() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() && mediaControllerImpl.r();
    }

    @Override // androidx.media3.common.Player
    public final AudioAttributes r0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return !mediaControllerImpl.isConnected() ? AudioAttributes.f13689i : mediaControllerImpl.r0();
    }

    @Override // androidx.media3.common.Player
    public final void release() {
        String str;
        Handler handler = this.f17316e;
        Z0();
        if (this.f17314b) {
            return;
        }
        StringBuilder sb = new StringBuilder("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [AndroidXMedia3/1.10.1] [");
        sb.append(Util.f14242a);
        sb.append("] [");
        HashSet hashSet = MediaLibraryInfo.f13877a;
        synchronized (MediaLibraryInfo.class) {
            str = MediaLibraryInfo.f13878b;
        }
        sb.append(str);
        sb.append("]");
        Log.f(sb.toString());
        this.f17314b = true;
        handler.removeCallbacksAndMessages(null);
        try {
            this.f17315c.release();
        } catch (Exception e2) {
            Log.c("Exception while releasing impl", e2);
        }
        if (this.g) {
            Preconditions.q(Looper.myLooper() == handler.getLooper());
            this.d.e();
        } else {
            this.g = true;
            MediaControllerHolder mediaControllerHolder = this.f17318h;
            mediaControllerHolder.getClass();
            mediaControllerHolder.setException(new SecurityException("Session rejected the connection request."));
        }
    }

    @Override // androidx.media3.common.Player
    public final VideoSize s() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() ? mediaControllerImpl.s() : VideoSize.d;
    }

    @Override // androidx.media3.common.Player
    public final DeviceInfo s0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return !mediaControllerImpl.isConnected() ? DeviceInfo.f13735e : mediaControllerImpl.s0();
    }

    @Override // androidx.media3.common.Player
    public final void seekTo(long j2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.seekTo(j2);
        } else {
            Log.g("The controller is not connected. Ignoring seekTo().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void stop() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.stop();
        } else {
            Log.g("The controller is not connected. Ignoring stop().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void t(float f2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.t(f2);
        } else {
            Log.g("The controller is not connected. Ignoring setPlaybackSpeed().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void t0(int i2, int i3) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.t0(i2, i3);
        } else {
            Log.g("The controller is not connected. Ignoring setDeviceVolume().");
        }
    }

    @Override // androidx.media3.common.Player
    public final long u() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.u();
        }
        return 0L;
    }

    @Override // androidx.media3.common.Player
    public final boolean u0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() && mediaControllerImpl.u0();
    }

    @Override // androidx.media3.common.Player
    public final int v() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.v();
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public final int v0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.v0();
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public final boolean w() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        return mediaControllerImpl.isConnected() && mediaControllerImpl.w();
    }

    @Override // androidx.media3.common.Player
    public final void w0(MediaItem mediaItem) {
        Z0();
        Preconditions.m(mediaItem, "mediaItems must not be null");
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.w0(mediaItem);
        } else {
            Log.g("The controller is not connected. Ignoring setMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final long x() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.x();
        }
        return 0L;
    }

    @Override // androidx.media3.common.Player
    public final void x0(List list, int i2, long j2) {
        Z0();
        Preconditions.m(list, "mediaItems must not be null");
        for (int i3 = 0; i3 < list.size(); i3++) {
            Preconditions.b(i3, "items must not contain null, index=%s", list.get(i3) != null);
        }
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.x0(list, i2, j2);
        } else {
            Log.g("The controller is not connected. Ignoring setMediaItems().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void y() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.y();
        } else {
            Log.g("The controller is not connected. Ignoring seekForward().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void y0(int i2) {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.y0(i2);
        } else {
            Log.g("The controller is not connected. Ignoring seekTo().");
        }
    }

    @Override // androidx.media3.common.Player
    public final void z() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            mediaControllerImpl.z();
        } else {
            Log.g("The controller is not connected. Ignoring seekBack().");
        }
    }

    @Override // androidx.media3.common.Player
    public final long z0() {
        Z0();
        MediaControllerImpl mediaControllerImpl = this.f17315c;
        if (mediaControllerImpl.isConnected()) {
            return mediaControllerImpl.z0();
        }
        return 0L;
    }
}
