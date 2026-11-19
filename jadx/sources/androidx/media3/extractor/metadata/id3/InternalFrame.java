package androidx.media3.extractor.metadata.id3;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class InternalFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16387c;
    public final String d;

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.f16386b = str;
        this.f16387c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && InternalFrame.class == obj.getClass()) {
            InternalFrame internalFrame = (InternalFrame) obj;
            if (Objects.equals(this.f16387c, internalFrame.f16387c) && Objects.equals(this.f16386b, internalFrame.f16386b) && Objects.equals(this.d, internalFrame.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f16386b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f16387c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.f16384a + ": domain=" + this.f16386b + ", description=" + this.f16387c;
    }
}
