package androidx.media3.extractor.metadata.id3;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class MlltFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16389c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f16390e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f16391f;

    public MlltFrame(int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f16388b = i2;
        this.f16389c = i3;
        this.d = i4;
        this.f16390e = iArr;
        this.f16391f = iArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MlltFrame.class == obj.getClass()) {
            MlltFrame mlltFrame = (MlltFrame) obj;
            if (this.f16388b == mlltFrame.f16388b && this.f16389c == mlltFrame.f16389c && this.d == mlltFrame.d && Arrays.equals(this.f16390e, mlltFrame.f16390e) && Arrays.equals(this.f16391f, mlltFrame.f16391f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16391f) + ((Arrays.hashCode(this.f16390e) + ((((((527 + this.f16388b) * 31) + this.f16389c) * 31) + this.d) * 31)) * 31);
    }
}
