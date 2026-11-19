package kotlin.reflect.jvm.internal;

import io.jsonwebtoken.JwtParser;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "<init>", "()V", "Data", "FunctionJvmDescriptor", "Companion", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class KDeclarationContainerImpl implements ClassBasedDeclarationContainer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f72134b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f72135c = DefaultConstructorMarker.class;
    public static final Regex d = new Regex("<v#(\\d+)>");

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R$\u0010\u0004\u001a\u0012\u0012\u0002\b\u0003 \u0003*\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Companion;", "", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "DEFAULT_CONSTRUCTOR_MARKER", "Ljava/lang/Class;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b¦\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "", "<init>", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public abstract class Data {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ KProperty[] f72140b = {Reflection.f71922a.h(new PropertyReference1Impl(Data.class, "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;", 0))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72141a;

        public Data(final KDeclarationContainerImpl kDeclarationContainerImpl) {
            this.f72141a = ReflectProperties.a(null, new Function0(kDeclarationContainerImpl) { // from class: kotlin.reflect.jvm.internal.KDeclarationContainerImpl$Data$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KDeclarationContainerImpl f72142b;

                {
                    this.f72142b = kDeclarationContainerImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KDeclarationContainerImpl.Data.f72140b;
                    return ModuleByClassLoaderKt.a(this.f72142b.getF71916b());
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$FunctionJvmDescriptor;", "", "", "Ljava/lang/Class;", "parameters", "returnType", "<init>", "(Ljava/util/List;Ljava/lang/Class;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class FunctionJvmDescriptor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f72143a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f72144b;

        public FunctionJvmDescriptor(List<? extends Class<?>> list, Class<?> cls) {
            list.getClass();
            this.f72143a = list;
            this.f72144b = cls;
        }
    }

    public static void D(ArrayList arrayList, List list, boolean z) {
        Object objN = CollectionsKt.N(list);
        Class<Object> cls = f72135c;
        if (Intrinsics.c(objN, cls)) {
            list = list.subList(0, list.size() - 1);
        }
        arrayList.addAll(list);
        int size = (list.size() + 31) / 32;
        for (int i2 = 0; i2 < size; i2++) {
            Class cls2 = Integer.TYPE;
            cls2.getClass();
            arrayList.add(cls2);
        }
        if (!z) {
            cls = Object.class;
        }
        cls.getClass();
        arrayList.add(cls);
    }

    public static Method N(Class cls, String str, Class[] clsArr, Class cls2, boolean z) {
        Class clsA;
        Method methodN;
        if (z) {
            clsArr[0] = cls;
        }
        Method methodR = R(cls, str, clsArr, cls2);
        if (methodR != null) {
            return methodR;
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null && (methodN = N(superclass, str, clsArr, cls2, z)) != null) {
            return methodN;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        interfaces.getClass();
        for (Class<?> cls3 : interfaces) {
            cls3.getClass();
            Method methodN2 = N(cls3, str, clsArr, cls2, z);
            if (methodN2 != null) {
                return methodN2;
            }
            if (z && (clsA = ReflectJavaClassFinderKt.a(ReflectClassUtilKt.d(cls3), cls3.getName().concat("$DefaultImpls"))) != null) {
                clsArr[0] = cls3;
                Method methodR2 = R(clsA, str, clsArr, cls2);
                if (methodR2 != null) {
                    return methodR2;
                }
            }
        }
        return null;
    }

    public static Constructor Q(List list, Class cls) {
        try {
            Class[] clsArr = (Class[]) list.toArray(new Class[0]);
            return cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Method R(Class cls, String str, Class[] clsArr, Class cls2) {
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            if (Intrinsics.c(declaredMethod.getReturnType(), cls2)) {
                return declaredMethod;
            }
            Method[] declaredMethods = cls.getDeclaredMethods();
            declaredMethods.getClass();
            for (Method method : declaredMethods) {
                if (Intrinsics.c(method.getName(), str) && Intrinsics.c(method.getReturnType(), cls2) && Arrays.equals(method.getParameterTypes(), clsArr)) {
                    return method;
                }
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final Method G(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        if (str.equals("<init>")) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(getF71916b());
        }
        FunctionJvmDescriptor functionJvmDescriptorO = O(str2, true);
        D(arrayList, functionJvmDescriptorO.f72143a, false);
        Class clsL = L();
        String strConcat = str.concat("$default");
        Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
        Class cls = functionJvmDescriptorO.f72144b;
        cls.getClass();
        return N(clsL, strConcat, clsArr, cls, z);
    }

    public final Method H(String str, String str2) {
        Method methodN;
        str.getClass();
        str2.getClass();
        if (str.equals("<init>")) {
            return null;
        }
        FunctionJvmDescriptor functionJvmDescriptorO = O(str2, true);
        Class[] clsArr = (Class[]) functionJvmDescriptorO.f72143a.toArray(new Class[0]);
        Class cls = functionJvmDescriptorO.f72144b;
        cls.getClass();
        Method methodN2 = N(L(), str, clsArr, cls, false);
        if (methodN2 != null) {
            return methodN2;
        }
        if (!L().isInterface() || (methodN = N(Object.class, str, clsArr, cls, false)) == null) {
            return null;
        }
        return methodN;
    }

    public abstract Collection I();

    public abstract Collection J(Name name);

    public abstract PropertyDescriptor K(int i2);

    public Class L() {
        Class f71916b = getF71916b();
        List list = ReflectClassUtilKt.f72602a;
        f71916b.getClass();
        Class cls = (Class) ReflectClassUtilKt.f72604c.get(f71916b);
        return cls == null ? getF71916b() : cls;
    }

    public abstract Collection M(Name name);

    public final FunctionJvmDescriptor O(String str, boolean z) {
        int iU;
        ArrayList arrayList = new ArrayList();
        int i2 = 1;
        while (str.charAt(i2) != ')') {
            int i3 = i2;
            while (str.charAt(i3) == '[') {
                i3++;
            }
            char cCharAt = str.charAt(i3);
            if (StringsKt.l("VZCBSIFJD", cCharAt)) {
                iU = i3 + 1;
            } else {
                if (cCharAt != 'L') {
                    throw new KotlinReflectionInternalError("Unknown type prefix in the method signature: ".concat(str));
                }
                iU = StringsKt.u(str, ';', i2, 4) + 1;
            }
            arrayList.add(P(i2, iU, str));
            i2 = iU;
        }
        return new FunctionJvmDescriptor(arrayList, z ? P(i2 + 1, str.length(), str) : null);
    }

    public final Class P(int i2, int i3, String str) throws ClassNotFoundException {
        char cCharAt = str.charAt(i2);
        if (cCharAt == 'F') {
            return Float.TYPE;
        }
        if (cCharAt == 'L') {
            ClassLoader classLoaderD = ReflectClassUtilKt.d(getF71908b());
            String strReplace = str.substring(i2 + 1, i3 - 1).replace('/', JwtParser.SEPARATOR_CHAR);
            strReplace.getClass();
            Class<?> clsLoadClass = classLoaderD.loadClass(strReplace);
            clsLoadClass.getClass();
            return clsLoadClass;
        }
        if (cCharAt == 'S') {
            return Short.TYPE;
        }
        if (cCharAt == 'V') {
            Class cls = Void.TYPE;
            cls.getClass();
            return cls;
        }
        if (cCharAt == 'I') {
            return Integer.TYPE;
        }
        if (cCharAt == 'J') {
            return Long.TYPE;
        }
        if (cCharAt == 'Z') {
            return Boolean.TYPE;
        }
        if (cCharAt == '[') {
            return UtilKt.c(P(i2 + 1, i3, str));
        }
        switch (cCharAt) {
            case EACTags.ADDRESS /* 66 */:
                return Byte.TYPE;
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                return Character.TYPE;
            case EACTags.APPLICATION_IMAGE /* 68 */:
                return Double.TYPE;
            default:
                throw new KotlinReflectionInternalError("Unknown type prefix in the method signature: ".concat(str));
        }
    }
}
