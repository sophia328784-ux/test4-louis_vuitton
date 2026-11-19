package com.squareup.moshi.internal;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonClass;
import com.squareup.moshi.JsonQualifier;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.Types;
import defpackage.b21;
import defpackage.ct0;
import defpackage.lc0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Util {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f43424a = Collections.EMPTY_SET;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Type[] f43425b = new Type[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f43426c;
    public static final Map d;

    public static final class GenericArrayTypeImpl implements GenericArrayType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f43427b;

        public GenericArrayTypeImpl(Type type) {
            this.f43427b = Util.a(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && Types.b(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f43427b;
        }

        public final int hashCode() {
            return this.f43427b.hashCode();
        }

        public final String toString() {
            return Util.k(this.f43427b) + "[]";
        }
    }

    public static final class ParameterizedTypeImpl implements ParameterizedType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f43428b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Type f43429c;
        public final Type[] d;

        public ParameterizedTypeImpl(@Nullable Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class<?> enclosingClass = ((Class) type2).getEnclosingClass();
                if (type != null) {
                    if (enclosingClass == null || Types.c(type) != enclosingClass) {
                        b21.s("unexpected owner type for ", type2, ": ", type);
                        throw null;
                    }
                } else if (enclosingClass != null) {
                    lc0.n("unexpected owner type for ", type2, ": null");
                    throw null;
                }
            }
            this.f43428b = type != null ? Util.a(type) : null;
            this.f43429c = Util.a(type2);
            this.d = (Type[]) typeArr.clone();
            int i2 = 0;
            while (true) {
                Type[] typeArr2 = this.d;
                if (i2 >= typeArr2.length) {
                    return;
                }
                typeArr2[i2].getClass();
                Util.b(this.d[i2]);
                Type[] typeArr3 = this.d;
                typeArr3[i2] = Util.a(typeArr3[i2]);
                i2++;
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && Types.b(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.d.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f43428b;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f43429c;
        }

        public final int hashCode() {
            int iHashCode = Arrays.hashCode(this.d) ^ this.f43429c.hashCode();
            Set set = Util.f43424a;
            Type type = this.f43428b;
            return (type != null ? type.hashCode() : 0) ^ iHashCode;
        }

        public final String toString() {
            Type[] typeArr = this.d;
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(Util.k(this.f43429c));
            if (typeArr.length == 0) {
                return sb.toString();
            }
            sb.append("<");
            sb.append(Util.k(typeArr[0]));
            for (int i2 = 1; i2 < typeArr.length; i2++) {
                sb.append(", ");
                sb.append(Util.k(typeArr[i2]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    public static final class WildcardTypeImpl implements WildcardType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f43430b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Type f43431c;

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
                Util.b(typeArr[0]);
                this.f43431c = null;
                this.f43430b = Util.a(typeArr[0]);
                return;
            }
            typeArr2[0].getClass();
            Util.b(typeArr2[0]);
            if (typeArr[0] != Object.class) {
                ct0.c();
                throw null;
            }
            this.f43431c = Util.a(typeArr2[0]);
            this.f43430b = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && Types.b(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f43431c;
            return type != null ? new Type[]{type} : Util.f43425b;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f43430b};
        }

        public final int hashCode() {
            Type type = this.f43431c;
            return (this.f43430b.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
        }

        public final String toString() {
            Type type = this.f43431c;
            if (type != null) {
                return "? super " + Util.k(type);
            }
            Type type2 = this.f43430b;
            if (type2 == Object.class) {
                return "?";
            }
            return "? extends " + Util.k(type2);
        }
    }

    static {
        Class<?> cls;
        try {
            cls = Class.forName(getKotlinMetadataClassName());
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        f43426c = cls;
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        linkedHashMap.put(Boolean.TYPE, Boolean.class);
        linkedHashMap.put(Byte.TYPE, Byte.class);
        linkedHashMap.put(Character.TYPE, Character.class);
        linkedHashMap.put(Double.TYPE, Double.class);
        linkedHashMap.put(Float.TYPE, Float.class);
        linkedHashMap.put(Integer.TYPE, Integer.class);
        linkedHashMap.put(Long.TYPE, Long.class);
        linkedHashMap.put(Short.TYPE, Short.class);
        linkedHashMap.put(Void.TYPE, Void.class);
        d = Collections.unmodifiableMap(linkedHashMap);
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new GenericArrayTypeImpl(a(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            if (type instanceof ParameterizedTypeImpl) {
                return type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new ParameterizedTypeImpl(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return type instanceof GenericArrayTypeImpl ? type : new GenericArrayTypeImpl(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType) || (type instanceof WildcardTypeImpl)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new WildcardTypeImpl(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static void b(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            lc0.n("Unexpected primitive ", type, ". Use the boxed type.");
        }
    }

    public static JsonAdapter c(Moshi moshi, Type type, Class cls) {
        Class<?> cls2;
        Constructor<?> declaredConstructor;
        Object[] objArr;
        JsonClass jsonClass = (JsonClass) cls.getAnnotation(JsonClass.class);
        if (jsonClass != null && jsonClass.generateAdapter()) {
            try {
                try {
                    cls2 = Class.forName(cls.getName().replace("$", "_") + "JsonAdapter", true, cls.getClassLoader());
                    try {
                        if (type instanceof ParameterizedType) {
                            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                            try {
                                declaredConstructor = cls2.getDeclaredConstructor(Moshi.class, Type[].class);
                                objArr = new Object[]{moshi, actualTypeArguments};
                            } catch (NoSuchMethodException unused) {
                                declaredConstructor = cls2.getDeclaredConstructor(Type[].class);
                                objArr = new Object[]{actualTypeArguments};
                            }
                        } else {
                            try {
                                declaredConstructor = cls2.getDeclaredConstructor(Moshi.class);
                                objArr = new Object[]{moshi};
                            } catch (NoSuchMethodException unused2) {
                                declaredConstructor = cls2.getDeclaredConstructor(null);
                                objArr = new Object[0];
                            }
                        }
                        declaredConstructor.setAccessible(true);
                        return ((JsonAdapter) declaredConstructor.newInstance(objArr)).nullSafe();
                    } catch (NoSuchMethodException e2) {
                        e = e2;
                        if ((type instanceof ParameterizedType) || cls2.getTypeParameters().length == 0) {
                            b21.t("Failed to find the generated JsonAdapter constructor for ", type, e);
                            return null;
                        }
                        StringBuilder sb = new StringBuilder("Failed to find the generated JsonAdapter constructor for '");
                        sb.append(type);
                        String canonicalName = cls2.getCanonicalName();
                        sb.append("'. Suspiciously, the type was not parameterized but the target class '");
                        sb.append(canonicalName);
                        sb.append("' is generic. Consider using Types#newParameterizedType() to define these missing type variables.");
                        throw new RuntimeException(sb.toString(), e);
                    }
                } catch (NoSuchMethodException e3) {
                    e = e3;
                    cls2 = null;
                }
            } catch (ClassNotFoundException e4) {
                b21.t("Failed to find the generated JsonAdapter class for ", type, e4);
            } catch (IllegalAccessException e5) {
                b21.t("Failed to access the generated JsonAdapter for ", type, e5);
                return null;
            } catch (InstantiationException e6) {
                b21.t("Failed to instantiate the generated JsonAdapter for ", type, e6);
                return null;
            } catch (InvocationTargetException e7) {
                i(e7);
                throw null;
            }
        }
        return null;
    }

    public static Type d(Type type, Class cls, Class cls2) {
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
                    return d(cls.getGenericInterfaces()[i2], interfaces[i2], cls2);
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
                    return d(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static boolean e(Class cls) {
        String name = cls.getName();
        return name.startsWith("android.") || name.startsWith("androidx.") || name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("kotlin.") || name.startsWith("kotlinx.") || name.startsWith("scala.");
    }

    public static Set f(Annotation[] annotationArr) {
        LinkedHashSet linkedHashSet = null;
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().isAnnotationPresent(JsonQualifier.class)) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.add(annotation);
            }
        }
        return linkedHashSet != null ? Collections.unmodifiableSet(linkedHashSet) : f43424a;
    }

    public static Type g(Type type) {
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        if (wildcardType.getLowerBounds().length != 0) {
            return type;
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        if (upperBounds.length == 1) {
            return upperBounds[0];
        }
        ct0.c();
        return null;
    }

    private static String getKotlinMetadataClassName() {
        return "kotlin.Metadata";
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0049  */
    public static Type h(Type type, Class cls, Type type2, LinkedHashSet linkedHashSet) {
        Type type3;
        WildcardType wildcardType;
        Type typeH;
        Type[] upperBounds;
        Type[] lowerBounds;
        TypeVariable typeVariable;
        do {
            int i2 = 0;
            if (!(type2 instanceof TypeVariable)) {
                if (type2 instanceof Class) {
                    Class cls2 = (Class) type2;
                    if (cls2.isArray()) {
                        Class<?> componentType = cls2.getComponentType();
                        Type typeH2 = h(type, cls, componentType, linkedHashSet);
                        return componentType == typeH2 ? cls2 : new GenericArrayTypeImpl(typeH2);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type typeH3 = h(type, cls, genericComponentType, linkedHashSet);
                    return genericComponentType == typeH3 ? genericArrayType : new GenericArrayTypeImpl(typeH3);
                }
                if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type typeH4 = h(type, cls, ownerType, linkedHashSet);
                    boolean z = typeH4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    while (i2 < length) {
                        Type typeH5 = h(type, cls, actualTypeArguments[i2], linkedHashSet);
                        if (typeH5 != actualTypeArguments[i2]) {
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i2] = typeH5;
                        }
                        i2++;
                    }
                    return z ? new ParameterizedTypeImpl(typeH4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                }
                if (type2 instanceof WildcardType) {
                    wildcardType = (WildcardType) type2;
                    Type[] lowerBounds2 = wildcardType.getLowerBounds();
                    Type[] upperBounds2 = wildcardType.getUpperBounds();
                    if (lowerBounds2.length == 1) {
                        Type typeH6 = h(type, cls, lowerBounds2[0], linkedHashSet);
                        if (typeH6 != lowerBounds2[0]) {
                            if (typeH6 instanceof WildcardType) {
                                type3 = type2;
                                type3 = wildcardType;
                                lowerBounds = ((WildcardType) typeH6).getLowerBounds();
                            } else {
                                type3 = type2;
                                type3 = wildcardType;
                                lowerBounds = new Type[]{typeH6};
                            }
                            return new WildcardTypeImpl(new Type[]{Object.class}, lowerBounds);
                        }
                    } else if (upperBounds2.length == 1 && (typeH = h(type, cls, upperBounds2[0], linkedHashSet)) != upperBounds2[0]) {
                        if (typeH instanceof WildcardType) {
                            type3 = type2;
                            type3 = wildcardType;
                            type3 = wildcardType;
                            upperBounds = ((WildcardType) typeH).getUpperBounds();
                        } else {
                            type3 = type2;
                            type3 = wildcardType;
                            type3 = wildcardType;
                            upperBounds = new Type[]{typeH};
                        }
                        return new WildcardTypeImpl(upperBounds, f43425b);
                    }
                }
                type3 = type2;
                type3 = wildcardType;
                type3 = wildcardType;
                type3 = type2;
                type3 = wildcardType;
                type3 = type2;
                type3 = wildcardType;
                type3 = type2;
                return type3;
            }
            typeVariable = (TypeVariable) type2;
            if (linkedHashSet.contains(typeVariable)) {
                return type2;
            }
            linkedHashSet.add(typeVariable);
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 == null) {
                type2 = typeVariable;
            } else {
                Type typeD = d(type, cls, cls3);
                if (typeD instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    while (true) {
                        if (i2 >= typeParameters.length) {
                            b21.x();
                            return null;
                        }
                        if (typeVariable.equals(typeParameters[i2])) {
                            type2 = ((ParameterizedType) typeD).getActualTypeArguments()[i2];
                            break;
                        }
                        i2++;
                    }
                } else {
                    type2 = typeVariable;
                }
            }
        } while (type2 != typeVariable);
        return type2;
    }

    public static void i(InvocationTargetException invocationTargetException) {
        Throwable targetException = invocationTargetException.getTargetException();
        if (targetException instanceof RuntimeException) {
            throw ((RuntimeException) targetException);
        }
        if (!(targetException instanceof Error)) {
            throw new RuntimeException(targetException);
        }
        throw ((Error) targetException);
    }

    public static String j(Type type, Set set) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(type);
        if (set.isEmpty()) {
            str = " (with no annotations)";
        } else {
            str = " annotated " + set;
        }
        sb.append(str);
        return sb.toString();
    }

    public static String k(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
