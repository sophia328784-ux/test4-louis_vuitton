package com.batch.android.s;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends c {
    private int g = 0;

    @Override // com.batch.android.s.c, com.batch.android.s.e
    public e.a b(String str, String str2) throws f {
        this.g++;
        return super.b(str, str2);
    }

    public int f() {
        return this.g;
    }

    public void g() {
        this.g = 0;
    }
}
