package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public final class FilteredAnnotations implements Annotations {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Annotations f72441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f72442c;
    public final Function1 d;

    public FilteredAnnotations(Annotations annotations, boolean z, Function1<? super FqName, Boolean> function1) {
        annotations.getClass();
        function1.getClass();
        this.f72441b = annotations;
        this.f72442c = z;
        this.d = function1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean C1(FqName fqName) {
        fqName.getClass();
        if (((Boolean) this.d.invoke(fqName)).booleanValue()) {
            return this.f72441b.C1(fqName);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean isEmpty() {
        boolean z;
        Annotations annotations = this.f72441b;
        if (!(annotations instanceof Collection) || !((Collection) annotations).isEmpty()) {
            Iterator<AnnotationDescriptor> it = annotations.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                FqName fqNameC = it.next().c();
                if (fqNameC != null && ((Boolean) this.d.invoke(fqNameC)).booleanValue()) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        if (this.f72442c) {
            return !z;
        }
        return z;
    }

    @Override // java.lang.Iterable
    public final Iterator<AnnotationDescriptor> iterator() {
        ArrayList arrayList = new ArrayList();
        for (AnnotationDescriptor annotationDescriptor : this.f72441b) {
            FqName fqNameC = annotationDescriptor.c();
            if (fqNameC != null && ((Boolean) this.d.invoke(fqNameC)).booleanValue()) {
                arrayList.add(annotationDescriptor);
            }
        }
        return arrayList.iterator();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final AnnotationDescriptor j(FqName fqName) {
        fqName.getClass();
        if (((Boolean) this.d.invoke(fqName)).booleanValue()) {
            return this.f72441b.j(fqName);
        }
        return null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FilteredAnnotations(Annotations annotations, Function1<? super FqName, Boolean> function1) {
        this(annotations, false, function1);
        annotations.getClass();
        function1.getClass();
    }
}
