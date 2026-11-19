package okio;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokio/ForwardingFileSystem;", "Lokio/FileSystem;", "delegate", "<init>", "(Lokio/FileSystem;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ForwardingFileSystem extends FileSystem {
    public final FileSystem d;

    public ForwardingFileSystem(FileSystem fileSystem) {
        fileSystem.getClass();
        this.d = fileSystem;
    }

    @Override // okio.FileSystem
    public final Sink c(Path path) {
        path.getClass();
        return this.d.c(path);
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.d.close();
    }

    @Override // okio.FileSystem
    public final void d(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        this.d.d(path, path2);
    }

    @Override // okio.FileSystem
    public final void g(Path path) {
        path.getClass();
        this.d.g(path);
    }

    @Override // okio.FileSystem
    public final void h(Path path) {
        path.getClass();
        this.d.h(path);
    }

    @Override // okio.FileSystem
    public final List m(Path path) {
        path.getClass();
        List<Path> listM = this.d.m(path);
        ArrayList arrayList = new ArrayList();
        for (Path path2 : listM) {
            path2.getClass();
            arrayList.add(path2);
        }
        CollectionsKt.l0(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public final FileMetadata o(Path path) {
        path.getClass();
        FileMetadata fileMetadataO = this.d.o(path);
        if (fileMetadataO == null) {
            return null;
        }
        Path path2 = fileMetadataO.f77410c;
        if (path2 == null) {
            return fileMetadataO;
        }
        boolean z = fileMetadataO.f77408a;
        boolean z2 = fileMetadataO.f77409b;
        Long l = fileMetadataO.d;
        Long l2 = fileMetadataO.f77411e;
        Long l3 = fileMetadataO.f77412f;
        Long l4 = fileMetadataO.g;
        Map map = fileMetadataO.f77413h;
        map.getClass();
        return new FileMetadata(z, z2, path2, l, l2, l3, l4, map);
    }

    @Override // okio.FileSystem
    public final FileHandle p(Path path) {
        path.getClass();
        return this.d.p(path);
    }

    @Override // okio.FileSystem
    public Sink q(Path path, boolean z) {
        path.getClass();
        return this.d.q(path, z);
    }

    @Override // okio.FileSystem
    public final Source r(Path path) {
        path.getClass();
        return this.d.r(path);
    }

    public final String toString() {
        return Reflection.f71922a.b(getClass()).B() + '(' + this.d + ')';
    }
}
