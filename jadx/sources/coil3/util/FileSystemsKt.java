package coil3.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import okio.FileSystem;
import okio.Path;
import okio.Sink;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class FileSystemsKt {
    public static void a(FileSystem fileSystem, Path path) {
        if (fileSystem.k(path)) {
            return;
        }
        Sink sinkQ = fileSystem.q(path, false);
        Function1 function1 = UtilsKt.f21734a;
        try {
            sinkQ.close();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final void b(FileSystem fileSystem, Path path) throws IOException {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.m(path)) {
                try {
                    if (fileSystem.n(path2).f77409b) {
                        b(fileSystem, path2);
                    }
                    fileSystem.h(path2);
                } catch (IOException e2) {
                    if (iOException == null) {
                        iOException = e2;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }
}
