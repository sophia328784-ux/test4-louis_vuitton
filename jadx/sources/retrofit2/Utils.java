package retrofit2;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.b21;
import defpackage.ct0;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
abstract class Utils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Type[] f79466a = new Type[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f79467b = true;

    public static final class GenericArrayTypeImpl implements GenericArrayType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f79468b;

        public GenericArrayTypeImpl(Type type) {
            this.f79468b = type;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && Utils.b(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f79468b;
        }

        public final int hashCode() {
            return this.f79468b.hashCode();
        }

        public final String toString() {
            return n00.r(Utils.n(this.f79468b), "[]", new StringBuilder());
        }
    }

    public static final class ParameterizedTypeImpl implements ParameterizedType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f79469b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Type f79470c;
        public final Type[] d;

        public ParameterizedTypeImpl(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                    ct0.c();
                    throw null;
                }
            }
            for (Type type3 : typeArr) {
                Objects.requireNonNull(type3, "typeArgument == null");
                Utils.a(type3);
            }
            this.f79469b = type;
            this.f79470c = type2;
            this.d = (Type[]) typeArr.clone();
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && Utils.b(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.d.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f79469b;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f79470c;
        }

        public final int hashCode() {
            int iHashCode = Arrays.hashCode(this.d) ^ this.f79470c.hashCode();
            Type type = this.f79469b;
            return (type != null ? type.hashCode() : 0) ^ iHashCode;
        }

        public final String toString() {
            Type[] typeArr = this.d;
            int length = typeArr.length;
            Type type = this.f79470c;
            if (length == 0) {
                return Utils.n(type);
            }
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(Utils.n(type));
            sb.append("<");
            sb.append(Utils.n(typeArr[0]));
            for (int i2 = 1; i2 < typeArr.length; i2++) {
                sb.append(", ");
                sb.append(Utils.n(typeArr[i2]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    public static final class WildcardTypeImpl implements WildcardType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f79471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Type f79472c;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                ct0.c();
                throw null;
            }
            if (typeArr.length != 1) {
                ct0.c();
                throw null;
            }
            if (typeArr2.length != 1) {
                typeArr[0].getClass();
                Utils.a(typeArr[0]);
                this.f79472c = null;
                this.f79471b = typeArr[0];
                return;
            }
            typeArr2[0].getClass();
            Utils.a(typeArr2[0]);
            if (typeArr[0] != Object.class) {
                ct0.c();
                throw null;
            }
            this.f79472c = typeArr2[0];
            this.f79471b = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && Utils.b(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f79472c;
            return type != null ? new Type[]{type} : Utils.f79466a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f79471b};
        }

        public final int hashCode() {
            Type type = this.f79472c;
            return (this.f79471b.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
        }

        public final String toString() {
            Type type = this.f79472c;
            if (type != null) {
                return "? super " + Utils.n(type);
            }
            Type type2 = this.f79471b;
            if (type2 == Object.class) {
                return "?";
            }
            return "? extends " + Utils.n(type2);
        }
    }

    public static void a(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            ct0.c();
        }
    }

    public static boolean b(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return b(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static Type c(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i2 = 0; i2 < length; i2++) {
                Class<?> cls3 = interfaces[i2];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i2];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return c(cls.getGenericInterfaces()[i2], interfaces[i2], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return c(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type d(int i2, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i2 >= 0 && i2 < actualTypeArguments.length) {
            Type type = actualTypeArguments[i2];
            return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
        }
        StringBuilder sbQ = fc.q(i2, "Index ", " not in range [0,");
        sbQ.append(actualTypeArguments.length);
        sbQ.append(") for ");
        sbQ.append(parameterizedType);
        throw new IllegalArgumentException(sbQ.toString());
    }

    public static Class e(Type type) {
        Objects.requireNonNull(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            ct0.c();
            return null;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return e(((WildcardType) type).getUpperBounds()[0]);
        }
        StringBuilder sb = new StringBuilder("Expected a Class, ParameterizedType, or GenericArrayType, but <");
        sb.append(type);
        b21.w(sb, "> is of type ", type.getClass().getName());
        return null;
    }

    public static Type f(Type type, Class cls) {
        if (Map.class.isAssignableFrom(cls)) {
            return l(type, cls, c(type, cls, Map.class));
        }
        ct0.c();
        return null;
    }

    public static boolean g(Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (!(type instanceof ParameterizedType)) {
            if (type instanceof GenericArrayType) {
                return g(((GenericArrayType) type).getGenericComponentType());
            }
            if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
                return true;
            }
            b21.s("Expected a Class, ParameterizedType, or GenericArrayType, but <", type, "> is of type ", type == null ? "null" : type.getClass().getName());
            return false;
        }
        for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
            if (g(type2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean h(Annotation[] annotationArr, Class cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    public static IllegalArgumentException i(Method method, Exception exc, String str, Object... objArr) {
        StringBuilder sbU = n00.u(String.format(str, objArr), "\n    for method ");
        sbU.append(method.getDeclaringClass().getSimpleName());
        sbU.append(FileUtils.HIDDEN_PREFIX);
        sbU.append(method.getName());
        return new IllegalArgumentException(sbU.toString(), exc);
    }

    public static IllegalArgumentException j(Method method, int i2, String str, Object... objArr) {
        return i(method, null, d21.k(str, " (", Platform.f79419b.a(method, i2), ")"), objArr);
    }

    public static IllegalArgumentException k(Method method, Exception exc, int i2, String str, Object... objArr) {
        return i(method, exc, d21.k(str, " (", Platform.f79419b.a(method, i2), ")"), objArr);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003e  */
    public static Type l(Type type, Class cls, Type type2) {
        Type type3;
        WildcardType wildcardType;
        Type typeL;
        Type type4;
        Type type5 = type2;
        while (true) {
            int i2 = 0;
            if (!(type5 instanceof TypeVariable)) {
                if (type5 instanceof Class) {
                    Class cls2 = (Class) type5;
                    if (cls2.isArray()) {
                        Class<?> componentType = cls2.getComponentType();
                        Type typeL2 = l(type, cls, componentType);
                        return componentType == typeL2 ? cls2 : new GenericArrayTypeImpl(typeL2);
                    }
                }
                if (type5 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type5;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type typeL3 = l(type, cls, genericComponentType);
                    return genericComponentType == typeL3 ? genericArrayType : new GenericArrayTypeImpl(typeL3);
                }
                if (type5 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type5;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type typeL4 = l(type, cls, ownerType);
                    boolean z = typeL4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    while (i2 < length) {
                        Type typeL5 = l(type, cls, actualTypeArguments[i2]);
                        if (typeL5 != actualTypeArguments[i2]) {
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i2] = typeL5;
                        }
                        i2++;
                    }
                    return z ? new ParameterizedTypeImpl(typeL4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                }
                if (type5 instanceof WildcardType) {
                    wildcardType = (WildcardType) type5;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type typeL6 = l(type, cls, lowerBounds[0]);
                        if (typeL6 != lowerBounds[0]) {
                            type3 = type5;
                            type3 = wildcardType;
                            return new WildcardTypeImpl(new Type[]{Object.class}, new Type[]{typeL6});
                        }
                    } else if (upperBounds.length == 1 && (typeL = l(type, cls, upperBounds[0])) != upperBounds[0]) {
                        type3 = type5;
                        type3 = wildcardType;
                        type3 = wildcardType;
                        return new WildcardTypeImpl(new Type[]{typeL}, f79466a);
                    }
                }
                type3 = type5;
                type3 = wildcardType;
                type3 = wildcardType;
                type3 = type5;
                type3 = wildcardType;
                type3 = type5;
                type3 = wildcardType;
                type3 = type5;
                return type3;
            }
            TypeVariable typeVariable = (TypeVariable) type5;
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 == null) {
                type4 = typeVariable;
            } else {
                Type typeC = c(type, cls, cls3);
                if (typeC instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    while (true) {
                        if (i2 >= typeParameters.length) {
                            b21.x();
                            return null;
                        }
                        if (typeVariable.equals(typeParameters[i2])) {
                            type4 = ((ParameterizedType) typeC).getActualTypeArguments()[i2];
                            break;
                        }
                        i2++;
                    }
                } else {
                    type4 = typeVariable;
                }
            }
            if (type4 == typeVariable) {
                return type4;
            }
            type5 = type4;
        }
    }

    public static void m(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static String n(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
