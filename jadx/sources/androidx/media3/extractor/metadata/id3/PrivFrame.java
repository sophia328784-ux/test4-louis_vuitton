package androidx.media3.extractor.metadata.id3;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class PrivFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f16393c;

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.f16392b = str;
        this.f16393c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && PrivFrame.class == obj.getClass()) {
            PrivFrame privFrame = (PrivFrame) obj;
            if (Objects.equals(this.f16392b, privFrame.f16392b) && Arrays.equals(this.f16393c, privFrame.f16393c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f16392b;
        return Arrays.hashCode(this.f16393c) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.f16384a + ": owner=" + this.f16392b;
    }
}
