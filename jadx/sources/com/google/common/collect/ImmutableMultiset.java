package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImmutableMultiset<E> extends ImmutableCollection<E> implements Multiset<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f33610e = 0;
    private static final long serialVersionUID = 912559;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient ImmutableList f33611c;
    public transient ImmutableSet d;

    public final class EntrySet extends IndexedImmutableSet<Multiset.Entry<E>> {
        private static final long serialVersionUID = 0;

        public EntrySet() {
        }

        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Use EntrySetSerializedForm");
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            if (entry.getCount() <= 0) {
                return false;
            }
            return ((RegularImmutableMultiset) ImmutableMultiset.this).f33711f.b(entry.a()) == entry.getCount();
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public final Object get(int i2) {
            ObjectCountHashMap objectCountHashMap = ((RegularImmutableMultiset) ImmutableMultiset.this).f33711f;
            Preconditions.j(i2, objectCountHashMap.f33687c);
            return new ObjectCountHashMap.MapEntry(i2);
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean o() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            RegularImmutableMultiset regularImmutableMultiset = (RegularImmutableMultiset) ImmutableMultiset.this;
            ImmutableSet elementSet = regularImmutableMultiset.f33712h;
            if (elementSet == null) {
                elementSet = new RegularImmutableMultiset.ElementSet();
                regularImmutableMultiset.f33712h = elementSet;
            }
            return elementSet.size();
        }

        @Override // com.google.common.collect.IndexedImmutableSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return new EntrySetSerializedForm(ImmutableMultiset.this);
        }
    }

    public static final class EntrySetSerializedForm<E> implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmutableMultiset f33617b;

        public EntrySetSerializedForm(ImmutableMultiset immutableMultiset) {
            this.f33617b = immutableMultiset;
        }

        public Object readResolve() {
            return this.f33617b.x1();
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0064 -> B:19:0x0046). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:22:0x004b
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static com.google.common.collect.ImmutableMultiset q(java.util.Collection r5) {
        /*
            boolean r0 = r5 instanceof com.google.common.collect.ImmutableMultiset
            if (r0 == 0) goto L7
            com.google.common.collect.ImmutableMultiset r5 = (com.google.common.collect.ImmutableMultiset) r5
            return r5
        L7:
            com.google.common.collect.ImmutableMultiset$Builder r0 = new com.google.common.collect.ImmutableMultiset$Builder
            boolean r1 = r5 instanceof com.google.common.collect.Multiset
            if (r1 == 0) goto L19
            r2 = r5
            com.google.common.collect.Multiset r2 = (com.google.common.collect.Multiset) r2
            java.util.Set r2 = r2.j0()
            int r2 = r2.size()
            goto L1b
        L19:
            r2 = 11
        L1b:
            r0.<init>(r2)
            com.google.common.collect.ObjectCountHashMap r2 = r0.f33614a
            java.util.Objects.requireNonNull(r2)
            if (r1 == 0) goto L9a
            com.google.common.collect.Multiset r5 = (com.google.common.collect.Multiset) r5
            boolean r1 = r5 instanceof com.google.common.collect.RegularImmutableMultiset
            if (r1 == 0) goto L31
            r1 = r5
            com.google.common.collect.RegularImmutableMultiset r1 = (com.google.common.collect.RegularImmutableMultiset) r1
            com.google.common.collect.ObjectCountHashMap r1 = r1.f33711f
            goto L32
        L31:
            r1 = 0
        L32:
            if (r1 == 0) goto L67
            com.google.common.collect.ObjectCountHashMap r5 = r0.f33614a
            int r2 = r5.f33687c
            int r3 = r1.f33687c
            int r2 = java.lang.Math.max(r2, r3)
            r5.a(r2)
            int r5 = r1.f33687c
            r2 = -1
            if (r5 != 0) goto L48
        L46:
            r5 = r2
            goto L49
        L48:
            r5 = 0
        L49:
            if (r5 < 0) goto Lac
            int r3 = r1.f33687c
            com.google.common.base.Preconditions.j(r5, r3)
            java.lang.Object[] r3 = r1.f33685a
            r3 = r3[r5]
            int r4 = r1.f33687c
            com.google.common.base.Preconditions.j(r5, r4)
            int[] r4 = r1.f33686b
            r4 = r4[r5]
            r0.c(r4, r3)
            int r5 = r5 + 1
            int r3 = r1.f33687c
            if (r5 >= r3) goto L46
            goto L49
        L67:
            com.google.common.collect.ImmutableSet r1 = r5.x1()
            com.google.common.collect.ObjectCountHashMap r2 = r0.f33614a
            int r3 = r2.f33687c
            int r1 = r1.size()
            int r1 = java.lang.Math.max(r3, r1)
            r2.a(r1)
            com.google.common.collect.ImmutableSet r5 = r5.x1()
            java.util.Iterator r5 = r5.iterator()
        L82:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto Lac
            java.lang.Object r1 = r5.next()
            com.google.common.collect.Multiset$Entry r1 = (com.google.common.collect.Multiset.Entry) r1
            java.lang.Object r2 = r1.a()
            int r1 = r1.getCount()
            r0.c(r1, r2)
            goto L82
        L9a:
            java.util.Iterator r5 = r5.iterator()
        L9e:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto Lac
            java.lang.Object r1 = r5.next()
            r0.a(r1)
            goto L9e
        Lac:
            com.google.common.collect.ImmutableMultiset r5 = r0.d()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ImmutableMultiset.q(java.util.Collection):com.google.common.collect.ImmutableMultiset");
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return ((RegularImmutableMultiset) this).f33711f.b(obj) > 0;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Multiset)) {
            return false;
        }
        Multiset multiset = (Multiset) obj;
        if (size() != multiset.size() || x1().size() != multiset.x1().size()) {
            return false;
        }
        for (Multiset.Entry entry : multiset.x1()) {
            if (((RegularImmutableMultiset) this).f33711f.b(entry.a()) != entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList f() {
        ImmutableList immutableList = this.f33611c;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList immutableListF = super.f();
        this.f33611c = immutableListF;
        return immutableListF;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int h(int i2, Object[] objArr) {
        UnmodifiableIterator it = x1().iterator();
        while (it.hasNext()) {
            Multiset.Entry entry = (Multiset.Entry) it.next();
            Arrays.fill(objArr, i2, entry.getCount() + i2, entry.a());
            i2 += entry.getCount();
        }
        return i2;
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return Sets.c(x1());
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* JADX INFO: renamed from: p */
    public final UnmodifiableIterator iterator() {
        final UnmodifiableIterator it = x1().iterator();
        return new UnmodifiableIterator<Object>() { // from class: com.google.common.collect.ImmutableMultiset.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f33612b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public Object f33613c;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f33612b > 0 || it.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                if (this.f33612b <= 0) {
                    Multiset.Entry entry = (Multiset.Entry) it.next();
                    this.f33613c = entry.a();
                    this.f33612b = entry.getCount();
                }
                this.f33612b--;
                Object obj = this.f33613c;
                Objects.requireNonNull(obj);
                return obj;
            }
        };
    }

    @Override // com.google.common.collect.Multiset
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet x1() {
        ImmutableSet entrySet = this.d;
        if (entrySet == null) {
            entrySet = isEmpty() ? RegularImmutableSet.f33717k : new EntrySet();
            this.d = entrySet;
        }
        return entrySet;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return x1().toString();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public abstract Object writeReplace();

    public static class Builder<E> extends ImmutableCollection.Builder<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ObjectCountHashMap f33614a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f33615b;

        public Builder(int i2) {
            this.f33615b = false;
            ObjectCountHashMap objectCountHashMap = new ObjectCountHashMap();
            objectCountHashMap.d(i2);
            this.f33614a = objectCountHashMap;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public final ImmutableCollection.Builder a(Object obj) {
            c(1, obj);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0023  */
        /* JADX WARN: Code duplicated, block: B:18:0x003f A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003c -> B:9:0x001e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:7:0x000d
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public final void c(int r8, java.lang.Object r9) {
            /*
                r7 = this;
                com.google.common.collect.ObjectCountHashMap r0 = r7.f33614a
                java.util.Objects.requireNonNull(r0)
                if (r8 != 0) goto L8
                return
            L8:
                boolean r0 = r7.f33615b
                r1 = 0
                if (r0 == 0) goto L41
                com.google.common.collect.ObjectCountHashMap r0 = new com.google.common.collect.ObjectCountHashMap
                com.google.common.collect.ObjectCountHashMap r2 = r7.f33614a
                r0.<init>()
                int r3 = r2.f33687c
                r0.d(r3)
                int r3 = r2.f33687c
                r4 = -1
                if (r3 != 0) goto L20
            L1e:
                r3 = r4
                goto L21
            L20:
                r3 = r1
            L21:
                if (r3 == r4) goto L3f
                int r5 = r2.f33687c
                com.google.common.base.Preconditions.j(r3, r5)
                java.lang.Object[] r5 = r2.f33685a
                r5 = r5[r3]
                int r6 = r2.f33687c
                com.google.common.base.Preconditions.j(r3, r6)
                int[] r6 = r2.f33686b
                r6 = r6[r3]
                r0.e(r6, r5)
                int r3 = r3 + 1
                int r5 = r2.f33687c
                if (r3 >= r5) goto L1e
                goto L21
            L3f:
                r7.f33614a = r0
            L41:
                r7.f33615b = r1
                r9.getClass()
                com.google.common.collect.ObjectCountHashMap r7 = r7.f33614a
                int r0 = r7.b(r9)
                int r8 = r8 + r0
                r7.e(r8, r9)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ImmutableMultiset.Builder.c(int, java.lang.Object):void");
        }

        public final ImmutableMultiset d() {
            Objects.requireNonNull(this.f33614a);
            if (this.f33614a.f33687c == 0) {
                int i2 = ImmutableMultiset.f33610e;
                return RegularImmutableMultiset.f33710i;
            }
            this.f33615b = true;
            return new RegularImmutableMultiset(this.f33614a);
        }

        public Builder() {
            this(4);
        }
    }
}
