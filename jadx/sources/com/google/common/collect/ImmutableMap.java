package com.google.common.collect;

import com.google.android.gms.internal.measurement.zzabw;
import com.google.errorprone.annotations.DoNotMock;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes2.dex */
@DoNotMock
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    private static final long serialVersionUID = 912559;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient ImmutableSet f33592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient ImmutableSet f33593c;
    public transient ImmutableCollection d;

    public static class SerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object[] f33600b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f33601c;

        public SerializedForm(ImmutableMap immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            ImmutableSet immutableSetD = immutableMap.f33592b;
            if (immutableSetD == null) {
                immutableSetD = immutableMap.d();
                immutableMap.f33592b = immutableSetD;
            }
            UnmodifiableIterator it = immutableSetD.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                objArr[i2] = entry.getKey();
                objArr2[i2] = entry.getValue();
                i2++;
            }
            this.f33600b = objArr;
            this.f33601c = objArr2;
        }

        public Builder a(int i2) {
            return new Builder(i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object readResolve() {
            Object[] objArr = this.f33600b;
            boolean z = objArr instanceof ImmutableSet;
            Object[] objArr2 = this.f33601c;
            if (!z) {
                Builder builderA = a(objArr.length);
                for (int i2 = 0; i2 < objArr.length; i2++) {
                    builderA.d(objArr[i2], objArr2[i2]);
                }
                return builderA.c();
            }
            ImmutableSet immutableSet = (ImmutableSet) objArr;
            Builder builderA2 = a(immutableSet.size());
            UnmodifiableIterator it = immutableSet.iterator();
            UnmodifiableIterator it2 = ((ImmutableCollection) objArr2).iterator();
            while (it.hasNext()) {
                builderA2.d(it.next(), it2.next());
            }
            return builderA2.c();
        }
    }

    public static Builder a(int i2) {
        CollectPreconditions.b(i2, "expectedSize");
        return new Builder(i2);
    }

    public static ImmutableMap c(Map map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            return (ImmutableMap) map;
        }
        Set<Map.Entry<K, V>> setEntrySet = map.entrySet();
        Builder builder = new Builder(setEntrySet instanceof Collection ? setEntrySet.size() : 4);
        builder.e(setEntrySet);
        return builder.a(true);
    }

    public static ImmutableMap h() {
        return RegularImmutableMap.f33700h;
    }

    public static ImmutableMap i(zzabw zzabwVar, Object obj, zzabw zzabwVar2, Object obj2, zzabw zzabwVar3, Object obj3, zzabw zzabwVar4, Object obj4, zzabw zzabwVar5, Object obj5, zzabw zzabwVar6, Object obj6, zzabw zzabwVar7, Object obj7) {
        CollectPreconditions.a(zzabwVar, obj);
        CollectPreconditions.a(zzabwVar2, obj2);
        CollectPreconditions.a(zzabwVar3, obj3);
        CollectPreconditions.a(zzabwVar4, obj4);
        CollectPreconditions.a(zzabwVar5, obj5);
        CollectPreconditions.a(zzabwVar6, obj6);
        CollectPreconditions.a(zzabwVar7, obj7);
        return RegularImmutableMap.p(7, new Object[]{zzabwVar, obj, zzabwVar2, obj2, zzabwVar3, obj3, zzabwVar4, obj4, zzabwVar5, obj5, zzabwVar6, obj6, zzabwVar7, obj7}, null);
    }

    public static ImmutableMap j(Object obj) {
        CollectPreconditions.a("com.vuitton.android.data.repository.VideoPreloadWorker", obj);
        return RegularImmutableMap.p(1, new Object[]{"com.vuitton.android.data.repository.VideoPreloadWorker", obj}, null);
    }

    public static ImmutableMap k(String str, Object obj, String str2, Object obj2) {
        CollectPreconditions.a(str, obj);
        CollectPreconditions.a(str2, obj2);
        return RegularImmutableMap.p(2, new Object[]{str, obj, str2, obj2}, null);
    }

    public static ImmutableMap m(String str, String str2, String str3, String str4) {
        return RegularImmutableMap.p(4, new Object[]{"Purpose1", str, "Purpose3", str2, "Purpose4", str3, "Purpose7", str4}, null);
    }

    public static ImmutableMap n(String str, String str2, String str3, String str4, String str5) {
        return RegularImmutableMap.p(5, new Object[]{"AuthorizePurpose1", str, "AuthorizePurpose3", str2, "AuthorizePurpose4", str3, "AuthorizePurpose7", str4, "PurposeDiagnostics", str5}, null);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract ImmutableSet d();

    public abstract ImmutableSet e();

    @Override // java.util.Map
    public final Set entrySet() {
        ImmutableSet immutableSet = this.f33592b;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet immutableSetD = d();
        this.f33592b = immutableSetD;
        return immutableSetD;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return Maps.a(this, obj);
    }

    public abstract ImmutableCollection f();

    @Override // java.util.Map
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet keySet() {
        ImmutableSet immutableSet = this.f33593c;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet immutableSetE = e();
        this.f33593c = immutableSetE;
        return immutableSetE;
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        ImmutableSet immutableSetD = this.f33592b;
        if (immutableSetD == null) {
            immutableSetD = d();
            this.f33592b = immutableSetD;
        }
        return Sets.c(immutableSetD);
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map, com.google.common.collect.BiMap
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public ImmutableCollection values() {
        ImmutableCollection immutableCollection = this.d;
        if (immutableCollection != null) {
            return immutableCollection;
        }
        ImmutableCollection immutableCollectionF = f();
        this.d = immutableCollectionF;
        return immutableCollectionF;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        CollectPreconditions.b(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public Object writeReplace() {
        return new SerializedForm(this);
    }

    @DoNotMock
    public static class Builder<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object[] f33594a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33595b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public DuplicateKey f33596c;

        public static final class DuplicateKey {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Object f33597a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Object f33598b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Object f33599c;

            public DuplicateKey(Object obj, Object obj2, Object obj3) {
                this.f33597a = obj;
                this.f33598b = obj2;
                this.f33599c = obj3;
            }

            public final IllegalArgumentException a() {
                StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
                Object obj = this.f33597a;
                sb.append(obj);
                sb.append("=");
                sb.append(this.f33598b);
                sb.append(" and ");
                sb.append(obj);
                sb.append("=");
                sb.append(this.f33599c);
                return new IllegalArgumentException(sb.toString());
            }
        }

        public Builder(int i2) {
            this.f33594a = new Object[i2 * 2];
            this.f33595b = 0;
        }

        public final ImmutableMap a(boolean z) {
            DuplicateKey duplicateKey;
            DuplicateKey duplicateKey2;
            if (z && (duplicateKey2 = this.f33596c) != null) {
                throw duplicateKey2.a();
            }
            RegularImmutableMap regularImmutableMapP = RegularImmutableMap.p(this.f33595b, this.f33594a, this);
            if (!z || (duplicateKey = this.f33596c) == null) {
                return regularImmutableMapP;
            }
            throw duplicateKey.a();
        }

        public ImmutableMap b() {
            return a(false);
        }

        public ImmutableMap c() {
            return a(true);
        }

        public Builder d(Object obj, Object obj2) {
            int i2 = (this.f33595b + 1) * 2;
            Object[] objArr = this.f33594a;
            if (i2 > objArr.length) {
                this.f33594a = Arrays.copyOf(objArr, ImmutableCollection.Builder.b(objArr.length, i2));
            }
            CollectPreconditions.a(obj, obj2);
            Object[] objArr2 = this.f33594a;
            int i3 = this.f33595b;
            int i4 = i3 * 2;
            objArr2[i4] = obj;
            objArr2[i4 + 1] = obj2;
            this.f33595b = i3 + 1;
            return this;
        }

        public Builder e(Iterable iterable) {
            if (iterable instanceof Collection) {
                int size = (((Collection) iterable).size() + this.f33595b) * 2;
                Object[] objArr = this.f33594a;
                if (size > objArr.length) {
                    this.f33594a = Arrays.copyOf(objArr, ImmutableCollection.Builder.b(objArr.length, size));
                }
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                d(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public Builder f(Map map) {
            return e(map.entrySet());
        }

        public Builder() {
            this(4);
        }
    }
}
