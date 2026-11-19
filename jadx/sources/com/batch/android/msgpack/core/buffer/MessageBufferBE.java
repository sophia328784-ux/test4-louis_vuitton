package com.batch.android.msgpack.core.buffer;

import com.batch.android.x0.p;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class MessageBufferBE extends MessageBuffer {
    public MessageBufferBE(byte[] bArr, int i2, int i3) {
        super(bArr, i2, i3);
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public MessageBufferBE slice(int i2, int i3) {
        if (i2 == 0 && i3 == size()) {
            return this;
        }
        p.a(i2 + i3 <= size());
        return new MessageBufferBE(this.base, this.address + ((long) i2), i3);
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public double getDouble(int i2) {
        return MessageBuffer.unsafe.getDouble(this.base, this.address + ((long) i2));
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public float getFloat(int i2) {
        return MessageBuffer.unsafe.getFloat(this.base, this.address + ((long) i2));
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public int getInt(int i2) {
        return MessageBuffer.unsafe.getInt(this.base, this.address + ((long) i2));
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public long getLong(int i2) {
        return MessageBuffer.unsafe.getLong(this.base, this.address + ((long) i2));
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public short getShort(int i2) {
        return MessageBuffer.unsafe.getShort(this.base, this.address + ((long) i2));
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public void putDouble(int i2, double d) {
        MessageBuffer.unsafe.putDouble(this.base, this.address + ((long) i2), d);
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public void putInt(int i2, int i3) {
        MessageBuffer.unsafe.putInt(this.base, this.address + ((long) i2), i3);
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public void putLong(int i2, long j2) {
        MessageBuffer.unsafe.putLong(this.base, this.address + ((long) i2), j2);
    }

    @Override // com.batch.android.msgpack.core.buffer.MessageBuffer
    public void putShort(int i2, short s) {
        MessageBuffer.unsafe.putShort(this.base, this.address + ((long) i2), s);
    }

    public MessageBufferBE(ByteBuffer byteBuffer) {
        super(byteBuffer);
    }

    private MessageBufferBE(Object obj, long j2, int i2) {
        super(obj, j2, i2);
    }
}
