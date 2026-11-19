package com.batch.android.a1;

import com.batch.android.z0.p;
import com.batch.android.z0.x;
import com.batch.android.z0.z;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class l extends a implements p {
    public l(byte[] bArr) {
        super(bArr);
    }

    @Override // com.batch.android.z0.x
    public z A() {
        return z.STRING;
    }

    @Override // com.batch.android.z0.x
    public void a(com.batch.android.x0.j jVar) throws IOException {
        jVar.h(this.f22905b.length);
        jVar.b(this.f22905b);
    }

    @Override // com.batch.android.z0.x
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public p m() {
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
        if (xVar.R()) {
            return xVar instanceof l ? Arrays.equals(this.f22905b, ((l) xVar).f22905b) : Arrays.equals(this.f22905b, xVar.h().M());
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f22905b);
    }

    public l(String str) {
        super(str);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public p h() {
        return this;
    }
}
