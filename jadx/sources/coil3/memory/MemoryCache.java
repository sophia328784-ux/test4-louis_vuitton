package coil3.memory;

import coil3.Image;
import coil3.util.Collections_jvmCommonKt;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.vc0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lcoil3/memory/MemoryCache;", "", "Key", "Value", "Builder", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface MemoryCache {

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcoil3/memory/MemoryCache$Builder;", "", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public vc0 f21508a;
    }

    Value a(Key key);

    void b(long j2);

    void clear();

    long d();

    long e();

    void g(long j2);

    long getSize();

    void h(Key key, Value value);

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/memory/MemoryCache$Key;", "", "", ConfigurationName.KEY, "", "extras", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Key {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f21509a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f21510b;

        public Key(String str, Map<String, String> map) {
            this.f21509a = str;
            this.f21510b = Collections_jvmCommonKt.b(map);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return Intrinsics.c(this.f21509a, key.f21509a) && Intrinsics.c(this.f21510b, key.f21510b);
        }

        public final int hashCode() {
            return this.f21510b.hashCode() + (this.f21509a.hashCode() * 31);
        }

        public final String toString() {
            return "Key(key=" + this.f21509a + ", extras=" + this.f21510b + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Key(String str) {
            this(str, null, 2, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Key(String str, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? MapsKt.c() : map);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcoil3/memory/MemoryCache$Value;", "", "Lcoil3/Image;", "image", "", "", "extras", "<init>", "(Lcoil3/Image;Ljava/util/Map;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Value {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Image f21511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f21512b;

        public Value(Image image, Map<String, ? extends Object> map) {
            this.f21511a = image;
            this.f21512b = Collections_jvmCommonKt.b(map);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Value)) {
                return false;
            }
            Value value = (Value) obj;
            return Intrinsics.c(this.f21511a, value.f21511a) && Intrinsics.c(this.f21512b, value.f21512b);
        }

        public final int hashCode() {
            return this.f21512b.hashCode() + (this.f21511a.hashCode() * 31);
        }

        public final String toString() {
            return "Value(image=" + this.f21511a + ", extras=" + this.f21512b + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Value(Image image) {
            this(image, null, 2, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Value(Image image, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(image, (i2 & 2) != 0 ? MapsKt.c() : map);
        }
    }
}
