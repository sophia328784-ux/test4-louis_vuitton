package androidx.media3.extractor.text.ttml;

/* JADX INFO: loaded from: classes.dex */
final class TtmlRegion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f16853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f16854c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f16856f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16857h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f16858i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16859j;

    public TtmlRegion(String str) {
        this(str, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE);
    }

    public TtmlRegion(String str, float f2, float f3, int i2, int i3, float f4, float f5, int i4, float f6, int i5) {
        this.f16852a = str;
        this.f16853b = f2;
        this.f16854c = f3;
        this.d = i2;
        this.f16855e = i3;
        this.f16856f = f4;
        this.g = f5;
        this.f16857h = i4;
        this.f16858i = f6;
        this.f16859j = i5;
    }
}
