package coil3;

import coil3.util.Collections_jvmCommonKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/Extras;", "", "Key", "Builder", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class Extras {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Extras f21217b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f21218a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/Extras$Companion;", "", "Lcoil3/Extras;", "EMPTY", "Lcoil3/Extras;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcoil3/Extras$Key;", "T", "", "default", "<init>", "(Ljava/lang/Object;)V", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Key<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f21220b = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f21221a;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil3/Extras$Key$Companion;", "", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }

        public Key(T t) {
            this.f21221a = t;
        }
    }

    static {
        new Companion(null);
        f21217b = new Builder().a();
    }

    public Extras(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this.f21218a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Extras) && Intrinsics.c(this.f21218a, ((Extras) obj).f21218a);
    }

    public final int hashCode() {
        return this.f21218a.hashCode();
    }

    public final String toString() {
        return "Extras(data=" + this.f21218a + ")";
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B!\b\u0016\u0012\u0016\u0010\u0006\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0004\b\u0002\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcoil3/Extras$Builder;", "", "<init>", "()V", "", "Lcoil3/Extras$Key;", "map", "(Ljava/util/Map;)V", "Lcoil3/Extras;", "extras", "(Lcoil3/Extras;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f21219a;

        public Builder(Extras extras) {
            this.f21219a = MapsKt.r(extras.f21218a);
        }

        public final Extras a() {
            return new Extras(Collections_jvmCommonKt.b(this.f21219a), null);
        }

        public final void b(Key key, Object obj) {
            LinkedHashMap linkedHashMap = this.f21219a;
            if (obj != null) {
                linkedHashMap.put(key, obj);
            } else {
                linkedHashMap.remove(key);
            }
        }

        public Builder(Map<Key<?>, ? extends Object> map) {
            this.f21219a = MapsKt.r(map);
        }

        public Builder() {
            this.f21219a = new LinkedHashMap();
        }
    }
}
