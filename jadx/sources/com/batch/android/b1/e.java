package com.batch.android.b1;

import com.batch.android.x0.h;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class e extends d<Collection<com.batch.android.u0.b<?>>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Collection<com.batch.android.u0.b<?>> f22986b;

    public e(Collection<com.batch.android.u0.b<?>> collection) {
        this.f22986b = collection;
    }

    @Override // com.batch.android.b1.d
    public byte[] a() throws IOException {
        com.batch.android.x0.b bVarA = h.a();
        bVarA.d(this.f22986b.size());
        try {
            try {
                Iterator<com.batch.android.u0.b<?>> it = this.f22986b.iterator();
                while (it.hasNext()) {
                    it.next().a(bVarA);
                }
                bVarA.close();
                return bVarA.i();
            } catch (Exception e2) {
                throw new IOException(e2);
            }
        } catch (Throwable th) {
            bVarA.close();
            throw th;
        }
    }

    @Override // com.batch.android.b1.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Collection<com.batch.android.u0.b<?>> h() {
        return this.f22986b;
    }

    @Override // com.batch.android.b1.g
    public boolean isEmpty() {
        return this.f22986b.isEmpty();
    }
}
