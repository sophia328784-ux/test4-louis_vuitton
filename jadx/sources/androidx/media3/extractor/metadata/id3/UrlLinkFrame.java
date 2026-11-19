package androidx.media3.extractor.metadata.id3;

import defpackage.fc;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class UrlLinkFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16397c;

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.f16396b = str2;
        this.f16397c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && UrlLinkFrame.class == obj.getClass()) {
            UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
            if (this.f16384a.equals(urlLinkFrame.f16384a) && Objects.equals(this.f16396b, urlLinkFrame.f16396b) && Objects.equals(this.f16397c, urlLinkFrame.f16397c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iB = fc.b(527, 31, this.f16384a);
        String str = this.f16396b;
        int iHashCode = (iB + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f16397c;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.f16384a + ": url=" + this.f16397c;
    }
}
