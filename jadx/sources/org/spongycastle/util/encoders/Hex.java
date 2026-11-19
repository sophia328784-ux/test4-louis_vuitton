package org.spongycastle.util.encoders;

import defpackage.fc;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class Hex {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HexEncoder f78271a = new HexEncoder();

    public static byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f78271a.a(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e2) {
            DecoderException decoderException = new DecoderException(fc.g(e2, new StringBuilder("exception decoding Hex string: ")));
            decoderException.f78269b = e2;
            throw decoderException;
        }
    }

    public static byte[] b(int i2, byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr2 = f78271a.f78272a;
            for (int i3 = 0; i3 < i2; i3++) {
                byte b2 = bArr[i3];
                byteArrayOutputStream.write(bArr2[(b2 & 255) >>> 4]);
                byteArrayOutputStream.write(bArr2[b2 & 15]);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e2) {
            EncoderException encoderException = new EncoderException(fc.g(e2, new StringBuilder("exception encoding Hex string: ")));
            encoderException.f78270b = e2;
            throw encoderException;
        }
    }
}
