package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes4.dex */
abstract class ReflectClassStructure {
    public static ClassLiteralValue a(Class cls) {
        int i2 = 0;
        while (cls.isArray()) {
            i2++;
            cls = cls.getComponentType();
            cls.getClass();
        }
        if (!cls.isPrimitive()) {
            ClassId classIdA = ReflectClassUtilKt.a(cls);
            String str = JavaToKotlinClassMap.f72305a;
            FqName fqNameA = classIdA.a();
            fqNameA.getClass();
            ClassId classId = (ClassId) JavaToKotlinClassMap.f72310h.get(fqNameA.f73679a);
            if (classId != null) {
                classIdA = classId;
            }
            return new ClassLiteralValue(classIdA, i2);
        }
        if (cls.equals(Void.TYPE)) {
            ClassId.Companion companion = ClassId.d;
            FqName fqNameI = StandardNames.FqNames.d.i();
            companion.getClass();
            return new ClassLiteralValue(ClassId.Companion.b(fqNameI), i2);
        }
        PrimitiveType primitiveTypeF = JvmPrimitiveType.b(cls.getName()).f();
        primitiveTypeF.getClass();
        if (i2 > 0) {
            ClassId.Companion companion2 = ClassId.d;
            FqName fqNameC = primitiveTypeF.c();
            companion2.getClass();
            return new ClassLiteralValue(ClassId.Companion.b(fqNameC), i2 - 1);
        }
        ClassId.Companion companion3 = ClassId.d;
        FqName fqNameE = primitiveTypeF.e();
        companion3.getClass();
        return new ClassLiteralValue(ClassId.Companion.b(fqNameE), i2);
    }

    public static void b(Class cls, KotlinJvmBinaryClass.AnnotationVisitor annotationVisitor) {
        cls.getClass();
        Annotation[] declaredAnnotations = cls.getDeclaredAnnotations();
        declaredAnnotations.getClass();
        for (Annotation annotation : declaredAnnotations) {
            annotation.getClass();
            c(annotationVisitor, annotation);
        }
        annotationVisitor.a();
    }

    public static void c(KotlinJvmBinaryClass.AnnotationVisitor annotationVisitor, Annotation annotation) {
        Class clsB = JvmClassMappingKt.b(JvmClassMappingKt.a(annotation));
        KotlinJvmBinaryClass.AnnotationArgumentVisitor annotationArgumentVisitorB = annotationVisitor.b(ReflectClassUtilKt.a(clsB), new ReflectAnnotationSource(annotation));
        if (annotationArgumentVisitorB != null) {
            d(annotationArgumentVisitorB, annotation, clsB);
        }
    }

    public static void d(KotlinJvmBinaryClass.AnnotationArgumentVisitor annotationArgumentVisitor, Annotation annotation, Class cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        declaredMethods.getClass();
        for (Method method : declaredMethods) {
            try {
                Object objInvoke = method.invoke(annotation, null);
                objInvoke.getClass();
                Name nameE = Name.e(method.getName());
                Class<?> enclosingClass = objInvoke.getClass();
                if (enclosingClass.equals(Class.class)) {
                    annotationArgumentVisitor.d(nameE, a((Class) objInvoke));
                } else if (ReflectKotlinClassKt.f72584a.contains(enclosingClass)) {
                    annotationArgumentVisitor.e(nameE, objInvoke);
                } else {
                    List list = ReflectClassUtilKt.f72602a;
                    if (Enum.class.isAssignableFrom(enclosingClass)) {
                        if (!enclosingClass.isEnum()) {
                            enclosingClass = enclosingClass.getEnclosingClass();
                        }
                        enclosingClass.getClass();
                        annotationArgumentVisitor.c(nameE, ReflectClassUtilKt.a(enclosingClass), Name.e(((Enum) objInvoke).name()));
                    } else if (Annotation.class.isAssignableFrom(enclosingClass)) {
                        Class<?>[] interfaces = enclosingClass.getInterfaces();
                        interfaces.getClass();
                        Class cls2 = (Class) ArraysKt.Q(interfaces);
                        cls2.getClass();
                        KotlinJvmBinaryClass.AnnotationArgumentVisitor annotationArgumentVisitorB = annotationArgumentVisitor.b(ReflectClassUtilKt.a(cls2), nameE);
                        if (annotationArgumentVisitorB != null) {
                            d(annotationArgumentVisitorB, (Annotation) objInvoke, cls2);
                        }
                    } else {
                        if (!enclosingClass.isArray()) {
                            throw new UnsupportedOperationException("Unsupported annotation argument value (" + enclosingClass + "): " + objInvoke);
                        }
                        KotlinJvmBinaryClass.AnnotationArrayArgumentVisitor annotationArrayArgumentVisitorF = annotationArgumentVisitor.f(nameE);
                        if (annotationArrayArgumentVisitorF != null) {
                            Class<?> componentType = enclosingClass.getComponentType();
                            if (componentType.isEnum()) {
                                ClassId classIdA = ReflectClassUtilKt.a(componentType);
                                for (Object obj : (Object[]) objInvoke) {
                                    obj.getClass();
                                    annotationArrayArgumentVisitorF.d(classIdA, Name.e(((Enum) obj).name()));
                                }
                            } else if (componentType.equals(Class.class)) {
                                for (Object obj2 : (Object[]) objInvoke) {
                                    obj2.getClass();
                                    annotationArrayArgumentVisitorF.e(a((Class) obj2));
                                }
                            } else if (Annotation.class.isAssignableFrom(componentType)) {
                                for (Object obj3 : (Object[]) objInvoke) {
                                    KotlinJvmBinaryClass.AnnotationArgumentVisitor annotationArgumentVisitorB2 = annotationArrayArgumentVisitorF.b(ReflectClassUtilKt.a(componentType));
                                    if (annotationArgumentVisitorB2 != null) {
                                        obj3.getClass();
                                        d(annotationArgumentVisitorB2, (Annotation) obj3, componentType);
                                    }
                                }
                            } else {
                                for (Object obj4 : (Object[]) objInvoke) {
                                    annotationArrayArgumentVisitorF.c(obj4);
                                }
                            }
                            annotationArrayArgumentVisitorF.a();
                        }
                    }
                }
            } catch (IllegalAccessException unused) {
            }
        }
        annotationArgumentVisitor.a();
    }
}
