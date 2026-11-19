package androidx.appcompat.widget;

/* JADX INFO: loaded from: classes.dex */
class RtlSpacingHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1263c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1264e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1265f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1266h;

    public final void a(int i2, int i3) {
        this.f1263c = i2;
        this.d = i3;
        this.f1266h = true;
        if (this.g) {
            if (i3 != Integer.MIN_VALUE) {
                this.f1261a = i3;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.f1262b = i2;
                return;
            }
            return;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1261a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f1262b = i3;
        }
    }
}
