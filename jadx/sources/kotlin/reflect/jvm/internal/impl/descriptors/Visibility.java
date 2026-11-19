package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.collections.builders.MapBuilder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Visibility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f72421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f72422b;

    public Visibility(String str, boolean z) {
        this.f72421a = str;
        this.f72422b = z;
    }

    public Integer a(Visibility visibility) {
        visibility.getClass();
        MapBuilder mapBuilder = Visibilities.f72411a;
        if (this == visibility) {
            return 0;
        }
        MapBuilder mapBuilder2 = Visibilities.f72411a;
        Integer num = (Integer) mapBuilder2.get(this);
        Integer num2 = (Integer) mapBuilder2.get(visibility);
        if (num == null || num2 == null || num.equals(num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public String b() {
        return this.f72421a;
    }

    public Visibility c() {
        return this;
    }

    public final String toString() {
        return b();
    }
}
