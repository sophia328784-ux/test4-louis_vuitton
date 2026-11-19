package com.perfectcorp.common.io;

import defpackage.md;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f39265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f39266c;
    public FileOutputStream d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f39267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InterfaceC0120a f39268f;

    /* JADX INFO: renamed from: com.perfectcorp.common.io.a$a, reason: collision with other inner class name */
    public interface InterfaceC0120a {
        void a(File file);
    }

    public a(File file) throws IOException {
        if (file.isDirectory()) {
            throw new IOException(file + " is a directory.");
        }
        this.f39266c = file;
        File fileCreateTempFile = File.createTempFile(file.getName(), ".part", file.getParentFile());
        this.f39265b = fileCreateTempFile;
        this.d = new FileOutputStream(fileCreateTempFile);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        File file = this.f39266c;
        File file2 = this.f39265b;
        FileOutputStream fileOutputStream = this.d;
        if (fileOutputStream != null) {
            boolean z = true;
            try {
                fileOutputStream.close();
                this.d = null;
                if (!this.f39267e) {
                    file2.delete();
                    return;
                }
                InterfaceC0120a interfaceC0120a = this.f39268f;
                if (interfaceC0120a != null) {
                    interfaceC0120a.a(file2);
                }
                file.delete();
                if (!file2.renameTo(file)) {
                    throw new IOException("Could not rename " + file2 + " to " + file);
                }
                z = false;
                InterfaceC0120a interfaceC0120a2 = this.f39268f;
                if (interfaceC0120a2 != null) {
                    try {
                        interfaceC0120a2.a(file);
                    } catch (Throwable th) {
                        file.delete();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                if (z) {
                    file2.delete();
                }
                throw th2;
            }
        }
    }

    public final void finalize() throws Throwable {
        try {
            this.f39267e = false;
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        h();
        this.d.flush();
    }

    public final void h() {
        if (this.f39267e) {
            md.k("No method can be called except close() after setTransactionSuccessful() being invoked.");
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i2) throws IOException {
        h();
        this.d.write(i2);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        h();
        this.d.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        h();
        this.d.write(bArr, i2, i3);
    }
}
