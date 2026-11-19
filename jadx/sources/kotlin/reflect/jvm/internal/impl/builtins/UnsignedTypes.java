package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UnsignedTypes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f72281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f72282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f72283c;
    public static final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LinkedHashSet f72284e;

    static {
        UnsignedType[] unsignedTypeArrValues = UnsignedType.values();
        ArrayList arrayList = new ArrayList(unsignedTypeArrValues.length);
        for (UnsignedType unsignedType : unsignedTypeArrValues) {
            arrayList.add(unsignedType.c());
        }
        f72281a = CollectionsKt.B0(arrayList);
        UnsignedArrayType[] unsignedArrayTypeArrValues = UnsignedArrayType.values();
        ArrayList arrayList2 = new ArrayList(unsignedArrayTypeArrValues.length);
        for (UnsignedArrayType unsignedArrayType : unsignedArrayTypeArrValues) {
            arrayList2.add(unsignedArrayType.a());
        }
        f72282b = CollectionsKt.B0(arrayList2);
        f72283c = new HashMap();
        d = new HashMap();
        MapsKt.e(new Pair(UnsignedArrayType.UBYTEARRAY, Name.e("ubyteArrayOf")), new Pair(UnsignedArrayType.USHORTARRAY, Name.e("ushortArrayOf")), new Pair(UnsignedArrayType.UINTARRAY, Name.e("uintArrayOf")), new Pair(UnsignedArrayType.ULONGARRAY, Name.e("ulongArrayOf")));
        UnsignedType[] unsignedTypeArrValues2 = UnsignedType.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (UnsignedType unsignedType2 : unsignedTypeArrValues2) {
            linkedHashSet.add(unsignedType2.a().f());
        }
        f72284e = linkedHashSet;
        for (UnsignedType unsignedType3 : UnsignedType.values()) {
            f72283c.put(unsignedType3.a(), unsignedType3.b());
            d.put(unsignedType3.b(), unsignedType3.a());
        }
    }

    public static final boolean a(KotlinType kotlinType) {
        ClassifierDescriptor classifierDescriptorY;
        kotlinType.getClass();
        if (TypeUtils.o(kotlinType) || (classifierDescriptorY = kotlinType.H0().y()) == null) {
            return false;
        }
        DeclarationDescriptor declarationDescriptorD = classifierDescriptorY.d();
        return (declarationDescriptorD instanceof PackageFragmentDescriptor) && Intrinsics.c(((PackageFragmentDescriptor) declarationDescriptorD).c(), StandardNames.l) && f72281a.contains(classifierDescriptorY.getName());
    }
}
