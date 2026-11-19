package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationAsAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassObjectAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaEnumValueAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaLiteralAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.NullValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaAnnotationDescriptor implements PossiblyExternalAnnotationDescriptor {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72984i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyJavaResolverContext f72985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JavaAnnotation f72986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NullableLazyValue f72987c;
    public final NotNullLazyValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final JavaSourceElement f72988e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotNullLazyValue f72989f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f72990h;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(LazyJavaAnnotationDescriptor.class, "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f72984i = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(LazyJavaAnnotationDescriptor.class, "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;", 0, reflectionFactory), tr.q(LazyJavaAnnotationDescriptor.class, "allValueArguments", "getAllValueArguments()Ljava/util/Map;", 0, reflectionFactory)};
    }

    public LazyJavaAnnotationDescriptor(LazyJavaResolverContext lazyJavaResolverContext, JavaAnnotation javaAnnotation, boolean z) {
        lazyJavaResolverContext.getClass();
        javaAnnotation.getClass();
        this.f72985a = lazyJavaResolverContext;
        this.f72986b = javaAnnotation;
        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
        this.f72987c = javaResolverComponents.f72944a.e(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaAnnotationDescriptor f72991b;

            {
                this.f72991b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.f72991b.f72986b.d().a();
            }
        });
        this.d = javaResolverComponents.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaAnnotationDescriptor f72992b;

            {
                this.f72992b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = LazyJavaAnnotationDescriptor.f72984i;
                LazyJavaAnnotationDescriptor lazyJavaAnnotationDescriptor = this.f72992b;
                FqName fqNameC = lazyJavaAnnotationDescriptor.c();
                JavaAnnotation javaAnnotation2 = lazyJavaAnnotationDescriptor.f72986b;
                LazyJavaResolverContext lazyJavaResolverContext2 = lazyJavaAnnotationDescriptor.f72985a;
                if (fqNameC == null) {
                    return ErrorUtils.c(ErrorTypeKind.NOT_FOUND_FQNAME_FOR_JAVA_ANNOTATION, javaAnnotation2.toString());
                }
                JavaResolverComponents javaResolverComponents2 = lazyJavaResolverContext2.f72962a;
                ClassDescriptor classDescriptorC = JavaToKotlinClassMapper.c(fqNameC, javaResolverComponents2.o.g());
                if (classDescriptorC == null) {
                    classDescriptorC = javaResolverComponents2.f72952k.a(javaAnnotation2.t());
                    if (classDescriptorC == null) {
                        ModuleDescriptor moduleDescriptor = javaResolverComponents2.o;
                        ClassId.d.getClass();
                        classDescriptorC = FindClassInModuleKt.c(moduleDescriptor, ClassId.Companion.b(fqNameC), javaResolverComponents2.d.c().l);
                    }
                }
                return classDescriptorC.o();
            }
        });
        this.f72988e = javaResolverComponents.f72951j.a(javaAnnotation);
        this.f72989f = javaResolverComponents.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaAnnotationDescriptor f72993b;

            {
                this.f72993b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LazyJavaAnnotationDescriptor lazyJavaAnnotationDescriptor = this.f72993b;
                ArrayList<JavaAnnotationArgument> arrayListB = lazyJavaAnnotationDescriptor.f72986b.b();
                ArrayList arrayList = new ArrayList();
                for (JavaAnnotationArgument javaAnnotationArgument : arrayListB) {
                    Name name = javaAnnotationArgument.getName();
                    if (name == null) {
                        name = JvmAnnotationNames.f72870b;
                    }
                    ConstantValue constantValueD = lazyJavaAnnotationDescriptor.d(javaAnnotationArgument);
                    Pair pair = constantValueD != null ? new Pair(name, constantValueD) : null;
                    if (pair != null) {
                        arrayList.add(pair);
                    }
                }
                return MapsKt.n(arrayList);
            }
        });
        this.g = false;
        this.f72990h = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final Map a() {
        return (Map) StorageKt.a(this.f72989f, f72984i[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor
    public final boolean b() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final FqName c() {
        KProperty kProperty = f72984i[0];
        NullableLazyValue nullableLazyValue = this.f72987c;
        nullableLazyValue.getClass();
        kProperty.getClass();
        return (FqName) nullableLazyValue.mo47invoke();
    }

    public final ConstantValue d(JavaAnnotationArgument javaAnnotationArgument) {
        KotlinType kotlinTypeH;
        if (javaAnnotationArgument instanceof JavaLiteralAnnotationArgument) {
            return ConstantValueFactory.b(((JavaLiteralAnnotationArgument) javaAnnotationArgument).getValue(), null);
        }
        if (javaAnnotationArgument instanceof JavaEnumValueAnnotationArgument) {
            JavaEnumValueAnnotationArgument javaEnumValueAnnotationArgument = (JavaEnumValueAnnotationArgument) javaAnnotationArgument;
            return new EnumValue(javaEnumValueAnnotationArgument.c(), javaEnumValueAnnotationArgument.d());
        }
        boolean z = javaAnnotationArgument instanceof JavaArrayAnnotationArgument;
        LazyJavaResolverContext lazyJavaResolverContext = this.f72985a;
        if (z) {
            JavaArrayAnnotationArgument javaArrayAnnotationArgument = (JavaArrayAnnotationArgument) javaAnnotationArgument;
            Name name = javaArrayAnnotationArgument.getName();
            if (name == null) {
                name = JvmAnnotationNames.f72870b;
            }
            name.getClass();
            ArrayList elements = javaArrayAnnotationArgument.getElements();
            if (!KotlinTypeKt.a((SimpleType) StorageKt.a(this.d, f72984i[1]))) {
                ClassDescriptor classDescriptorD = DescriptorUtilsKt.d(this);
                classDescriptorD.getClass();
                ValueParameterDescriptor valueParameterDescriptorB = DescriptorResolverUtils.b(name, classDescriptorD);
                if (valueParameterDescriptorB == null || (kotlinTypeH = valueParameterDescriptorB.getType()) == null) {
                    kotlinTypeH = lazyJavaResolverContext.f72962a.o.g().h(Variance.INVARIANT, ErrorUtils.c(ErrorTypeKind.UNKNOWN_ARRAY_ELEMENT_TYPE_OF_ANNOTATION_ARGUMENT, new String[0]));
                }
                ArrayList arrayList = new ArrayList(CollectionsKt.t(elements, 10));
                Iterator it = elements.iterator();
                while (it.hasNext()) {
                    ConstantValue constantValueD = d((JavaAnnotationArgument) it.next());
                    if (constantValueD == null) {
                        constantValueD = new NullValue();
                    }
                    arrayList.add(constantValueD);
                }
                return new TypedArrayValue(arrayList, kotlinTypeH);
            }
        } else {
            if (javaAnnotationArgument instanceof JavaAnnotationAsAnnotationArgument) {
                return new AnnotationValue(new LazyJavaAnnotationDescriptor(this.f72985a, ((JavaAnnotationAsAnnotationArgument) javaAnnotationArgument).a(), false, 4, null));
            }
            if (javaAnnotationArgument instanceof JavaClassObjectAnnotationArgument) {
                ReflectJavaType reflectJavaTypeB = ((JavaClassObjectAnnotationArgument) javaAnnotationArgument).b();
                KClassValue.Companion companion = KClassValue.f73882b;
                KotlinType kotlinTypeD = lazyJavaResolverContext.d.d(reflectJavaTypeB, JavaTypeAttributesKt.a(TypeUsage.COMMON, false, null, 7));
                companion.getClass();
                kotlinTypeD.getClass();
                if (!KotlinTypeKt.a(kotlinTypeD)) {
                    KotlinType type = kotlinTypeD;
                    int i2 = 0;
                    while (KotlinBuiltIns.z(type)) {
                        type = ((TypeProjection) CollectionsKt.h0(type.F0())).getType();
                        type.getClass();
                        i2++;
                    }
                    ClassifierDescriptor classifierDescriptorY = type.H0().y();
                    if (classifierDescriptorY instanceof ClassDescriptor) {
                        ClassId classIdF = DescriptorUtilsKt.f(classifierDescriptorY);
                        return classIdF == null ? new KClassValue(new KClassValue.Value.LocalClass(kotlinTypeD)) : new KClassValue(classIdF, i2);
                    }
                    if (classifierDescriptorY instanceof TypeParameterDescriptor) {
                        ClassId.Companion companion2 = ClassId.d;
                        FqName fqNameI = StandardNames.FqNames.f72271a.i();
                        companion2.getClass();
                        return new KClassValue(ClassId.Companion.b(fqNameI), 0);
                    }
                }
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final SourceElement getSource() {
        return this.f72988e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final KotlinType getType() {
        return (SimpleType) StorageKt.a(this.d, f72984i[1]);
    }

    public final String toString() {
        return DescriptorRenderer.f73778b.z(this, null);
    }

    public /* synthetic */ LazyJavaAnnotationDescriptor(LazyJavaResolverContext lazyJavaResolverContext, JavaAnnotation javaAnnotation, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, javaAnnotation, (i2 & 4) != 0 ? false : z);
    }
}
