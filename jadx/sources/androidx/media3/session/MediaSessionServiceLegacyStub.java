package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import androidx.media3.session.legacy.MediaSessionCompat;
import androidx.media3.session.legacy.MediaSessionManager;
import com.google.common.collect.ImmutableSet;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionServiceLegacyStub extends MediaBrowserServiceCompat {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MediaSessionManager f17476j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MediaSessionImpl f17477k;
    public final ConnectedControllersManager l;

    public MediaSessionServiceLegacyStub(MediaSessionImpl mediaSessionImpl) {
        this.f17476j = MediaSessionManager.a(mediaSessionImpl.f17430f);
        this.f17477k = mediaSessionImpl;
        this.l = new ConnectedControllersManager(mediaSessionImpl);
    }

    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat
    public MediaBrowserServiceCompat.BrowserRoot d(int i2, String str, Bundle bundle) {
        MediaSessionManager.RemoteUserInfo remoteUserInfoB = b();
        if (bundle == null) {
            bundle = Bundle.EMPTY;
        }
        MediaSession.ControllerInfo controllerInfoL = l(remoteUserInfoB, bundle);
        AtomicReference atomicReference = new AtomicReference();
        ConditionVariable conditionVariable = new ConditionVariable();
        Util.W(this.f17477k.l, new e(this, atomicReference, controllerInfoL, conditionVariable, 8));
        try {
            conditionVariable.a();
            MediaSession.ConnectionResult connectionResult = (MediaSession.ConnectionResult) atomicReference.get();
            connectionResult.getClass();
            this.l.a(remoteUserInfoB, controllerInfoL, connectionResult.f17413a, connectionResult.f17414b);
            return MediaUtils.f17489a;
        } catch (InterruptedException e2) {
            Log.e("Couldn't get a result from onConnect", e2);
            return null;
        }
    }

    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat
    public void f(String str, MediaBrowserServiceCompat.Result result) {
        result.f(null);
    }

    public MediaSession.ControllerInfo l(MediaSessionManager.RemoteUserInfo remoteUserInfo, Bundle bundle) {
        boolean zB = this.f17476j.b(remoteUserInfo);
        ImmutableSet immutableSet = LegacyConversions.f17303a;
        Math.max(0, bundle.getInt("androidx.media.utils.MediaBrowserCompat.extras.CUSTOM_BROWSER_ACTION_LIMIT", 0));
        return new MediaSession.ControllerInfo(remoteUserInfo, 0, 0, zB, null, bundle);
    }

    public final void m(MediaSessionCompat.Token token) {
        attachBaseContext(this.f17477k.f17430f);
        onCreate();
        k(token);
    }
}
