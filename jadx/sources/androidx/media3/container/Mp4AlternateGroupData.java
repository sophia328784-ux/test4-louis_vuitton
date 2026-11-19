package androidx.media3.container;

import androidx.media3.common.Metadata;

/* JADX INFO: loaded from: classes.dex */
public final class Mp4AlternateGroupData implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14276a;

    public Mp4AlternateGroupData(int i2) {
        this.f14276a = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Mp4AlternateGroupData) && this.f14276a == ((Mp4AlternateGroupData) obj).f14276a;
    }

    public final int hashCode() {
        return this.f14276a;
    }

    public final String toString() {
        return "Mp4AlternateGroup: " + this.f14276a;
    }
}
