package androidx.media3.session;

import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class CacheBitmapLoader implements androidx.media3.common.util.BitmapLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.media3.common.util.BitmapLoader f17232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BitmapLoadRequest f17233b;

    public CacheBitmapLoader(androidx.media3.common.util.BitmapLoader bitmapLoader) {
        this.f17232a = bitmapLoader;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture a(MediaMetadata mediaMetadata) {
        Uri uri;
        byte[] bArr;
        BitmapLoadRequest bitmapLoadRequest = this.f17233b;
        if (bitmapLoadRequest != null && (((uri = bitmapLoadRequest.f17235b) != null && uri.equals(mediaMetadata.n)) || ((bArr = bitmapLoadRequest.f17234a) != null && Arrays.equals(bArr, mediaMetadata.f13887k)))) {
            ListenableFuture listenableFuture = this.f17233b.f17236c;
            listenableFuture.getClass();
            return listenableFuture;
        }
        ListenableFuture listenableFutureA = this.f17232a.a(mediaMetadata);
        if (listenableFutureA == null) {
            return null;
        }
        this.f17233b = new BitmapLoadRequest(mediaMetadata, listenableFutureA);
        return listenableFutureA;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture b(Uri uri) {
        Uri uri2;
        BitmapLoadRequest bitmapLoadRequest = this.f17233b;
        if (bitmapLoadRequest == null || (uri2 = bitmapLoadRequest.f17235b) == null || !uri2.equals(uri)) {
            ListenableFuture listenableFutureB = this.f17232a.b(uri);
            this.f17233b = new BitmapLoadRequest(uri, listenableFutureB);
            return listenableFutureB;
        }
        ListenableFuture listenableFuture = this.f17233b.f17236c;
        listenableFuture.getClass();
        return listenableFuture;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture c(byte[] bArr) {
        byte[] bArr2;
        BitmapLoadRequest bitmapLoadRequest = this.f17233b;
        if (bitmapLoadRequest == null || (bArr2 = bitmapLoadRequest.f17234a) == null || !Arrays.equals(bArr2, bArr)) {
            ListenableFuture listenableFutureC = this.f17232a.c(bArr);
            this.f17233b = new BitmapLoadRequest(bArr, listenableFutureC);
            return listenableFutureC;
        }
        ListenableFuture listenableFuture = this.f17233b.f17236c;
        listenableFuture.getClass();
        return listenableFuture;
    }

    public static class BitmapLoadRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f17234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f17235b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ListenableFuture f17236c;

        public BitmapLoadRequest(MediaMetadata mediaMetadata, ListenableFuture listenableFuture) {
            this.f17234a = mediaMetadata.f13887k;
            this.f17235b = mediaMetadata.n;
            this.f17236c = listenableFuture;
        }

        public BitmapLoadRequest(Uri uri, ListenableFuture listenableFuture) {
            this.f17234a = null;
            this.f17235b = uri;
            this.f17236c = listenableFuture;
        }

        public BitmapLoadRequest(byte[] bArr, ListenableFuture listenableFuture) {
            this.f17234a = bArr;
            this.f17235b = null;
            this.f17236c = listenableFuture;
        }
    }
}
