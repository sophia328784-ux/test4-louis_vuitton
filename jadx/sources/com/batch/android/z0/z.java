package com.batch.android.z0;

/* JADX INFO: loaded from: classes2.dex */
public enum z {
    NIL(false, false),
    BOOLEAN(false, false),
    INTEGER(true, false),
    FLOAT(true, false),
    STRING(false, true),
    BINARY(false, true),
    ARRAY(false, false),
    MAP(false, false),
    EXTENSION(false, false);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f24272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f24273c;

    z(boolean z, boolean z2) {
        this.f24272b = z;
        this.f24273c = z2;
    }

    public boolean b() {
        return this == ARRAY;
    }

    public boolean c() {
        return this == BINARY;
    }

    public boolean d() {
        return this == BOOLEAN;
    }

    public boolean e() {
        return this == EXTENSION;
    }

    public boolean f() {
        return this == FLOAT;
    }

    public boolean g() {
        return this == INTEGER;
    }

    public boolean h() {
        return this == MAP;
    }

    public boolean i() {
        return this == NIL;
    }

    public boolean j() {
        return this.f24272b;
    }

    public boolean k() {
        return this.f24273c;
    }

    public boolean l() {
        return this == STRING;
    }
}
