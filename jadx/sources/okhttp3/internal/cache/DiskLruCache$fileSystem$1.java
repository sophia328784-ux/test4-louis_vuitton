package okhttp3.internal.cache;

import kotlin.Metadata;
import okio.ForwardingFileSystem;
import okio.Path;
import okio.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/internal/cache/DiskLruCache$fileSystem$1", "Lokio/ForwardingFileSystem;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DiskLruCache$fileSystem$1 extends ForwardingFileSystem {
    @Override // okio.ForwardingFileSystem, okio.FileSystem
    public final Sink q(Path path, boolean z) {
        path.getClass();
        Path pathC = path.c();
        if (pathC != null) {
            e(pathC);
        }
        return super.q(path, z);
    }
}
