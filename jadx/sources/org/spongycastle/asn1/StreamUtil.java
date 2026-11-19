package org.spongycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
abstract class StreamUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f77777a = Runtime.getRuntime().maxMemory();

    public static int a(int i2) {
        int i3 = 1;
        if (i2 > 127) {
            int i4 = 1;
            while (true) {
                i2 >>>= 8;
                if (i2 == 0) {
                    break;
                }
                i4++;
            }
            for (int i5 = (i4 - 1) * 8; i5 >= 0; i5 -= 8) {
                i3++;
            }
        }
        return i3;
    }

    public static int b(int i2) {
        if (i2 < 31) {
            return 1;
        }
        if (i2 < 128) {
            return 2;
        }
        byte[] bArr = new byte[5];
        int i3 = 4;
        bArr[4] = (byte) (i2 & CertificateBody.profileType);
        do {
            i2 >>= 7;
            i3--;
            bArr[i3] = (byte) ((i2 & CertificateBody.profileType) | 128);
        } while (i2 > 127);
        return 6 - i3;
    }

    public static int c(InputStream inputStream) {
        if (inputStream instanceof LimitedInputStream) {
            return ((LimitedInputStream) inputStream).h();
        }
        if (inputStream instanceof ASN1InputStream) {
            return ((ASN1InputStream) inputStream).f77707b;
        }
        if (inputStream instanceof ByteArrayInputStream) {
            return ((ByteArrayInputStream) inputStream).available();
        }
        if (inputStream instanceof FileInputStream) {
            try {
                FileChannel channel = ((FileInputStream) inputStream).getChannel();
                long size = channel != null ? channel.size() : 2147483647L;
                if (size < 2147483647L) {
                    return (int) size;
                }
            } catch (IOException unused) {
            }
        }
        long j2 = f77777a;
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j2;
    }
}
