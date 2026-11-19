package androidx.camera.core.impl;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Config_Option<T> extends Config.Option<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f2171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2172c;

    public AutoValue_Config_Option(Class cls, Object obj, String str) {
        this.f2170a = str;
        if (cls == null) {
            r81.d("Null valueClass");
            throw null;
        }
        this.f2171b = cls;
        this.f2172c = obj;
    }

    @Override // androidx.camera.core.impl.Config.Option
    public final String c() {
        return this.f2170a;
    }

    @Override // androidx.camera.core.impl.Config.Option
    public final Object d() {
        return this.f2172c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Config.Option)) {
            return false;
        }
        AutoValue_Config_Option autoValue_Config_Option = (AutoValue_Config_Option) ((Config.Option) obj);
        if (!this.f2170a.equals(autoValue_Config_Option.f2170a) || !this.f2171b.equals(autoValue_Config_Option.f2171b)) {
            return false;
        }
        Object obj2 = autoValue_Config_Option.f2172c;
        Object obj3 = this.f2172c;
        if (obj3 == null) {
            return obj2 == null;
        }
        return obj3.equals(obj2);
    }

    public final int hashCode() {
        int iHashCode = (((this.f2170a.hashCode() ^ 1000003) * 1000003) ^ this.f2171b.hashCode()) * 1000003;
        Object obj = this.f2172c;
        return (obj == null ? 0 : obj.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Option{id=");
        sb.append(this.f2170a);
        sb.append(", valueClass=");
        sb.append(this.f2171b);
        sb.append(", token=");
        return defpackage.a.n(sb, this.f2172c, "}");
    }
}
