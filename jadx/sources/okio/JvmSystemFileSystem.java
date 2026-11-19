package okio;

import defpackage.a61;
import defpackage.mt;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/JvmSystemFileSystem;", "Lokio/FileSystem;", "<init>", "()V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class JvmSystemFileSystem extends FileSystem {
    @Override // okio.FileSystem
    public final Sink c(Path path) {
        path.getClass();
        return new OutputStreamSink(new FileOutputStream(path.toFile(), true), new Timeout());
    }

    @Override // okio.FileSystem
    public void d(Path path, Path path2) throws IOException {
        path.getClass();
        path2.getClass();
        if (path.toFile().renameTo(path2.toFile())) {
            return;
        }
        throw new IOException("failed to move " + path + " to " + path2);
    }

    @Override // okio.FileSystem
    public final void g(Path path) throws IOException {
        path.getClass();
        if (path.toFile().mkdir()) {
            return;
        }
        FileMetadata fileMetadataO = o(path);
        if (fileMetadataO == null || !fileMetadataO.f77409b) {
            a61.n(path, "failed to create directory: ");
        }
    }

    @Override // okio.FileSystem
    public final void h(Path path) throws IOException {
        path.getClass();
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        File file = path.toFile();
        if (file.delete() || !file.exists()) {
            return;
        }
        a61.n(path, "failed to delete ");
    }

    @Override // okio.FileSystem
    public final List m(Path path) throws IOException {
        path.getClass();
        File file = path.toFile();
        String[] list = file.list();
        if (list == null) {
            if (file.exists()) {
                a61.n(path, "failed to list ");
                return null;
            }
            mt.l(path, "no such file: ");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            str.getClass();
            arrayList.add(path.e(str));
        }
        CollectionsKt.l0(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public FileMetadata o(Path path) {
        path.getClass();
        File file = path.toFile();
        boolean zIsFile = file.isFile();
        boolean zIsDirectory = file.isDirectory();
        long jLastModified = file.lastModified();
        long length = file.length();
        if (!zIsFile && !zIsDirectory && jLastModified == 0 && length == 0 && !file.exists()) {
            return null;
        }
        return new FileMetadata(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null, null, 128, null);
    }

    @Override // okio.FileSystem
    public final FileHandle p(Path path) {
        path.getClass();
        return new JvmFileHandle(false, new RandomAccessFile(path.toFile(), "r"));
    }

    @Override // okio.FileSystem
    public final Sink q(Path path, boolean z) throws IOException {
        path.getClass();
        if (!z || !k(path)) {
            return Okio.d(path.toFile());
        }
        throw new IOException(path + " already exists.");
    }

    @Override // okio.FileSystem
    public final Source r(Path path) {
        path.getClass();
        return Okio.e(path.toFile());
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }
}
