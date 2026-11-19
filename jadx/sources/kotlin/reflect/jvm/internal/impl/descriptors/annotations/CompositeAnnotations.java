package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.sequences.FlatteningSequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CompositeAnnotations implements Annotations {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f72438b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CompositeAnnotations(Annotations... annotationsArr) {
        this((List<? extends Annotations>) ArraysKt.W(annotationsArr));
        annotationsArr.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean C1(FqName fqName) {
        fqName.getClass();
        Iterator it = CollectionsKt.o(this.f72438b).f71766a.iterator();
        while (it.hasNext()) {
            if (((Annotations) it.next()).C1(fqName)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean isEmpty() {
        List list = this.f72438b;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!((Annotations) it.next()).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator<AnnotationDescriptor> iterator() {
        return new FlatteningSequence.AnonymousClass1();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final AnnotationDescriptor j(final FqName fqName) {
        fqName.getClass();
        return (AnnotationDescriptor) SequencesKt.h(SequencesKt.s(CollectionsKt.o(this.f72438b), new Function1(fqName) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final FqName f72439b;

            {
                this.f72439b = fqName;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Annotations annotations = (Annotations) obj;
                annotations.getClass();
                return annotations.j(this.f72439b);
            }
        }));
    }

    public CompositeAnnotations(List<? extends Annotations> list) {
        list.getClass();
        this.f72438b = list;
    }
}
