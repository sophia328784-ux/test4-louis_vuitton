package kotlin.sequences;

import defpackage.b21;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B-\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/sequences/GeneratorSequence;", "", "T", "Lkotlin/sequences/Sequence;", "Lkotlin/Function0;", "getInitialValue", "Lkotlin/Function1;", "getNextValue", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class GeneratorSequence<T> implements Sequence<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f74467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f74468b;

    /* JADX INFO: renamed from: kotlin.sequences.GeneratorSequence$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010(\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/sequences/GeneratorSequence$iterator$1", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class AnonymousClass1 implements Iterator<Object>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f74469b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f74470c = -2;

        public AnonymousClass1() {
        }

        public final void a() {
            Object objInvoke;
            int i2 = this.f74470c;
            GeneratorSequence generatorSequence = GeneratorSequence.this;
            if (i2 == -2) {
                objInvoke = generatorSequence.f74467a.mo47invoke();
            } else {
                Function1 function1 = generatorSequence.f74468b;
                Object obj = this.f74469b;
                obj.getClass();
                objInvoke = function1.invoke(obj);
            }
            this.f74469b = objInvoke;
            this.f74470c = objInvoke == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f74470c < 0) {
                a();
            }
            return this.f74470c == 1;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f74470c < 0) {
                a();
            }
            if (this.f74470c == 0) {
                b21.x();
                return null;
            }
            Object obj = this.f74469b;
            obj.getClass();
            this.f74470c = -1;
            return obj;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public GeneratorSequence(Function0<? extends T> function0, Function1<? super T, ? extends T> function1) {
        function0.getClass();
        function1.getClass();
        this.f74467a = function0;
        this.f74468b = function1;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new AnonymousClass1();
    }
}
