package androidx.media3.common.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class AtomicFile {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f14130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f14131b;

    public AtomicFile(File file) {
        this.f14130a = file;
        this.f14131b = new File(file.getPath() + ".bak");
    }

    public final OutputStream a() throws IOException {
        File file = this.f14130a;
        if (file.exists()) {
            File file2 = this.f14131b;
            if (file2.exists()) {
                file.delete();
            } else if (!file.renameTo(file2)) {
                Log.g("Couldn't rename file " + file + " to backup file " + file2);
            }
        }
        try {
            return new AtomicFileOutputStream(file);
        } catch (FileNotFoundException e2) {
            File parentFile = file.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + file, e2);
            }
            try {
                return new AtomicFileOutputStream(file);
            } catch (FileNotFoundException e3) {
                throw new IOException("Couldn't create " + file, e3);
            }
        }
    }

    public static final class AtomicFileOutputStream extends OutputStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FileOutputStream f14132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14133c = false;

        public AtomicFileOutputStream(File file) throws FileNotFoundException {
            this.f14132b = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            FileOutputStream fileOutputStream = this.f14132b;
            if (this.f14133c) {
                return;
            }
            this.f14133c = true;
            flush();
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException e2) {
                Log.h("Failed to sync file descriptor:", e2);
            }
            fileOutputStream.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() throws IOException {
            this.f14132b.flush();
        }

        @Override // java.io.OutputStream
        public final void write(int i2) throws IOException {
            this.f14132b.write(i2);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            this.f14132b.write(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i2, int i3) throws IOException {
            this.f14132b.write(bArr, i2, i3);
        }
    }
}
