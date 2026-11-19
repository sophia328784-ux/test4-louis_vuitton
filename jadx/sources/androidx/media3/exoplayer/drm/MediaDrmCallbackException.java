package androidx.media3.exoplayer.drm;

import android.net.Uri;
import androidx.media3.datasource.DataSpec;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MediaDrmCallbackException extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSpec f15104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f15105c;
    public final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f15106e;

    public MediaDrmCallbackException(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, long j2, Throwable th) {
        super(th);
        this.f15104b = dataSpec;
        this.f15105c = uri;
        this.d = map;
        this.f15106e = j2;
    }
}
