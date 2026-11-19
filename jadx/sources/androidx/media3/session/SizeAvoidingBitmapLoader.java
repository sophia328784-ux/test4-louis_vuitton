package androidx.media3.session;

import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import com.google.common.primitives.ImmutableIntArray;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;

/* JADX INFO: loaded from: classes.dex */
final class SizeAvoidingBitmapLoader implements androidx.media3.common.util.BitmapLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.media3.common.util.BitmapLoader f17587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableIntArray f17588b;

    public SizeAvoidingBitmapLoader(androidx.media3.common.util.BitmapLoader bitmapLoader, ImmutableIntArray immutableIntArray) {
        this.f17587a = bitmapLoader;
        this.f17588b = immutableIntArray;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture a(MediaMetadata mediaMetadata) {
        ListenableFuture listenableFutureA = this.f17587a.a(mediaMetadata);
        if (listenableFutureA == null) {
            return null;
        }
        return Futures.l(listenableFutureA, new z0(this, 2), MoreExecutors.b());
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture b(Uri uri) {
        return Futures.l(this.f17587a.b(uri), new z0(this, 2), MoreExecutors.b());
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture c(byte[] bArr) {
        return Futures.l(this.f17587a.c(bArr), new z0(this, 2), MoreExecutors.b());
    }
}
