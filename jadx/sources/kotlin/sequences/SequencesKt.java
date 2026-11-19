package kotlin.sequences;

import defpackage.b21;
import defpackage.bo0;
import defpackage.jm0;
import defpackage.n00;
import defpackage.xn0;
import defpackage.yt0;
import defpackage.zy0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/sequences/SequencesKt__SequenceBuilderKt", "kotlin/sequences/SequencesKt__SequencesJVMKt", "kotlin/sequences/SequencesKt__SequencesKt", "kotlin/sequences/SequencesKt___SequencesJvmKt", "kotlin/sequences/SequencesKt___SequencesKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class SequencesKt extends SequencesKt___SequencesKt {
    public static ConstrainedOnceSequence b(final Iterator it) {
        it.getClass();
        return new ConstrainedOnceSequence(new Sequence<Object>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            /* JADX INFO: renamed from: iterator, reason: from getter */
            public final Iterator getF74480a() {
                return it;
            }
        });
    }

    public static int c(Sequence sequence) {
        sequence.getClass();
        Iterator it = sequence.getF74480a();
        int i2 = 0;
        while (it.hasNext()) {
            it.next();
            i2++;
            if (i2 < 0) {
                CollectionsKt.s0();
                throw null;
            }
        }
        return i2;
    }

    public static Sequence d(Sequence sequence, int i2) {
        sequence.getClass();
        if (i2 < 0) {
            b21.n(n00.m(i2, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i2 == 0) {
            return sequence;
        }
        return sequence instanceof DropTakeSequence ? ((DropTakeSequence) sequence).a(i2) : new DropSequence(sequence, i2);
    }

    public static Sequence e() {
        return EmptySequence.f74454a;
    }

    public static FilteringSequence f(Sequence sequence, Function1 function1) {
        sequence.getClass();
        function1.getClass();
        return new FilteringSequence(sequence, true, function1);
    }

    public static FilteringSequence g(Sequence sequence, Function1 function1) {
        sequence.getClass();
        function1.getClass();
        return new FilteringSequence(sequence, false, function1);
    }

    public static Object h(Sequence sequence) {
        Iterator it = sequence.getF74480a();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static FlatteningSequence i(Sequence sequence, Function1 function1) {
        sequence.getClass();
        function1.getClass();
        return new FlatteningSequence(sequence, function1, SequencesKt___SequencesKt$flatMap$2.f74486b);
    }

    public static FlatteningSequence j(Sequence sequence, Function1 function1) {
        sequence.getClass();
        function1.getClass();
        return new FlatteningSequence(sequence, function1, SequencesKt___SequencesKt$flatMap$1.f74485b);
    }

    public static FlatteningSequence k(Sequence sequence) {
        return SequencesKt__SequencesKt.a(sequence, new yt0(27));
    }

    public static ConstrainedOnceSequence l(Function0 function0) {
        return new ConstrainedOnceSequence(new GeneratorSequence(function0, new bo0(function0, 7)));
    }

    public static Sequence m(jm0 jm0Var, Function1 function1) {
        function1.getClass();
        return new GeneratorSequence(jm0Var, function1);
    }

    public static Sequence n(Object obj, Function1 function1) {
        function1.getClass();
        return obj == null ? EmptySequence.f74454a : new GeneratorSequence(new xn0(obj, 27), function1);
    }

    public static Iterator o(Function2 function2) {
        function2.getClass();
        SequenceBuilderIterator sequenceBuilderIterator = new SequenceBuilderIterator();
        sequenceBuilderIterator.f74478e = IntrinsicsKt.a(sequenceBuilderIterator, function2, sequenceBuilderIterator);
        return sequenceBuilderIterator;
    }

    public static String p(Sequence sequence, String str) throws IOException {
        sequence.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i2 = 0;
        for (Object obj : sequence) {
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) str);
            }
            StringsKt.j(sb, obj, null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public static Object q(Sequence sequence) {
        sequence.getClass();
        Iterator it = sequence.getF74480a();
        if (!it.hasNext()) {
            zy0.c("Sequence is empty.");
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static TransformingSequence r(Sequence sequence, Function1 function1) {
        sequence.getClass();
        function1.getClass();
        return new TransformingSequence(sequence, function1);
    }

    public static FilteringSequence s(Sequence sequence, Function1 function1) {
        sequence.getClass();
        function1.getClass();
        return g(new TransformingSequence(sequence, function1), new yt0(28));
    }

    public static FlatteningSequence t(FlatteningSequence flatteningSequence, Iterable iterable) {
        iterable.getClass();
        Sequence sequenceE = ArraysKt.e(new Sequence[]{flatteningSequence, new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(iterable)});
        sequenceE.getClass();
        return SequencesKt__SequencesKt.a(sequenceE, new yt0(26));
    }

    public static FlatteningSequence u(SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1 sequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1, FlatteningSequence flatteningSequence) {
        Sequence sequenceE = ArraysKt.e(new Sequence[]{sequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1, flatteningSequence});
        sequenceE.getClass();
        return SequencesKt__SequencesKt.a(sequenceE, new yt0(26));
    }

    public static FlatteningSequence v(TransformingSequence transformingSequence, Object obj) {
        Sequence sequenceE = ArraysKt.e(new Sequence[]{transformingSequence, new SequencesKt__SequencesKt$sequenceOf$$inlined$Sequence$1(obj)});
        sequenceE.getClass();
        return SequencesKt__SequencesKt.a(sequenceE, new yt0(26));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Sequence w(ConstrainedOnceSequence constrainedOnceSequence) {
        return constrainedOnceSequence instanceof DropTakeSequence ? ((DropTakeSequence) constrainedOnceSequence).take() : new TakeSequence(constrainedOnceSequence, 4);
    }

    public static List x(Sequence sequence) {
        sequence.getClass();
        Iterator it = sequence.getF74480a();
        if (!it.hasNext()) {
            return EmptyList.f71768b;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return CollectionsKt.O(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
