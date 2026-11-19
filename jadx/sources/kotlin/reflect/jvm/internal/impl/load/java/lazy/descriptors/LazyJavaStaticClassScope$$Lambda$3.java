package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;

/* JADX INFO: loaded from: classes4.dex */
class LazyJavaStaticClassScope$$Lambda$3 implements DFS.Neighbors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LazyJavaStaticClassScope$$Lambda$3 f73064a = new LazyJavaStaticClassScope$$Lambda$3();

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
    public final Iterable a(Object obj) {
        int i2 = LazyJavaStaticClassScope.p;
        Collection collectionI = ((ClassDescriptor) obj).j().i();
        collectionI.getClass();
        return new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(SequencesKt.s(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(collectionI), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$$Lambda$4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                int i3 = LazyJavaStaticClassScope.p;
                ClassifierDescriptor classifierDescriptorY = ((KotlinType) obj2).H0().y();
                if (classifierDescriptorY instanceof ClassDescriptor) {
                    return (ClassDescriptor) classifierDescriptorY;
                }
                return null;
            }
        }));
    }
}
