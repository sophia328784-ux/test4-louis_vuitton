package androidx.media3.session;

import android.os.BadParcelableException;
import android.os.Bundle;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17917b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaLibraryServiceLegacyStub f17918c;
    public final /* synthetic */ MediaSession.ControllerInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaBrowserServiceCompat.Result f17919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f17920f;
    public final /* synthetic */ Bundle g;

    public /* synthetic */ u0(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, MediaSession.ControllerInfo controllerInfo, MediaBrowserServiceCompat.Result result, Bundle bundle, String str) {
        this.f17918c = mediaLibraryServiceLegacyStub;
        this.d = controllerInfo;
        this.f17919e = result;
        this.g = bundle;
        this.f17920f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsH = null;
        int i2 = 1;
        switch (this.f17917b) {
            case 0:
                MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub = this.f17918c;
                MediaSession.ControllerInfo controllerInfo = this.d;
                MediaBrowserServiceCompat.Result result = this.f17919e;
                Bundle bundle = this.g;
                String str = this.f17920f;
                MediaLibrarySessionImpl mediaLibrarySessionImpl = mediaLibraryServiceLegacyStub.m;
                if (!mediaLibraryServiceLegacyStub.l.m(controllerInfo, 50003)) {
                    result.f(null);
                    return;
                }
                if (bundle != null) {
                    bundle.setClassLoader(mediaLibrarySessionImpl.f17430f.getClassLoader());
                    try {
                        int i3 = bundle.getInt("android.media.browse.extra.PAGE");
                        int i4 = bundle.getInt("android.media.browse.extra.PAGE_SIZE");
                        mediaLibraryService$LibraryParamsH = LegacyConversions.h(mediaLibrarySessionImpl.f17430f, bundle);
                        if (i3 >= 0 && i4 > 0) {
                            SettableFuture settableFutureE0 = Util.e0(mediaLibrarySessionImpl.B(controllerInfo, str, i4, mediaLibraryService$LibraryParamsH), new s0(mediaLibraryServiceLegacyStub, i2));
                            settableFutureE0.addListener(new v0(settableFutureE0, result, i2), MoreExecutors.b());
                            return;
                        }
                    } catch (BadParcelableException unused) {
                    }
                }
                SettableFuture settableFutureE1 = Util.e0(mediaLibrarySessionImpl.B(controllerInfo, str, Integer.MAX_VALUE, mediaLibraryService$LibraryParamsH), new s0(mediaLibraryServiceLegacyStub, i2));
                settableFutureE1.addListener(new v0(settableFutureE1, result, i2), MoreExecutors.b());
                return;
            default:
                MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub2 = this.f17918c;
                MediaSession.ControllerInfo controllerInfo2 = this.d;
                MediaBrowserServiceCompat.Result result2 = this.f17919e;
                String str2 = this.f17920f;
                Bundle bundle2 = this.g;
                int i5 = MediaLibraryServiceLegacyStub.n;
                if (!mediaLibraryServiceLegacyStub2.l.m(controllerInfo2, 50005)) {
                    result2.f(null);
                    return;
                }
                MediaSession.ControllerCb controllerCb = controllerInfo2.d;
                controllerCb.getClass();
                MediaLibraryServiceLegacyStub.BrowserLegacyCb browserLegacyCb = (MediaLibraryServiceLegacyStub.BrowserLegacyCb) controllerCb;
                synchronized (browserLegacyCb.f17377a) {
                    browserLegacyCb.f17379c.add(new MediaLibraryServiceLegacyStub.SearchRequest(controllerInfo2, controllerInfo2.f17419a, str2, bundle2, result2));
                    break;
                }
                LegacyConversions.h(mediaLibraryServiceLegacyStub2.m.f17430f, bundle2);
                MediaLibrarySessionImpl mediaLibrarySessionImpl2 = mediaLibraryServiceLegacyStub2.m;
                MediaLibraryService$MediaLibrarySession.Callback callback = mediaLibrarySessionImpl2.H;
                mediaLibrarySessionImpl2.v(controllerInfo2);
                callback.getClass();
                ListenableFuture listenableFutureG = Futures.g(LibraryResult.b(-6));
                listenableFutureG.addListener(new y0(mediaLibrarySessionImpl2, listenableFutureG, controllerInfo2, 1), new x0(mediaLibrarySessionImpl2, 0));
                return;
        }
    }

    public /* synthetic */ u0(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, MediaSession.ControllerInfo controllerInfo, MediaBrowserServiceCompat.Result result, String str, Bundle bundle) {
        this.f17918c = mediaLibraryServiceLegacyStub;
        this.d = controllerInfo;
        this.f17919e = result;
        this.f17920f = str;
        this.g = bundle;
    }
}
