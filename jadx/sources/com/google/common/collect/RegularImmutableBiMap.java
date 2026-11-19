package com.google.common.collect;

/* JADX INFO: loaded from: classes2.dex */
final class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final RegularImmutableBiMap f33693j = new RegularImmutableBiMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object f33694e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Object[] f33695f;
    public final transient int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f33696h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final transient RegularImmutableBiMap f33697i;

    public RegularImmutableBiMap(Object[] objArr, int i2) {
        this.f33695f = objArr;
        this.f33696h = i2;
        this.g = 0;
        int iQ = i2 >= 2 ? ImmutableSet.q(i2) : 0;
        Object objQ = RegularImmutableMap.q(objArr, i2, iQ, 0);
        if (objQ instanceof Object[]) {
            throw ((ImmutableMap.Builder.DuplicateKey) ((Object[]) objQ)[2]).a();
        }
        this.f33694e = objQ;
        Object objQ2 = RegularImmutableMap.q(objArr, i2, iQ, 1);
        if (objQ2 instanceof Object[]) {
            throw ((ImmutableMap.Builder.DuplicateKey) ((Object[]) objQ2)[2]).a();
        }
        this.f33697i = new RegularImmutableBiMap(objQ2, objArr, i2, this);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet d() {
        return new RegularImmutableMap.EntrySet(this, this.f33695f, this.g, this.f33696h);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet e() {
        return new RegularImmutableMap.KeySet(this, new RegularImmutableMap.KeysOrValuesAsList(this.f33695f, this.g, this.f33696h));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        Object objR = RegularImmutableMap.r(this.f33694e, this.f33695f, this.f33696h, this.g, obj);
        if (objR == null) {
            return null;
        }
        return objR;
    }

    @Override // com.google.common.collect.ImmutableBiMap
    public final ImmutableBiMap p() {
        return this.f33697i;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f33696h;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.ImmutableMap
    public Object writeReplace() {
        return super.writeReplace();
    }

    public RegularImmutableBiMap(Object obj, Object[] objArr, int i2, RegularImmutableBiMap regularImmutableBiMap) {
        this.f33694e = obj;
        this.f33695f = objArr;
        this.g = 1;
        this.f33696h = i2;
        this.f33697i = regularImmutableBiMap;
    }

    public RegularImmutableBiMap() {
        this.f33694e = null;
        this.f33695f = new Object[0];
        this.g = 0;
        this.f33696h = 0;
        this.f33697i = this;
    }
}
