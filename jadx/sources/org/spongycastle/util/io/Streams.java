package org.spongycastle.util.io;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class Streams {
    public static int a(InputStream inputStream, byte[] bArr) throws IOException {
        int length = bArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = inputStream.read(bArr, i2, length - i2);
            if (i3 < 0) {
                break;
            }
            i2 += i3;
        }
        return i2;
    }
}
