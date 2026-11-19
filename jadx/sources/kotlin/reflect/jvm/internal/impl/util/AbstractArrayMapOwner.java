package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractArrayMapOwner<K, V> implements Iterable<V>, KMappedMarker {

    public static abstract class AbstractArrayMapAccessor<K, V, T extends V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f74326a;

        public AbstractArrayMapAccessor(int i2) {
            this.f74326a = i2;
        }
    }

    public abstract ArrayMap f();

    public abstract TypeAttributes.Companion h();

    public final boolean isEmpty() {
        return f().f() == 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return f().iterator();
    }
}
