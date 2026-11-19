package androidx.media3.extractor.metadata.id3;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class CommentFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16375c;
    public final String d;

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.f16374b = str;
        this.f16375c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && CommentFrame.class == obj.getClass()) {
            CommentFrame commentFrame = (CommentFrame) obj;
            if (Objects.equals(this.f16375c, commentFrame.f16375c) && Objects.equals(this.f16374b, commentFrame.f16374b) && Objects.equals(this.d, commentFrame.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f16374b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f16375c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.f16384a + ": language=" + this.f16374b + ", description=" + this.f16375c + ", text=" + this.d;
    }
}
