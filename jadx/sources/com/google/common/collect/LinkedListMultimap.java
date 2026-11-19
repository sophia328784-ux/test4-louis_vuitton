package com.google.common.collect;

import com.google.common.base.Preconditions;
import defpackage.b21;
import defpackage.v7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class LinkedListMultimap<K, V> extends AbstractMultimap<K, V> implements ListMultimap<K, V>, Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient Node f33630f;
    public transient Node g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public transient Map f33631h = new CompactHashMap(12);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public transient int f33632i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public transient int f33633j;

    /* JADX INFO: renamed from: com.google.common.collect.LinkedListMultimap$1, reason: invalid class name */
    class AnonymousClass1 extends AbstractSequentialList<Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f33634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LinkedListMultimap f33635c;

        public AnonymousClass1(LinkedListMultimap linkedListMultimap, Object obj) {
            this.f33634b = obj;
            this.f33635c = linkedListMultimap;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i2) {
            return new ValueForKeyIterator(this.f33634b, i2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            KeyList keyList = (KeyList) this.f33635c.f33631h.get(this.f33634b);
            if (keyList == null) {
                return 0;
            }
            return keyList.f33646c;
        }
    }

    public final class DistinctKeyIterator implements Iterator<K> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashSet f33640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Node f33641c;
        public Node d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f33642e;

        public DistinctKeyIterator() {
            this.f33640b = Sets.e(LinkedListMultimap.this.keySet().size());
            this.f33641c = LinkedListMultimap.this.f33630f;
            this.f33642e = LinkedListMultimap.this.f33633j;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (LinkedListMultimap.this.f33633j == this.f33642e) {
                return this.f33641c != null;
            }
            v7.c();
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            Node node;
            if (LinkedListMultimap.this.f33633j != this.f33642e) {
                v7.c();
                return null;
            }
            Node node2 = this.f33641c;
            if (node2 == null) {
                b21.x();
                return null;
            }
            this.d = node2;
            K key = node2.getKey();
            HashSet hashSet = this.f33640b;
            hashSet.add(key);
            do {
                node = this.f33641c.f33647b;
                this.f33641c = node;
                if (node == null) {
                    break;
                }
            } while (!hashSet.add(node.getKey()));
            return this.d.getKey();
        }

        @Override // java.util.Iterator
        public final void remove() {
            LinkedListMultimap linkedListMultimap = LinkedListMultimap.this;
            if (linkedListMultimap.f33633j != this.f33642e) {
                v7.c();
                return;
            }
            Preconditions.p("no calls to next() since the last call to remove()", this.d != null);
            ValueForKeyIterator valueForKeyIterator = new ValueForKeyIterator(this.d.getKey());
            while (valueForKeyIterator.hasNext()) {
                valueForKeyIterator.next();
                valueForKeyIterator.remove();
            }
            this.d = null;
            this.f33642e = linkedListMultimap.f33633j;
        }
    }

    public static final class KeyList<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Node f33644a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Node f33645b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33646c;

        public KeyList(Node node) {
            this.f33644a = node;
            this.f33645b = node;
            node.f33649e = null;
            node.d = null;
            this.f33646c = 1;
        }
    }

    public static final class Node<K, V> extends AbstractMap.SimpleEntry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Node f33647b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Node f33648c;
        public Node d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Node f33649e;
    }

    public final class NodeIterator implements ListIterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Node f33651c;
        public Node d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Node f33652e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f33653f;

        public NodeIterator(int i2) {
            this.f33653f = LinkedListMultimap.this.f33633j;
            int i3 = LinkedListMultimap.this.f33632i;
            Preconditions.n(i2, i3);
            if (i2 >= i3 / 2) {
                this.f33652e = LinkedListMultimap.this.g;
                this.f33650b = i3;
                while (true) {
                    int i4 = i2 + 1;
                    if (i2 >= i3) {
                        break;
                    }
                    a();
                    Node node = this.f33652e;
                    if (node == null) {
                        b21.x();
                        throw null;
                    }
                    this.d = node;
                    this.f33651c = node;
                    this.f33652e = node.f33648c;
                    this.f33650b--;
                    i2 = i4;
                }
            } else {
                this.f33651c = LinkedListMultimap.this.f33630f;
                while (true) {
                    int i5 = i2 - 1;
                    if (i2 > 0) {
                        a();
                        Node node2 = this.f33651c;
                        if (node2 == null) {
                            b21.x();
                            throw null;
                        }
                        this.d = node2;
                        this.f33652e = node2;
                        this.f33651c = node2.f33647b;
                        this.f33650b++;
                        i2 = i5;
                    }
                }
            }
            this.d = null;
        }

        public final void a() {
            if (LinkedListMultimap.this.f33633j == this.f33653f) {
                return;
            }
            v7.c();
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            a();
            return this.f33651c != null;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            a();
            return this.f33652e != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            a();
            Node node = this.f33651c;
            if (node == null) {
                b21.x();
                return null;
            }
            this.d = node;
            this.f33652e = node;
            this.f33651c = node.f33647b;
            this.f33650b++;
            return node;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f33650b;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            a();
            Node node = this.f33652e;
            if (node == null) {
                b21.x();
                return null;
            }
            this.d = node;
            this.f33651c = node;
            this.f33652e = node.f33648c;
            this.f33650b--;
            return node;
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f33650b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            a();
            Preconditions.p("no calls to next() since the last call to remove()", this.d != null);
            Node node = this.d;
            if (node != this.f33651c) {
                this.f33652e = node.f33648c;
                this.f33650b--;
            } else {
                this.f33651c = node.f33647b;
            }
            LinkedListMultimap linkedListMultimap = LinkedListMultimap.this;
            LinkedListMultimap.l(linkedListMultimap, node);
            this.d = null;
            this.f33653f = linkedListMultimap.f33633j;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            throw new UnsupportedOperationException();
        }
    }

    public static void l(LinkedListMultimap linkedListMultimap, Node node) {
        Node node2 = node.f33648c;
        Node node3 = node.f33647b;
        if (node2 != null) {
            node2.f33647b = node3;
        } else {
            linkedListMultimap.f33630f = node3;
        }
        Node node4 = node.f33647b;
        if (node4 != null) {
            node4.f33648c = node2;
        } else {
            linkedListMultimap.g = node2;
        }
        if (node.f33649e == null && node.d == null) {
            KeyList keyList = (KeyList) linkedListMultimap.f33631h.remove(node.getKey());
            Objects.requireNonNull(keyList);
            keyList.f33646c = 0;
            linkedListMultimap.f33633j++;
        } else {
            KeyList keyList2 = (KeyList) linkedListMultimap.f33631h.get(node.getKey());
            Objects.requireNonNull(keyList2);
            keyList2.f33646c--;
            Node node5 = node.f33649e;
            Node node6 = node.d;
            if (node5 == null) {
                Objects.requireNonNull(node6);
                keyList2.f33644a = node6;
            } else {
                node5.d = node6;
            }
            Node node7 = node.d;
            Node node8 = node.f33649e;
            if (node7 == null) {
                Objects.requireNonNull(node8);
                keyList2.f33645b = node8;
            } else {
                node7.f33649e = node8;
            }
        }
        linkedListMultimap.f33632i--;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f33631h = new CompactLinkedHashMap(3);
        int i2 = objectInputStream.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.f33632i);
        for (Map.Entry entry : (List) super.f()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public final List a(Object obj) {
        ValueForKeyIterator valueForKeyIterator = new ValueForKeyIterator(obj);
        ArrayList arrayList = new ArrayList();
        while (valueForKeyIterator.hasNext()) {
            arrayList.add(valueForKeyIterator.next());
        }
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        ValueForKeyIterator valueForKeyIterator2 = new ValueForKeyIterator(obj);
        while (valueForKeyIterator2.hasNext()) {
            valueForKeyIterator2.next();
            valueForKeyIterator2.remove();
        }
        return listUnmodifiableList;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final boolean b(Object obj) {
        return ((List) super.values()).contains(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Map c() {
        return new Multimaps.AsMap(this);
    }

    @Override // com.google.common.collect.Multimap
    public final void clear() {
        this.f33630f = null;
        this.g = null;
        this.f33631h.clear();
        this.f33632i = 0;
        this.f33633j++;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection d() {
        return new AbstractSequentialList<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.LinkedListMultimap.1EntriesImpl
            @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
            public final ListIterator listIterator(int i2) {
                return new NodeIterator(i2);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return LinkedListMultimap.this.f33632i;
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Set e() {
        return new Sets.ImprovedAbstractSet<Object>() { // from class: com.google.common.collect.LinkedListMultimap.1KeySetImpl
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                return LinkedListMultimap.this.f33631h.containsKey(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return new DistinctKeyIterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                return !LinkedListMultimap.this.a(obj).isEmpty();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                return LinkedListMultimap.this.f33631h.size();
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Collection f() {
        return (List) super.f();
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection g() {
        return new AbstractSequentialList<Object>() { // from class: com.google.common.collect.LinkedListMultimap.1ValuesImpl
            @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
            public final ListIterator listIterator(int i2) {
                final NodeIterator nodeIterator = new NodeIterator(i2);
                return new TransformedListIterator<Map.Entry<Object, Object>, Object>(nodeIterator) { // from class: com.google.common.collect.LinkedListMultimap.1ValuesImpl.1
                    @Override // com.google.common.collect.TransformedIterator
                    public final Object a(Object obj) {
                        return ((Map.Entry) obj).getValue();
                    }

                    @Override // com.google.common.collect.TransformedListIterator, java.util.ListIterator
                    public final void set(Object obj) {
                        NodeIterator nodeIterator2 = nodeIterator;
                        Preconditions.q(nodeIterator2.d != null);
                        nodeIterator2.d.setValue(obj);
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return LinkedListMultimap.this.f33632i;
            }
        };
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public final Collection get(Object obj) {
        return new AnonymousClass1(this, obj);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Iterator j() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final boolean k() {
        return this.f33630f == null;
    }

    public final Node m(Object obj, Object obj2, Node node) {
        Node node2 = new Node(obj, obj2);
        if (this.f33630f == null) {
            this.g = node2;
            this.f33630f = node2;
            this.f33631h.put(obj, new KeyList(node2));
            this.f33633j++;
        } else if (node == null) {
            Node node3 = this.g;
            Objects.requireNonNull(node3);
            node3.f33647b = node2;
            node2.f33648c = this.g;
            this.g = node2;
            KeyList keyList = (KeyList) this.f33631h.get(obj);
            if (keyList == null) {
                this.f33631h.put(obj, new KeyList(node2));
                this.f33633j++;
            } else {
                keyList.f33646c++;
                Node node4 = keyList.f33645b;
                node4.d = node2;
                node2.f33649e = node4;
                keyList.f33645b = node2;
            }
        } else {
            KeyList keyList2 = (KeyList) this.f33631h.get(obj);
            Objects.requireNonNull(keyList2);
            keyList2.f33646c++;
            node2.f33648c = node.f33648c;
            node2.f33649e = node.f33649e;
            node2.f33647b = node;
            node2.d = node;
            Node node5 = node.f33649e;
            if (node5 == null) {
                keyList2.f33644a = node2;
            } else {
                node5.d = node2;
            }
            Node node6 = node.f33648c;
            if (node6 == null) {
                this.f33630f = node2;
            } else {
                node6.f33647b = node2;
            }
            node.f33648c = node2;
            node.f33649e = node2;
        }
        this.f33632i++;
        return node2;
    }

    public final List n() {
        return (List) super.values();
    }

    @Override // com.google.common.collect.Multimap
    public final boolean put(Object obj, Object obj2) {
        m(obj, obj2, null);
        return true;
    }

    @Override // com.google.common.collect.Multimap
    public final int size() {
        return this.f33632i;
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Collection values() {
        throw null;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public final List get(Object obj) {
        return new AnonymousClass1(this, obj);
    }

    public final class ValueForKeyIterator implements ListIterator<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f33654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33655c;
        public Node d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Node f33656e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Node f33657f;

        public ValueForKeyIterator(Object obj, int i2) {
            KeyList keyList = (KeyList) LinkedListMultimap.this.f33631h.get(obj);
            int i3 = keyList == null ? 0 : keyList.f33646c;
            Preconditions.n(i2, i3);
            if (i2 < i3 / 2) {
                this.d = keyList == null ? null : keyList.f33644a;
                while (true) {
                    int i4 = i2 - 1;
                    if (i2 <= 0) {
                        break;
                    }
                    next();
                    i2 = i4;
                }
            } else {
                this.f33657f = keyList == null ? null : keyList.f33645b;
                this.f33655c = i3;
                while (true) {
                    int i5 = i2 + 1;
                    if (i2 >= i3) {
                        break;
                    }
                    previous();
                    i2 = i5;
                }
            }
            this.f33654b = obj;
            this.f33656e = null;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            this.f33657f = LinkedListMultimap.this.m(this.f33654b, obj, this.d);
            this.f33655c++;
            this.f33656e = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.d != null;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f33657f != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            Node node = this.d;
            if (node == null) {
                b21.x();
                return null;
            }
            this.f33656e = node;
            this.f33657f = node;
            this.d = node.d;
            this.f33655c++;
            return node.getValue();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f33655c;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            Node node = this.f33657f;
            if (node == null) {
                b21.x();
                return null;
            }
            this.f33656e = node;
            this.d = node;
            this.f33657f = node.f33649e;
            this.f33655c--;
            return node.getValue();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f33655c - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            Preconditions.p("no calls to next() since the last call to remove()", this.f33656e != null);
            Node node = this.f33656e;
            if (node != this.d) {
                this.f33657f = node.f33649e;
                this.f33655c--;
            } else {
                this.d = node.d;
            }
            LinkedListMultimap.l(LinkedListMultimap.this, node);
            this.f33656e = null;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            Preconditions.q(this.f33656e != null);
            this.f33656e.setValue(obj);
        }

        public ValueForKeyIterator(Object obj) {
            this.f33654b = obj;
            KeyList keyList = (KeyList) LinkedListMultimap.this.f33631h.get(obj);
            this.d = keyList == null ? null : keyList.f33644a;
        }
    }
}
