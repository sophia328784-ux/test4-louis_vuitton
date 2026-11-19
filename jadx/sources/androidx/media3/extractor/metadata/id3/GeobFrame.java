package androidx.media3.extractor.metadata.id3;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class GeobFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16377c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f16378e;

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f16376b = str;
        this.f16377c = str2;
        this.d = str3;
        this.f16378e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && GeobFrame.class == obj.getClass()) {
            GeobFrame geobFrame = (GeobFrame) obj;
            if (Objects.equals(this.f16376b, geobFrame.f16376b) && Objects.equals(this.f16377c, geobFrame.f16377c) && Objects.equals(this.d, geobFrame.d) && Arrays.equals(this.f16378e, geobFrame.f16378e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f16376b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f16377c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        return Arrays.hashCode(this.f16378e) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.f16384a + ": mimeType=" + this.f16376b + ", filename=" + this.f16377c + ", description=" + this.d;
    }
}
