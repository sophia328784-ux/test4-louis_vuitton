package okio;

import defpackage.mt;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.internal.ResourceFileSystem;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lokio/FileSystem;", "Ljava/io/Closeable;", "Lokio/Closeable;", "<init>", "()V", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class FileSystem implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JvmSystemFileSystem f77414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Path f77415c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lokio/FileSystem$Companion;", "", "Lokio/FileSystem;", "SYSTEM", "Lokio/FileSystem;", "Lokio/Path;", "SYSTEM_TEMPORARY_DIRECTORY", "Lokio/Path;", "RESOURCES", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        JvmSystemFileSystem jvmSystemFileSystem;
        new Companion(null);
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        f77414b = jvmSystemFileSystem;
        Path.Companion companion = Path.f77432c;
        String property = System.getProperty("java.io.tmpdir");
        property.getClass();
        companion.getClass();
        f77415c = Path.Companion.a(property);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        classLoader.getClass();
        new ResourceFileSystem(classLoader, false, null, 4, null);
    }

    public abstract Sink c(Path path);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public abstract void d(Path path, Path path2);

    public final void e(Path path) {
        ArrayDeque arrayDeque = new ArrayDeque();
        while (path != null && !k(path)) {
            arrayDeque.addFirst(path);
            path = path.c();
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            g((Path) it.next());
        }
    }

    public abstract void g(Path path);

    public abstract void h(Path path);

    public final void j(Path path) {
        path.getClass();
        h(path);
    }

    public final boolean k(Path path) {
        path.getClass();
        return o(path) != null;
    }

    public abstract List m(Path path);

    public final FileMetadata n(Path path) throws FileNotFoundException {
        path.getClass();
        FileMetadata fileMetadataO = o(path);
        if (fileMetadataO != null) {
            return fileMetadataO;
        }
        mt.l(path, "no such file: ");
        return null;
    }

    public abstract FileMetadata o(Path path);

    public abstract FileHandle p(Path path);

    public abstract Sink q(Path path, boolean z);

    public abstract Source r(Path path);
}
