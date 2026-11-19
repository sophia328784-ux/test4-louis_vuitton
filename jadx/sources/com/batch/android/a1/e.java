package com.batch.android.a1;

import com.batch.android.z0.x;
import com.batch.android.z0.z;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class e extends a implements com.batch.android.z0.g {
    public e(byte[] bArr) {
        super(bArr);
    }

    @Override // com.batch.android.z0.x
    public z A() {
        return z.BINARY;
    }

    @Override // com.batch.android.z0.x
    public void a(com.batch.android.x0.j jVar) throws IOException {
        jVar.e(this.f22905b.length);
        jVar.b(this.f22905b);
    }

    @Override // com.batch.android.z0.x
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public com.batch.android.z0.g m() {
        return this;
    }

    @Override // com.batch.android.z0.x
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        if (xVar.p()) {
            return xVar instanceof e ? Arrays.equals(this.f22905b, ((e) xVar).f22905b) : Arrays.equals(this.f22905b, xVar.e().M());
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f22905b);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public com.batch.android.z0.g e() {
        return this;
    }
}
