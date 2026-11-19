package androidx.media.session;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.view.KeyEvent;
import androidx.core.content.ContextCompat;
import defpackage.lc0;
import defpackage.md;
import defpackage.pq0;
import defpackage.v40;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class MediaButtonReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f13658a = 0;

    public static class MediaButtonConnectionCallback extends MediaBrowserCompat.ConnectionCallback {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Context f13659c;
        public final Intent d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final BroadcastReceiver.PendingResult f13660e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public MediaBrowserCompat f13661f;

        public MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f13659c = context;
            this.d = intent;
            this.f13660e = pendingResult;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public final void a() {
            new MediaControllerCompat(this.f13659c, this.f13661f.c()).a((KeyEvent) this.d.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            this.f13661f.b();
            this.f13660e.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public final void b() {
            this.f13661f.b();
            this.f13660e.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public final void c() {
            this.f13661f.b();
            this.f13660e.finish();
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
            Objects.toString(intent);
            return;
        }
        ComponentName componentNameA = a(context, "android.intent.action.MEDIA_BUTTON");
        if (componentNameA != null) {
            intent.setComponent(componentNameA);
            try {
                ContextCompat.startForegroundService(context, intent);
                return;
            } catch (IllegalStateException e2) {
                if (Build.VERSION.SDK_INT < 31 || !v40.l(e2)) {
                    throw e2;
                }
                lc0.d(e2).getMessage();
                return;
            }
        }
        ComponentName componentNameA2 = a(context, "android.media.browse.MediaBrowserService");
        if (componentNameA2 == null) {
            md.k("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
            return;
        }
        BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(applicationContext, intent, pendingResultGoAsync);
        MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, componentNameA2, mediaButtonConnectionCallback, null);
        mediaButtonConnectionCallback.f13661f = mediaBrowserCompat;
        mediaBrowserCompat.a();
    }
}
