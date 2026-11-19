package com.squareup.wire;

import kotlin.Metadata;
import okio.Utf8;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonString$1", "Lcom/squareup/wire/ProtoAdapter;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonString$1 extends ProtoAdapter<String> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return protoReader32.d();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return protoReader.l();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        String str = (String) obj;
        protoWriter.getClass();
        str.getClass();
        protoWriter.f43474a.r0(str);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        String str = (String) obj;
        reverseProtoWriter.getClass();
        str.getClass();
        int length = str.length() - 1;
        while (length >= 0) {
            int i2 = length - 1;
            char cCharAt = str.charAt(length);
            if (cCharAt < 128) {
                reverseProtoWriter.c(1);
                int i3 = reverseProtoWriter.f43479e;
                byte[] bArr = reverseProtoWriter.d;
                int i4 = i3 - 1;
                bArr[i4] = (byte) cCharAt;
                int iMax = Math.max(-1, i2 - i4);
                int i5 = i4;
                length = i2;
                while (length > iMax) {
                    char cCharAt2 = str.charAt(length);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    length--;
                    i5--;
                    bArr[i5] = (byte) cCharAt2;
                }
                reverseProtoWriter.f43479e = i5;
            } else {
                if (cCharAt < 2048) {
                    reverseProtoWriter.c(2);
                    byte[] bArr2 = reverseProtoWriter.d;
                    int i6 = reverseProtoWriter.f43479e;
                    int i7 = i6 - 1;
                    reverseProtoWriter.f43479e = i7;
                    bArr2[i7] = (byte) (128 | (cCharAt & '?'));
                    int i8 = i6 - 2;
                    reverseProtoWriter.f43479e = i8;
                    bArr2[i8] = (byte) ((cCharAt >> 6) | 192);
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    reverseProtoWriter.c(3);
                    byte[] bArr3 = reverseProtoWriter.d;
                    int i9 = reverseProtoWriter.f43479e;
                    int i10 = i9 - 1;
                    reverseProtoWriter.f43479e = i10;
                    bArr3[i10] = (byte) ((cCharAt & '?') | 128);
                    int i11 = i9 - 2;
                    reverseProtoWriter.f43479e = i11;
                    bArr3[i11] = (byte) (128 | (63 & (cCharAt >> 6)));
                    int i12 = i9 - 3;
                    reverseProtoWriter.f43479e = i12;
                    bArr3[i12] = (byte) ((cCharAt >> '\f') | BERTags.FLAGS);
                } else {
                    char cCharAt3 = i2 >= 0 ? str.charAt(i2) : (char) 65535;
                    if (cCharAt3 > 56319 || 56320 > cCharAt || cCharAt >= 57344) {
                        reverseProtoWriter.c(1);
                        byte[] bArr4 = reverseProtoWriter.d;
                        int i13 = reverseProtoWriter.f43479e - 1;
                        reverseProtoWriter.f43479e = i13;
                        bArr4[i13] = 63;
                    } else {
                        length -= 2;
                        int i14 = (((cCharAt3 & 1023) << 10) | (cCharAt & 1023)) + 65536;
                        reverseProtoWriter.c(4);
                        byte[] bArr5 = reverseProtoWriter.d;
                        int i15 = reverseProtoWriter.f43479e;
                        int i16 = i15 - 1;
                        reverseProtoWriter.f43479e = i16;
                        bArr5[i16] = (byte) ((i14 & 63) | 128);
                        int i17 = i15 - 2;
                        reverseProtoWriter.f43479e = i17;
                        bArr5[i17] = (byte) (((i14 >> 6) & 63) | 128);
                        int i18 = i15 - 3;
                        reverseProtoWriter.f43479e = i18;
                        bArr5[i18] = (byte) (128 | (63 & (i14 >> 12)));
                        int i19 = i15 - 4;
                        reverseProtoWriter.f43479e = i19;
                        bArr5[i19] = (byte) ((i14 >> 18) | 240);
                    }
                }
                length = i2;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        String str = (String) obj;
        str.getClass();
        return (int) Utf8.a(str);
    }
}
