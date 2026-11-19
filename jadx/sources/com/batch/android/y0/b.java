package com.batch.android.y0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<MessageBuffer> f24215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f24216c;
    private MessageBuffer d;

    public b(int i2) {
        this.f24216c = i2;
        this.f24215b = new ArrayList();
    }

    @Override // com.batch.android.y0.h
    public MessageBuffer a(int i2) {
        MessageBuffer messageBuffer = this.d;
        if (messageBuffer != null && messageBuffer.size() > i2) {
            return this.d;
        }
        MessageBuffer messageBufferAllocate = MessageBuffer.allocate(Math.max(this.f24216c, i2));
        this.d = messageBufferAllocate;
        return messageBufferAllocate;
    }

    @Override // com.batch.android.y0.h
    public void b(int i2) {
        this.f24215b.add(this.d.slice(0, i2));
        if (this.d.size() - i2 <= this.f24216c / 4) {
            this.d = null;
        } else {
            MessageBuffer messageBuffer = this.d;
            this.d = messageBuffer.slice(i2, messageBuffer.size() - i2);
        }
    }

    public List<MessageBuffer> c() {
        return new ArrayList(this.f24215b);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public byte[] d() {
        byte[] bArr = new byte[b()];
        int size = 0;
        for (MessageBuffer messageBuffer : this.f24215b) {
            messageBuffer.getBytes(0, bArr, size, messageBuffer.size());
            size += messageBuffer.size();
        }
        return bArr;
    }

    public MessageBuffer e() {
        int size = this.f24215b.size();
        List<MessageBuffer> list = this.f24215b;
        if (size == 1) {
            return list.get(0);
        }
        return list.isEmpty() ? MessageBuffer.allocate(0) : MessageBuffer.wrap(d());
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    @Override // com.batch.android.y0.h
    public void write(byte[] bArr, int i2, int i3) {
        MessageBuffer messageBufferAllocate = MessageBuffer.allocate(i3);
        messageBufferAllocate.putBytes(0, bArr, i2, i3);
        this.f24215b.add(messageBufferAllocate);
    }

    public b() {
        this(8192);
    }

    public void a() {
        this.f24215b.clear();
    }

    @Override // com.batch.android.y0.h
    public void a(byte[] bArr, int i2, int i3) {
        this.f24215b.add(MessageBuffer.wrap(bArr, i2, i3));
    }

    public int b() {
        Iterator<MessageBuffer> it = this.f24215b.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }
}
