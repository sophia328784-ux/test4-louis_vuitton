package androidx.media3.common.util;

/* JADX INFO: loaded from: classes.dex */
public final class CircularIntArray {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14142c;
    public int d = 7;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f14140a = new int[8];

    public final void a(int i2) {
        int[] iArr = this.f14140a;
        int i3 = this.f14142c;
        iArr[i3] = i2;
        int i4 = this.d & (i3 + 1);
        this.f14142c = i4;
        int i5 = this.f14141b;
        if (i4 == i5) {
            int length = iArr.length;
            int i6 = length - i5;
            int i7 = length << 1;
            int[] iArr2 = new int[i7];
            System.arraycopy(iArr, i5, iArr2, 0, i6);
            System.arraycopy(this.f14140a, 0, iArr2, i6, this.f14141b);
            this.f14140a = iArr2;
            this.f14141b = 0;
            this.f14142c = length;
            this.d = i7 - 1;
        }
    }
}
