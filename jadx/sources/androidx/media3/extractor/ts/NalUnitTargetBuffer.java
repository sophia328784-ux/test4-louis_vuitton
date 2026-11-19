package androidx.media3.extractor.ts;

import com.google.common.base.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class NalUnitTargetBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f17106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17107c;
    public byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17108e;

    public NalUnitTargetBuffer(int i2, int i3) {
        this.f17105a = i2;
        byte[] bArr = new byte[i3 + 3];
        this.d = bArr;
        bArr[2] = 1;
    }

    public final void a(int i2, int i3, byte[] bArr) {
        if (this.f17106b) {
            int i4 = i3 - i2;
            byte[] bArr2 = this.d;
            int length = bArr2.length;
            int i5 = this.f17108e + i4;
            if (length < i5) {
                this.d = Arrays.copyOf(bArr2, i5 * 2);
            }
            System.arraycopy(bArr, i2, this.d, this.f17108e, i4);
            this.f17108e += i4;
        }
    }

    public final boolean b(int i2) {
        if (!this.f17106b) {
            return false;
        }
        this.f17108e -= i2;
        this.f17106b = false;
        this.f17107c = true;
        return true;
    }

    public final void c() {
        this.f17106b = false;
        this.f17107c = false;
    }

    public final void d(int i2) {
        Preconditions.q(!this.f17106b);
        boolean z = i2 == this.f17105a;
        this.f17106b = z;
        if (z) {
            this.f17108e = 3;
            this.f17107c = false;
        }
    }
}
