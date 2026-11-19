package androidx.media3.session;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Pair;
import androidx.collection.ArrayMap;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.app.NotificationCompat$Builder;
import androidx.lifecycle.LifecycleService;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaSessionCompat;
import androidx.media3.session.legacy.MediaSessionManager;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.MoreExecutors;
import com.vuitton.android.R;
import defpackage.et;
import defpackage.mw;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaSessionService extends LifecycleService {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f17466j = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaSessionServiceStub f17468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MediaNotificationManager f17469f;
    public DefaultActionFactory g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17471i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f17467c = new Object();
    public final Handler d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayMap f17470h = new ArrayMap();

    public interface Listener {
    }

    public final class MediaSessionListener implements MediaSession.Listener {
        public MediaSessionListener() {
        }
    }

    public static final class MediaSessionServiceStub extends IMediaSessionService.Stub {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference f17473a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Handler f17474b;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Set f17475j = Collections.synchronizedSet(new HashSet());

        public MediaSessionServiceStub(MediaSessionService mediaSessionService) {
            this.f17473a = new WeakReference(mediaSessionService);
            this.f17474b = new Handler(mediaSessionService.getApplicationContext().getMainLooper());
        }

        @Override // androidx.media3.session.IMediaSessionService
        public final void e1(IMediaController iMediaController, Bundle bundle) {
            if (iMediaController == null || bundle == null) {
                SessionUtil.b(iMediaController);
                return;
            }
            try {
                ConnectionRequest connectionRequestA = ConnectionRequest.a(bundle);
                String str = connectionRequestA.f17268c;
                MediaSessionService mediaSessionService = (MediaSessionService) this.f17473a.get();
                if (mediaSessionService == null) {
                    SessionUtil.b(iMediaController);
                    return;
                }
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                if (callingPid == 0) {
                    callingPid = connectionRequestA.d;
                }
                if (SessionUtil.a(mediaSessionService, callingUid, str) == 0) {
                    MediaSessionManager.RemoteUserInfo remoteUserInfo = new MediaSessionManager.RemoteUserInfo(str, callingPid, callingUid);
                    boolean zB = MediaSessionManager.a(mediaSessionService.getApplicationContext()).b(remoteUserInfo);
                    this.f17475j.add(iMediaController);
                    try {
                        this.f17474b.post(new b1(this, iMediaController, remoteUserInfo, connectionRequestA, zB));
                        return;
                    } finally {
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                    }
                }
                Log.g("Ignoring connection from invalid package name " + str + " (uid=" + callingUid + ")");
                SessionUtil.b(iMediaController);
            } catch (RuntimeException e2) {
                Log.h("Ignoring malformed Bundle for ConnectionRequest", e2);
                SessionUtil.b(iMediaController);
            }
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ShowNotificationForIdlePlayerMode {
    }

    public static void a(MediaSessionService mediaSessionService, RuntimeException runtimeException) {
        mediaSessionService.getClass();
        if (Build.VERSION.SDK_INT < 31 || !(runtimeException instanceof ForegroundServiceStartNotAllowedException)) {
            Log.e("Calling updateNotification() failed with a runtime exception", runtimeException);
        } else {
            Log.e("Failed to start service into the foreground", runtimeException);
            mediaSessionService.d.post(new et(mediaSessionService, 26));
        }
    }

    public static MediaSession.ControllerInfo c(Intent intent) {
        ComponentName component = intent.getComponent();
        String packageName = component != null ? component.getPackageName() : "androidx.media3.session.MediaSessionService";
        Bundle bundle = new Bundle();
        bundle.putString("androidx.media3.session.hint.controller_info_type", "android.intent.action.MEDIA_BUTTON");
        Bundle extras = intent.getExtras();
        if (extras != null) {
            bundle.putBundle("androidx.media3.session.hint.intent_extras", extras);
        }
        Uri data = intent.getData();
        if (data != null) {
            SessionResult sessionResult = MediaSessionImpl.F;
            List<String> pathSegments = data.getPathSegments();
            bundle.putString("androidx.media3.session.hint.session_id", (Objects.equals(data.getScheme(), "androidx") && Objects.equals(data.getAuthority(), "media3.session") && !pathSegments.isEmpty()) ? pathSegments.get(0) : "");
        }
        return new MediaSession.ControllerInfo(new MediaSessionManager.RemoteUserInfo(packageName, -1, -1), 1010001300, 9, false, null, bundle);
    }

    public final void b(MediaSession mediaSession) {
        MediaSession mediaSession2;
        int i2;
        boolean z = true;
        Preconditions.h(!mediaSession.f17401a.k(), "session is already released");
        synchronized (this.f17467c) {
            mediaSession2 = (MediaSession) this.f17470h.get(mediaSession.f17401a.f17432i);
            i2 = 0;
            if (mediaSession2 != null && mediaSession2 != mediaSession) {
                z = false;
            }
            Preconditions.h(z, "Session ID should be unique");
            this.f17470h.put(mediaSession.f17401a.f17432i, mediaSession);
        }
        if (mediaSession2 == null) {
            Util.W(this.d, new p1(this, mediaSession, i2));
        }
    }

    public final MediaNotificationManager d() {
        if (this.f17469f == null) {
            Preconditions.m(getBaseContext(), "Accessing service context before onCreate()");
            DefaultMediaNotificationProvider.Builder builder = new DefaultMediaNotificationProvider.Builder(getApplicationContext());
            Preconditions.q(!builder.d);
            DefaultMediaNotificationProvider defaultMediaNotificationProvider = new DefaultMediaNotificationProvider(builder.f17293a, builder.f17294b, "default_channel_id", builder.f17295c);
            builder.d = true;
            if (this.g == null) {
                this.g = new DefaultActionFactory(this);
            }
            this.f17469f = new MediaNotificationManager(this, defaultMediaNotificationProvider, this.g);
        }
        return this.f17469f;
    }

    public final ArrayList e() {
        ArrayList arrayList;
        synchronized (this.f17467c) {
            arrayList = new ArrayList(this.f17470h.values());
        }
        return arrayList;
    }

    public final boolean f(MediaSession mediaSession) {
        boolean zContainsKey;
        synchronized (this.f17467c) {
            zContainsKey = this.f17470h.containsKey(mediaSession.f17401a.f17432i);
        }
        return zContainsKey;
    }

    public abstract MediaSession g(MediaSession.ControllerInfo controllerInfo);

    public final void h(MediaSession mediaSession, boolean z) {
        boolean zC = d().c(z);
        MediaNotificationManager mediaNotificationManagerD = d();
        mediaNotificationManagerD.getClass();
        Futures.b(CallbackToFutureAdapter.a(new h(mediaNotificationManagerD, mediaSession, zC)), RuntimeException.class, new mw(this, 1), MoreExecutors.b());
    }

    public final void i(MediaSession mediaSession) {
        Preconditions.m(mediaSession, "session must not be null");
        synchronized (this.f17467c) {
            Preconditions.h(this.f17470h.containsKey(mediaSession.f17401a.f17432i), "session not found");
            this.f17470h.remove(mediaSession.f17401a.f17432i);
        }
        Util.W(this.d, new p1(this, mediaSession, 1));
    }

    public final void j() {
        MediaNotificationManager mediaNotificationManagerD = d();
        MediaNotification.Provider.NotificationChannelInfo notificationChannelInfoA = mediaNotificationManagerD.f17391j.a();
        NotificationManager notificationManager = mediaNotificationManagerD.d;
        String str = notificationChannelInfoA.f17383a;
        String str2 = notificationChannelInfoA.f17384b;
        String str3 = Util.f14242a;
        if (notificationManager.getNotificationChannel(str) == null) {
            notificationManager.createNotificationChannel(new NotificationChannel(str, str2, 2));
        }
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(this, str);
        if (Build.VERSION.SDK_INT >= 31) {
            notificationCompat$Builder.N = 2;
        }
        notificationCompat$Builder.g(8, true);
        notificationCompat$Builder.Q.icon = R.drawable.media3_notification_small_icon;
        notificationCompat$Builder.E = -1;
        notificationCompat$Builder.g(2, false);
        Pair pair = new Pair(20938, notificationCompat$Builder.c());
        try {
            startForeground(((Integer) pair.first).intValue(), (Notification) pair.second, 2);
            d().a();
            stopForeground(1);
            stopSelf();
        } catch (RuntimeException e2) {
            Log.d("The service must be declared with a foregroundServiceType that includes mediaPlayback");
            throw e2;
        }
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final IBinder onBind(Intent intent) {
        MediaSession mediaSessionG;
        MediaSessionServiceLegacyStub mediaSessionServiceLegacyStub;
        String str = Util.f14242a;
        super.onBind(intent);
        String action = intent.getAction();
        if (action == null) {
            return null;
        }
        if (action.equals("androidx.media3.session.MediaSessionService")) {
            MediaSessionServiceStub mediaSessionServiceStub = this.f17468e;
            mediaSessionServiceStub.getClass();
            return mediaSessionServiceStub;
        }
        if (!action.equals("android.media.browse.MediaBrowserService") || (mediaSessionG = g(new MediaSession.ControllerInfo(new MediaSessionManager.RemoteUserInfo("android.media.session.MediaController", -1, -1), 0, 0, false, null, Bundle.EMPTY))) == null) {
            return null;
        }
        b(mediaSessionG);
        MediaSessionImpl mediaSessionImpl = mediaSessionG.f17401a;
        synchronized (mediaSessionImpl.f17426a) {
            try {
                if (mediaSessionImpl.y == null) {
                    MediaSessionCompat.Token tokenC = mediaSessionImpl.f17431h.l.c();
                    MediaSessionServiceLegacyStub mediaSessionServiceLegacyStub2 = new MediaSessionServiceLegacyStub(mediaSessionImpl);
                    mediaSessionServiceLegacyStub2.m(tokenC);
                    mediaSessionImpl.y = mediaSessionServiceLegacyStub2;
                }
                mediaSessionServiceLegacyStub = mediaSessionImpl.y;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaSessionServiceLegacyStub.onBind(new Intent("android.media.browse.MediaBrowserService"));
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f17468e = new MediaSessionServiceStub(this);
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        MediaNotificationManager mediaNotificationManager = this.f17469f;
        if (mediaNotificationManager != null) {
            mediaNotificationManager.a();
        }
        MediaSessionServiceStub mediaSessionServiceStub = this.f17468e;
        if (mediaSessionServiceStub != null) {
            mediaSessionServiceStub.f17473a.clear();
            mediaSessionServiceStub.f17474b.removeCallbacksAndMessages(null);
            Set set = mediaSessionServiceStub.f17475j;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                SessionUtil.b((IMediaController) it.next());
            }
            set.clear();
            this.f17468e = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0088  */
    /* JADX WARN: Code duplicated, block: B:41:0x0097  */
    /* JADX WARN: Code duplicated, block: B:43:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00be  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:65:0x00da  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:72:0x010f  */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        MediaSession mediaSessionG;
        MediaSession mediaSession;
        Bundle extras;
        Object obj;
        String str;
        Object obj2;
        Bundle bundle;
        Bundle bundle2;
        MediaNotificationManager mediaNotificationManagerD;
        MediaController mediaControllerB;
        boolean zEquals;
        super.onStartCommand(intent, i2, i3);
        if (intent != null) {
            if (this.g == null) {
                this.g = new DefaultActionFactory(this);
            }
            DefaultActionFactory defaultActionFactory = this.g;
            Uri data = intent.getData();
            defaultActionFactory.getClass();
            if ("android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || "androidx.media3.session.CUSTOM_NOTIFICATION_ACTION".equals(intent.getAction())) {
                if (data == null) {
                    mediaSessionG = null;
                    break;
                }
                synchronized (this.f17467c) {
                    try {
                        Iterator it = this.f17470h.values().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                mediaSessionG = null;
                                break;
                            }
                            mediaSessionG = (MediaSession) it.next();
                            if (Objects.equals(mediaSessionG.f17401a.f17427b, data)) {
                                break;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (mediaSessionG != null) {
                    mediaSession = mediaSessionG;
                    if ("android.intent.action.MEDIA_BUTTON".equals(intent.getAction())) {
                        MediaSessionImpl mediaSessionImpl = mediaSession.f17401a;
                        mediaSessionImpl.l.post(new g0(mediaSessionImpl, intent, 9));
                    } else {
                        extras = intent.getExtras();
                        if (extras != null) {
                            obj = extras.get("androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION");
                        } else {
                            obj = null;
                        }
                        if (obj instanceof String) {
                            str = (String) obj;
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            Bundle extras2 = intent.getExtras();
                            obj2 = extras2 != null ? extras2.get("androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS") : null;
                            if (obj2 instanceof Bundle) {
                                bundle = (Bundle) obj2;
                            } else {
                                bundle = Bundle.EMPTY;
                            }
                            bundle2 = bundle;
                            mediaNotificationManagerD = d();
                            mediaControllerB = mediaNotificationManagerD.b(mediaSession);
                            if (mediaControllerB != null) {
                                Util.W(new Handler(mediaSession.a().a0()), new e(mediaNotificationManagerD, mediaSession, str, bundle2, mediaControllerB));
                            }
                        } else if (!this.f17471i) {
                            j();
                            return 1;
                        }
                    }
                    if (!this.f17471i && intent.hasExtra("androidx.media3.session.intent.uid")) {
                        zEquals = Objects.equals(d().f17389h, intent.getStringExtra("androidx.media3.session.intent.uid"));
                        this.f17471i = zEquals;
                        if (!zEquals) {
                            Log.g("Terminating service that was started by a stale start intent");
                            j();
                        }
                    }
                } else {
                    mediaSessionG = g(c(intent));
                    if (mediaSessionG != null) {
                        b(mediaSessionG);
                        mediaSession = mediaSessionG;
                        if ("android.intent.action.MEDIA_BUTTON".equals(intent.getAction())) {
                            MediaSessionImpl mediaSessionImpl2 = mediaSession.f17401a;
                            mediaSessionImpl2.l.post(new g0(mediaSessionImpl2, intent, 9));
                        } else {
                            extras = intent.getExtras();
                            if (extras != null) {
                                obj = extras.get("androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION");
                            } else {
                                obj = null;
                            }
                            if (obj instanceof String) {
                                str = (String) obj;
                            } else {
                                str = null;
                            }
                            if (str == null) {
                                Bundle extras3 = intent.getExtras();
                                if (extras3 != null) {
                                }
                                if (obj2 instanceof Bundle) {
                                    bundle = (Bundle) obj2;
                                } else {
                                    bundle = Bundle.EMPTY;
                                }
                                bundle2 = bundle;
                                mediaNotificationManagerD = d();
                                mediaControllerB = mediaNotificationManagerD.b(mediaSession);
                                if (mediaControllerB != null) {
                                    Util.W(new Handler(mediaSession.a().a0()), new e(mediaNotificationManagerD, mediaSession, str, bundle2, mediaControllerB));
                                }
                            } else if (!this.f17471i) {
                                j();
                                return 1;
                            }
                        }
                        if (!this.f17471i) {
                            zEquals = Objects.equals(d().f17389h, intent.getStringExtra("androidx.media3.session.intent.uid"));
                            this.f17471i = zEquals;
                            if (!zEquals) {
                                Log.g("Terminating service that was started by a stale start intent");
                                j();
                            }
                        }
                    } else if (!this.f17471i) {
                        j();
                        return 1;
                    }
                }
            } else if (!this.f17471i) {
                zEquals = Objects.equals(d().f17389h, intent.getStringExtra("androidx.media3.session.intent.uid"));
                this.f17471i = zEquals;
                if (!zEquals) {
                    Log.g("Terminating service that was started by a stale start intent");
                    j();
                }
            }
        }
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        if (d().m) {
            ArrayList arrayListE = e();
            for (int i2 = 0; i2 < arrayListE.size(); i2++) {
                if (((MediaSession) arrayListE.get(i2)).a().isPlaying()) {
                    return;
                }
            }
        }
        d().a();
        ArrayList arrayListE2 = e();
        for (int i3 = 0; i3 < arrayListE2.size(); i3++) {
            ((MediaSession) arrayListE2.get(i3)).a().P(false);
        }
        stopSelf();
    }
}
