package androidx.media3.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Rating;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaDescriptionCompat;
import androidx.media3.session.legacy.MediaSessionCompat;
import androidx.media3.session.legacy.MediaSessionManager;
import androidx.media3.session.legacy.PlaybackStateCompat;
import androidx.media3.session.legacy.RatingCompat;
import androidx.media3.session.legacy.VolumeProviderCompat;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.dc;
import defpackage.fc;
import defpackage.md;
import defpackage.pq0;
import defpackage.r81;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionLegacyStub extends MediaSessionCompat.Callback {
    public static final int z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConnectedControllersManager f17440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MediaSessionImpl f17441f;
    public final MediaSessionManager g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ControllerLegacyCbForBroadcast f17442h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ConnectionTimeoutHandler f17443i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f17444j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AndroidAutoConnectionStateObserver f17445k;
    public final MediaSessionCompat l;
    public final MediaButtonReceiver m;
    public final ComponentName n;
    public VolumeProviderCompat o;
    public final boolean p;
    public volatile long q;
    public FutureCallback r;
    public int s;
    public LegacyError t;
    public final Bundle u;
    public ImmutableList v;
    public ImmutableList w;
    public SessionCommands x;
    public Player.Commands y;

    /* JADX INFO: renamed from: androidx.media3.session.MediaSessionLegacyStub$1, reason: invalid class name */
    class AnonymousClass1 implements FutureCallback<MediaSession.MediaItemsWithStartPosition> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MediaSession.ControllerInfo f17446a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f17447b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f17448c;

        public AnonymousClass1(MediaSession.ControllerInfo controllerInfo, boolean z, boolean z2) {
            this.f17446a = controllerInfo;
            this.f17447b = z;
            this.f17448c = z2;
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onFailure(Throwable th) {
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            final MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition = (MediaSession.MediaItemsWithStartPosition) obj;
            MediaSessionImpl mediaSessionImpl = MediaSessionLegacyStub.this.f17441f;
            Handler handler = mediaSessionImpl.l;
            final boolean z = this.f17447b;
            final boolean z2 = this.f17448c;
            final MediaSession.ControllerInfo controllerInfo = this.f17446a;
            Util.W(handler, new g0(mediaSessionImpl, controllerInfo, new Runnable() { // from class: androidx.media3.session.n1
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSessionImpl mediaSessionImpl2 = MediaSessionLegacyStub.this.f17441f;
                    PlayerWrapper playerWrapper = mediaSessionImpl2.u;
                    MediaUtils.f(playerWrapper, mediaItemsWithStartPosition);
                    int iH = playerWrapper.h();
                    if (z) {
                        if (iH == 1) {
                            if (playerWrapper.R0(2)) {
                                playerWrapper.f();
                            }
                        } else if (iH == 4 && playerWrapper.R0(4)) {
                            playerWrapper.k();
                        }
                    }
                    boolean z3 = z2;
                    if (z3 && playerWrapper.R0(1)) {
                        playerWrapper.c();
                    }
                    Player.Commands.Builder builder = new Player.Commands.Builder();
                    builder.f13926a.b(31, 2);
                    builder.b(1, z3);
                    builder.c();
                    mediaSessionImpl2.s(controllerInfo);
                }
            }));
        }
    }

    /* JADX INFO: renamed from: androidx.media3.session.MediaSessionLegacyStub$2, reason: invalid class name */
    class AnonymousClass2 implements FutureCallback<List<MediaItem>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MediaSession.ControllerInfo f17449a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f17450b;

        public AnonymousClass2(MediaSession.ControllerInfo controllerInfo, int i2) {
            this.f17449a = controllerInfo;
            this.f17450b = i2;
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onFailure(Throwable th) {
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            List list = (List) obj;
            MediaSessionImpl mediaSessionImpl = MediaSessionLegacyStub.this.f17441f;
            Handler handler = mediaSessionImpl.l;
            int i2 = this.f17450b;
            MediaSession.ControllerInfo controllerInfo = this.f17449a;
            Util.W(handler, new g0(mediaSessionImpl, controllerInfo, new c1(i2, 1, this, list, controllerInfo)));
        }
    }

    public static final class Api31 {
        public static void a(MediaSessionCompat mediaSessionCompat, ComponentName componentName) {
            try {
                android.media.session.MediaSession mediaSessionB = mediaSessionCompat.b();
                mediaSessionB.getClass();
                mediaSessionB.setMediaButtonBroadcastReceiver(componentName);
            } catch (IllegalArgumentException e2) {
                if (!Build.MANUFACTURER.equals("motorola")) {
                    throw e2;
                }
                Log.e("caught IllegalArgumentException on a motorola device when attempting to set the media button broadcast receiver. See https://github.com/androidx/media/issues/1730 for details.", e2);
            }
        }
    }

    public static class ConnectionTimeoutHandler extends Handler {
        private static final int MSG_CONNECTION_TIMED_OUT = 1001;
        private final ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> connectedControllersManager;

        public ConnectionTimeoutHandler(Looper looper, ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> connectedControllersManager) {
            super(looper);
            this.connectedControllersManager = connectedControllersManager;
        }

        public void disconnectControllerAfterTimeout(MediaSession.ControllerInfo controllerInfo, long j2) {
            removeMessages(1001, controllerInfo);
            sendMessageDelayed(obtainMessage(1001, controllerInfo), j2);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) message.obj;
            if (this.connectedControllersManager.k(controllerInfo)) {
                MediaSession.ControllerCb controllerCb = controllerInfo.d;
                controllerCb.getClass();
                controllerCb.e();
                this.connectedControllersManager.o(controllerInfo);
            }
        }
    }

    public static final class ControllerLegacyCb implements MediaSession.ControllerCb {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSessionManager.RemoteUserInfo f17453a;

        public ControllerLegacyCb(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            this.f17453a = remoteUserInfo;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != ControllerLegacyCb.class) {
                return false;
            }
            return Objects.equals(this.f17453a, ((ControllerLegacyCb) obj).f17453a);
        }

        public final int hashCode() {
            return Objects.hash(this.f17453a);
        }
    }

    public final class ControllerLegacyCbForBroadcast implements MediaSession.ControllerCb {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Uri f17456c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public MediaMetadata f17454a = MediaMetadata.L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f17455b = "";
        public long d = -9223372036854775807L;

        public ControllerLegacyCbForBroadcast() {
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void b(int i2, SessionCommand sessionCommand) {
            Bundle bundle = Bundle.EMPTY;
            boolean zIsEmpty = bundle.isEmpty();
            Bundle bundle2 = sessionCommand.f17541c;
            if (zIsEmpty) {
                bundle = bundle2;
            } else if (!bundle2.isEmpty()) {
                Bundle bundle3 = new Bundle(bundle2);
                bundle3.putAll(bundle);
                bundle = bundle3;
            }
            MediaSessionLegacyStub.this.l.f(sessionCommand.f17540b, bundle);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void c(int i2, SessionPositionInfo sessionPositionInfo, boolean z, boolean z2, int i3) {
            r();
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void e() {
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void h(int i2, Player.Commands commands) {
            r();
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            PlayerWrapper playerWrapper = mediaSessionLegacyStub.f17441f.u;
            int i3 = playerWrapper.R0(20) ? 4 : 0;
            if (mediaSessionLegacyStub.s != i3) {
                mediaSessionLegacyStub.s = i3;
                mediaSessionLegacyStub.l.j(i3);
            }
            mediaSessionLegacyStub.K(playerWrapper);
        }

        public final void j() {
            int i2;
            VolumeProviderCompat volumeProviderCompat;
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            final PlayerWrapper playerWrapper = mediaSessionLegacyStub.f17441f.u;
            if (playerWrapper.s0().f13739a == 0) {
                volumeProviderCompat = null;
            } else {
                Player.Commands commandsI0 = playerWrapper.i0();
                if (commandsI0.f13924a.a(26, 34)) {
                    i2 = commandsI0.f13924a.a(25, 33) ? 2 : 1;
                } else {
                    i2 = 0;
                }
                final Handler handler = new Handler(playerWrapper.f13773a.a0());
                int iF0 = playerWrapper.R0(23) ? playerWrapper.f0() : 0;
                DeviceInfo deviceInfoS0 = playerWrapper.s0();
                volumeProviderCompat = new VolumeProviderCompat(i2, deviceInfoS0.f13741c, iF0, deviceInfoS0.d) { // from class: androidx.media3.session.MediaSessionLegacyStub.3
                    @Override // androidx.media3.session.legacy.VolumeProviderCompat
                    public final void b(int i3) {
                        Util.W(handler, new o1(playerWrapper, i3, 1));
                    }

                    @Override // androidx.media3.session.legacy.VolumeProviderCompat
                    public final void c(int i3) {
                        Util.W(handler, new o1(playerWrapper, i3, 0));
                    }
                };
            }
            mediaSessionLegacyStub.o = volumeProviderCompat;
            MediaSessionCompat mediaSessionCompat = mediaSessionLegacyStub.l;
            if (volumeProviderCompat == null) {
                mediaSessionCompat.n(playerWrapper.R0(21) ? playerWrapper.r0() : AudioAttributes.f13689i);
            } else {
                mediaSessionCompat.o(volumeProviderCompat);
            }
        }

        public final void k(MediaItem mediaItem) {
            r();
            s();
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            if (mediaItem == null) {
                mediaSessionLegacyStub.l.r(0);
            } else {
                mediaSessionLegacyStub.l.r(LegacyConversions.w(mediaItem.d.f13885i));
            }
            mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
        }

        public final void l() {
            r();
            s();
        }

        public final void m(int i2, PlayerWrapper playerWrapper) {
            q(playerWrapper.Z0());
            n(playerWrapper.R0(18) ? playerWrapper.C0() : MediaMetadata.L);
            playerWrapper.a1();
            l();
            p(playerWrapper.w());
            o(playerWrapper.i());
            playerWrapper.s0();
            j();
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.getClass();
            int i3 = playerWrapper.R0(20) ? 4 : 0;
            if (mediaSessionLegacyStub.s != i3) {
                mediaSessionLegacyStub.s = i3;
                mediaSessionLegacyStub.l.j(i3);
            }
            k(playerWrapper.Y0());
        }

        public final void n(MediaMetadata mediaMetadata) {
            r();
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            CharSequence charSequenceK = mediaSessionLegacyStub.l.f17800b.k();
            CharSequence charSequence = mediaMetadata.f13879a;
            if (TextUtils.equals(charSequenceK, charSequence)) {
                return;
            }
            MediaSessionCompat mediaSessionCompat = mediaSessionLegacyStub.l;
            PlayerWrapper playerWrapper = mediaSessionLegacyStub.f17441f.u;
            if (!mediaSessionLegacyStub.y.a(17) || !playerWrapper.i0().a(17)) {
                charSequence = null;
            }
            mediaSessionCompat.q(charSequence);
        }

        public final void o(int i2) {
            MediaSessionLegacyStub.this.l.s(LegacyConversions.p(i2));
        }

        public final void p(boolean z) {
            MediaSessionCompat mediaSessionCompat = MediaSessionLegacyStub.this.l;
            ImmutableSet immutableSet = LegacyConversions.f17303a;
            mediaSessionCompat.u(z ? 1 : 0);
        }

        public final void q(Timeline timeline) {
            r();
            t(timeline);
            s();
        }

        public final void r() {
            int i2 = MediaSessionLegacyStub.z;
            MediaSessionLegacyStub.this.getClass();
        }

        public final void s() {
            final long j2;
            final Uri uri;
            final MediaMetadata mediaMetadata;
            Uri uri2;
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            MediaSessionImpl mediaSessionImpl = mediaSessionLegacyStub.f17441f;
            MediaSessionImpl mediaSessionImpl2 = mediaSessionLegacyStub.f17441f;
            PlayerWrapper playerWrapper = mediaSessionImpl.u;
            MediaItem mediaItemY0 = playerWrapper.Y0();
            MediaMetadata mediaMetadataA1 = playerWrapper.a1();
            long duration = -9223372036854775807L;
            if ((!playerWrapper.R0(16) || !playerWrapper.V0()) && playerWrapper.R0(16)) {
                duration = playerWrapper.getDuration();
            }
            final String str = mediaItemY0 != null ? mediaItemY0.f13787a : "";
            Bitmap bitmap = null;
            Uri uri3 = (mediaItemY0 == null || (uri2 = mediaItemY0.f13791f.f13857a) == null) ? null : uri2;
            if (Objects.equals(this.f17454a, mediaMetadataA1) && Objects.equals(this.f17455b, str) && Objects.equals(this.f17456c, uri3) && this.d == duration) {
                return;
            }
            this.f17455b = str;
            this.f17456c = uri3;
            this.f17454a = mediaMetadataA1;
            this.d = duration;
            ListenableFuture listenableFutureA = mediaSessionImpl2.m.a(mediaMetadataA1);
            if (listenableFutureA != null) {
                mediaSessionLegacyStub.r = null;
                if (listenableFutureA.isDone()) {
                    try {
                        bitmap = (Bitmap) Futures.d(listenableFutureA);
                    } catch (CancellationException | ExecutionException e2) {
                        Log.g("Failed to load bitmap: " + e2.getMessage());
                    }
                    j2 = duration;
                    uri = uri3;
                    mediaMetadata = mediaMetadataA1;
                } else {
                    j2 = duration;
                    uri = uri3;
                    mediaMetadata = mediaMetadataA1;
                    FutureCallback<Bitmap> futureCallback = new FutureCallback<Bitmap>() { // from class: androidx.media3.session.MediaSessionLegacyStub.ControllerLegacyCbForBroadcast.1
                        @Override // com.google.common.util.concurrent.FutureCallback
                        public final void onFailure(Throwable th) {
                            if (this != MediaSessionLegacyStub.this.r) {
                                return;
                            }
                            Log.g("Failed to load bitmap: " + th.getMessage());
                        }

                        @Override // com.google.common.util.concurrent.FutureCallback
                        public final void onSuccess(Object obj) {
                            Bitmap bitmap2 = (Bitmap) obj;
                            MediaSessionLegacyStub mediaSessionLegacyStub2 = MediaSessionLegacyStub.this;
                            if (this != mediaSessionLegacyStub2.r) {
                                return;
                            }
                            mediaSessionLegacyStub2.l.l(LegacyConversions.n(mediaMetadata, str, uri, j2, bitmap2));
                            MediaSessionImpl mediaSessionImpl3 = mediaSessionLegacyStub2.f17441f;
                            Util.W(mediaSessionImpl3.o, new d1(mediaSessionImpl3, 1));
                        }
                    };
                    str = str;
                    mediaSessionLegacyStub.r = futureCallback;
                    Handler handler = mediaSessionImpl2.l;
                    Objects.requireNonNull(handler);
                    Futures.a(listenableFutureA, futureCallback, new dc(handler, 1));
                }
            } else {
                j2 = duration;
                uri = uri3;
                mediaMetadata = mediaMetadataA1;
            }
            mediaSessionLegacyStub.l.l(LegacyConversions.n(mediaMetadata, str, uri, j2, bitmap));
        }

        public final void t(Timeline timeline) {
            int i2 = MediaSessionLegacyStub.z;
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            MediaSessionImpl mediaSessionImpl = mediaSessionLegacyStub.f17441f;
            MediaSessionImpl mediaSessionImpl2 = mediaSessionLegacyStub.f17441f;
            PlayerWrapper playerWrapper = mediaSessionImpl.u;
            if (!mediaSessionLegacyStub.y.a(17) || !playerWrapper.i0().a(17) || timeline.p()) {
                mediaSessionLegacyStub.l.p(null);
                return;
            }
            ImmutableSet immutableSet = LegacyConversions.f17303a;
            ArrayList arrayList = new ArrayList();
            Timeline.Window window = new Timeline.Window();
            for (int i3 = 0; i3 < timeline.o(); i3++) {
                arrayList.add(timeline.m(i3, window, 0L).f13969c);
            }
            ArrayList arrayList2 = new ArrayList();
            e eVar = new e(this, new AtomicInteger(0), arrayList, arrayList2, 7);
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                byte[] bArr = ((MediaItem) arrayList.get(i4)).d.f13887k;
                if (bArr == null) {
                    arrayList2.add(null);
                    eVar.run();
                } else {
                    ListenableFuture listenableFutureC = mediaSessionImpl2.m.c(bArr);
                    arrayList2.add(listenableFutureC);
                    Handler handler = mediaSessionImpl2.l;
                    Objects.requireNonNull(handler);
                    listenableFutureC.addListener(eVar, new dc(handler, 1));
                }
            }
        }
    }

    public static final class LegacyError {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f17462a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17463b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f17464c;
        public final Bundle d;

        public LegacyError(boolean z, int i2, String str, Bundle bundle) {
            this.f17462a = z;
            this.f17463b = i2;
            this.f17464c = str;
            this.d = bundle == null ? Bundle.EMPTY : bundle;
        }
    }

    public final class MediaButtonReceiver extends BroadcastReceiver {
        public MediaButtonReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            KeyEvent keyEvent;
            if (Objects.equals(intent.getAction(), "android.intent.action.MEDIA_BUTTON") && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null) {
                MediaSessionLegacyStub.this.l.f17800b.c(keyEvent);
            }
        }
    }

    public interface SessionTask {
        void b(MediaSession.ControllerInfo controllerInfo);
    }

    static {
        z = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0056  */
    public MediaSessionLegacyStub(MediaSessionImpl mediaSessionImpl, Uri uri, Handler handler, Bundle bundle, boolean z2, ImmutableList<CommandButton> immutableList, ImmutableList<CommandButton> immutableList2, SessionCommands sessionCommands, Player.Commands commands, Bundle bundle2) {
        boolean z3;
        ComponentName componentName;
        ComponentName componentNameF;
        boolean z4;
        PendingIntent foregroundService;
        this.f17441f = mediaSessionImpl;
        this.p = z2;
        this.v = immutableList;
        this.w = immutableList2;
        this.x = sessionCommands;
        this.y = commands;
        this.u = new Bundle(bundle2);
        Context context = mediaSessionImpl.f17430f;
        this.g = MediaSessionManager.a(context);
        this.f17442h = new ControllerLegacyCbForBroadcast();
        ConnectedControllersManager connectedControllersManager = new ConnectedControllersManager(mediaSessionImpl);
        this.f17440e = connectedControllersManager;
        this.q = 300000L;
        this.f17443i = new ConnectionTimeoutHandler(mediaSessionImpl.l.getLooper(), connectedControllersManager);
        int i2 = Build.VERSION.SDK_INT;
        int i3 = 1;
        if (i2 < 33) {
            z3 = false;
        } else {
            String str = Util.f14242a;
            if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                z3 = false;
            } else {
                String str2 = Build.MANUFACTURER;
                if (str2.equals("Google") || str2.equals("motorola") || str2.equals(Payload.SOURCE_VIVO) || str2.equals("Sony") || str2.equals("Nothing") || str2.equals("unknown")) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
        }
        this.f17444j = z3;
        if (!immutableList2.isEmpty()) {
            I();
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = listQueryBroadcastReceivers.get(0).activityInfo;
            componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
        } else {
            if (!listQueryBroadcastReceivers.isEmpty()) {
                r81.c(listQueryBroadcastReceivers.size(), "Expected 1 broadcast receiver that handles android.intent.action.MEDIA_BUTTON, found ");
                throw null;
            }
            componentName = null;
        }
        this.n = componentName;
        if (componentName == null || i2 < 31) {
            componentNameF = F(context, "androidx.media3.session.MediaLibraryService");
            componentNameF = componentNameF == null ? F(context, "androidx.media3.session.MediaSessionService") : componentNameF;
            z4 = (componentNameF == null || componentNameF.equals(componentName)) ? false : true;
        } else {
            z4 = false;
            componentNameF = componentName;
        }
        Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON", uri);
        if (componentNameF == null) {
            MediaButtonReceiver mediaButtonReceiver = new MediaButtonReceiver();
            this.m = mediaButtonReceiver;
            IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_BUTTON");
            String scheme = uri.getScheme();
            String str3 = Util.f14242a;
            intentFilter.addDataScheme(scheme);
            if (i2 < 33) {
                context.registerReceiver(mediaButtonReceiver, intentFilter);
            } else {
                context.registerReceiver(mediaButtonReceiver, intentFilter, 4);
            }
            intent2.setPackage(context.getPackageName());
            foregroundService = PendingIntent.getBroadcast(context, 0, intent2, z);
            componentNameF = new ComponentName(context, context.getClass());
        } else {
            intent2.setComponent(componentNameF);
            foregroundService = z4 ? PendingIntent.getForegroundService(context, 0, intent2, z) : PendingIntent.getBroadcast(context, 0, intent2, z);
            this.m = null;
        }
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, TextUtils.join(FileUtils.HIDDEN_PREFIX, new String[]{"androidx.media3.session.id", mediaSessionImpl.f17432i}), i2 >= 31 ? null : componentNameF, i2 < 31 ? foregroundService : null, bundle);
        this.l = mediaSessionCompat;
        if (i2 >= 31 && componentName != null) {
            Api31.a(mediaSessionCompat, componentName);
        }
        PendingIntent pendingIntent = mediaSessionImpl.v;
        if (pendingIntent != null) {
            mediaSessionCompat.t(pendingIntent);
        }
        mediaSessionCompat.h(this, handler);
        this.f17445k = z3 ? new AndroidAutoConnectionStateObserver(context, new m1(this, i3)) : null;
    }

    public static MediaItem B(Uri uri, String str, Bundle bundle, String str2) {
        MediaItem.Builder builder = new MediaItem.Builder();
        if (str == null) {
            str = "";
        }
        builder.f13795a = str;
        MediaItem.RequestMetadata.Builder builder2 = new MediaItem.RequestMetadata.Builder();
        builder2.f13860a = uri;
        builder2.f13861b = str2;
        builder2.f13862c = bundle;
        builder.n = new MediaItem.RequestMetadata(builder2);
        return builder.a();
    }

    public static ComponentName F(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            return null;
        }
        ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void A() {
        D(3, new h1(this, 9), this.l.a(), true);
    }

    /* JADX WARN: Code duplicated, block: B:152:0x025f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0095  */
    /* JADX WARN: Code duplicated, block: B:87:0x0144  */
    /* JADX WARN: Multi-variable type inference failed */
    public final PlaybackStateCompat C(PlayerWrapper playerWrapper) {
        long j2;
        Player.Commands commands;
        long j3;
        LegacyError legacyError = this.t;
        int i2 = 7;
        Bundle bundle = this.u;
        if (legacyError != null) {
            Bundle bundle2 = legacyError.d;
            if (legacyError.f17462a) {
                Bundle bundle3 = new Bundle(bundle2);
                bundle3.putAll(bundle);
                PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                builder.f17839b = 7;
                builder.f17840c = -1L;
                builder.f17844i = jElapsedRealtime;
                builder.f17841e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                builder.f17842f = 0L;
                builder.d = 0L;
                builder.f17846k = bundle3;
                int i3 = legacyError.f17463b;
                String str = legacyError.f17464c;
                str.getClass();
                builder.g = i3;
                builder.f17843h = str;
                builder.f17846k = bundle2;
                return builder.a();
            }
        }
        PlaybackException playbackExceptionE = playerWrapper.e();
        boolean z2 = playerWrapper.R0(16) && !playerWrapper.V0();
        boolean z3 = playbackExceptionE != null || Util.b0(playerWrapper, this.p);
        if (playbackExceptionE == null) {
            ImmutableSet immutableSet = LegacyConversions.f17303a;
            if (playerWrapper.e() == null) {
                int iH = playerWrapper.h();
                if (iH == 1) {
                    i2 = 0;
                } else if (iH != 2) {
                    if (iH != 3) {
                        if (iH != 4) {
                            md.n(pq0.k(iH, "Unrecognized State: "));
                            return null;
                        }
                        i2 = 1;
                    } else if (z3) {
                        i2 = 2;
                    } else {
                        i2 = 3;
                    }
                } else if (z3) {
                    i2 = 2;
                } else {
                    i2 = 6;
                }
            }
        }
        Player.Commands commandsD = MediaUtils.d(this.y, playerWrapper.i0());
        long j4 = 128;
        for (int i4 = 0; i4 < commandsD.f13924a.f13752a.size(); i4++) {
            int iB = commandsD.f13924a.b(i4);
            if (iB == 1) {
                j3 = z3 ? 516L : 514L;
            } else if (iB == 2) {
                j3 = 16384;
            } else if (iB == 3) {
                j3 = 1;
            } else if (iB != 31) {
                switch (iB) {
                    case 5:
                        j3 = 256;
                        break;
                    case 6:
                    case 7:
                        j3 = 16;
                        break;
                    case 8:
                    case 9:
                        j3 = 32;
                        break;
                    case 10:
                        j3 = 4096;
                        break;
                    case 11:
                        j3 = 8;
                        break;
                    case 12:
                        j3 = 64;
                        break;
                    case 13:
                        j3 = 4194304;
                        break;
                    case 14:
                        j3 = 2621440;
                        break;
                    case 15:
                        j3 = 262144;
                        break;
                    default:
                        j3 = 0;
                        break;
                }
            } else {
                j3 = 240640;
            }
            j4 |= j3;
        }
        if (!this.w.isEmpty() && CommandButton.c(2, this.v)) {
            j4 &= -17;
        }
        if (!this.w.isEmpty() && CommandButton.c(3, this.v)) {
            j4 &= -33;
        }
        if (!z2) {
            j4 &= -257;
        }
        long j5 = j4;
        if (playerWrapper.R0(17)) {
            int iV = playerWrapper.v();
            ImmutableSet immutableSet2 = LegacyConversions.f17303a;
            if (iV == -1) {
                j2 = -1;
            } else {
                j2 = iV;
            }
        } else {
            j2 = -1;
        }
        float f2 = playerWrapper.a().f13919a;
        float f3 = (playerWrapper.isPlaying() && z2) ? f2 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Bundle bundle4 = playbackExceptionE != null ? new Bundle(playbackExceptionE.d) : new Bundle();
        if (playbackExceptionE == null && legacyError != null) {
            bundle4.putAll(legacyError.d);
        }
        bundle4.putAll(bundle);
        bundle4.putFloat("EXO_SPEED", f2);
        MediaItem mediaItemY0 = playerWrapper.Y0();
        if (mediaItemY0 != null) {
            String str2 = mediaItemY0.f13787a;
            if (!"".equals(str2)) {
                bundle4.putString("androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID", str2);
            }
        }
        long currentPosition = z2 ? playerWrapper.getCurrentPosition() : -1L;
        long jB0 = z2 ? playerWrapper.B0() : -1L;
        PlaybackStateCompat.Builder builder2 = new PlaybackStateCompat.Builder();
        Player.Commands commands2 = commandsD;
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        builder2.f17839b = i2;
        builder2.f17840c = currentPosition;
        builder2.f17844i = jElapsedRealtime2;
        builder2.f17841e = f3;
        builder2.f17842f = j5;
        builder2.f17845j = j2;
        builder2.d = jB0;
        builder2.f17846k = bundle4;
        int i5 = 0;
        while (i5 < this.v.size()) {
            CommandButton commandButton = (CommandButton) this.v.get(i5);
            SessionCommand sessionCommand = commandButton.f17238a;
            Uri uri = commandButton.f17241e;
            int i6 = commandButton.f17240c;
            Bundle bundle5 = commandButton.g;
            if (sessionCommand != null) {
                Bundle bundle6 = sessionCommand.f17541c;
                String str3 = sessionCommand.f17540b;
                if (commandButton.f17244i && sessionCommand.f17539a == 0) {
                    SessionCommands sessionCommands = this.x;
                    if (sessionCommand == null || !sessionCommands.f17544a.contains(sessionCommand)) {
                        int i7 = commandButton.f17239b;
                        commands = commands2;
                        if ((i7 == -1 || !commands.a(i7)) && !CommandButton.n(str3)) {
                        }
                    } else {
                        commands = commands2;
                    }
                    boolean z4 = i6 != 0;
                    boolean z5 = uri != null;
                    if (z4 || z5 || !bundle5.isEmpty()) {
                        bundle6 = new Bundle(bundle6);
                    }
                    if (!bundle5.isEmpty()) {
                        bundle6.putAll(bundle5);
                    }
                    if (z4) {
                        bundle6.putInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", i6);
                    }
                    if (z5) {
                        uri.getClass();
                        bundle6.putString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT", uri.toString());
                    }
                    PlaybackStateCompat.CustomAction.Builder builder3 = new PlaybackStateCompat.CustomAction.Builder(str3, commandButton.f17242f, commandButton.d);
                    builder2.f17838a.add(new PlaybackStateCompat.CustomAction(builder3.f17851a, builder3.f17852b, builder3.f17853c, bundle6));
                } else {
                    commands = commands2;
                }
            } else {
                commands = commands2;
            }
            i5++;
            commands2 = commands;
        }
        if (playbackExceptionE != null) {
            ImmutableSet immutableSet3 = LegacyConversions.f17303a;
            int iG = LegacyConversions.g(playbackExceptionE.f13915b);
            String message = playbackExceptionE.getMessage();
            builder2.g = iG;
            builder2.f17843h = message;
        } else if (legacyError != 0) {
            int i8 = legacyError.f17463b;
            String str4 = legacyError.f17464c;
            builder2.g = i8;
            builder2.f17843h = str4;
        }
        return builder2.a();
    }

    public final void D(final int i2, final SessionTask sessionTask, final MediaSessionManager.RemoteUserInfo remoteUserInfo, final boolean z2) {
        MediaSessionImpl mediaSessionImpl = this.f17441f;
        if (mediaSessionImpl.k()) {
            return;
        }
        if (remoteUserInfo != null) {
            Util.W(mediaSessionImpl.l, new Runnable() { // from class: androidx.media3.session.l1
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSessionLegacyStub.SessionTask sessionTask2 = sessionTask;
                    MediaSessionLegacyStub mediaSessionLegacyStub = this.f17698b;
                    MediaSessionImpl mediaSessionImpl2 = mediaSessionLegacyStub.f17441f;
                    if (mediaSessionImpl2.k()) {
                        return;
                    }
                    boolean zD = mediaSessionLegacyStub.l.d();
                    int i3 = i2;
                    MediaSessionManager.RemoteUserInfo remoteUserInfo2 = remoteUserInfo;
                    if (!zD) {
                        StringBuilder sbQ = fc.q(i3, "Ignore incoming player command before initialization. command=", ", pid=");
                        sbQ.append(remoteUserInfo2.b());
                        Log.g(sbQ.toString());
                        return;
                    }
                    MediaSession.ControllerInfo controllerInfoH = mediaSessionLegacyStub.H(remoteUserInfo2);
                    if (!mediaSessionLegacyStub.f17440e.l(controllerInfoH, i3)) {
                        if (i3 != 1 || mediaSessionImpl2.u.r()) {
                            return;
                        }
                        Log.g("Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground.");
                        return;
                    }
                    if (mediaSessionImpl2.f17429e.d(mediaSessionImpl2.f17434k, mediaSessionImpl2.v(controllerInfoH), i3) != 0) {
                        return;
                    }
                    SessionResult sessionResult = MediaSessionImpl.F;
                    try {
                        sessionTask2.b(controllerInfoH);
                    } catch (RemoteException e2) {
                        Log.h("Exception in " + controllerInfoH, e2);
                    }
                    if (z2) {
                        Player.Commands.Builder builder = new Player.Commands.Builder();
                        builder.f13926a.a(i3);
                        builder.c();
                        mediaSessionImpl2.s(controllerInfoH);
                    }
                }
            });
            return;
        }
        Log.b("RemoteUserInfo is null, ignoring command=" + i2);
    }

    public final void E(SessionCommand sessionCommand, int i2, SessionTask sessionTask, MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        Util.W(this.f17441f.l, new l0(this, sessionCommand, i2, remoteUserInfo, sessionTask));
    }

    public final void G(MediaItem mediaItem, boolean z2, boolean z3) {
        D(31, new g1(this, mediaItem, z2, z3), this.l.a(), false);
    }

    public final MediaSession.ControllerInfo H(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        MediaSession.ControllerInfo controllerInfoG = this.f17440e.g(remoteUserInfo);
        if (controllerInfoG == null) {
            MediaSession.ControllerInfo controllerInfo = new MediaSession.ControllerInfo(remoteUserInfo, 0, 0, this.g.b(remoteUserInfo), new ControllerLegacyCb(remoteUserInfo), Bundle.EMPTY);
            MediaSession.ConnectionResult connectionResultN = this.f17441f.n(controllerInfo);
            this.f17440e.a(remoteUserInfo, controllerInfo, connectionResultN.f17413a, connectionResultN.f17414b);
            MediaSessionImpl mediaSessionImpl = this.f17441f;
            if (!mediaSessionImpl.B || !MediaSessionImpl.l(controllerInfo)) {
                mediaSessionImpl.f17429e.getClass();
            }
            controllerInfoG = controllerInfo;
        }
        this.f17443i.disconnectControllerAfterTimeout(controllerInfoG, this.q);
        return controllerInfoG;
    }

    public final void I() {
        AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver;
        this.v = CommandButton.j(CommandButton.g(this.w, this.x, this.y), true, true, 9);
        boolean z2 = this.f17444j;
        Bundle bundle = this.u;
        if (z2 && ((androidAutoConnectionStateObserver = this.f17445k) == null || !androidAutoConnectionStateObserver.f17228e.get())) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", (this.v.isEmpty() || CommandButton.c(2, this.v)) ? false : true);
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", false);
        } else {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", !CommandButton.c(2, this.v));
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", !CommandButton.c(3, this.v));
        }
    }

    public final void J() {
        Bundle bundle = this.u;
        boolean z2 = bundle.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", false);
        boolean z3 = bundle.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", false);
        I();
        if (bundle.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", false) == z2 && bundle.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", false) == z3) {
            return;
        }
        this.l.i(bundle);
    }

    public final void K(PlayerWrapper playerWrapper) {
        Util.W(this.f17441f.l, new k1(this, playerWrapper, 0));
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void a(MediaDescriptionCompat mediaDescriptionCompat) {
        if (mediaDescriptionCompat != null) {
            D(20, new n(this, mediaDescriptionCompat, -1, 3), this.l.a(), false);
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void b(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
        if (mediaDescriptionCompat != null) {
            if (i2 == -1 || i2 >= 0) {
                D(20, new n(this, mediaDescriptionCompat, i2, 3), this.l.a(), false);
            }
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void c(String str, Bundle bundle, ResultReceiver resultReceiver) {
        if (str.equals("androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST")) {
            return;
        }
        if (str.equals("androidx.media3.session.SESSION_COMMAND_REQUEST_SESSION3_TOKEN") && resultReceiver != null) {
            resultReceiver.send(0, this.f17441f.f17433j.b());
        } else {
            SessionCommand sessionCommand = new SessionCommand(str, Bundle.EMPTY);
            E(sessionCommand, 0, new i0(this, sessionCommand, bundle, resultReceiver), this.l.a());
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void d(String str, Bundle bundle) {
        boolean zBooleanValue;
        if (str.equals("androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST")) {
            return;
        }
        if (bundle == null) {
            bundle = Bundle.EMPTY;
        }
        SessionCommand sessionCommand = new SessionCommand(str, bundle);
        String str2 = sessionCommand.f17540b;
        boolean zN = CommandButton.n(str2);
        MediaSessionCompat mediaSessionCompat = this.l;
        if (!zN) {
            E(sessionCommand, 0, new h1(this, sessionCommand, bundle), mediaSessionCompat.a());
            return;
        }
        try {
            CommandButton commandButtonD = CommandButton.d(sessionCommand);
            int i2 = commandButtonD.f17239b;
            Object obj = commandButtonD.f17245j;
            if (!commandButtonD.b()) {
                Log.g("Can't execute predefined custom command: ".concat(str2));
                return;
            }
            SessionCommand sessionCommand2 = commandButtonD.f17238a;
            if (sessionCommand2 != null) {
                Preconditions.q(sessionCommand2.f17539a == 40010);
                obj.getClass();
                E(null, 40010, new h1(this, (Rating) obj), mediaSessionCompat.a());
                return;
            }
            PlayerWrapper playerWrapper = this.f17441f.u;
            if (i2 != 1) {
                zBooleanValue = false;
            } else if (obj != null) {
                zBooleanValue = ((Boolean) obj).booleanValue();
            } else if (playerWrapper.r()) {
                zBooleanValue = false;
            } else {
                zBooleanValue = true;
            }
            if (zBooleanValue) {
                D(1, new h1(this, 7), mediaSessionCompat.a(), false);
            } else if (i2 != 31) {
                D(i2, new s(this, commandButtonD, 8), mediaSessionCompat.a(), true);
            } else {
                obj.getClass();
                G((MediaItem) obj, false, false);
            }
        } catch (RuntimeException e2) {
            Log.h("Failed to convert predefined custom command: ".concat(str2), e2);
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void e() {
        D(12, new h1(this, 0), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final boolean f(Intent intent) {
        return this.f17441f.q(new MediaSession.ControllerInfo(this.l.a(), 0, 0, false, null, Bundle.EMPTY), intent);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void g() {
        D(1, new h1(this, 12), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void h() {
        D(1, new h1(this, 7), this.l.a(), false);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void i(String str, Bundle bundle) {
        G(B(null, str, bundle, null), true, true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void j(String str, Bundle bundle) {
        G(B(null, null, bundle, str), true, true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void k(Uri uri, Bundle bundle) {
        G(B(uri, null, bundle, null), true, true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void l() {
        D(2, new h1(this, 8), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void m(String str, Bundle bundle) {
        G(B(null, str, bundle, null), true, false);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void n(String str, Bundle bundle) {
        G(B(null, null, bundle, str), true, false);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void o(Uri uri, Bundle bundle) {
        G(B(uri, null, bundle, null), true, false);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void p(MediaDescriptionCompat mediaDescriptionCompat) {
        if (mediaDescriptionCompat == null) {
            return;
        }
        D(20, new s(this, mediaDescriptionCompat, 7), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void q() {
        D(11, new h1(this, 6), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void r(long j2) {
        D(5, new i1(this, j2, 1), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void s(float f2) {
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        D(13, new z(this, f2, 3), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void t(RatingCompat ratingCompat) {
        u(ratingCompat);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void u(RatingCompat ratingCompat) {
        Rating ratingQ = LegacyConversions.q(ratingCompat);
        if (ratingQ != null) {
            E(null, 40010, new h1(this, ratingQ), this.l.a());
            return;
        }
        Log.g("Ignoring invalid RatingCompat " + ratingCompat);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void v(int i2) {
        D(15, new j1(this, i2, 0), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void w(int i2) {
        D(14, new j1(this, i2, 1), this.l.a(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void x() {
        boolean zR0 = this.f17441f.u.R0(9);
        MediaSessionCompat mediaSessionCompat = this.l;
        if (zR0) {
            D(9, new h1(this, 10), mediaSessionCompat.a(), true);
        } else {
            D(8, new h1(this, 11), mediaSessionCompat.a(), true);
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void y() {
        boolean zR0 = this.f17441f.u.R0(7);
        MediaSessionCompat mediaSessionCompat = this.l;
        if (zR0) {
            D(7, new h1(this, 4), mediaSessionCompat.a(), true);
        } else {
            D(6, new h1(this, 5), mediaSessionCompat.a(), true);
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public final void z(long j2) {
        if (j2 < 0) {
            return;
        }
        D(10, new i1(this, j2, 0), this.l.a(), true);
    }
}
