package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.MappingUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.FakePureImplementationsProvider;
import kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.FqNamesUtilKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.InnerClassesScopeWrapper;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaClassDescriptor extends ClassDescriptorBase implements JavaClassDescriptor {
    public static final Set z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LazyJavaResolverContext f72994j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final JavaClass f72995k;
    public final ClassDescriptor l;
    public final LazyJavaResolverContext m;
    public final Lazy n;
    public final ClassKind o;
    public final Modality p;
    public final Visibility q;
    public final boolean r;
    public final LazyJavaClassTypeConstructor s;
    public final LazyJavaClassMemberScope t;
    public final ScopesHolderForClass u;
    public final InnerClassesScopeWrapper v;
    public final LazyJavaStaticClassScope w;
    public final LazyJavaAnnotations x;
    public final NotNullLazyValue y;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public final class LazyJavaClassTypeConstructor extends AbstractClassTypeConstructor {
        public final NotNullLazyValue d;

        public LazyJavaClassTypeConstructor() {
            super(LazyJavaClassDescriptor.this.m.f72962a.f72944a);
            this.d = LazyJavaClassDescriptor.this.m.f72962a.f72944a.c(new Function0(LazyJavaClassDescriptor.this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$LazyJavaClassTypeConstructor$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final LazyJavaClassDescriptor f73000b;

                {
                    this.f73000b = lazyJavaClassDescriptor;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return TypeParameterUtilsKt.b(this.f73000b);
                }
            });
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean A() {
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x006a  */
        /* JADX WARN: Code duplicated, block: B:28:0x007f  */
        /* JADX WARN: Code duplicated, block: B:4:0x0027  */
        /* JADX WARN: Code duplicated, block: B:55:0x014d  */
        /* JADX WARN: Code duplicated, block: B:57:0x0174  */
        /* JADX WARN: Code duplicated, block: B:60:0x017d  */
        /* JADX WARN: Code duplicated, block: B:61:0x0182  */
        /* JADX WARN: Code duplicated, block: B:70:0x0198  */
        /* JADX WARN: Code duplicated, block: B:72:0x01ac  */
        /* JADX WARN: Code duplicated, block: B:74:0x01b1  */
        /* JADX WARN: Code duplicated, block: B:77:0x01ba  */
        /* JADX WARN: Code duplicated, block: B:80:0x01d1 A[LOOP:1: B:78:0x01cb->B:80:0x01d1, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:84:0x01ed  */
        /* JADX WARN: Code duplicated, block: B:87:0x01f4  */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection b() {
            String str;
            FqName fqName;
            FqName fqName2;
            ArrayList arrayList;
            SimpleType simpleTypeC;
            KotlinType kotlinTypeJ;
            List listO;
            ArrayList arrayList2;
            KotlinType kotlinTypeD;
            TypeConstructor typeConstructorH0;
            TypeConstructor typeConstructorH1;
            LazyJavaClassDescriptor lazyJavaClassDescriptor = LazyJavaClassDescriptor.this;
            JavaClass javaClass = lazyJavaClassDescriptor.f72995k;
            LazyJavaResolverContext lazyJavaResolverContext = lazyJavaClassDescriptor.m;
            Collection<JavaClassifierType> collectionI = javaClass.i();
            ArrayList arrayList3 = new ArrayList(collectionI.size());
            ArrayList<JavaType> arrayList4 = new ArrayList(0);
            LazyJavaAnnotations lazyJavaAnnotations = lazyJavaClassDescriptor.x;
            FqName fqName3 = JvmAnnotationNames.n;
            fqName3.getClass();
            AnnotationDescriptor annotationDescriptorJ = lazyJavaAnnotations.j(fqName3);
            if (annotationDescriptorJ == null) {
                fqName = null;
            } else {
                Object objI0 = CollectionsKt.i0(annotationDescriptorJ.a().values());
                StringValue stringValue = objI0 instanceof StringValue ? (StringValue) objI0 : null;
                if (stringValue == null || (str = (String) stringValue.f73869a) == null || !FqNamesUtilKt.a(str)) {
                    fqName = null;
                } else {
                    fqName = new FqName(str);
                }
            }
            if (fqName != null) {
                FqNameUnsafe fqNameUnsafe = fqName.f73679a;
                if (fqNameUnsafe.c()) {
                    fqName = null;
                } else {
                    Name name = StandardNames.f72270k;
                    name.getClass();
                    if (!fqNameUnsafe.h(name)) {
                        fqName = null;
                    }
                }
            } else {
                fqName = null;
            }
            if (fqName == null) {
                LinkedHashMap linkedHashMap = FakePureImplementationsProvider.f72832a;
                fqName2 = (FqName) FakePureImplementationsProvider.f72833b.get(DescriptorUtilsKt.g(lazyJavaClassDescriptor));
                if (fqName2 == null) {
                    simpleTypeC = null;
                }
                for (JavaClassifierType javaClassifierType : collectionI) {
                    kotlinTypeD = lazyJavaResolverContext.f72962a.r.d(lazyJavaResolverContext.d.d(javaClassifierType, JavaTypeAttributesKt.a(TypeUsage.SUPERTYPE, false, null, 7)), lazyJavaResolverContext);
                    if (kotlinTypeD.H0().y() instanceof NotFoundClasses.MockClassDescriptor) {
                        arrayList4.add(javaClassifierType);
                    }
                    typeConstructorH0 = kotlinTypeD.H0();
                    if (simpleTypeC != null) {
                        typeConstructorH1 = simpleTypeC.H0();
                    } else {
                        typeConstructorH1 = null;
                    }
                    if (!Intrinsics.c(typeConstructorH0, typeConstructorH1) && !KotlinBuiltIns.y(kotlinTypeD)) {
                        arrayList3.add(kotlinTypeD);
                    }
                }
                ClassDescriptor classDescriptor = lazyJavaClassDescriptor.l;
                kotlinTypeJ = classDescriptor != null ? TypeSubstitutor.e(MappingUtilKt.a(classDescriptor, lazyJavaClassDescriptor)).j(Variance.INVARIANT, classDescriptor.o()) : null;
                if (kotlinTypeJ != null) {
                    arrayList3.add(kotlinTypeJ);
                }
                if (simpleTypeC != null) {
                    arrayList3.add(simpleTypeC);
                }
                if (!arrayList4.isEmpty()) {
                    ErrorReporter errorReporter = lazyJavaResolverContext.f72962a.f72948f;
                    arrayList2 = new ArrayList(CollectionsKt.t(arrayList4, 10));
                    for (JavaType javaType : arrayList4) {
                        javaType.getClass();
                        arrayList2.add(((JavaClassifierType) javaType).A());
                    }
                    errorReporter.a(lazyJavaClassDescriptor, arrayList2);
                }
                if (arrayList3.isEmpty()) {
                    listO = CollectionsKt.O(lazyJavaResolverContext.f72962a.o.g().e());
                } else {
                    listO = CollectionsKt.y0(arrayList3);
                }
                return listO;
            }
            fqName2 = fqName;
            FqNameUnsafe fqNameUnsafe2 = fqName2.f73679a;
            ModuleDescriptor moduleDescriptor = lazyJavaResolverContext.f72962a.o;
            NoLookupLocation noLookupLocation = NoLookupLocation.FROM_JAVA_LOADER;
            int i2 = DescriptorUtilsKt.f73888a;
            moduleDescriptor.getClass();
            noLookupLocation.getClass();
            fqNameUnsafe2.c();
            ClassifierDescriptor classifierDescriptorF = ((AbstractScopeAdapter) moduleDescriptor.d0(fqName2.b()).n()).f(fqNameUnsafe2.g(), noLookupLocation);
            ClassDescriptor classDescriptor2 = classifierDescriptorF instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorF : null;
            if (classDescriptor2 == null) {
                simpleTypeC = null;
            } else {
                int size = classDescriptor2.j().getParameters().size();
                List parameters = lazyJavaClassDescriptor.s.getParameters();
                parameters.getClass();
                int size2 = parameters.size();
                if (size2 == size) {
                    List list = parameters;
                    arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new TypeProjectionImpl(Variance.INVARIANT, ((TypeParameterDescriptor) it.next()).o()));
                    }
                } else if (size2 == 1 && size > 1 && fqName == null) {
                    TypeProjectionImpl typeProjectionImpl = new TypeProjectionImpl(Variance.INVARIANT, ((TypeParameterDescriptor) CollectionsKt.h0(parameters)).o());
                    IntRange intRange = new IntRange(1, size);
                    ArrayList arrayList5 = new ArrayList(CollectionsKt.t(intRange, 10));
                    Iterator<Integer> it2 = intRange.iterator();
                    while (((IntProgressionIterator) it2).d) {
                        ((IntIterator) it2).nextInt();
                        arrayList5.add(typeProjectionImpl);
                    }
                    arrayList = arrayList5;
                } else {
                    simpleTypeC = null;
                }
                TypeAttributes.f74232c.getClass();
                simpleTypeC = KotlinTypeFactory.c(TypeAttributes.d, classDescriptor2, arrayList);
            }
            while (r0.hasNext()) {
                kotlinTypeD = lazyJavaResolverContext.f72962a.r.d(lazyJavaResolverContext.d.d(javaClassifierType, JavaTypeAttributesKt.a(TypeUsage.SUPERTYPE, false, null, 7)), lazyJavaResolverContext);
                if (kotlinTypeD.H0().y() instanceof NotFoundClasses.MockClassDescriptor) {
                    arrayList4.add(javaClassifierType);
                }
                typeConstructorH0 = kotlinTypeD.H0();
                if (simpleTypeC != null) {
                    typeConstructorH1 = simpleTypeC.H0();
                } else {
                    typeConstructorH1 = null;
                }
                if (!Intrinsics.c(typeConstructorH0, typeConstructorH1)) {
                    arrayList3.add(kotlinTypeD);
                }
            }
            ClassDescriptor classDescriptor3 = lazyJavaClassDescriptor.l;
            if (classDescriptor3 != null) {
            }
            if (kotlinTypeJ != null) {
                arrayList3.add(kotlinTypeJ);
            }
            if (simpleTypeC != null) {
                arrayList3.add(simpleTypeC);
            }
            if (!arrayList4.isEmpty()) {
                ErrorReporter errorReporter2 = lazyJavaResolverContext.f72962a.f72948f;
                arrayList2 = new ArrayList(CollectionsKt.t(arrayList4, 10));
                while (r3.hasNext()) {
                    javaType.getClass();
                    arrayList2.add(((JavaClassifierType) javaType).A());
                }
                errorReporter2.a(lazyJavaClassDescriptor, arrayList2);
            }
            if (arrayList3.isEmpty()) {
                listO = CollectionsKt.y0(arrayList3);
            } else {
                listO = CollectionsKt.O(lazyJavaResolverContext.f72962a.o.g().e());
            }
            return listO;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final SupertypeLoopChecker e() {
            return LazyJavaClassDescriptor.this.m.f72962a.m;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List getParameters() {
            return (List) this.d.mo47invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor
        /* JADX INFO: renamed from: m */
        public final ClassDescriptor y() {
            return LazyJavaClassDescriptor.this;
        }

        public final String toString() {
            String strB = LazyJavaClassDescriptor.this.getName().b();
            strB.getClass();
            return strB;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final ClassifierDescriptor y() {
            return LazyJavaClassDescriptor.this;
        }
    }

    static {
        new Companion(null);
        z = ArraysKt.Z(new String[]{"equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString"});
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyJavaClassDescriptor(LazyJavaResolverContext lazyJavaResolverContext, DeclarationDescriptor declarationDescriptor, JavaClass javaClass, ClassDescriptor classDescriptor) {
        ClassKind classKind;
        Modality modality;
        lazyJavaResolverContext.getClass();
        declarationDescriptor.getClass();
        javaClass.getClass();
        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
        super(javaResolverComponents.f72944a, declarationDescriptor, javaClass.getName(), javaResolverComponents.f72951j.a(javaClass), false);
        this.f72994j = lazyJavaResolverContext;
        this.f72995k = javaClass;
        this.l = classDescriptor;
        LazyJavaResolverContext lazyJavaResolverContextA = ContextKt.a(lazyJavaResolverContext, this, javaClass, 4);
        this.m = lazyJavaResolverContextA;
        JavaResolverComponents javaResolverComponents2 = lazyJavaResolverContextA.f72962a;
        JavaResolverCache javaResolverCache = javaResolverComponents2.g;
        StorageManager storageManager = javaResolverComponents2.f72944a;
        javaResolverCache.c(javaClass, this);
        this.n = LazyKt.b(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassDescriptor f72996b;

            {
                this.f72996b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Set set = LazyJavaClassDescriptor.z;
                LazyJavaClassDescriptor lazyJavaClassDescriptor = this.f72996b;
                ClassId classIdF = DescriptorUtilsKt.f(lazyJavaClassDescriptor);
                if (classIdF != null) {
                    lazyJavaClassDescriptor.f72994j.f72962a.w.a(classIdF);
                }
                return null;
            }
        });
        if (javaClass.k()) {
            classKind = ClassKind.ANNOTATION_CLASS;
        } else if (javaClass.E()) {
            classKind = ClassKind.INTERFACE;
        } else {
            classKind = javaClass.s() ? ClassKind.ENUM_CLASS : ClassKind.CLASS;
        }
        this.o = classKind;
        if (javaClass.k() || javaClass.s()) {
            modality = Modality.FINAL;
        } else {
            Modality.Companion companion = Modality.Companion;
            boolean zM = javaClass.m();
            boolean z2 = javaClass.m() || javaClass.isAbstract() || javaClass.E();
            boolean zIsFinal = javaClass.isFinal();
            companion.getClass();
            if (zM) {
                modality = Modality.SEALED;
            } else if (z2) {
                modality = Modality.ABSTRACT;
            } else {
                modality = !zIsFinal ? Modality.OPEN : Modality.FINAL;
            }
        }
        this.p = modality;
        this.q = javaClass.getVisibility();
        this.r = (javaClass.l() == null || javaClass.isStatic()) ? false : true;
        this.s = new LazyJavaClassTypeConstructor();
        LazyJavaClassMemberScope lazyJavaClassMemberScope = new LazyJavaClassMemberScope(lazyJavaResolverContextA, this, javaClass, classDescriptor != null, null, 16, null);
        this.t = lazyJavaClassMemberScope;
        ScopesHolderForClass.Companion companion2 = ScopesHolderForClass.f72399e;
        KotlinTypeRefiner kotlinTypeRefinerC = javaResolverComponents2.u.c();
        Function1 function1 = new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassDescriptor f72997b;

            {
                this.f72997b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Set set = LazyJavaClassDescriptor.z;
                ((KotlinTypeRefiner) obj).getClass();
                LazyJavaClassDescriptor lazyJavaClassDescriptor = this.f72997b;
                return new LazyJavaClassMemberScope(lazyJavaClassDescriptor.m, lazyJavaClassDescriptor, lazyJavaClassDescriptor.f72995k, lazyJavaClassDescriptor.l != null, lazyJavaClassDescriptor.t);
            }
        };
        companion2.getClass();
        storageManager.getClass();
        kotlinTypeRefinerC.getClass();
        this.u = new ScopesHolderForClass(this, storageManager, function1, kotlinTypeRefinerC, null);
        this.v = new InnerClassesScopeWrapper(lazyJavaClassMemberScope);
        this.w = new LazyJavaStaticClassScope(lazyJavaResolverContextA, javaClass, this);
        this.x = LazyJavaAnnotationsKt.a(lazyJavaResolverContextA, javaClass);
        this.y = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassDescriptor f72998b;

            {
                this.f72998b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LazyJavaClassDescriptor lazyJavaClassDescriptor = this.f72998b;
                ArrayList<JavaTypeParameter> typeParameters = lazyJavaClassDescriptor.f72995k.getTypeParameters();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(typeParameters, 10));
                for (JavaTypeParameter javaTypeParameter : typeParameters) {
                    TypeParameterDescriptor typeParameterDescriptorA = lazyJavaClassDescriptor.m.f72963b.a(javaTypeParameter);
                    if (typeParameterDescriptorA == null) {
                        StringBuilder sb = new StringBuilder("Parameter ");
                        sb.append(javaTypeParameter);
                        JavaClass javaClass2 = lazyJavaClassDescriptor.f72995k;
                        sb.append(" surely belongs to class ");
                        sb.append(javaClass2);
                        sb.append(", so it must be resolved");
                        throw new AssertionError(sb.toString());
                    }
                    arrayList.add(typeParameterDescriptorA);
                }
                return arrayList;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean D0() {
        return false;
    }

    public final LazyJavaClassMemberScope F0() {
        return (LazyJavaClassMemberScope) super.Q();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope N() {
        return this.v;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ValueClassRepresentation O() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope Q() {
        return (LazyJavaClassMemberScope) super.Q();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean R() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean T() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean W() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope b0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        return (LazyJavaClassMemberScope) this.u.a(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean c0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassKind e() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope e0() {
        return this.w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final Collection f() {
        return (List) this.t.q.mo47invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassDescriptor f0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.x;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
    public final DescriptorVisibility getVisibility() {
        DescriptorVisibility descriptorVisibility = DescriptorVisibilities.f72366a;
        Visibility visibility = this.q;
        if (!Intrinsics.c(visibility, descriptorVisibility) || this.f72995k.l() != null) {
            return UtilsKt.a(visibility);
        }
        DescriptorVisibility descriptorVisibility2 = JavaDescriptorVisibilities.f72846a;
        descriptorVisibility2.getClass();
        return descriptorVisibility2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor j() {
        return this.s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean k() {
        return this.r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List p() {
        return (List) this.y.mo47invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality q() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean r() {
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Lazy Java class ");
        int i2 = DescriptorUtilsKt.f73888a;
        FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(this);
        fqNameUnsafeF.getClass();
        sb.append(fqNameUnsafeF);
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassConstructorDescriptor y() {
        return null;
    }

    public /* synthetic */ LazyJavaClassDescriptor(LazyJavaResolverContext lazyJavaResolverContext, DeclarationDescriptor declarationDescriptor, JavaClass javaClass, ClassDescriptor classDescriptor, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, declarationDescriptor, javaClass, (i2 & 8) != 0 ? null : classDescriptor);
    }
}
