package kotlin.sequences;

import defpackage.b21;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00020\u00050\u0004B\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/sequences/SequenceBuilderIterator;", "T", "Lkotlin/sequences/SequenceScope;", "", "Lkotlin/coroutines/Continuation;", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class SequenceBuilderIterator<T> extends SequenceScope<T> implements Iterator<T>, Continuation<Unit>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f74476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f74477c;
    public Iterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Continuation f74478e;

    @Override // kotlin.sequences.SequenceScope
    public final CoroutineSingletons a(Object obj, Continuation continuation) {
        this.f74477c = obj;
        this.f74476b = 3;
        this.f74478e = continuation;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        continuation.getClass();
        return coroutineSingletons;
    }

    @Override // kotlin.sequences.SequenceScope
    public final Object c(Iterator it, Continuation continuation) {
        if (!it.hasNext()) {
            return Unit.f71739a;
        }
        this.d = it;
        this.f74476b = 2;
        this.f74478e = continuation;
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }

    public final RuntimeException d() {
        int i2 = this.f74476b;
        if (i2 == 4) {
            return new NoSuchElementException();
        }
        if (i2 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f74476b);
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return EmptyCoroutineContext.f71840b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i2 = this.f74476b;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 3) {
                        return true;
                    }
                    if (i2 == 4) {
                        return false;
                    }
                    throw d();
                }
                Iterator it = this.d;
                it.getClass();
                if (it.hasNext()) {
                    this.f74476b = 2;
                    return true;
                }
                this.d = null;
            }
            this.f74476b = 5;
            Continuation continuation = this.f74478e;
            continuation.getClass();
            this.f74478e = null;
            Unit unit = Unit.f71739a;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(unit);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f74476b;
        if (i2 == 0 || i2 == 1) {
            if (hasNext()) {
                return next();
            }
            b21.x();
            return null;
        }
        if (i2 == 2) {
            this.f74476b = 1;
            Iterator it = this.d;
            it.getClass();
            return it.next();
        }
        if (i2 != 3) {
            throw d();
        }
        this.f74476b = 0;
        Object obj = this.f74477c;
        this.f74477c = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        ResultKt.b(obj);
        this.f74476b = 4;
    }
}
