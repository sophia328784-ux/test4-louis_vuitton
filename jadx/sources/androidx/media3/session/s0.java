package androidx.media3.session;

import androidx.media3.common.MediaItem;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s0 implements AsyncFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaLibraryServiceLegacyStub f17905b;

    public /* synthetic */ s0(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, int i2) {
        this.f17904a = i2;
        this.f17905b = mediaLibraryServiceLegacyStub;
    }

    @Override // com.google.common.util.concurrent.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        Object obj2;
        int i2 = this.f17904a;
        MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub = this.f17905b;
        LibraryResult libraryResult = (LibraryResult) obj;
        switch (i2) {
            case 0:
                int i3 = MediaLibraryServiceLegacyStub.n;
                Preconditions.m(libraryResult, "LibraryResult must not be null");
                SettableFuture settableFuture = new SettableFuture();
                if (libraryResult.f17308a != 0 || (obj2 = libraryResult.f17310c) == null) {
                    settableFuture.set(null);
                } else {
                    MediaItem mediaItem = (MediaItem) obj2;
                    byte[] bArr = mediaItem.d.f13887k;
                    if (bArr == null) {
                        settableFuture.set(LegacyConversions.a(mediaItem, null));
                    } else {
                        ListenableFuture listenableFutureC = mediaLibraryServiceLegacyStub.m.m.c(bArr);
                        settableFuture.addListener(new g0(settableFuture, listenableFutureC, 3), MoreExecutors.b());
                        listenableFutureC.addListener(new t0(listenableFutureC, settableFuture, mediaItem, 0), MoreExecutors.b());
                    }
                }
                return settableFuture;
            default:
                return MediaLibraryServiceLegacyStub.n(mediaLibraryServiceLegacyStub, libraryResult);
        }
    }
}
