package kotlin.reflect;

import defpackage.az;
import defpackage.b21;
import defpackage.md;
import defpackage.v40;
import defpackage.zy0;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.KTypeParameterBase;
import kotlin.jvm.internal.TypeParameterReference;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class TypesJVMKt {

    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f71966a;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f71966a = iArr;
        }
    }

    public static final String a(Type type) {
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (!cls.isArray()) {
            return cls.getName();
        }
        Sequence sequenceN = SequencesKt.n(type, TypesJVMKt$typeToString$unwrap$1.f71967b);
        return ((Class) SequencesKt.q(sequenceN)).getName() + StringsKt.H(SequencesKt.c(sequenceN), "[]");
    }

    public static final Type b(KType kType, boolean z) {
        KClassifier f71931b = kType.getF71931b();
        if (f71931b instanceof KTypeParameter) {
            if (!(f71931b instanceof KTypeParameterBase)) {
                return new ObsoleteFallbackTypeVariableImpl((KTypeParameter) f71931b);
            }
            KTypeParameterBase kTypeParameterBase = (KTypeParameterBase) f71931b;
            GenericDeclaration genericDeclaration = (GenericDeclaration) kTypeParameterBase.f71914c.getF71699b();
            if (genericDeclaration == null) {
                b21.p(kType, "javaType is not supported for this type: ");
                return null;
            }
            TypeVariable<?>[] typeParameters = genericDeclaration.getTypeParameters();
            typeParameters.getClass();
            TypeVariable<?> typeVariable = null;
            boolean z2 = false;
            for (TypeVariable<?> typeVariable2 : typeParameters) {
                if (Intrinsics.c(typeVariable2.getName(), ((TypeParameterReference) kTypeParameterBase).d)) {
                    if (z2) {
                        md.n("Array contains more than one matching element.");
                        return null;
                    }
                    z2 = true;
                    typeVariable = typeVariable2;
                }
            }
            if (z2) {
                typeVariable.getClass();
                return typeVariable;
            }
            zy0.c("Array contains no element matching the predicate.");
            return null;
        }
        if (!(f71931b instanceof KClass)) {
            b21.p(kType, "Unsupported type classifier: ");
            return null;
        }
        KClass kClass = (KClass) f71931b;
        Class clsC = z ? JvmClassMappingKt.c(kClass) : JvmClassMappingKt.b(kClass);
        List f71932c = kType.getF71932c();
        if (f71932c.isEmpty()) {
            return clsC;
        }
        if (!clsC.isArray()) {
            return c(f71932c, clsC);
        }
        if (clsC.getComponentType().isPrimitive()) {
            return clsC;
        }
        KTypeProjection kTypeProjection = (KTypeProjection) CollectionsKt.j0(f71932c);
        if (kTypeProjection == null) {
            az.m(kType, "kotlin.Array must have exactly one type argument: ");
            return null;
        }
        KVariance kVariance = kTypeProjection.f71959a;
        KType kType2 = kTypeProjection.f71960b;
        int i2 = kVariance == null ? -1 : WhenMappings.f71966a[kVariance.ordinal()];
        if (i2 == -1 || i2 == 1) {
            return clsC;
        }
        if (i2 != 2 && i2 != 3) {
            v40.g();
            return null;
        }
        kType2.getClass();
        Type typeB = b(kType2, false);
        return typeB instanceof Class ? clsC : new GenericArrayTypeImpl(typeB);
    }

    public static final Type c(List list, Class cls) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(d((KTypeProjection) it.next()));
            }
            return new ParameterizedTypeImpl(cls, null, arrayList);
        }
        if (Modifier.isStatic(cls.getModifiers())) {
            List list3 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(d((KTypeProjection) it2.next()));
            }
            return new ParameterizedTypeImpl(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        Type typeC = c(list.subList(length, list.size()), declaringClass);
        List listSubList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(listSubList, 10));
        Iterator it3 = listSubList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(d((KTypeProjection) it3.next()));
        }
        return new ParameterizedTypeImpl(cls, typeC, arrayList3);
    }

    public static final Type d(KTypeProjection kTypeProjection) {
        KVariance kVariance = kTypeProjection.f71959a;
        if (kVariance == null) {
            WildcardTypeImpl.INSTANCE.getClass();
            return WildcardTypeImpl.f71968e;
        }
        KType kType = kTypeProjection.f71960b;
        kType.getClass();
        int i2 = WhenMappings.f71966a[kVariance.ordinal()];
        if (i2 == 1) {
            return new WildcardTypeImpl(null, b(kType, true));
        }
        if (i2 == 2) {
            return b(kType, true);
        }
        if (i2 == 3) {
            return new WildcardTypeImpl(b(kType, true), null);
        }
        v40.g();
        return null;
    }
}
