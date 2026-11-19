package com.batch.android.l1;

/* JADX INFO: loaded from: classes2.dex */
public enum a {
    DELETED(0, 'x'),
    STRING(1, 's'),
    LONG(2, 'i'),
    DOUBLE(3, 'f'),
    BOOL(4, 'b'),
    DATE(5, 't'),
    URL(6, 'u'),
    OBJECT(7, 'o'),
    STRING_ARRAY(8, 'a'),
    OBJECT_ARRAY(9, 'a');


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f23659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final char f23660c;

    a(int i2, char c2) {
        this.f23659b = i2;
        this.f23660c = c2;
    }

    public char b() {
        return this.f23660c;
    }

    public int c() {
        return this.f23659b;
    }

    public static a a(int i2) {
        for (a aVar : values()) {
            if (aVar.c() == i2) {
                return aVar;
            }
        }
        return null;
    }

    public static a a(char c2) {
        for (a aVar : values()) {
            if (aVar.b() == c2) {
                return aVar;
            }
        }
        return null;
    }
}
