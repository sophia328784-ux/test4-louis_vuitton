package androidx.media3.session;

import android.view.Surface;
import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Consumer;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements MediaControllerImplBase.RemoteSessionTask, Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17863c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f17864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f17865f;

    public /* synthetic */ m(Object obj, Object obj2, int i2, int i3, int i4) {
        this.f17862b = i4;
        this.f17863c = obj;
        this.f17865f = obj2;
        this.d = i2;
        this.f17864e = i3;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        MediaSessionStub mediaSessionStub = (MediaSessionStub) this.f17863c;
        Surface surface = (Surface) this.f17865f;
        PlayerWrapper playerWrapper = (PlayerWrapper) obj;
        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) mediaSessionStub.f17478b.get();
        mediaSessionImpl.getClass();
        if (mediaSessionImpl.r) {
            playerWrapper.B(surface);
            return;
        }
        if (surface == null) {
            playerWrapper.O(null);
            mediaSessionStub.o = null;
        } else {
            MediaSessionStub.SurfaceHolderWithSize surfaceHolderWithSize = new MediaSessionStub.SurfaceHolderWithSize(surface, this.d, this.f17864e);
            mediaSessionStub.o = surfaceHolderWithSize;
            playerWrapper.O(surfaceHolderWithSize);
        }
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17862b;
        Object obj = this.f17865f;
        Object obj2 = this.f17863c;
        switch (i3) {
            case 0:
                MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) obj2;
                List list = (List) obj;
                UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                for (int i4 = 0; i4 < list.size(); i4++) {
                    builder.e(((MediaItem) list.get(i4)).c(mediaControllerImplBase.d1(), true));
                }
                BundleListRetriever bundleListRetriever = new BundleListRetriever(builder.j());
                int iD1 = mediaControllerImplBase.d1();
                MediaControllerStub mediaControllerStub = mediaControllerImplBase.f17329c;
                int i5 = this.d;
                int i6 = this.f17864e;
                if (iD1 >= 2) {
                    iMediaSession.h2(mediaControllerStub, i2, i5, i6, bundleListRetriever);
                } else {
                    iMediaSession.p1(mediaControllerStub, i2, i6, bundleListRetriever);
                    iMediaSession.M1(mediaControllerImplBase.f17329c, i2, i5, i6);
                }
                break;
            default:
                int i7 = this.f17864e;
                iMediaSession.t(((MediaControllerImplBase) obj2).f17329c, i2, (Surface) obj, this.d, i7);
                break;
        }
    }
}
