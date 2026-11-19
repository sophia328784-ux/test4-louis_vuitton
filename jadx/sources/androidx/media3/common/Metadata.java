package androidx.media3.common;

import androidx.media3.common.util.Util;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Metadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Entry[] f13897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f13898b;

    public interface Entry {
        default Format a() {
            return null;
        }

        default void b(MediaMetadata.Builder builder) {
        }

        default byte[] c() {
            return null;
        }
    }

    public Metadata(List<? extends Entry> list) {
        this((Entry[]) list.toArray(new Entry[0]));
    }

    public final Metadata a(Entry... entryArr) {
        if (entryArr.length == 0) {
            return this;
        }
        String str = Util.f14242a;
        Entry[] entryArr2 = this.f13897a;
        Object[] objArrCopyOf = Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, objArrCopyOf, entryArr2.length, entryArr.length);
        return new Metadata(this.f13898b, (Entry[]) objArrCopyOf);
    }

    public final Metadata b(Metadata metadata) {
        return metadata == null ? this : a(metadata.f13897a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Metadata.class == obj.getClass()) {
            Metadata metadata = (Metadata) obj;
            if (Arrays.equals(this.f13897a, metadata.f13897a) && this.f13898b == metadata.f13898b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f13898b) + (Arrays.hashCode(this.f13897a) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("entries=");
        sb.append(Arrays.toString(this.f13897a));
        long j2 = this.f13898b;
        if (j2 == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + j2;
        }
        sb.append(str);
        return sb.toString();
    }

    public Metadata(long j2, Entry... entryArr) {
        this.f13898b = j2;
        this.f13897a = entryArr;
    }

    public Metadata(Entry... entryArr) {
        this(-9223372036854775807L, entryArr);
    }

    public Metadata(long j2, List<? extends Entry> list) {
        this(j2, (Entry[]) list.toArray(new Entry[0]));
    }
}
