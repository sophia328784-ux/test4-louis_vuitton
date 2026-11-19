package wcQZwr;

/* JADX INFO: loaded from: classes2.dex */
public final class MrfBl<A, B, C> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f80835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f80836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f80837c;

    public MrfBl(A a2, B b2, C c2) {
        this.f80835a = a2;
        this.f80836b = b2;
        this.f80837c = c2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof MrfBl)) {
            return false;
        }
        MrfBl mrfBl = (MrfBl) obj;
        return mrfBl.f80835a.equals(this.f80835a) && mrfBl.f80836b.equals(this.f80836b) && mrfBl.f80837c.equals(this.f80837c);
    }

    public final int hashCode() {
        Object obj = this.f80835a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f80836b;
        int iHashCode2 = iHashCode ^ (obj2 == null ? 0 : obj2.hashCode());
        Object obj3 = this.f80837c;
        return iHashCode2 ^ (obj3 != null ? obj3.hashCode() : 0);
    }
}
