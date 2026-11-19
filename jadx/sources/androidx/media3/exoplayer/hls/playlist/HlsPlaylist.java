package androidx.media3.exoplayer.hls.playlist;

import androidx.media3.exoplayer.offline.FilterableManifest;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class HlsPlaylist implements FilterableManifest<HlsPlaylist> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f15291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f15292c;

    public HlsPlaylist(String str, List list, boolean z) {
        this.f15290a = str;
        this.f15291b = Collections.unmodifiableList(list);
        this.f15292c = z;
    }
}
