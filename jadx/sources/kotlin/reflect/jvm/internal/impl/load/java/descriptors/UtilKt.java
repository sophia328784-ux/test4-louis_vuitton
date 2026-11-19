package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UtilKt {
    public static final ArrayList a(ArrayList arrayList, Collection collection, FunctionDescriptor functionDescriptor) {
        KotlinType kotlinTypeF;
        collection.getClass();
        arrayList.size();
        collection.size();
        ArrayList<Pair> arrayListE0 = CollectionsKt.E0(arrayList, collection);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayListE0, 10));
        for (Pair pair : arrayListE0) {
            KotlinType kotlinType = (KotlinType) pair.f71705b;
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) pair.f71706c;
            int index = valueParameterDescriptor.getIndex();
            Annotations annotations = valueParameterDescriptor.getAnnotations();
            Name name = valueParameterDescriptor.getName();
            name.getClass();
            boolean zU0 = valueParameterDescriptor.u0();
            boolean zJ0 = valueParameterDescriptor.j0();
            boolean zH0 = valueParameterDescriptor.h0();
            if (valueParameterDescriptor.o0() != null) {
                int i2 = DescriptorUtilsKt.f73888a;
                ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(functionDescriptor);
                moduleDescriptorC.getClass();
                kotlinTypeF = moduleDescriptorC.g().f(kotlinType);
            } else {
                kotlinTypeF = null;
            }
            KotlinType kotlinType2 = kotlinTypeF;
            SourceElement source = valueParameterDescriptor.getSource();
            source.getClass();
            arrayList2.add(new ValueParameterDescriptorImpl(functionDescriptor, null, index, annotations, name, kotlinType, zU0, zJ0, zH0, kotlinType2, source));
        }
        return arrayList2;
    }

    public static final LazyJavaStaticClassScope b(ClassDescriptor classDescriptor) {
        ClassDescriptor classDescriptor2;
        classDescriptor.getClass();
        int i2 = DescriptorUtilsKt.f73888a;
        Iterator it = classDescriptor.o().H0().i().iterator();
        while (true) {
            if (!it.hasNext()) {
                classDescriptor2 = null;
                break;
            }
            KotlinType kotlinType = (KotlinType) it.next();
            if (!KotlinBuiltIns.y(kotlinType)) {
                ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
                int i3 = DescriptorUtils.f73834a;
                if (DescriptorUtils.l(classifierDescriptorY, ClassKind.CLASS) || DescriptorUtils.l(classifierDescriptorY, ClassKind.ENUM_CLASS)) {
                    classifierDescriptorY.getClass();
                    classDescriptor2 = (ClassDescriptor) classifierDescriptorY;
                    break;
                }
            }
        }
        if (classDescriptor2 == null) {
            return null;
        }
        MemberScope memberScopeE0 = classDescriptor2.e0();
        LazyJavaStaticClassScope lazyJavaStaticClassScope = memberScopeE0 instanceof LazyJavaStaticClassScope ? (LazyJavaStaticClassScope) memberScopeE0 : null;
        return lazyJavaStaticClassScope == null ? b(classDescriptor2) : lazyJavaStaticClassScope;
    }
}
