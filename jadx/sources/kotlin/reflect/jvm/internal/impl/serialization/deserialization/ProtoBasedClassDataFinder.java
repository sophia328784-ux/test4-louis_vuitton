package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoBasedClassDataFinder implements ClassDataFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NameResolver f74045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BinaryVersion f74046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f74047c;
    public final LinkedHashMap d;

    public ProtoBasedClassDataFinder(ProtoBuf$PackageFragment protoBuf$PackageFragment, NameResolver nameResolver, BinaryVersion binaryVersion, Function1<? super ClassId, ? extends SourceElement> function1) {
        protoBuf$PackageFragment.getClass();
        nameResolver.getClass();
        binaryVersion.getClass();
        function1.getClass();
        this.f74045a = nameResolver;
        this.f74046b = binaryVersion;
        this.f74047c = function1;
        List list = protoBuf$PackageFragment.f73430h;
        list.getClass();
        List list2 = list;
        int iG = MapsKt.g(CollectionsKt.t(list2, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iG < 16 ? 16 : iG);
        for (Object obj : list2) {
            linkedHashMap.put(NameResolverUtilKt.a(this.f74045a, ((ProtoBuf$Class) obj).f73331f), obj);
        }
        this.d = linkedHashMap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder
    public final ClassData a(ClassId classId) {
        classId.getClass();
        ProtoBuf$Class protoBuf$Class = (ProtoBuf$Class) this.d.get(classId);
        if (protoBuf$Class == null) {
            return null;
        }
        return new ClassData(this.f74045a, protoBuf$Class, this.f74046b, (SourceElement) this.f74047c.invoke(classId));
    }
}
