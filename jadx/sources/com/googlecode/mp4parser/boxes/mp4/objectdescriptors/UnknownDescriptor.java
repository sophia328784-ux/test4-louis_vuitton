package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.nio.ByteBuffer;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class UnknownDescriptor extends BaseDescriptor {
    public ByteBuffer d;

    static {
        Logger.getLogger(UnknownDescriptor.class.getName());
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final void b(ByteBuffer byteBuffer) {
        this.d = (ByteBuffer) byteBuffer.slice().limit(this.f35710b);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final String toString() {
        return "UnknownDescriptor{tag=" + this.f35709a + ", sizeOfInstance=" + this.f35710b + ", data=" + this.d + '}';
    }
}
