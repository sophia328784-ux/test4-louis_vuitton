package androidx.media3.session;

import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.MediaItem;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements MediaControllerImplBase.RemoteSessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplBase f17675c;
    public final /* synthetic */ List d;

    public /* synthetic */ i(MediaControllerImplBase mediaControllerImplBase, List list, int i2) {
        this.f17674b = i2;
        this.f17675c = mediaControllerImplBase;
        this.d = list;
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public final void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17674b;
        int i4 = 0;
        List list = this.d;
        MediaControllerImplBase mediaControllerImplBase = this.f17675c;
        switch (i3) {
            case 0:
                MediaControllerStub mediaControllerStub = mediaControllerImplBase.f17329c;
                UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                while (i4 < list.size()) {
                    builder.e(((MediaItem) list.get(i4)).c(mediaControllerImplBase.d1(), true));
                    i4++;
                }
                iMediaSession.Q0(mediaControllerStub, i2, new BundleListRetriever(builder.j()));
                break;
            default:
                MediaControllerStub mediaControllerStub2 = mediaControllerImplBase.f17329c;
                UnmodifiableListIterator unmodifiableListIterator2 = ImmutableList.f33587c;
                ImmutableList.Builder builder2 = new ImmutableList.Builder();
                while (i4 < list.size()) {
                    builder2.e(((MediaItem) list.get(i4)).c(mediaControllerImplBase.d1(), true));
                    i4++;
                }
                iMediaSession.V(mediaControllerStub2, i2, new BundleListRetriever(builder2.j()), true);
                break;
        }
    }
}
