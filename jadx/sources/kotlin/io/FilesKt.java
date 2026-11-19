package kotlin.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.io.FileTreeWalk.FileTreeWalkIterator;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/io/FilesKt__FilePathComponentsKt", "kotlin/io/FilesKt__FileReadWriteKt", "kotlin/io/FilesKt__FileTreeWalkKt", "kotlin/io/FilesKt__UtilsKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class FilesKt extends FilesKt__UtilsKt {
    public static void b(File file) {
        FileWalkDirection fileWalkDirection = FileWalkDirection.BOTTOM_UP;
        fileWalkDirection.getClass();
        FileTreeWalk.FileTreeWalkIterator fileTreeWalkIterator = new FileTreeWalk(file, fileWalkDirection).new FileTreeWalkIterator();
        while (true) {
            boolean z = true;
            while (fileTreeWalkIterator.hasNext()) {
                File file2 = (File) fileTreeWalkIterator.next();
                if (file2.delete() || !file2.exists()) {
                    if (z) {
                    }
                }
                z = false;
            }
            return;
        }
    }

    public static String c(File file) {
        Charset charset = Charsets.UTF_8;
        file.getClass();
        charset.getClass();
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String strB = TextStreamsKt.b(inputStreamReader);
            inputStreamReader.close();
            return strB;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(inputStreamReader, th);
                throw th2;
            }
        }
    }

    public static void d(File file, String str) throws IOException {
        Charset charset = Charsets.UTF_8;
        file.getClass();
        str.getClass();
        charset.getClass();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            FilesKt__FileReadWriteKt.a(fileOutputStream, str, charset);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(fileOutputStream, th);
                throw th2;
            }
        }
    }
}
