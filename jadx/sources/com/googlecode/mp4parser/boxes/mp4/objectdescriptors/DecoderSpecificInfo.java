package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import defpackage.fc;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Descriptor(tags = {5})
public class DecoderSpecificInfo extends BaseDescriptor {
    public byte[] d;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final void b(ByteBuffer byteBuffer) {
        int i2 = this.f35710b;
        if (i2 > 0) {
            byte[] bArr = new byte[i2];
            this.d = bArr;
            byteBuffer.get(bArr);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.equals(this.d, ((DecoderSpecificInfo) obj).d);
    }

    public final int hashCode() {
        byte[] bArr = this.d;
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final String toString() {
        StringBuilder sb = new StringBuilder("DecoderSpecificInfo{bytes=");
        byte[] bArr = this.d;
        return fc.l(sb, bArr == null ? "null" : Hex.a(0, bArr), '}');
    }
}
