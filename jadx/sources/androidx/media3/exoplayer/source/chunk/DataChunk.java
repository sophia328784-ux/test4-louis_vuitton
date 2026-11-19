package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.Format;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class DataChunk extends Chunk {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f15655j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f15656k;

    public DataChunk(DataSource dataSource, DataSpec dataSpec, int i2, Format format, int i3, Object obj, byte[] bArr) {
        super(dataSource, dataSpec, i2, format, i3, obj, -9223372036854775807L, -9223372036854775807L);
        this.f15655j = bArr == null ? Util.f14243b : bArr;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void a() {
        try {
            this.f15654i.a(this.f15649b);
            int i2 = 0;
            int i3 = 0;
            while (i2 != -1 && !this.f15656k) {
                byte[] bArr = this.f15655j;
                if (bArr.length < i3 + 16384) {
                    this.f15655j = Arrays.copyOf(bArr, bArr.length + 16384);
                }
                i2 = this.f15654i.read(this.f15655j, i3, 16384);
                if (i2 != -1) {
                    i3 += i2;
                }
            }
            if (!this.f15656k) {
                b(i3, this.f15655j);
            }
        } finally {
            DataSourceUtil.a(this.f15654i);
        }
    }

    public abstract void b(int i2, byte[] bArr);

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void c() {
        this.f15656k = true;
    }
}
