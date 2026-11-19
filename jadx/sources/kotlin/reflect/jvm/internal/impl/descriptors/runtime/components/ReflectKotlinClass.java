package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import defpackage.o60;
import io.jsonwebtoken.JwtParser;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.ReadKotlinClassHeaderAnnotationVisitor;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.BitEncoding;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectKotlinClass implements KotlinJvmBinaryClass {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Factory f72579c = new Factory(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f72580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KotlinClassHeader f72581b;

    public static final class Factory {
        public Factory(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:54:0x009e  */
        public static ReflectKotlinClass a(Class cls) {
            KotlinClassHeader kotlinClassHeader;
            cls.getClass();
            ReadKotlinClassHeaderAnnotationVisitor readKotlinClassHeaderAnnotationVisitor = new ReadKotlinClassHeaderAnnotationVisitor();
            ReflectClassStructure.b(cls, readKotlinClassHeaderAnnotationVisitor);
            MetadataVersion metadataVersion = MetadataVersion.g;
            if (readKotlinClassHeaderAnnotationVisitor.f73287h == null || readKotlinClassHeaderAnnotationVisitor.f73282a == null) {
                kotlinClassHeader = null;
            } else {
                boolean z = false;
                MetadataVersion metadataVersion2 = new MetadataVersion(readKotlinClassHeaderAnnotationVisitor.f73282a, (readKotlinClassHeaderAnnotationVisitor.f73284c & 8) != 0);
                metadataVersion.getClass();
                MetadataVersion metadataVersion3 = metadataVersion2.f73585f ? metadataVersion : MetadataVersion.f73584h;
                int i2 = metadataVersion3.f73569b;
                int i3 = metadataVersion.f73569b;
                if (i2 > i3 || (i2 >= i3 && metadataVersion3.f73570c > metadataVersion.f73570c)) {
                    metadataVersion = metadataVersion3;
                }
                int i4 = metadataVersion2.f73570c;
                int i5 = metadataVersion2.f73569b;
                if ((i5 != 1 || i4 != 0) && i5 != 0) {
                    int i6 = metadataVersion.f73569b;
                    if (i5 > i6 || (i5 >= i6 && i4 > metadataVersion.f73570c)) {
                        z = true;
                    }
                    z = !z;
                }
                if (z) {
                    KotlinClassHeader.Kind kind = readKotlinClassHeaderAnnotationVisitor.f73287h;
                    if ((kind == KotlinClassHeader.Kind.CLASS || kind == KotlinClassHeader.Kind.FILE_FACADE || kind == KotlinClassHeader.Kind.MULTIFILE_CLASS_PART) && readKotlinClassHeaderAnnotationVisitor.f73285e == null) {
                        kotlinClassHeader = null;
                    }
                } else {
                    readKotlinClassHeaderAnnotationVisitor.g = readKotlinClassHeaderAnnotationVisitor.f73285e;
                    readKotlinClassHeaderAnnotationVisitor.f73285e = null;
                }
                String[] strArr = readKotlinClassHeaderAnnotationVisitor.f73288i;
                kotlinClassHeader = new KotlinClassHeader(readKotlinClassHeaderAnnotationVisitor.f73287h, metadataVersion2, readKotlinClassHeaderAnnotationVisitor.f73285e, readKotlinClassHeaderAnnotationVisitor.g, readKotlinClassHeaderAnnotationVisitor.f73286f, readKotlinClassHeaderAnnotationVisitor.f73283b, readKotlinClassHeaderAnnotationVisitor.f73284c, readKotlinClassHeaderAnnotationVisitor.d, strArr != null ? BitEncoding.a(strArr) : null);
            }
            if (kotlinClassHeader == null) {
                return null;
            }
            return new ReflectKotlinClass(cls, kotlinClassHeader, null);
        }
    }

    public ReflectKotlinClass(Class cls, KotlinClassHeader kotlinClassHeader, DefaultConstructorMarker defaultConstructorMarker) {
        this.f72580a = cls;
        this.f72581b = kotlinClassHeader;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass
    public final void a(AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1 abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1) {
        Class cls = this.f72580a;
        cls.getClass();
        Method[] declaredMethods = cls.getDeclaredMethods();
        declaredMethods.getClass();
        for (Method method : declaredMethods) {
            Name nameE = Name.e(method.getName());
            StringBuilder sb = new StringBuilder("(");
            Class<?>[] parameterTypes = method.getParameterTypes();
            parameterTypes.getClass();
            for (Class<?> cls2 : parameterTypes) {
                cls2.getClass();
                sb.append(ReflectClassUtilKt.b(cls2));
            }
            sb.append(")");
            Class<?> returnType = method.getReturnType();
            returnType.getClass();
            sb.append(ReflectClassUtilKt.b(returnType));
            AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.AnnotationVisitorForMethod annotationVisitorForMethodA = abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.a(nameE, sb.toString());
            Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
            declaredAnnotations.getClass();
            for (Annotation annotation : declaredAnnotations) {
                annotation.getClass();
                ReflectClassStructure.c(annotationVisitorForMethodA, annotation);
            }
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            parameterAnnotations.getClass();
            Annotation[][] annotationArr = parameterAnnotations;
            int length = annotationArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                Annotation[] annotationArr2 = annotationArr[i2];
                annotationArr2.getClass();
                for (Annotation annotation2 : annotationArr2) {
                    Class clsB = JvmClassMappingKt.b(JvmClassMappingKt.a(annotation2));
                    KotlinJvmBinaryClass.AnnotationArgumentVisitor annotationArgumentVisitorC = annotationVisitorForMethodA.c(i2, ReflectClassUtilKt.a(clsB), new ReflectAnnotationSource(annotation2));
                    if (annotationArgumentVisitorC != null) {
                        ReflectClassStructure.d(annotationArgumentVisitorC, annotation2, clsB);
                    }
                }
            }
            annotationVisitorForMethodA.a();
        }
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        declaredConstructors.getClass();
        int length2 = declaredConstructors.length;
        int i3 = 0;
        while (i3 < length2) {
            Constructor<?> constructor = declaredConstructors[i3];
            Name name = SpecialNames.f73694e;
            constructor.getClass();
            StringBuilder sb2 = new StringBuilder("(");
            Class<?>[] parameterTypes2 = constructor.getParameterTypes();
            parameterTypes2.getClass();
            for (Class<?> cls3 : parameterTypes2) {
                cls3.getClass();
                sb2.append(ReflectClassUtilKt.b(cls3));
            }
            sb2.append(")V");
            AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.AnnotationVisitorForMethod annotationVisitorForMethodA2 = abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.a(name, sb2.toString());
            Annotation[] declaredAnnotations2 = constructor.getDeclaredAnnotations();
            declaredAnnotations2.getClass();
            for (Annotation annotation3 : declaredAnnotations2) {
                annotation3.getClass();
                ReflectClassStructure.c(annotationVisitorForMethodA2, annotation3);
            }
            Annotation[][] parameterAnnotations2 = constructor.getParameterAnnotations();
            parameterAnnotations2.getClass();
            if (parameterAnnotations2.length != 0) {
                int length3 = constructor.getParameterTypes().length - parameterAnnotations2.length;
                int length4 = parameterAnnotations2.length;
                for (int i4 = 0; i4 < length4; i4++) {
                    Annotation[] annotationArr3 = parameterAnnotations2[i4];
                    annotationArr3.getClass();
                    int length5 = annotationArr3.length;
                    int i5 = 0;
                    while (i5 < length5) {
                        Annotation annotation4 = annotationArr3[i5];
                        Class clsB2 = JvmClassMappingKt.b(JvmClassMappingKt.a(annotation4));
                        Class cls4 = cls;
                        Constructor<?>[] constructorArr = declaredConstructors;
                        int i6 = length2;
                        KotlinJvmBinaryClass.AnnotationArgumentVisitor annotationArgumentVisitorC2 = annotationVisitorForMethodA2.c(i4 + length3, ReflectClassUtilKt.a(clsB2), new ReflectAnnotationSource(annotation4));
                        if (annotationArgumentVisitorC2 != null) {
                            ReflectClassStructure.d(annotationArgumentVisitorC2, annotation4, clsB2);
                        }
                        i5++;
                        cls = cls4;
                        declaredConstructors = constructorArr;
                        length2 = i6;
                    }
                }
            }
            Class cls5 = cls;
            Constructor<?>[] constructorArr2 = declaredConstructors;
            int i7 = length2;
            annotationVisitorForMethodA2.a();
            i3++;
            cls = cls5;
            declaredConstructors = constructorArr2;
            length2 = i7;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        declaredFields.getClass();
        for (Field field : declaredFields) {
            Name nameE2 = Name.e(field.getName());
            Class<?> type = field.getType();
            type.getClass();
            String strB = ReflectClassUtilKt.b(type);
            MemberSignature.Companion companion = MemberSignature.f73259b;
            String strB2 = nameE2.b();
            strB2.getClass();
            companion.getClass();
            AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.MemberAnnotationVisitor memberAnnotationVisitor = new AbstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1.MemberAnnotationVisitor(abstractBinaryClassAnnotationAndConstantLoader$loadAnnotationsAndInitializers$1, MemberSignature.Companion.a(strB2, strB));
            Annotation[] declaredAnnotations3 = field.getDeclaredAnnotations();
            declaredAnnotations3.getClass();
            for (Annotation annotation5 : declaredAnnotations3) {
                annotation5.getClass();
                ReflectClassStructure.c(memberAnnotationVisitor, annotation5);
            }
            memberAnnotationVisitor.a();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass
    public final void b(KotlinJvmBinaryClass.AnnotationVisitor annotationVisitor) {
        ReflectClassStructure.b(this.f72580a, annotationVisitor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass
    public final KotlinClassHeader c() {
        return this.f72581b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass
    public final ClassId d() {
        return ReflectClassUtilKt.a(this.f72580a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass
    public final String e() {
        String strReplace = this.f72580a.getName().replace(JwtParser.SEPARATOR_CHAR, '/');
        strReplace.getClass();
        return strReplace.concat(".class");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectKotlinClass) {
            return Intrinsics.c(this.f72580a, ((ReflectKotlinClass) obj).f72580a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f72580a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        o60.z(ReflectKotlinClass.class, sb, ": ");
        sb.append(this.f72580a);
        return sb.toString();
    }
}
