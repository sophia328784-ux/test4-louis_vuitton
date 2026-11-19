package coil3.disk;

import defpackage.md;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.ByteString;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0003\f\r\u000eB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcoil3/disk/RealDiskCache;", "Lcoil3/disk/DiskCache;", "", "maxSize", "Lokio/Path;", "directory", "Lokio/FileSystem;", "fileSystem", "Lkotlin/coroutines/CoroutineContext;", "cleanupCoroutineContext", "<init>", "(JLokio/Path;Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;)V", "RealSnapshot", "RealEditor", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealDiskCache implements DiskCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FileSystem f21414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DiskLruCache f21415b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcoil3/disk/RealDiskCache$Companion;", "", "", "ENTRY_METADATA", "I", "ENTRY_DATA", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/disk/RealDiskCache$RealEditor;", "Lcoil3/disk/DiskCache$Editor;", "Lcoil3/disk/DiskLruCache$Editor;", "Lcoil3/disk/DiskLruCache;", "editor", "<init>", "(Lcoil3/disk/DiskLruCache$Editor;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class RealEditor implements DiskCache.Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DiskLruCache.Editor f21416a;

        public RealEditor(DiskLruCache.Editor editor) {
            this.f21416a = editor;
        }

        @Override // coil3.disk.DiskCache.Editor
        public final DiskCache.Snapshot a() {
            DiskLruCache.Snapshot snapshotE;
            DiskLruCache.Editor editor = this.f21416a;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.f21398k) {
                editor.a(true);
                snapshotE = diskLruCache.e(editor.f21399a.f21402a);
            }
            if (snapshotE != null) {
                return new RealSnapshot(snapshotE);
            }
            return null;
        }

        @Override // coil3.disk.DiskCache.Editor
        public final void abort() {
            this.f21416a.a(false);
        }

        @Override // coil3.disk.DiskCache.Editor
        public final Path getData() {
            return this.f21416a.b(1);
        }

        @Override // coil3.disk.DiskCache.Editor
        public final Path getMetadata() {
            return this.f21416a.b(0);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/disk/RealDiskCache$RealSnapshot;", "Lcoil3/disk/DiskCache$Snapshot;", "Lcoil3/disk/DiskLruCache$Snapshot;", "Lcoil3/disk/DiskLruCache;", "snapshot", "<init>", "(Lcoil3/disk/DiskLruCache$Snapshot;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class RealSnapshot implements DiskCache.Snapshot {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DiskLruCache.Snapshot f21417b;

        public RealSnapshot(DiskLruCache.Snapshot snapshot) {
            this.f21417b = snapshot;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.f21417b.close();
        }

        @Override // coil3.disk.DiskCache.Snapshot
        public final DiskCache.Editor e1() {
            DiskLruCache.Editor editorD;
            DiskLruCache.Snapshot snapshot = this.f21417b;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.f21398k) {
                snapshot.close();
                editorD = diskLruCache.d(snapshot.f21409b.f21402a);
            }
            if (editorD != null) {
                return new RealEditor(editorD);
            }
            return null;
        }

        @Override // coil3.disk.DiskCache.Snapshot
        public final Path getData() {
            DiskLruCache.Snapshot snapshot = this.f21417b;
            if (!snapshot.f21410c) {
                return (Path) snapshot.f21409b.f21404c.get(1);
            }
            md.k("snapshot is closed");
            return null;
        }

        @Override // coil3.disk.DiskCache.Snapshot
        public final Path getMetadata() {
            DiskLruCache.Snapshot snapshot = this.f21417b;
            if (!snapshot.f21410c) {
                return (Path) snapshot.f21409b.f21404c.get(0);
            }
            md.k("snapshot is closed");
            return null;
        }
    }

    static {
        new Companion(null);
    }

    public RealDiskCache(long j2, Path path, FileSystem fileSystem, CoroutineContext coroutineContext) {
        this.f21414a = fileSystem;
        this.f21415b = new DiskLruCache(fileSystem, path, coroutineContext, j2, 3, 2);
    }

    @Override // coil3.disk.DiskCache
    public final DiskCache.Editor a(String str) {
        ByteString.f77398e.getClass();
        DiskLruCache.Editor editorD = this.f21415b.d(ByteString.Companion.c(str).d("SHA-256").f());
        if (editorD != null) {
            return new RealEditor(editorD);
        }
        return null;
    }

    @Override // coil3.disk.DiskCache
    public final DiskCache.Snapshot b(String str) {
        ByteString.f77398e.getClass();
        DiskLruCache.Snapshot snapshotE = this.f21415b.e(ByteString.Companion.c(str).d("SHA-256").f());
        if (snapshotE != null) {
            return new RealSnapshot(snapshotE);
        }
        return null;
    }

    @Override // coil3.disk.DiskCache
    /* JADX INFO: renamed from: getFileSystem, reason: from getter */
    public final FileSystem getF21414a() {
        return this.f21414a;
    }
}
