package com.batch.android.b1;

import com.batch.android.e.t;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d<T> implements g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22985a = "MessagePackPostDataProvider";

    public abstract byte[] a() throws IOException;

    @Override // com.batch.android.b1.g
    public byte[] g() {
        try {
            return a();
        } catch (Exception e2) {
            t.c(f22985a, "Could not pack data", e2);
            return new byte[0];
        }
    }

    @Override // com.batch.android.b1.g
    public String i() {
        return "application/msgpack";
    }
}
