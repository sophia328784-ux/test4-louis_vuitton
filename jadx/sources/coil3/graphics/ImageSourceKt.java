package coil3.graphics;

import coil3.disk.DiskCache;
import kotlin.Metadata;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ImageSourceKt {
    public static FileImageSource a(Path path, FileSystem fileSystem, String str, DiskCache.Snapshot snapshot, int i2) {
        return new FileImageSource(path, fileSystem, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : snapshot, null);
    }
}
