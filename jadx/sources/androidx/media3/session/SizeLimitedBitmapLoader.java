package androidx.media3.session;

import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.mw;

/* JADX INFO: loaded from: classes.dex */
public final class SizeLimitedBitmapLoader implements androidx.media3.common.util.BitmapLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.media3.common.util.BitmapLoader f17589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f17591c;

    public SizeLimitedBitmapLoader(androidx.media3.common.util.BitmapLoader bitmapLoader, int i2, boolean z) {
        this.f17589a = bitmapLoader;
        this.f17590b = i2;
        this.f17591c = z;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture a(MediaMetadata mediaMetadata) {
        ListenableFuture listenableFutureA = this.f17589a.a(mediaMetadata);
        if (listenableFutureA == null) {
            return null;
        }
        return Futures.l(listenableFutureA, new mw(this, 3), MoreExecutors.b());
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture b(Uri uri) {
        return Futures.l(this.f17589a.b(uri), new mw(this, 3), MoreExecutors.b());
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final ListenableFuture c(byte[] bArr) {
        return Futures.l(this.f17589a.c(bArr), new mw(this, 3), MoreExecutors.b());
    }
}
