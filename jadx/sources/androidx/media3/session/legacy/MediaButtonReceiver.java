package androidx.media3.session.legacy;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.view.KeyEvent;
import androidx.core.content.ContextCompat;
import androidx.media3.common.util.Log;
import defpackage.lc0;
import defpackage.md;
import defpackage.pq0;
import defpackage.v40;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f17758a = 0;

    public static class MediaButtonConnectionCallback extends MediaBrowserCompat.ConnectionCallback {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Context f17759c;
        public final Intent d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final BroadcastReceiver.PendingResult f17760e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public MediaBrowserCompat f17761f;

        public MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f17759c = context;
            this.d = intent;
            this.f17760e = pendingResult;
        }

        @Override // androidx.media3.session.legacy.MediaBrowserCompat.ConnectionCallback
        public final void a() {
            MediaBrowserCompat mediaBrowserCompat = this.f17761f;
            mediaBrowserCompat.getClass();
            new MediaControllerCompat(this.f17759c, mediaBrowserCompat.c()).c((KeyEvent) this.d.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            MediaBrowserCompat mediaBrowserCompat2 = this.f17761f;
            mediaBrowserCompat2.getClass();
            mediaBrowserCompat2.b();
            this.f17760e.finish();
        }

        @Override // androidx.media3.session.legacy.MediaBrowserCompat.ConnectionCallback
        public final void b() {
            MediaBrowserCompat mediaBrowserCompat = this.f17761f;
            mediaBrowserCompat.getClass();
            mediaBrowserCompat.b();
            this.f17760e.finish();
        }

        @Override // androidx.media3.session.legacy.MediaBrowserCompat.ConnectionCallback
        public final void c() {
            MediaBrowserCompat mediaBrowserCompat = this.f17761f;
            mediaBrowserCompat.getClass();
            mediaBrowserCompat.b();
            this.f17760e.finish();
        }
    }

    public static ComponentName a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        }
        if (listQueryIntentServices.isEmpty()) {
            return null;
        }
        StringBuilder sbR = pq0.r("Expected 1 service that handles ", str, ", found ");
        sbR.append(listQueryIntentServices.size());
        throw new IllegalStateException(sbR.toString());
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Log.b("Ignore unsupported intent: " + intent);
            return;
        }
        ComponentName componentNameA = a(context, "android.intent.action.MEDIA_BUTTON");
        if (componentNameA == null) {
            ComponentName componentNameA2 = a(context, "android.media.browse.MediaBrowserService");
            if (componentNameA2 == null) {
                md.k("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
                return;
            }
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            Context applicationContext = context.getApplicationContext();
            MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(applicationContext, intent, pendingResultGoAsync);
            MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, componentNameA2, mediaButtonConnectionCallback, null);
            mediaButtonConnectionCallback.f17761f = mediaBrowserCompat;
            mediaBrowserCompat.a();
            return;
        }
        intent.setComponent(componentNameA);
        try {
            ContextCompat.startForegroundService(context, intent);
        } catch (IllegalStateException e2) {
            if (Build.VERSION.SDK_INT < 31 || !v40.l(e2)) {
                throw e2;
            }
            Log.d("caught exception when trying to start a foreground service from the background: " + lc0.d(e2).getMessage());
        }
    }
}
