package androidx.lifecycle;

import androidx.collection.MutableScatterMap;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/lifecycle/FastSafeIterableMap;", "", "K", "V", "<init>", "()V", "Entry", "lifecycle-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FastSafeIterableMap<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableScatterMap f13418a = new MutableScatterMap(0, 1, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Entry f13419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Entry f13420c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\b\u0005\b\u0082\b\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u0012\u0006\u0010\u0005\u001a\u00028\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/lifecycle/FastSafeIterableMap$Entry;", "K", "V", "", ConfigurationName.KEY, "value", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "lifecycle-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Entry<K, V> implements Map.Entry<K, V>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f13421b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f13422c;
        public Entry d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Entry f13423e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f13424f;

        public Entry(K k2, V v) {
            this.f13421b = k2;
            this.f13422c = v;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return Intrinsics.c(this.f13421b, entry.f13421b) && Intrinsics.c(this.f13422c, entry.f13422c);
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f13421b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f13422c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Object obj = this.f13421b;
            int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
            Object obj2 = this.f13422c;
            return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final String toString() {
            return "Entry(key=" + this.f13421b + ", value=" + this.f13422c + ")";
        }
    }
}
