package androidx.camera.core.impl.utils;

/* JADX INFO: loaded from: classes.dex */
class ExifTag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2421c;
    public final int d;

    public ExifTag(String str, int i2, int i3) {
        this.f2420b = str;
        this.f2419a = i2;
        this.f2421c = i3;
        this.d = -1;
    }

    public ExifTag(String str, int i2, int i3, int i4) {
        this.f2420b = str;
        this.f2419a = i2;
        this.f2421c = i3;
        this.d = i4;
    }
}
