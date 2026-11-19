package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import java.security.Signature;
import java.security.SignatureException;
import org.bouncycastle.util.Exceptions;

/* JADX INFO: loaded from: classes5.dex */
class SignatureUpdatingOutputStream extends OutputStream {
    private Signature sig;

    public SignatureUpdatingOutputStream(Signature signature) {
        this.sig = signature;
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        try {
            this.sig.update((byte) i2);
        } catch (SignatureException e2) {
            throw Exceptions.ioException(e2.getMessage(), e2);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.sig.update(bArr);
        } catch (SignatureException e2) {
            throw Exceptions.ioException(e2.getMessage(), e2);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        try {
            this.sig.update(bArr, i2, i3);
        } catch (SignatureException e2) {
            throw Exceptions.ioException(e2.getMessage(), e2);
        }
    }
}
