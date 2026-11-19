package androidx.media3.session;

import android.text.TextUtils;
import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.session.MediaSessionLegacyStub.AnonymousClass2;
import androidx.media3.session.legacy.MediaDescriptionCompat;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements MediaControllerImplBase.RemoteSessionTask, MediaNotification.Provider.Callback, MediaSessionLegacyStub.SessionTask, MediaSessionStub.SessionTask, Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17871c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f17872e;

    public /* synthetic */ n(String str, int i2, int i3, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams) {
        this.f17870b = 4;
        this.f17871c = str;
        this.d = i3;
        this.f17872e = mediaLibraryService$LibraryParams;
    }

    @Override // androidx.media3.session.MediaNotification.Provider.Callback
    public void a(MediaNotification mediaNotification) {
        MediaNotificationManager mediaNotificationManager = (MediaNotificationManager) this.f17871c;
        MediaSession mediaSession = (MediaSession) this.f17872e;
        mediaNotificationManager.f17388f.execute(new c1(this.d, 0, mediaNotificationManager, mediaSession, mediaNotification));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        SessionResult sessionResult;
        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17871c;
        MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) this.f17872e;
        ListenableFuture listenableFuture = (ListenableFuture) obj;
        int i2 = MediaSessionStub.p;
        try {
            sessionResult = (SessionResult) listenableFuture.get();
            Preconditions.m(sessionResult, "SessionResult must not be null");
        } catch (InterruptedException | ExecutionException e2) {
            Log.h("Session operation failed", e2);
            sessionResult = new SessionResult(e2.getCause() instanceof UnsupportedOperationException ? -6 : -1);
        } catch (CancellationException e3) {
            Log.h("Session operation cancelled", e3);
            sessionResult = new SessionResult(1);
        }
        MediaSessionStub.L2(mediaSessionImpl, controllerInfo, this.d, sessionResult);
    }

    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
    public void b(MediaSession.ControllerInfo controllerInfo) {
        MediaSessionLegacyStub mediaSessionLegacyStub = (MediaSessionLegacyStub) this.f17871c;
        MediaDescriptionCompat mediaDescriptionCompat = (MediaDescriptionCompat) this.f17872e;
        int i2 = MediaSessionLegacyStub.z;
        if (TextUtils.isEmpty(mediaDescriptionCompat.f17780b)) {
            Log.g("onAddQueueItem(): Media ID shouldn't be empty");
        } else {
            Futures.a(mediaSessionLegacyStub.f17441f.m(controllerInfo, ImmutableList.A(LegacyConversions.j(mediaDescriptionCompat))), mediaSessionLegacyStub.new AnonymousClass2(controllerInfo, this.d), MoreExecutors.b());
        }
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        String str = (String) this.f17871c;
        MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = (MediaLibraryService$LibraryParams) this.f17872e;
        int i3 = MediaSessionStub.p;
        return ((MediaLibrarySessionImpl) mediaSessionImpl).B(controllerInfo, str, this.d, mediaLibraryService$LibraryParams);
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17870b;
        Object obj = this.f17872e;
        int i4 = this.d;
        MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) this.f17871c;
        switch (i3) {
            case 0:
                MediaItem mediaItem = (MediaItem) obj;
                int iD1 = mediaControllerImplBase.d1();
                MediaControllerStub mediaControllerStub = mediaControllerImplBase.f17329c;
                if (iD1 >= 2) {
                    iMediaSession.L0(mediaControllerStub, i2, i4, mediaItem.c(mediaControllerImplBase.d1(), true));
                } else {
                    iMediaSession.S0(mediaControllerStub, i2, i4 + 1, mediaItem.c(mediaControllerImplBase.d1(), true));
                    iMediaSession.y0(mediaControllerStub, i2, i4);
                }
                break;
            default:
                List list = (List) obj;
                MediaControllerStub mediaControllerStub2 = mediaControllerImplBase.f17329c;
                UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                for (int i5 = 0; i5 < list.size(); i5++) {
                    builder.e(((MediaItem) list.get(i5)).c(mediaControllerImplBase.d1(), true));
                }
                iMediaSession.p1(mediaControllerStub2, i2, i4, new BundleListRetriever(builder.j()));
                break;
        }
    }

    public /* synthetic */ n(Object obj, Object obj2, int i2, int i3) {
        this.f17870b = i3;
        this.f17871c = obj;
        this.f17872e = obj2;
        this.d = i2;
    }

    public /* synthetic */ n(Object obj, int i2, Object obj2, int i3) {
        this.f17870b = i3;
        this.f17871c = obj;
        this.d = i2;
        this.f17872e = obj2;
    }
}
