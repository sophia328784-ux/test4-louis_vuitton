package androidx.media3.common;

import android.util.SparseBooleanArray;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class FlagSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f13752a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SparseBooleanArray f13753a = new SparseBooleanArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f13754b;

        public final void a(int i2) {
            Preconditions.q(!this.f13754b);
            this.f13753a.append(i2, true);
        }

        public final void b(int... iArr) {
            for (int i2 : iArr) {
                a(i2);
            }
        }

        public final FlagSet c() {
            Preconditions.q(!this.f13754b);
            this.f13754b = true;
            return new FlagSet(this.f13753a);
        }
    }

    public FlagSet(SparseBooleanArray sparseBooleanArray) {
        this.f13752a = sparseBooleanArray;
    }

    public final boolean a(int... iArr) {
        for (int i2 : iArr) {
            if (this.f13752a.get(i2)) {
                return true;
            }
        }
        return false;
    }

    public final int b(int i2) {
        SparseBooleanArray sparseBooleanArray = this.f13752a;
        Preconditions.j(i2, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FlagSet) {
            return this.f13752a.equals(((FlagSet) obj).f13752a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13752a.hashCode();
    }
}
