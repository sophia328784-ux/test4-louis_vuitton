package com.batch.android.x0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import defpackage.md;
import defpackage.x1;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b extends j {
    public b(h.b bVar) {
        this(new com.batch.android.y0.b(), bVar);
    }

    private com.batch.android.y0.b f() {
        return (com.batch.android.y0.b) this.f24195e;
    }

    @Override // com.batch.android.x0.j
    public com.batch.android.y0.h a(com.batch.android.y0.h hVar) throws IOException {
        if (hVar instanceof com.batch.android.y0.b) {
            return super.a(hVar);
        }
        md.n("MessageBufferPacker accepts only ArrayBufferOutput");
        return null;
    }

    public int g() {
        return f().b();
    }

    public List<MessageBuffer> h() {
        try {
            flush();
            return f().c();
        } catch (IOException e2) {
            x1.m(e2);
            return null;
        }
    }

    public byte[] i() {
        try {
            flush();
            return f().d();
        } catch (IOException e2) {
            x1.m(e2);
            return null;
        }
    }

    public MessageBuffer j() {
        try {
            flush();
            return f().e();
        } catch (IOException e2) {
            x1.m(e2);
            return null;
        }
    }

    public b(com.batch.android.y0.b bVar, h.b bVar2) {
        super(bVar, bVar2);
    }

    @Override // com.batch.android.x0.j
    public void a() {
        super.a();
        f().a();
    }
}
