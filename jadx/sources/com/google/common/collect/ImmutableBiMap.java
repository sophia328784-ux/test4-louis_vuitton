package com.google.common.collect;

import androidx.media3.common.TrackGroup;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements BiMap<K, V> {
    private static final long serialVersionUID = 912559;

    public static final class Builder<K, V> extends ImmutableMap.Builder<K, V> {
        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap b() {
            throw new UnsupportedOperationException("Not supported for bimaps");
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap.Builder d(Object obj, Object obj2) {
            super.d(obj, obj2);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap.Builder e(Iterable iterable) {
            super.e(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap.Builder f(Map map) {
            e(((ImmutableMap) map).entrySet());
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public final ImmutableBiMap c() {
            return this.f33595b == 0 ? RegularImmutableBiMap.f33693j : new RegularImmutableBiMap(this.f33594a, this.f33595b);
        }

        public final void h(TrackGroup trackGroup, String str) {
            super.d(trackGroup, str);
        }
    }

    public static final class SerializedForm<K, V> extends ImmutableMap.SerializedForm<K, V> {
        private static final long serialVersionUID = 0;

        @Override // com.google.common.collect.ImmutableMap.SerializedForm
        public final ImmutableMap.Builder a(int i2) {
            return new Builder(i2);
        }
    }

    public static ImmutableBiMap q() {
        return RegularImmutableBiMap.f33693j;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection f() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap
    /* JADX INFO: renamed from: o */
    public final ImmutableCollection values() {
        return ((RegularImmutableBiMap) this).f33697i.keySet();
    }

    public abstract ImmutableBiMap p();

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, com.google.common.collect.BiMap
    public final ImmutableSet values() {
        return ((RegularImmutableBiMap) this).f33697i.keySet();
    }

    @Override // com.google.common.collect.ImmutableMap
    public Object writeReplace() {
        return new SerializedForm(this);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, com.google.common.collect.BiMap
    public final Collection values() {
        return ((RegularImmutableBiMap) this).f33697i.keySet();
    }
}
