package com.batch.android.i;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements Comparable<a> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected long f23480b;

    public a(long j2) {
        this.f23480b = j2;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        long jA = a();
        long jA2 = aVar.a();
        if (jA < jA2) {
            return -1;
        }
        return jA == jA2 ? 0 : 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f23480b == ((a) obj).f23480b;
    }

    public int hashCode() {
        long j2 = this.f23480b;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public long a() {
        return this.f23480b;
    }

    public void a(long j2) {
        this.f23480b = j2;
    }
}
