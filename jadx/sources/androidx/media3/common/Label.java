package androidx.media3.common;

import androidx.media3.common.util.Util;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Label {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f13780c;
    public static final String d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f13782b;

    static {
        String str = Util.f14242a;
        f13780c = Integer.toString(0, 36);
        d = Integer.toString(1, 36);
    }

    public Label(String str, String str2) {
        this.f13781a = Util.S(str);
        this.f13782b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Label label = (Label) obj;
            if (Objects.equals(this.f13781a, label.f13781a) && Objects.equals(this.f13782b, label.f13782b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f13782b.hashCode() * 31;
        String str = this.f13781a;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
