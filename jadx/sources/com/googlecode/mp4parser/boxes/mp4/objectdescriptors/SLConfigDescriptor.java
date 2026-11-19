package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import defpackage.tr;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@Descriptor(tags = {6})
public class SLConfigDescriptor extends BaseDescriptor {
    public int d;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final void b(ByteBuffer byteBuffer) {
        this.d = IsoTypeReader.a(byteBuffer.get());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.d == ((SLConfigDescriptor) obj).d;
    }

    public final int hashCode() {
        return this.d;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final String toString() {
        return tr.k(new StringBuilder("SLConfigDescriptor{predefined="), this.d, '}');
    }
}
