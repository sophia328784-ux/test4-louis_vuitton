package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import defpackage.fc;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@Descriptor(tags = {19})
public class ExtensionProfileLevelDescriptor extends BaseDescriptor {
    public byte[] d;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final void b(ByteBuffer byteBuffer) {
        if (a() > 0) {
            byte[] bArr = new byte[a()];
            this.d = bArr;
            byteBuffer.get(bArr);
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final String toString() {
        StringBuilder sb = new StringBuilder("ExtensionDescriptor{bytes=");
        byte[] bArr = this.d;
        return fc.l(sb, bArr == null ? "null" : Hex.a(0, bArr), '}');
    }
}
