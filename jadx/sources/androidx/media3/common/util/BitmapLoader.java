package androidx.media3.common.util;

import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public interface BitmapLoader {
    default ListenableFuture a(MediaMetadata mediaMetadata) {
        byte[] bArr = mediaMetadata.f13887k;
        if (bArr != null) {
            return c(bArr);
        }
        Uri uri = mediaMetadata.n;
        if (uri != null) {
            return b(uri);
        }
        return null;
    }

    ListenableFuture b(Uri uri);

    ListenableFuture c(byte[] bArr);
}
