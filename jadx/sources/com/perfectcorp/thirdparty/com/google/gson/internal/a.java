package com.perfectcorp.thirdparty.com.google.gson.internal;

import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import defpackage.b21;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Type[] f42458a = new Type[0];

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.com.google.gson.internal.a$a, reason: collision with other inner class name */
    public static final class C0211a implements Serializable, GenericArrayType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f42459b;

        public C0211a(Type type) {
            this.f42459b = a.d(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && a.c(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f42459b;
        }

        public final int hashCode() {
            return this.f42459b.hashCode();
        }

        public final String toString() {
            return a.f(this.f42459b) + "[]";
        }
    }

    public static final class b implements Serializable, ParameterizedType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f42460b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Type f42461c;
        public final Type[] d;

        public b(Type type, Type type2, Type... typeArr) {
            int i2 = 0;
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z = true;
                boolean z2 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z2) {
                    z = false;
                }
                CLShare3DRelatedClasses.c(z);
            }
            this.f42460b = type == null ? null : a.d(type);
            this.f42461c = a.d(type2);
            this.d = (Type[]) typeArr.clone();
            while (true) {
                Type[] typeArr2 = this.d;
                if (i2 >= typeArr2.length) {
                    return;
                }
                typeArr2[i2].getClass();
                a.g(this.d[i2]);
                Type[] typeArr3 = this.d;
                typeArr3[i2] = a.d(typeArr3[i2]);
                i2++;
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && a.c(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.d.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f42460b;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f42461c;
        }

        public final int hashCode() {
            int iHashCode = Arrays.hashCode(this.d) ^ this.f42461c.hashCode();
            Type type = this.f42460b;
            return (type != null ? type.hashCode() : 0) ^ iHashCode;
        }

        public final String toString() {
            Type[] typeArr = this.d;
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(a.f(this.f42461c));
            if (typeArr.length == 0) {
                return sb.toString();
            }
            sb.append("<");
            sb.append(a.f(typeArr[0]));
            for (int i2 = 1; i2 < typeArr.length; i2++) {
                sb.append(", ");
                sb.append(a.f(typeArr[i2]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    public static final class c implements Serializable, WildcardType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Type f42462b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Type f42463c;

        public c(Type[] typeArr, Type[] typeArr2) {
            CLShare3DRelatedClasses.c(typeArr2.length <= 1);
            CLShare3DRelatedClasses.c(typeArr.length == 1);
            if (typeArr2.length != 1) {
                typeArr[0].getClass();
                a.g(typeArr[0]);
                this.f42463c = null;
                this.f42462b = a.d(typeArr[0]);
                return;
            }
            typeArr2[0].getClass();
            a.g(typeArr2[0]);
            CLShare3DRelatedClasses.c(typeArr[0] == Object.class);
            this.f42463c = a.d(typeArr2[0]);
            this.f42462b = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && a.c(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f42463c;
            return type != null ? new Type[]{type} : a.f42458a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f42462b};
        }

        public final int hashCode() {
            Type type = this.f42463c;
            return (this.f42462b.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
        }

        public final String toString() {
            Type type = this.f42463c;
            if (type != null) {
                return "? super " + a.f(type);
            }
            Type type2 = this.f42462b;
            if (type2 == Object.class) {
                return "?";
            }
            return "? extends " + a.f(type2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0037 A[LOOP:2: B:19:0x0037->B:28:0x0051, LOOP_START, PHI: r5
      0x0037: PHI (r5v2 java.lang.Class<?>) = (r5v1 java.lang.Class<?>), (r5v4 java.lang.Class<?>) binds: [B:18:0x0035, B:28:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x003b  */
    /* JADX WARN: Code duplicated, block: B:25:0x0046  */
    /* JADX WARN: Code duplicated, block: B:28:0x0051 A[LOOP:2: B:19:0x0037->B:28:0x0051, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0041 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x004c A[SYNTHETIC] */
    public static Type a(Type type, Class cls, Class cls2) {
        Class superclass;
        Type genericSuperclass;
        while (cls2 != cls) {
            if (!cls2.isInterface()) {
                if (!cls.isInterface()) {
                    while (cls != Object.class) {
                        superclass = cls.getSuperclass();
                        if (superclass == cls2) {
                            return cls.getGenericSuperclass();
                        }
                        if (cls2.isAssignableFrom(superclass)) {
                            genericSuperclass = cls.getGenericSuperclass();
                        } else {
                            cls = superclass;
                        }
                    }
                }
                return cls2;
            }
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    if (!cls.isInterface()) {
                        while (cls != Object.class) {
                            superclass = cls.getSuperclass();
                            if (superclass == cls2) {
                                return cls.getGenericSuperclass();
                            }
                            if (cls2.isAssignableFrom(superclass)) {
                                genericSuperclass = cls.getGenericSuperclass();
                            } else {
                                cls = superclass;
                            }
                        }
                    }
                    return cls2;
                }
                Class<?> cls3 = interfaces[i2];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i2];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    genericSuperclass = cls.getGenericInterfaces()[i2];
                    superclass = interfaces[i2];
                } else {
                    i2++;
                }
            }
            Type type2 = genericSuperclass;
            cls = superclass;
            type = type2;
        }
        return type;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003e  */
    public static Type b(Type type, Class cls, Type type2) {
        Type type3;
        WildcardType wildcardType;
        Type typeB;
        Type type4;
        Type type5 = type2;
        while (true) {
            int i2 = 0;
            if (!(type5 instanceof TypeVariable)) {
                if (type5 instanceof Class) {
                    Class cls2 = (Class) type5;
                    if (cls2.isArray()) {
                        Class<?> componentType = cls2.getComponentType();
                        Type typeB2 = b(type, cls, componentType);
                        return componentType == typeB2 ? cls2 : new C0211a(typeB2);
                    }
                }
                if (type5 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type5;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type typeB3 = b(type, cls, genericComponentType);
                    return genericComponentType == typeB3 ? genericArrayType : new C0211a(typeB3);
                }
                if (type5 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type5;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type typeB4 = b(type, cls, ownerType);
                    boolean z = typeB4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    while (i2 < length) {
                        Type typeB5 = b(type, cls, actualTypeArguments[i2]);
                        if (typeB5 != actualTypeArguments[i2]) {
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i2] = typeB5;
                        }
                        i2++;
                    }
                    return z ? new b(typeB4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                }
                if (type5 instanceof WildcardType) {
                    wildcardType = (WildcardType) type5;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type typeB6 = b(type, cls, lowerBounds[0]);
                        if (typeB6 != lowerBounds[0]) {
                            type3 = type5;
                            type3 = wildcardType;
                            return new c(new Type[]{Object.class}, new Type[]{typeB6});
                        }
                    } else if (upperBounds.length == 1 && (typeB = b(type, cls, upperBounds[0])) != upperBounds[0]) {
                        type3 = type5;
                        type3 = wildcardType;
                        type3 = wildcardType;
                        return new c(new Type[]{typeB}, f42458a);
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
                Type typeA = a(type, cls, cls3);
                if (typeA instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    while (true) {
                        if (i2 >= typeParameters.length) {
                            b21.x();
                            return null;
                        }
                        if (typeVariable.equals(typeParameters[i2])) {
                            type4 = ((ParameterizedType) typeA).getActualTypeArguments()[i2];
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

    public static boolean c(Type type, Type type2) {
        while (type != type2) {
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
            if (!(type instanceof GenericArrayType)) {
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
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            type = ((GenericArrayType) type).getGenericComponentType();
            type2 = ((GenericArrayType) type2).getGenericComponentType();
        }
        return true;
    }

    public static Type d(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new C0211a(d(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new C0211a(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static Class e(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                CLShare3DRelatedClasses.c(rawType instanceof Class);
                return (Class) rawType;
            }
            if (type instanceof GenericArrayType) {
                return Array.newInstance((Class<?>) e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            }
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (!(type instanceof WildcardType)) {
                b21.s("Expected a Class, ParameterizedType, or GenericArrayType, but <", type, "> is of type ", type == null ? "null" : type.getClass().getName());
                return null;
            }
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        return (Class) type;
    }

    public static String f(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static void g(Type type) {
        CLShare3DRelatedClasses.c(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }
}
