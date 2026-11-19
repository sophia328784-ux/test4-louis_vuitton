package com.squareup.moshi;

import defpackage.b21;
import defpackage.r81;
import defpackage.v7;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Comparator f43382j = new AnonymousClass1();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public EntrySet f43387h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public KeySet f43388i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43385e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43386f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparator f43383b = f43382j;
    public final Node d = new Node();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Node[] f43384c = new Node[16];
    public int g = 12;

    /* JADX INFO: renamed from: com.squareup.moshi.LinkedHashTreeMap$1, reason: invalid class name */
    public class AnonymousClass1 implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public static final class AvlBuilder<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Node f43389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f43390b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f43391c;
        public int d;

        public final void a(Node node) {
            node.d = null;
            node.f43398b = null;
            node.f43399c = null;
            node.f43404j = 1;
            int i2 = this.f43390b;
            if (i2 > 0) {
                int i3 = this.d;
                if ((i3 & 1) == 0) {
                    this.d = i3 + 1;
                    this.f43390b = i2 - 1;
                    this.f43391c++;
                }
            }
            node.f43398b = this.f43389a;
            this.f43389a = node;
            int i4 = this.d;
            int i5 = i4 + 1;
            this.d = i5;
            int i6 = this.f43390b;
            if (i6 > 0 && (i5 & 1) == 0) {
                this.d = i4 + 2;
                this.f43390b = i6 - 1;
                this.f43391c++;
            }
            int i7 = 4;
            while (true) {
                int i8 = i7 - 1;
                if ((this.d & i8) != i8) {
                    return;
                }
                int i9 = this.f43391c;
                if (i9 == 0) {
                    Node node2 = this.f43389a;
                    Node node3 = node2.f43398b;
                    Node node4 = node3.f43398b;
                    node3.f43398b = node4.f43398b;
                    this.f43389a = node3;
                    node3.f43399c = node4;
                    node3.d = node2;
                    node3.f43404j = node2.f43404j + 1;
                    node4.f43398b = node3;
                    node2.f43398b = node3;
                } else if (i9 == 1) {
                    Node node5 = this.f43389a;
                    Node node6 = node5.f43398b;
                    this.f43389a = node6;
                    node6.d = node5;
                    node6.f43404j = node5.f43404j + 1;
                    node5.f43398b = node6;
                    this.f43391c = 0;
                } else if (i9 == 2) {
                    this.f43391c = 0;
                }
                i7 *= 2;
            }
        }
    }

    public static class AvlIterator<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Node f43392a;
    }

    public final class EntrySet extends AbstractSet<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: com.squareup.moshi.LinkedHashTreeMap$EntrySet$1, reason: invalid class name */
        class AnonymousClass1 extends LinkedHashTreeMap<Object, Object>.LinkedTreeMapIterator<Map.Entry<Object, Object>> {
        }

        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Node nodeA;
            Object obj2;
            Object value;
            if (obj instanceof Map.Entry) {
                LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Node node = null;
                if (key != null) {
                    try {
                        nodeA = linkedHashTreeMap.a(key, false);
                    } catch (ClassCastException unused) {
                        nodeA = null;
                    }
                } else {
                    nodeA = null;
                }
                if (nodeA != null && ((obj2 = nodeA.f43403i) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    node = nodeA;
                }
                if (node != null) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new AnonymousClass1();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Node nodeA;
            Object obj2;
            Object value;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                Node node = null;
                if (key != null) {
                    try {
                        nodeA = linkedHashTreeMap.a(key, false);
                    } catch (ClassCastException unused) {
                        nodeA = null;
                    }
                } else {
                    nodeA = null;
                }
                if (nodeA != null && ((obj2 = nodeA.f43403i) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    node = nodeA;
                }
                if (node != null) {
                    linkedHashTreeMap.d(node, true);
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return LinkedHashTreeMap.this.f43385e;
        }
    }

    public final class KeySet extends AbstractSet<K> {

        /* JADX INFO: renamed from: com.squareup.moshi.LinkedHashTreeMap$KeySet$1, reason: invalid class name */
        class AnonymousClass1 extends LinkedHashTreeMap<Object, Object>.LinkedTreeMapIterator<Object> {
            @Override // com.squareup.moshi.LinkedHashTreeMap.LinkedTreeMapIterator, java.util.Iterator
            public final Object next() {
                return a().g;
            }
        }

        public KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return LinkedHashTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new AnonymousClass1();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            Node nodeA = null;
            if (obj != null) {
                try {
                    nodeA = linkedHashTreeMap.a(obj, false);
                } catch (ClassCastException unused) {
                }
            }
            if (nodeA != null) {
                linkedHashTreeMap.d(nodeA, true);
            }
            return nodeA != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return LinkedHashTreeMap.this.f43385e;
        }
    }

    public abstract class LinkedTreeMapIterator<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Node f43395b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Node f43396c = null;
        public int d;

        public LinkedTreeMapIterator() {
            this.f43395b = LinkedHashTreeMap.this.d.f43400e;
            this.d = LinkedHashTreeMap.this.f43386f;
        }

        public final Node a() {
            Node node = this.f43395b;
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            if (node == linkedHashTreeMap.d) {
                b21.x();
                return null;
            }
            if (linkedHashTreeMap.f43386f != this.d) {
                v7.c();
                return null;
            }
            this.f43395b = node.f43400e;
            this.f43396c = node;
            return node;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f43395b != LinkedHashTreeMap.this.d;
        }

        @Override // java.util.Iterator
        public Object next() {
            return a();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Node node = this.f43396c;
            if (node == null) {
                r81.b();
                return;
            }
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            linkedHashTreeMap.d(node, true);
            this.f43396c = null;
            this.d = linkedHashTreeMap.f43386f;
        }
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    public final Node a(Object obj, boolean z) {
        int iCompareTo;
        Node node;
        Node node2;
        Node node3;
        Node node4;
        Node node5;
        Node node6;
        Node[] nodeArr = this.f43384c;
        int iHashCode = obj.hashCode();
        int i2 = iHashCode ^ ((iHashCode >>> 20) ^ (iHashCode >>> 12));
        int i3 = ((i2 >>> 7) ^ i2) ^ (i2 >>> 4);
        boolean z2 = true;
        int length = i3 & (nodeArr.length - 1);
        Node node7 = nodeArr[length];
        Comparator comparator = f43382j;
        Node node8 = null;
        Comparator comparator2 = this.f43383b;
        if (node7 != null) {
            Comparable comparable = comparator2 == comparator ? (Comparable) obj : null;
            while (true) {
                Object obj2 = node7.g;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator2.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return node7;
                }
                Node node9 = iCompareTo < 0 ? node7.f43399c : node7.d;
                if (node9 == null) {
                    break;
                }
                node7 = node9;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        Node node10 = this.d;
        if (node7 != null) {
            Node node11 = node7;
            node = new Node(node11, obj, i3, node10, node10.f43401f);
            if (iCompareTo < 0) {
                node11.f43399c = node;
            } else {
                node11.d = node;
            }
            c(node11, true);
        } else {
            if (comparator2 == comparator && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            node = new Node(node7, obj, i3, node10, node10.f43401f);
            nodeArr[length] = node;
        }
        int i4 = this.f43385e;
        this.f43385e = i4 + 1;
        if (i4 > this.g) {
            Node[] nodeArr2 = this.f43384c;
            int length2 = nodeArr2.length;
            int i5 = length2 * 2;
            Node[] nodeArr3 = new Node[i5];
            AvlIterator avlIterator = new AvlIterator();
            AvlBuilder avlBuilder = new AvlBuilder();
            AvlBuilder avlBuilder2 = new AvlBuilder();
            int i6 = 0;
            while (i6 < length2) {
                Node node12 = nodeArr2[i6];
                if (node12 == null) {
                    node4 = node8;
                } else {
                    Node node13 = node8;
                    for (Node node14 = node12; node14 != null; node14 = node14.f43399c) {
                        node14.f43398b = node13;
                        node13 = node14;
                    }
                    avlIterator.f43392a = node13;
                    int i7 = 0;
                    int i8 = 0;
                    while (true) {
                        Node node15 = avlIterator.f43392a;
                        if (node15 == null) {
                            node15 = node8;
                        } else {
                            Node node16 = node15.f43398b;
                            node15.f43398b = node8;
                            Node node17 = node15.d;
                            while (true) {
                                node2 = node16;
                                node16 = node17;
                                if (node16 == null) {
                                    break;
                                }
                                node16.f43398b = node2;
                                node17 = node16.f43399c;
                            }
                            avlIterator.f43392a = node2;
                        }
                        if (node15 == null) {
                            break;
                        }
                        if ((node15.f43402h & length2) == 0) {
                            i7++;
                        } else {
                            i8++;
                        }
                        node8 = null;
                    }
                    avlBuilder.f43390b = ((Integer.highestOneBit(i7) * 2) - 1) - i7;
                    avlBuilder.d = 0;
                    avlBuilder.f43391c = 0;
                    avlBuilder.f43389a = null;
                    avlBuilder2.f43390b = ((Integer.highestOneBit(i8) * 2) - 1) - i8;
                    avlBuilder2.d = 0;
                    avlBuilder2.f43391c = 0;
                    avlBuilder2.f43389a = null;
                    Node node18 = null;
                    while (node12 != null) {
                        node12.f43398b = node18;
                        Node node19 = node12;
                        node12 = node12.f43399c;
                        node18 = node19;
                    }
                    avlIterator.f43392a = node18;
                    while (true) {
                        Node node20 = avlIterator.f43392a;
                        if (node20 == null) {
                            node20 = null;
                        } else {
                            Node node21 = node20.f43398b;
                            node20.f43398b = null;
                            Node node22 = node20.d;
                            while (true) {
                                Node node23 = node22;
                                node3 = node21;
                                node21 = node23;
                                if (node21 == null) {
                                    break;
                                }
                                node21.f43398b = node3;
                                node22 = node21.f43399c;
                            }
                            avlIterator.f43392a = node3;
                        }
                        if (node20 == null) {
                            break;
                        }
                        if ((node20.f43402h & length2) == 0) {
                            avlBuilder.a(node20);
                        } else {
                            avlBuilder2.a(node20);
                        }
                    }
                    if (i7 > 0) {
                        node5 = avlBuilder.f43389a;
                        if (node5.f43398b != null) {
                            r81.b();
                            return null;
                        }
                        node4 = null;
                    } else {
                        node4 = null;
                        node5 = null;
                    }
                    nodeArr3[i6] = node5;
                    int i9 = i6 + length2;
                    if (i8 > 0) {
                        node6 = avlBuilder2.f43389a;
                        if (node6.f43398b != null) {
                            r81.b();
                            return node4;
                        }
                    } else {
                        node6 = node4;
                    }
                    nodeArr3[i9] = node6;
                }
                i6++;
                z2 = z2;
                node8 = node4;
            }
            this.f43384c = nodeArr3;
            this.g = (i5 / 4) + (i5 / 2);
        }
        this.f43386f++;
        return node;
    }

    public final void c(Node node, boolean z) {
        while (node != null) {
            Node node2 = node.f43399c;
            Node node3 = node.d;
            int i2 = node2 != null ? node2.f43404j : 0;
            int i3 = node3 != null ? node3.f43404j : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                Node node4 = node3.f43399c;
                Node node5 = node3.d;
                int i5 = (node4 != null ? node4.f43404j : 0) - (node5 != null ? node5.f43404j : 0);
                if (i5 != -1 && (i5 != 0 || z)) {
                    g(node3);
                }
                f(node);
                if (z) {
                    return;
                }
            } else if (i4 == 2) {
                Node node6 = node2.f43399c;
                Node node7 = node2.d;
                int i6 = (node6 != null ? node6.f43404j : 0) - (node7 != null ? node7.f43404j : 0);
                if (i6 != 1 && (i6 != 0 || z)) {
                    f(node2);
                }
                g(node);
                if (z) {
                    return;
                }
            } else if (i4 == 0) {
                node.f43404j = i2 + 1;
                if (z) {
                    return;
                }
            } else {
                node.f43404j = Math.max(i2, i3) + 1;
                if (!z) {
                    return;
                }
            }
            node = node.f43398b;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Arrays.fill(this.f43384c, (Object) null);
        this.f43385e = 0;
        this.f43386f++;
        Node node = this.d;
        Node node2 = node.f43400e;
        while (node2 != node) {
            Node node3 = node2.f43400e;
            node2.f43401f = null;
            node2.f43400e = null;
            node2 = node3;
        }
        node.f43401f = node;
        node.f43400e = node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Node nodeA = null;
        if (obj != null) {
            try {
                nodeA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return nodeA != null;
    }

    public final void d(Node node, boolean z) {
        Node node2;
        Node node3;
        int i2;
        if (z) {
            Node node4 = node.f43401f;
            node4.f43400e = node.f43400e;
            node.f43400e.f43401f = node4;
            node.f43401f = null;
            node.f43400e = null;
        }
        Node node5 = node.f43399c;
        Node node6 = node.d;
        Node node7 = node.f43398b;
        int i3 = 0;
        if (node5 == null || node6 == null) {
            if (node5 != null) {
                e(node, node5);
                node.f43399c = null;
            } else if (node6 != null) {
                e(node, node6);
                node.d = null;
            } else {
                e(node, null);
            }
            c(node7, false);
            this.f43385e--;
            this.f43386f++;
            return;
        }
        if (node5.f43404j > node6.f43404j) {
            Node node8 = node5.d;
            while (true) {
                Node node9 = node8;
                node3 = node5;
                node5 = node9;
                if (node5 == null) {
                    break;
                } else {
                    node8 = node5.d;
                }
            }
        } else {
            Node node10 = node6.f43399c;
            while (true) {
                node2 = node6;
                node6 = node10;
                if (node6 == null) {
                    break;
                } else {
                    node10 = node6.f43399c;
                }
            }
            node3 = node2;
        }
        d(node3, false);
        Node node11 = node.f43399c;
        if (node11 != null) {
            i2 = node11.f43404j;
            node3.f43399c = node11;
            node11.f43398b = node3;
            node.f43399c = null;
        } else {
            i2 = 0;
        }
        Node node12 = node.d;
        if (node12 != null) {
            i3 = node12.f43404j;
            node3.d = node12;
            node12.f43398b = node3;
            node.d = null;
        }
        node3.f43404j = Math.max(i2, i3) + 1;
        e(node, node3);
    }

    public final void e(Node node, Node node2) {
        Node node3 = node.f43398b;
        node.f43398b = null;
        if (node2 != null) {
            node2.f43398b = node3;
        }
        if (node3 == null) {
            int i2 = node.f43402h;
            Node[] nodeArr = this.f43384c;
            nodeArr[i2 & (nodeArr.length - 1)] = node2;
        } else if (node3.f43399c == node) {
            node3.f43399c = node2;
        } else {
            node3.d = node2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        EntrySet entrySet = this.f43387h;
        if (entrySet != null) {
            return entrySet;
        }
        EntrySet entrySet2 = new EntrySet();
        this.f43387h = entrySet2;
        return entrySet2;
    }

    public final void f(Node node) {
        Node node2 = node.f43399c;
        Node node3 = node.d;
        Node node4 = node3.f43399c;
        Node node5 = node3.d;
        node.d = node4;
        if (node4 != null) {
            node4.f43398b = node;
        }
        e(node, node3);
        node3.f43399c = node;
        node.f43398b = node3;
        int iMax = Math.max(node2 != null ? node2.f43404j : 0, node4 != null ? node4.f43404j : 0) + 1;
        node.f43404j = iMax;
        node3.f43404j = Math.max(iMax, node5 != null ? node5.f43404j : 0) + 1;
    }

    public final void g(Node node) {
        Node node2 = node.f43399c;
        Node node3 = node.d;
        Node node4 = node2.f43399c;
        Node node5 = node2.d;
        node.f43399c = node5;
        if (node5 != null) {
            node5.f43398b = node;
        }
        e(node, node2);
        node2.d = node;
        node.f43398b = node2;
        int iMax = Math.max(node3 != null ? node3.f43404j : 0, node5 != null ? node5.f43404j : 0) + 1;
        node.f43404j = iMax;
        node2.f43404j = Math.max(iMax, node4 != null ? node4.f43404j : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Node nodeA;
        if (obj != null) {
            try {
                nodeA = a(obj, false);
            } catch (ClassCastException unused) {
                nodeA = null;
            }
        } else {
            nodeA = null;
        }
        if (nodeA != null) {
            return nodeA.f43403i;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        KeySet keySet = this.f43388i;
        if (keySet != null) {
            return keySet;
        }
        KeySet keySet2 = new KeySet();
        this.f43388i = keySet2;
        return keySet2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            r81.d("key == null");
            return null;
        }
        Node nodeA = a(obj, true);
        Object obj3 = nodeA.f43403i;
        nodeA.f43403i = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Node nodeA;
        if (obj != null) {
            try {
                nodeA = a(obj, false);
            } catch (ClassCastException unused) {
                nodeA = null;
            }
        } else {
            nodeA = null;
        }
        if (nodeA != null) {
            d(nodeA, true);
        }
        if (nodeA != null) {
            return nodeA.f43403i;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f43385e;
    }

    public static final class Node<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Node f43398b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Node f43399c;
        public Node d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Node f43400e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Node f43401f;
        public final Object g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f43402h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f43403i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f43404j;

        public Node(Node node, Object obj, int i2, Node node2, Node node3) {
            this.f43398b = node;
            this.g = obj;
            this.f43402h = i2;
            this.f43404j = 1;
            this.f43400e = node2;
            this.f43401f = node3;
            node3.f43400e = this;
            node2.f43401f = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = this.g;
                if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                    Object obj3 = this.f43403i;
                    if (obj3 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (obj3.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f43403i;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Object obj = this.g;
            int iHashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.f43403i;
            return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            Object obj2 = this.f43403i;
            this.f43403i = obj;
            return obj2;
        }

        public final String toString() {
            return this.g + "=" + this.f43403i;
        }

        public Node() {
            this.g = null;
            this.f43402h = -1;
            this.f43401f = this;
            this.f43400e = this;
        }
    }
}
