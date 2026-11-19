package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import defpackage.cj;
import defpackage.md;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ChildHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RecyclerView.AnonymousClass6 f19141a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f19144e;
    public int d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bucket f19142b = new Bucket();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f19143c = new ArrayList();

    public static class Bucket {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f19145a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Bucket f19146b;

        public final void a(int i2) {
            if (i2 < 64) {
                this.f19145a &= ~(1 << i2);
                return;
            }
            Bucket bucket = this.f19146b;
            if (bucket != null) {
                bucket.a(i2 - 64);
            }
        }

        public final int b(int i2) {
            Bucket bucket = this.f19146b;
            if (bucket == null) {
                long j2 = this.f19145a;
                return i2 >= 64 ? Long.bitCount(j2) : Long.bitCount(((1 << i2) - 1) & j2);
            }
            if (i2 < 64) {
                return Long.bitCount(((1 << i2) - 1) & this.f19145a);
            }
            return Long.bitCount(this.f19145a) + bucket.b(i2 - 64);
        }

        public final void c() {
            if (this.f19146b == null) {
                this.f19146b = new Bucket();
            }
        }

        public final boolean d(int i2) {
            if (i2 < 64) {
                return ((1 << i2) & this.f19145a) != 0;
            }
            c();
            return this.f19146b.d(i2 - 64);
        }

        public final void e(int i2, boolean z) {
            if (i2 >= 64) {
                c();
                this.f19146b.e(i2 - 64, z);
                return;
            }
            long j2 = this.f19145a;
            boolean z2 = (Long.MIN_VALUE & j2) != 0;
            long j3 = (1 << i2) - 1;
            this.f19145a = ((j2 & (~j3)) << 1) | (j2 & j3);
            if (z) {
                h(i2);
            } else {
                a(i2);
            }
            if (z2 || this.f19146b != null) {
                c();
                this.f19146b.e(0, z2);
            }
        }

        public final boolean f(int i2) {
            if (i2 >= 64) {
                c();
                return this.f19146b.f(i2 - 64);
            }
            long j2 = 1 << i2;
            long j3 = this.f19145a;
            boolean z = (j3 & j2) != 0;
            long j4 = j3 & (~j2);
            this.f19145a = j4;
            long j5 = j2 - 1;
            this.f19145a = (j4 & j5) | Long.rotateRight((~j5) & j4, 1);
            Bucket bucket = this.f19146b;
            if (bucket != null) {
                if (bucket.d(0)) {
                    h(63);
                }
                this.f19146b.f(0);
            }
            return z;
        }

        public final void g() {
            this.f19145a = 0L;
            Bucket bucket = this.f19146b;
            if (bucket != null) {
                bucket.g();
            }
        }

        public final void h(int i2) {
            if (i2 < 64) {
                this.f19145a |= 1 << i2;
            } else {
                c();
                this.f19146b.h(i2 - 64);
            }
        }

        public final String toString() {
            if (this.f19146b == null) {
                return Long.toBinaryString(this.f19145a);
            }
            return this.f19146b.toString() + "xx" + Long.toBinaryString(this.f19145a);
        }
    }

    public interface Callback {
    }

    public ChildHelper(RecyclerView.AnonymousClass6 anonymousClass6) {
        this.f19141a = anonymousClass6;
    }

    public final void a(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z) {
        RecyclerView.AnonymousClass6 anonymousClass6 = this.f19141a;
        RecyclerView recyclerView = RecyclerView.this;
        int childCount = i2 < 0 ? recyclerView.getChildCount() : d(i2);
        this.f19142b.e(childCount, z);
        if (z) {
            this.f19143c.add(view);
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
            }
        }
        RecyclerView.ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt2 != null) {
            if (!childViewHolderInt2.isTmpDetached() && !childViewHolderInt2.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt2);
                md.n(cj.g(recyclerView, sb));
                return;
            } else {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    childViewHolderInt2.toString();
                }
                childViewHolderInt2.clearTmpDetachFlag();
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(childCount);
            md.n(cj.g(recyclerView, sb2));
            return;
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final View b(int i2) {
        return RecyclerView.this.getChildAt(d(i2));
    }

    public final int c() {
        return RecyclerView.this.getChildCount() - this.f19143c.size();
    }

    public final int d(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int childCount = RecyclerView.this.getChildCount();
        int i3 = i2;
        while (i3 < childCount) {
            Bucket bucket = this.f19142b;
            int iB = i2 - (i3 - bucket.b(i3));
            if (iB == 0) {
                while (bucket.d(i3)) {
                    i3++;
                }
                return i3;
            }
            i3 += iB;
        }
        return -1;
    }

    public final void e(View view) {
        if (this.f19143c.remove(view)) {
            this.f19141a.a(view);
        }
    }

    public final String toString() {
        return this.f19142b.toString() + ", hidden list:" + this.f19143c.size();
    }
}
