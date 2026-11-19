package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ClassicBuiltinSpecialProperties {
    public static String a(CallableMemberDescriptor callableMemberDescriptor) {
        Name name;
        KotlinBuiltIns.A(callableMemberDescriptor);
        CallableMemberDescriptor callableMemberDescriptorB = DescriptorUtilsKt.b(DescriptorUtilsKt.k(callableMemberDescriptor), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.ClassicBuiltinSpecialProperties$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) obj;
                callableMemberDescriptor2.getClass();
                return Boolean.valueOf(ClassicBuiltinSpecialProperties.b(callableMemberDescriptor2));
            }
        });
        if (callableMemberDescriptorB == null || (name = (Name) BuiltinSpecialProperties.f72825a.get(DescriptorUtilsKt.g(callableMemberDescriptorB))) == null) {
            return null;
        }
        return name.b();
    }

    public static boolean b(CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        if (!BuiltinSpecialProperties.d.contains(callableMemberDescriptor.getName())) {
            return false;
        }
        if (CollectionsKt.u(BuiltinSpecialProperties.f72827c, DescriptorUtilsKt.c(callableMemberDescriptor)) && callableMemberDescriptor.h().isEmpty()) {
            return true;
        }
        if (!KotlinBuiltIns.A(callableMemberDescriptor)) {
            return false;
        }
        Collection collectionI = callableMemberDescriptor.i();
        collectionI.getClass();
        Collection<CallableMemberDescriptor> collection = collectionI;
        if (collection.isEmpty()) {
            return false;
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : collection) {
            callableMemberDescriptor2.getClass();
            if (b(callableMemberDescriptor2)) {
                return true;
            }
        }
        return false;
    }
}
