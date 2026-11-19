package org.bouncycastle.util.encoders;

import defpackage.fc;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class Hex {
    private static final HexEncoder encoder = new HexEncoder();

    public static byte[] decode(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.decode(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e2) {
            throw new DecoderException(fc.g(e2, new StringBuilder("exception decoding Hex data: ")), e2);
        }
    }

    public static byte[] decodeStrict(String str) {
        try {
            return encoder.decodeStrict(str, 0, str.length());
        } catch (Exception e2) {
            throw new DecoderException(fc.g(e2, new StringBuilder("exception decoding Hex string: ")), e2);
        }
    }

    public static byte[] encode(byte[] bArr, int i2, int i3) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.encode(bArr, i2, i3, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e2) {
            throw new EncoderException(fc.g(e2, new StringBuilder("exception encoding Hex string: ")), e2);
        }
    }

    public static String toHexString(byte[] bArr, int i2, int i3) {
        return Strings.fromByteArray(encode(bArr, i2, i3));
    }

    public static String toHexString(byte[] bArr) {
        return toHexString(bArr, 0, bArr.length);
    }

    public static byte[] decodeStrict(String str, int i2, int i3) {
        try {
            return encoder.decodeStrict(str, i2, i3);
        } catch (Exception e2) {
            throw new DecoderException(fc.g(e2, new StringBuilder("exception decoding Hex string: ")), e2);
        }
    }

    public static int encode(byte[] bArr, OutputStream outputStream) throws IOException {
        return encoder.encode(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public static byte[] decode(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.decode(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e2) {
            throw new DecoderException(fc.g(e2, new StringBuilder("exception decoding Hex string: ")), e2);
        }
    }

    public static int encode(byte[] bArr, int i2, int i3, OutputStream outputStream) throws IOException {
        return encoder.encode(bArr, i2, i3, outputStream);
    }

    public static int decode(String str, OutputStream outputStream) throws IOException {
        return encoder.decode(str, outputStream);
    }
}
