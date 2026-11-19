package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.datasource.DataSpec;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class LoadEventInfo {
    public static final AtomicLong g = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSpec f15496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f15497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f15498c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f15499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f15500f;

    public LoadEventInfo(long j2, DataSpec dataSpec, long j3) {
        this(j2, dataSpec, dataSpec.f14390a, Collections.EMPTY_MAP, j3, 0L, 0L);
    }

    public LoadEventInfo(long j2, DataSpec dataSpec, Uri uri, Map<String, List<String>> map, long j3, long j4, long j5) {
        this.f15496a = dataSpec;
        this.f15497b = uri;
        this.f15498c = map;
        this.d = j3;
        this.f15499e = j4;
        this.f15500f = j5;
    }
}
