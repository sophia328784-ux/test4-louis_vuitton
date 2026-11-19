package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.Format;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaChunk extends Chunk {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f15657j;

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, long j2, long j3, long j4) {
        super(dataSource, dataSpec, 1, format, i2, obj, j2, j3);
        format.getClass();
        this.f15657j = j4;
    }
}
