package androidx.core.content;

import android.content.LocusId;
import android.text.TextUtils;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public final class LocusIdCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f12010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocusId f12011b;

    public LocusIdCompat(String str) {
        if (TextUtils.isEmpty(str)) {
            md.n("id cannot be empty");
            throw null;
        }
        this.f12010a = str;
        this.f12011b = new LocusId(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocusIdCompat.class != obj.getClass()) {
            return false;
        }
        String str = ((LocusIdCompat) obj).f12010a;
        String str2 = this.f12010a;
        if (str2 == null) {
            return str == null;
        }
        return str2.equals(str);
    }

    public final int hashCode() {
        String str = this.f12010a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LocusIdCompat[");
        sb.append(this.f12010a.length() + "_chars");
        sb.append("]");
        return sb.toString();
    }
}
