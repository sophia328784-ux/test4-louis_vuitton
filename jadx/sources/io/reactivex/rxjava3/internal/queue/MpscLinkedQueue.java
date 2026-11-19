package io.reactivex.rxjava3.internal.queue;

import defpackage.r81;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class MpscLinkedQueue<T> implements SimplePlainQueue<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f71079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f71080c;

    public static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        private static final long serialVersionUID = 2404266111789071508L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f71081b;
    }

    public MpscLinkedQueue() {
        AtomicReference atomicReference = new AtomicReference();
        this.f71079b = atomicReference;
        AtomicReference atomicReference2 = new AtomicReference();
        this.f71080c = atomicReference2;
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode();
        atomicReference2.lazySet(linkedQueueNode);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean isEmpty() {
        return ((LinkedQueueNode) this.f71080c.get()) == ((LinkedQueueNode) this.f71079b.get());
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean offer(Object obj) {
        if (obj == null) {
            r81.d("Null is not a valid element");
            return false;
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode();
        linkedQueueNode.f71081b = obj;
        ((LinkedQueueNode) this.f71079b.getAndSet(linkedQueueNode)).lazySet(linkedQueueNode);
        return true;
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final Object poll() {
        LinkedQueueNode linkedQueueNode;
        AtomicReference atomicReference = this.f71080c;
        LinkedQueueNode linkedQueueNode2 = (LinkedQueueNode) atomicReference.get();
        LinkedQueueNode linkedQueueNode3 = linkedQueueNode2.get();
        if (linkedQueueNode3 != null) {
            Object obj = linkedQueueNode3.f71081b;
            linkedQueueNode3.f71081b = null;
            atomicReference.lazySet(linkedQueueNode3);
            linkedQueueNode2.lazySet(null);
            return obj;
        }
        if (linkedQueueNode2 == ((LinkedQueueNode) this.f71079b.get())) {
            return null;
        }
        do {
            linkedQueueNode = linkedQueueNode2.get();
        } while (linkedQueueNode == null);
        Object obj2 = linkedQueueNode.f71081b;
        linkedQueueNode.f71081b = null;
        atomicReference.lazySet(linkedQueueNode);
        linkedQueueNode2.lazySet(null);
        return obj2;
    }
}
