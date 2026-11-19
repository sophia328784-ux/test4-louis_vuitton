package com.perfectcorp.perfectlib.ymk.utility;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f42041a = new a("THUMB_FINGER", 0, "thumb", 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f42042b = new a("FOREFINGER", 1, "index", 1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f42043c = new a("MIDDLE_FINGER", 2, "middle", 2);
    public static final a d = new a("RING_FINGER", 3, "ring", 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f42044e = new a("LITTLE_FINGER", 4, "pinky", 4);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f42045f;
    private final int g;

    public a(String str, int i2, String str2, int i3) {
        super(str, i2);
        this.f42045f = str2;
        this.g = i3;
    }

    public final String a() {
        return this.f42045f;
    }

    public final int b() {
        return this.g;
    }
}
