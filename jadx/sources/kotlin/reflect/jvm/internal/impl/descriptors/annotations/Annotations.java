package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public interface Annotations extends Iterable<AnnotationDescriptor>, KMappedMarker {

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Annotations$Companion$EMPTY$1 f72432a = new Annotations$Companion$EMPTY$1();

        public static Annotations a(List list) {
            return list.isEmpty() ? f72432a : new AnnotationsImpl(list);
        }
    }

    public static final class DefaultImpls {
        public static AnnotationDescriptor a(Annotations annotations, FqName fqName) {
            AnnotationDescriptor next;
            fqName.getClass();
            Iterator<AnnotationDescriptor> it = annotations.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (Intrinsics.c(next.c(), fqName)) {
                    return next;
                }
            }
            next = null;
            return next;
        }

        public static boolean b(Annotations annotations, FqName fqName) {
            fqName.getClass();
            return annotations.j(fqName) != null;
        }
    }

    boolean C1(FqName fqName);

    boolean isEmpty();

    AnnotationDescriptor j(FqName fqName);
}
