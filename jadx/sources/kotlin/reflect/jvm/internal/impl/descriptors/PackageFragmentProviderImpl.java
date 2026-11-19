package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class PackageFragmentProviderImpl implements PackageFragmentProviderOptimized {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Collection f72393a;

    public PackageFragmentProviderImpl(Collection<? extends PackageFragmentDescriptor> collection) {
        collection.getClass();
        this.f72393a = collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public final List a(FqName fqName) {
        fqName.getClass();
        Collection collection = this.f72393a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (Intrinsics.c(((PackageFragmentDescriptor) obj).c(), fqName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final void b(FqName fqName, ArrayList arrayList) {
        fqName.getClass();
        for (Object obj : this.f72393a) {
            if (Intrinsics.c(((PackageFragmentDescriptor) obj).c(), fqName)) {
                arrayList.add(obj);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final boolean c(FqName fqName) {
        fqName.getClass();
        Collection collection = this.f72393a;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((PackageFragmentDescriptor) it.next()).c(), fqName)) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public final Collection m(final FqName fqName, Function1 function1) {
        fqName.getClass();
        function1.getClass();
        return SequencesKt.x(SequencesKt.f(SequencesKt.r(CollectionsKt.o(this.f72393a), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                PackageFragmentDescriptor packageFragmentDescriptor = (PackageFragmentDescriptor) obj;
                packageFragmentDescriptor.getClass();
                return packageFragmentDescriptor.c();
            }
        }), new Function1(fqName) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final FqName f72395b;

            {
                this.f72395b = fqName;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FqName fqName2 = (FqName) obj;
                fqName2.getClass();
                return Boolean.valueOf(!fqName2.f73679a.c() && fqName2.b().equals(this.f72395b));
            }
        }));
    }
}
