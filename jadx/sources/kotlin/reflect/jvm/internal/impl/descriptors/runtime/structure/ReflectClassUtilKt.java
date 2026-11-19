package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ReflectClassUtilKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f72602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f72603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f72604c;
    public static final Map d;

    static {
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        int i2 = 0;
        List listP = CollectionsKt.P(reflectionFactory.b(Boolean.TYPE), reflectionFactory.b(Byte.TYPE), reflectionFactory.b(Character.TYPE), reflectionFactory.b(Double.TYPE), reflectionFactory.b(Float.TYPE), reflectionFactory.b(Integer.TYPE), reflectionFactory.b(Long.TYPE), reflectionFactory.b(Short.TYPE));
        f72602a = listP;
        List<KClass> list = listP;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (KClass kClass : list) {
            arrayList.add(new Pair(JvmClassMappingKt.c(kClass), JvmClassMappingKt.d(kClass)));
        }
        f72603b = MapsKt.n(arrayList);
        List<KClass> list2 = f72602a;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        for (KClass kClass2 : list2) {
            arrayList2.add(new Pair(JvmClassMappingKt.d(kClass2), JvmClassMappingKt.c(kClass2)));
        }
        f72604c = MapsKt.n(arrayList2);
        List listP2 = CollectionsKt.P(Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(listP2, 10));
        for (Object obj : listP2) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            arrayList3.add(new Pair((Class) obj, Integer.valueOf(i2)));
            i2 = i3;
        }
        d = MapsKt.n(arrayList3);
    }

    public static final ClassId a(Class cls) {
        cls.getClass();
        if (cls.isPrimitive()) {
            md.n(pq0.m(cls, "Can't compute ClassId for primitive type: "));
            return null;
        }
        if (cls.isArray()) {
            md.n(pq0.m(cls, "Can't compute ClassId for array type: "));
            return null;
        }
        if (cls.getEnclosingMethod() != null || cls.getEnclosingConstructor() != null || cls.getSimpleName().length() == 0) {
            FqName fqName = new FqName(cls.getName());
            FqName fqNameB = fqName.b();
            FqName.Companion companion = FqName.f73678c;
            Name nameG = fqName.f73679a.g();
            companion.getClass();
            return new ClassId(fqNameB, FqName.Companion.a(nameG), true);
        }
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass != null) {
            return a(declaringClass).d(Name.e(cls.getSimpleName()));
        }
        ClassId.Companion companion2 = ClassId.d;
        FqName fqName2 = new FqName(cls.getName());
        companion2.getClass();
        return ClassId.Companion.b(fqName2);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final String b(Class cls) {
        cls.getClass();
        if (!cls.isPrimitive()) {
            if (cls.isArray()) {
                String strReplace = cls.getName().replace(JwtParser.SEPARATOR_CHAR, '/');
                strReplace.getClass();
                return strReplace;
            }
            StringBuilder sb = new StringBuilder("L");
            String strReplace2 = cls.getName().replace(JwtParser.SEPARATOR_CHAR, '/');
            strReplace2.getClass();
            sb.append(strReplace2);
            sb.append(';');
            return sb.toString();
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    return "D";
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    return "I";
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    return NBSSpanMetricUnit.Byte;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    return "C";
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    return "J";
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    return "V";
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    return "Z";
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    return "F";
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    return "S";
                }
                break;
        }
        md.n(pq0.m(cls, "Unsupported primitive type: "));
        return null;
    }

    public static final List c(Type type) {
        type.getClass();
        if (!(type instanceof ParameterizedType)) {
            return EmptyList.f71768b;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getOwnerType() != null) {
            return SequencesKt.x(SequencesKt.i(SequencesKt.n(type, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt$$Lambda$0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ParameterizedType parameterizedType2 = (ParameterizedType) obj;
                    List list = ReflectClassUtilKt.f72602a;
                    parameterizedType2.getClass();
                    Type ownerType = parameterizedType2.getOwnerType();
                    if (ownerType instanceof ParameterizedType) {
                        return (ParameterizedType) ownerType;
                    }
                    return null;
                }
            }), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt$$Lambda$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ParameterizedType parameterizedType2 = (ParameterizedType) obj;
                    List list = ReflectClassUtilKt.f72602a;
                    parameterizedType2.getClass();
                    Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                    actualTypeArguments.getClass();
                    return ArraysKt.e(actualTypeArguments);
                }
            }));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        actualTypeArguments.getClass();
        return ArraysKt.W(actualTypeArguments);
    }

    public static final ClassLoader d(Class cls) {
        cls.getClass();
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        systemClassLoader.getClass();
        return systemClassLoader;
    }
}
