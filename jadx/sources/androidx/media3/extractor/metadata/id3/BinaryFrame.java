package androidx.media3.extractor.metadata.id3;

import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class BinaryFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f16365b;

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.f16365b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && BinaryFrame.class == obj.getClass()) {
            BinaryFrame binaryFrame = (BinaryFrame) obj;
            if (this.f16384a.equals(binaryFrame.f16384a) && Arrays.equals(this.f16365b, binaryFrame.f16365b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16365b) + fc.b(527, 31, this.f16384a);
    }
}
