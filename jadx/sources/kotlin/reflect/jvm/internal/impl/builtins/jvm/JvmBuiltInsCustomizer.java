package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import defpackage.v40;
import defpackage.v7;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilterKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureBuildingUtilsKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.CacheWithNotNullValues;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmBuiltInsCustomizer implements AdditionalClassPartsProvider, PlatformDependentDeclarationFilter {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72336h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ModuleDescriptor f72337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NotNullLazyValue f72338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SimpleType f72339c;
    public final NotNullLazyValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CacheWithNotNullValues f72340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotNullLazyValue f72341f;
    public final MemoizedFunctionToNotNull g;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class JDKMemberStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ JDKMemberStatus[] $VALUES;
        public static final JDKMemberStatus DEPRECATED_LIST_METHODS;
        public static final JDKMemberStatus DROP;
        public static final JDKMemberStatus HIDDEN;
        public static final JDKMemberStatus NOT_CONSIDERED;
        public static final JDKMemberStatus VISIBLE;

        static {
            JDKMemberStatus jDKMemberStatus = new JDKMemberStatus("HIDDEN", 0);
            HIDDEN = jDKMemberStatus;
            JDKMemberStatus jDKMemberStatus2 = new JDKMemberStatus("VISIBLE", 1);
            VISIBLE = jDKMemberStatus2;
            JDKMemberStatus jDKMemberStatus3 = new JDKMemberStatus("DEPRECATED_LIST_METHODS", 2);
            DEPRECATED_LIST_METHODS = jDKMemberStatus3;
            JDKMemberStatus jDKMemberStatus4 = new JDKMemberStatus("NOT_CONSIDERED", 3);
            NOT_CONSIDERED = jDKMemberStatus4;
            JDKMemberStatus jDKMemberStatus5 = new JDKMemberStatus("DROP", 4);
            DROP = jDKMemberStatus5;
            JDKMemberStatus[] jDKMemberStatusArr = {jDKMemberStatus, jDKMemberStatus2, jDKMemberStatus3, jDKMemberStatus4, jDKMemberStatus5};
            $VALUES = jDKMemberStatusArr;
            $ENTRIES = EnumEntriesKt.a(jDKMemberStatusArr);
        }

        public static JDKMemberStatus valueOf(String str) {
            return (JDKMemberStatus) Enum.valueOf(JDKMemberStatus.class, str);
        }

        public static JDKMemberStatus[] values() {
            return (JDKMemberStatus[]) $VALUES.clone();
        }
    }

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72353a;

        static {
            int[] iArr = new int[JDKMemberStatus.values().length];
            try {
                iArr[JDKMemberStatus.HIDDEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JDKMemberStatus.DEPRECATED_LIST_METHODS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[JDKMemberStatus.NOT_CONSIDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[JDKMemberStatus.DROP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[JDKMemberStatus.VISIBLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f72353a = iArr;
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(JvmBuiltInsCustomizer.class, "settings", "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f72336h = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(JvmBuiltInsCustomizer.class, "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;", 0, reflectionFactory), tr.q(JvmBuiltInsCustomizer.class, "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;", 0, reflectionFactory)};
    }

    public JvmBuiltInsCustomizer(ModuleDescriptor moduleDescriptor, final StorageManager storageManager, Function0<JvmBuiltIns.Settings> function0) {
        moduleDescriptor.getClass();
        storageManager.getClass();
        function0.getClass();
        this.f72337a = moduleDescriptor;
        this.f72338b = storageManager.c(function0);
        ClassDescriptorImpl classDescriptorImpl = new ClassDescriptorImpl(new JvmBuiltInsCustomizer$createMockJavaIoSerializableType$mockJavaIoPackageFragment$1(moduleDescriptor, new FqName("java.io")), Name.e("Serializable"), Modality.ABSTRACT, ClassKind.INTERFACE, CollectionsKt.O(new LazyWrappedType(storageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final JvmBuiltInsCustomizer f72346b;

            {
                this.f72346b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                SimpleType simpleTypeE = this.f72346b.f72337a.g().e();
                simpleTypeE.getClass();
                return simpleTypeE;
            }
        })), SourceElement.f72405a, false, storageManager);
        classDescriptorImpl.F0(MemberScope.Empty.f73933b, EmptySet.f71770b, null);
        SimpleType simpleTypeO = classDescriptorImpl.o();
        simpleTypeO.getClass();
        this.f72339c = simpleTypeO;
        this.d = storageManager.c(new Function0(this, storageManager) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final JvmBuiltInsCustomizer f72342b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final StorageManager f72343c;

            {
                this.f72342b = this;
                this.f72343c = storageManager;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = JvmBuiltInsCustomizer.f72336h;
                JvmBuiltInsCustomizer jvmBuiltInsCustomizer = this.f72342b;
                ModuleDescriptor moduleDescriptor2 = jvmBuiltInsCustomizer.g().f72333a;
                JvmBuiltInClassDescriptorFactory.d.getClass();
                return FindClassInModuleKt.c(moduleDescriptor2, JvmBuiltInClassDescriptorFactory.f72319h, new NotFoundClasses(this.f72343c, jvmBuiltInsCustomizer.g().f72333a)).o();
            }
        });
        this.f72340e = storageManager.b();
        this.f72341f = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final JvmBuiltInsCustomizer f72344b;

            {
                this.f72344b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return Annotations.Companion.a(CollectionsKt.O(AnnotationUtilKt.a(this.f72344b.f72337a.g(), "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version", "", "WARNING", true)));
            }
        });
        this.g = storageManager.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final JvmBuiltInsCustomizer f72345b;

            {
                this.f72345b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Pair pair = (Pair) obj;
                KProperty[] kPropertyArr = JvmBuiltInsCustomizer.f72336h;
                pair.getClass();
                String str = (String) pair.f71705b;
                String str2 = (String) pair.f71706c;
                return Annotations.Companion.a(CollectionsKt.O(AnnotationUtilKt.a(this.f72345b.f72337a.g(), d21.l("'", str, "()' member of List is redundant in Kotlin and might be removed soon. Please use '", str2, "()' stdlib extension instead"), d21.j(str2, "()"), "HIDDEN", false)));
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:103:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:46:0x0137  */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
    public final Collection a(final Name name, ClassDescriptor classDescriptor) {
        List listP;
        Object objE;
        Iterable<SimpleFunctionDescriptor> iterable;
        boolean zBooleanValue;
        SimpleFunctionDescriptor simpleFunctionDescriptor;
        Annotations annotations;
        name.getClass();
        classDescriptor.getClass();
        CloneableClassScope.f72302e.getClass();
        boolean zEquals = name.equals(CloneableClassScope.f72303f);
        KProperty[] kPropertyArr = f72336h;
        if (zEquals && (classDescriptor instanceof DeserializedClassDescriptor)) {
            Name name2 = KotlinBuiltIns.f72242f;
            if (KotlinBuiltIns.b(classDescriptor, StandardNames.FqNames.g) || KotlinBuiltIns.s(classDescriptor) != null) {
                DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) classDescriptor;
                List list = deserializedClassDescriptor.g.r;
                list.getClass();
                List list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        Name nameB = NameResolverUtilKt.b(deserializedClassDescriptor.n.f73999b, ((ProtoBuf$Function) it.next()).g);
                        CloneableClassScope.f72302e.getClass();
                        if (nameB.equals(CloneableClassScope.f72303f)) {
                            return EmptyList.f71768b;
                        }
                    }
                }
                FunctionDescriptor.CopyBuilder copyBuilderA0 = ((SimpleFunctionDescriptor) CollectionsKt.g0(((SimpleType) StorageKt.a(this.d, kPropertyArr[1])).n().b(name, NoLookupLocation.FROM_BUILTINS))).A0();
                copyBuilderA0.o(deserializedClassDescriptor);
                copyBuilderA0.g(DescriptorVisibilities.f72369e);
                copyBuilderA0.m(deserializedClassDescriptor.o());
                copyBuilderA0.c(deserializedClassDescriptor.E0());
                FunctionDescriptor functionDescriptorBuild = copyBuilderA0.build();
                functionDescriptorBuild.getClass();
                return CollectionsKt.O((SimpleFunctionDescriptor) functionDescriptorBuild);
            }
        }
        if (!g().f72334b) {
            return EmptyList.f71768b;
        }
        Function1 function1 = new Function1(name) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Name f72347b;

            {
                this.f72347b = name;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                MemberScope memberScope = (MemberScope) obj;
                KProperty[] kPropertyArr2 = JvmBuiltInsCustomizer.f72336h;
                memberScope.getClass();
                return memberScope.b(this.f72347b, NoLookupLocation.FROM_BUILTINS);
            }
        };
        final LazyJavaClassDescriptor lazyJavaClassDescriptorF = f(classDescriptor);
        if (lazyJavaClassDescriptorF == null) {
            iterable = EmptyList.f71768b;
        } else {
            FqName fqNameG = DescriptorUtilsKt.g(lazyJavaClassDescriptorF);
            FallbackBuiltIns.g.getClass();
            KotlinBuiltIns kotlinBuiltIns = FallbackBuiltIns.f72304h;
            kotlinBuiltIns.getClass();
            ClassDescriptor classDescriptorC = JavaToKotlinClassMapper.c(fqNameG, kotlinBuiltIns);
            if (classDescriptorC == null) {
                listP = EmptySet.f71770b;
            } else {
                String str = JavaToKotlinClassMap.f72305a;
                FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classDescriptorC);
                fqNameUnsafeF.getClass();
                FqName fqName = (FqName) JavaToKotlinClassMap.f72313k.get(fqNameUnsafeF);
                if (fqName == null) {
                    listP = SetsKt.h(classDescriptorC);
                } else {
                    ClassDescriptor classDescriptorJ = kotlinBuiltIns.j(fqName);
                    classDescriptorJ.getClass();
                    listP = CollectionsKt.P(classDescriptorC, classDescriptorJ);
                }
            }
            Iterable iterable2 = listP;
            iterable2.getClass();
            if (iterable2 instanceof List) {
                List list3 = (List) iterable2;
                if (list3.isEmpty()) {
                    objE = null;
                } else {
                    objE = fc.e(1, list3);
                }
            } else {
                Iterator it2 = iterable2.iterator();
                if (it2.hasNext()) {
                    Object next = it2.next();
                    while (it2.hasNext()) {
                        next = it2.next();
                    }
                    objE = next;
                } else {
                    objE = null;
                }
            }
            final ClassDescriptor classDescriptor2 = (ClassDescriptor) objE;
            if (classDescriptor2 == null) {
                iterable = EmptyList.f71768b;
            } else {
                SmartSet.Companion companion = SmartSet.d;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable2, 10));
                Iterator it3 = iterable2.iterator();
                while (it3.hasNext()) {
                    arrayList.add(DescriptorUtilsKt.g((ClassDescriptor) it3.next()));
                }
                companion.getClass();
                SmartSet smartSet = new SmartSet(null);
                smartSet.addAll(arrayList);
                boolean zB = JavaToKotlinClassMapper.b(classDescriptor);
                MemberScope memberScopeQ = ((ClassDescriptor) this.f72340e.a(DescriptorUtilsKt.g(lazyJavaClassDescriptorF), new Function0(lazyJavaClassDescriptorF, classDescriptor2) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$5

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final LazyJavaClassDescriptor f72348b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final ClassDescriptor f72349c;

                    {
                        this.f72348b = lazyJavaClassDescriptorF;
                        this.f72349c = classDescriptor2;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        KProperty[] kPropertyArr2 = JvmBuiltInsCustomizer.f72336h;
                        LazyJavaClassDescriptor lazyJavaClassDescriptor = this.f72348b;
                        lazyJavaClassDescriptor.getClass();
                        LazyJavaResolverContext lazyJavaResolverContext = lazyJavaClassDescriptor.m;
                        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
                        javaResolverComponents.getClass();
                        LazyJavaResolverContext lazyJavaResolverContext2 = new LazyJavaResolverContext(new JavaResolverComponents(javaResolverComponents.f72944a, javaResolverComponents.f72945b, javaResolverComponents.f72946c, javaResolverComponents.d, javaResolverComponents.f72947e, javaResolverComponents.f72948f, JavaResolverCache.f72929a, javaResolverComponents.f72949h, javaResolverComponents.f72950i, javaResolverComponents.f72951j, javaResolverComponents.f72952k, javaResolverComponents.l, javaResolverComponents.m, javaResolverComponents.n, javaResolverComponents.o, javaResolverComponents.p, javaResolverComponents.q, javaResolverComponents.r, javaResolverComponents.s, javaResolverComponents.t, javaResolverComponents.u, javaResolverComponents.v, javaResolverComponents.w, null, 8388608, null), lazyJavaResolverContext.f72963b, lazyJavaResolverContext.f72964c);
                        DeclarationDescriptor declarationDescriptorD = lazyJavaClassDescriptor.d();
                        declarationDescriptorD.getClass();
                        return new LazyJavaClassDescriptor(lazyJavaResolverContext2, declarationDescriptorD, lazyJavaClassDescriptor.f72995k, this.f72349c);
                    }
                })).Q();
                memberScopeQ.getClass();
                Iterable iterable3 = (Iterable) function1.invoke(memberScopeQ);
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : iterable3) {
                    SimpleFunctionDescriptor simpleFunctionDescriptor2 = (SimpleFunctionDescriptor) obj;
                    if (simpleFunctionDescriptor2.e() == CallableMemberDescriptor.Kind.DECLARATION) {
                        DescriptorVisibility visibility = simpleFunctionDescriptor2.getVisibility();
                        visibility.getClass();
                        if (((DelegatedDescriptorVisibility) visibility).f72365a.f72422b && !KotlinBuiltIns.D(simpleFunctionDescriptor2)) {
                            Collection collectionI = simpleFunctionDescriptor2.i();
                            collectionI.getClass();
                            Collection collection = collectionI;
                            if (!(collection instanceof Collection) || !collection.isEmpty()) {
                                Iterator it4 = collection.iterator();
                                while (true) {
                                    if (it4.hasNext()) {
                                        DeclarationDescriptor declarationDescriptorD = ((FunctionDescriptor) it4.next()).d();
                                        declarationDescriptorD.getClass();
                                        if (smartSet.contains(DescriptorUtilsKt.g(declarationDescriptorD))) {
                                        }
                                    }
                                }
                            }
                            DeclarationDescriptor declarationDescriptorD2 = simpleFunctionDescriptor2.d();
                            declarationDescriptorD2.getClass();
                            if (JvmBuiltInsSignatures.f72361e.contains(MethodSignatureBuildingUtilsKt.a((ClassDescriptor) declarationDescriptorD2, MethodSignatureMappingKt.a(simpleFunctionDescriptor2, 3))) ^ zB) {
                                zBooleanValue = true;
                            } else {
                                Boolean boolD = DFS.d(CollectionsKt.O(simpleFunctionDescriptor2), new DFS.Neighbors() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$6
                                    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
                                    public final Iterable a(Object obj2) {
                                        KProperty[] kPropertyArr2 = JvmBuiltInsCustomizer.f72336h;
                                        return ((CallableMemberDescriptor) obj2).y0().i();
                                    }
                                }, new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$7

                                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                                    public final JvmBuiltInsCustomizer f72351b;

                                    {
                                        this.f72351b = this;
                                    }

                                    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj2) {
                                        boolean z;
                                        CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj2;
                                        KProperty[] kPropertyArr2 = JvmBuiltInsCustomizer.f72336h;
                                        if (callableMemberDescriptor.e() == CallableMemberDescriptor.Kind.DECLARATION) {
                                            this.f72351b.getClass();
                                            DeclarationDescriptor declarationDescriptorD3 = callableMemberDescriptor.d();
                                            declarationDescriptorD3.getClass();
                                            if (JavaToKotlinClassMapper.b((ClassDescriptor) declarationDescriptorD3)) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                        } else {
                                            z = false;
                                        }
                                        return Boolean.valueOf(z);
                                    }
                                });
                                boolD.getClass();
                                zBooleanValue = boolD.booleanValue();
                            }
                            if (!zBooleanValue) {
                                arrayList2.add(obj);
                            }
                        }
                    }
                }
                iterable = arrayList2;
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (SimpleFunctionDescriptor simpleFunctionDescriptor3 : iterable) {
            DeclarationDescriptor declarationDescriptorD3 = simpleFunctionDescriptor3.d();
            declarationDescriptorD3.getClass();
            FunctionDescriptor functionDescriptorB = simpleFunctionDescriptor3.b(TypeSubstitutor.e(MappingUtilKt.a((ClassDescriptor) declarationDescriptorD3, classDescriptor)));
            functionDescriptorB.getClass();
            FunctionDescriptor.CopyBuilder copyBuilderA1 = ((SimpleFunctionDescriptor) functionDescriptorB).A0();
            copyBuilderA1.o(classDescriptor);
            copyBuilderA1.c(classDescriptor.E0());
            copyBuilderA1.l();
            DeclarationDescriptor declarationDescriptorD4 = simpleFunctionDescriptor3.d();
            declarationDescriptorD4.getClass();
            final String strA = MethodSignatureMappingKt.a(simpleFunctionDescriptor3, 3);
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            Object objB = DFS.b(CollectionsKt.O((ClassDescriptor) declarationDescriptorD4), new DFS.Neighbors(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$$Lambda$8

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final JvmBuiltInsCustomizer f72352a;

                {
                    this.f72352a = this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
                public final Iterable a(Object obj2) {
                    KProperty[] kPropertyArr2 = JvmBuiltInsCustomizer.f72336h;
                    Collection collectionI2 = ((ClassDescriptor) obj2).j().i();
                    collectionI2.getClass();
                    ArrayList arrayList4 = new ArrayList();
                    Iterator it5 = collectionI2.iterator();
                    while (it5.hasNext()) {
                        ClassifierDescriptor classifierDescriptorY = ((KotlinType) it5.next()).H0().y();
                        ClassDescriptor classDescriptorF = null;
                        ClassifierDescriptor classifierDescriptorY0 = classifierDescriptorY != null ? classifierDescriptorY.y0() : null;
                        ClassDescriptor classDescriptor3 = classifierDescriptorY0 instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY0 : null;
                        if (classDescriptor3 != null && (classDescriptorF = this.f72352a.f(classDescriptor3)) == null) {
                            classDescriptorF = classDescriptor3;
                        }
                        if (classDescriptorF != null) {
                            arrayList4.add(classDescriptorF);
                        }
                    }
                    return arrayList4;
                }
            }, new DFS.AbstractNodeHandler<ClassDescriptor, JDKMemberStatus>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$getJdkMethodStatus$2
                @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
                public final Object a() {
                    JvmBuiltInsCustomizer.JDKMemberStatus jDKMemberStatus = (JvmBuiltInsCustomizer.JDKMemberStatus) ref$ObjectRef.f71921b;
                    return jDKMemberStatus == null ? JvmBuiltInsCustomizer.JDKMemberStatus.NOT_CONSIDERED : jDKMemberStatus;
                }

                @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.AbstractNodeHandler, kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
                public final boolean c(Object obj2) {
                    ClassDescriptor classDescriptor3 = (ClassDescriptor) obj2;
                    classDescriptor3.getClass();
                    String strA2 = MethodSignatureBuildingUtilsKt.a(classDescriptor3, strA);
                    boolean zContains = JvmBuiltInsSignatures.f72359b.contains(strA2);
                    Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                    if (zContains) {
                        ref$ObjectRef2.f71921b = JvmBuiltInsCustomizer.JDKMemberStatus.HIDDEN;
                    } else if (JvmBuiltInsSignatures.d.contains(strA2)) {
                        ref$ObjectRef2.f71921b = JvmBuiltInsCustomizer.JDKMemberStatus.VISIBLE;
                    } else if (JvmBuiltInsSignatures.f72360c.contains(strA2)) {
                        ref$ObjectRef2.f71921b = JvmBuiltInsCustomizer.JDKMemberStatus.DEPRECATED_LIST_METHODS;
                    } else if (JvmBuiltInsSignatures.f72358a.contains(strA2)) {
                        ref$ObjectRef2.f71921b = JvmBuiltInsCustomizer.JDKMemberStatus.DROP;
                    }
                    return ref$ObjectRef2.f71921b == null;
                }
            });
            objB.getClass();
            int i2 = WhenMappings.f72353a[((JDKMemberStatus) objB).ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    Name name3 = simpleFunctionDescriptor3.getName();
                    boolean zC = Intrinsics.c(name3, JvmBuiltInsCustomizerKt.f72356a);
                    MemoizedFunctionToNotNull memoizedFunctionToNotNull = this.g;
                    if (zC) {
                        annotations = (Annotations) memoizedFunctionToNotNull.invoke(new Pair(simpleFunctionDescriptor3.getName().b(), "first"));
                    } else {
                        if (!Intrinsics.c(name3, JvmBuiltInsCustomizerKt.f72357b)) {
                            v7.i(simpleFunctionDescriptor3.getName(), "Unexpected name: ");
                            return null;
                        }
                        annotations = (Annotations) memoizedFunctionToNotNull.invoke(new Pair(simpleFunctionDescriptor3.getName().b(), "last"));
                    }
                    copyBuilderA1.q(annotations);
                } else if (i2 == 3) {
                    copyBuilderA1.q((Annotations) StorageKt.a(this.f72341f, kPropertyArr[2]));
                } else if (i2 == 4) {
                    simpleFunctionDescriptor = null;
                } else if (i2 != 5) {
                    v40.g();
                    return null;
                }
                FunctionDescriptor functionDescriptorBuild2 = copyBuilderA1.build();
                functionDescriptorBuild2.getClass();
                simpleFunctionDescriptor = (SimpleFunctionDescriptor) functionDescriptorBuild2;
            } else if (classDescriptor.q() != Modality.FINAL || classDescriptor.e() == ClassKind.ENUM_CLASS) {
                copyBuilderA1.d();
                FunctionDescriptor functionDescriptorBuild3 = copyBuilderA1.build();
                functionDescriptorBuild3.getClass();
                simpleFunctionDescriptor = (SimpleFunctionDescriptor) functionDescriptorBuild3;
            } else {
                simpleFunctionDescriptor = null;
            }
            if (simpleFunctionDescriptor != null) {
                arrayList3.add(simpleFunctionDescriptor);
            }
        }
        return arrayList3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter
    public final boolean b(ClassDescriptor classDescriptor, DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor) {
        classDescriptor.getClass();
        LazyJavaClassDescriptor lazyJavaClassDescriptorF = f(classDescriptor);
        if (lazyJavaClassDescriptorF == null || !deserializedSimpleFunctionDescriptor.getAnnotations().C1(PlatformDependentDeclarationFilterKt.f72446a)) {
            return true;
        }
        if (!g().f72334b) {
            return false;
        }
        String strA = MethodSignatureMappingKt.a(deserializedSimpleFunctionDescriptor, 3);
        LazyJavaClassMemberScope lazyJavaClassMemberScopeF0 = lazyJavaClassDescriptorF.F0();
        Name name = deserializedSimpleFunctionDescriptor.getName();
        name.getClass();
        Collection collectionB = lazyJavaClassMemberScopeF0.b(name, NoLookupLocation.FROM_BUILTINS);
        if ((collectionB instanceof Collection) && collectionB.isEmpty()) {
            return false;
        }
        Iterator it = collectionB.iterator();
        while (it.hasNext()) {
            if (MethodSignatureMappingKt.a((SimpleFunctionDescriptor) it.next(), 3).equals(strA)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
    public final Collection c(ClassDescriptor classDescriptor) {
        FqNameUnsafe fqNameUnsafeF;
        classDescriptor.getClass();
        if (classDescriptor.e() != ClassKind.CLASS || !g().f72334b) {
            return EmptyList.f71768b;
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptorF = f(classDescriptor);
        if (lazyJavaClassDescriptorF == null) {
            return EmptyList.f71768b;
        }
        FqName fqNameG = DescriptorUtilsKt.g(lazyJavaClassDescriptorF);
        FallbackBuiltIns.g.getClass();
        ClassDescriptor classDescriptorC = JavaToKotlinClassMapper.c(fqNameG, FallbackBuiltIns.f72304h);
        if (classDescriptorC == null) {
            return EmptyList.f71768b;
        }
        TypeSubstitutor typeSubstitutorE = TypeSubstitutor.e(MappingUtilKt.a(classDescriptorC, lazyJavaClassDescriptorF));
        List list = (List) lazyJavaClassDescriptorF.t.q.mo47invoke();
        ArrayList<ClassConstructorDescriptor> arrayList = new ArrayList();
        for (Object obj : list) {
            ClassConstructorDescriptor classConstructorDescriptor = (ClassConstructorDescriptor) obj;
            DescriptorVisibility visibility = classConstructorDescriptor.getVisibility();
            visibility.getClass();
            if (((DelegatedDescriptorVisibility) visibility).f72365a.f72422b) {
                Collection collectionF = classDescriptorC.f();
                collectionF.getClass();
                Collection collection = collectionF;
                if (!(collection instanceof Collection) || !collection.isEmpty()) {
                    Iterator it = collection.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            ClassConstructorDescriptor classConstructorDescriptor2 = (ClassConstructorDescriptor) it.next();
                            classConstructorDescriptor2.getClass();
                            if (OverridingUtil.j(classConstructorDescriptor2, classConstructorDescriptor.b(typeSubstitutorE)) == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE) {
                            }
                        }
                    }
                }
                if (classConstructorDescriptor.h().size() == 1) {
                    List listH = classConstructorDescriptor.h();
                    listH.getClass();
                    ClassifierDescriptor classifierDescriptorY = ((ValueParameterDescriptor) CollectionsKt.h0(listH)).getType().H0().y();
                    if (classifierDescriptorY != null) {
                        int i2 = DescriptorUtilsKt.f73888a;
                        fqNameUnsafeF = DescriptorUtils.f(classifierDescriptorY);
                        fqNameUnsafeF.getClass();
                    } else {
                        fqNameUnsafeF = null;
                    }
                    FqNameUnsafe fqNameUnsafeF2 = DescriptorUtils.f(classDescriptor);
                    fqNameUnsafeF2.getClass();
                    if (Intrinsics.c(fqNameUnsafeF, fqNameUnsafeF2)) {
                    }
                }
                if (!KotlinBuiltIns.D(classConstructorDescriptor) && !JvmBuiltInsSignatures.f72362f.contains(MethodSignatureBuildingUtilsKt.a(lazyJavaClassDescriptorF, MethodSignatureMappingKt.a(classConstructorDescriptor, 3)))) {
                    arrayList.add(obj);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        for (ClassConstructorDescriptor classConstructorDescriptor3 : arrayList) {
            FunctionDescriptor.CopyBuilder copyBuilderA0 = classConstructorDescriptor3.A0();
            copyBuilderA0.o(classDescriptor);
            copyBuilderA0.m(classDescriptor.o());
            copyBuilderA0.l();
            copyBuilderA0.f(typeSubstitutorE.g());
            if (!JvmBuiltInsSignatures.g.contains(MethodSignatureBuildingUtilsKt.a(lazyJavaClassDescriptorF, MethodSignatureMappingKt.a(classConstructorDescriptor3, 3)))) {
                copyBuilderA0.q((Annotations) StorageKt.a(this.f72341f, f72336h[2]));
            }
            FunctionDescriptor functionDescriptorBuild = copyBuilderA0.build();
            functionDescriptorBuild.getClass();
            arrayList2.add((ClassConstructorDescriptor) functionDescriptorBuild);
        }
        return arrayList2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
    public final Collection d(ClassDescriptor classDescriptor) {
        classDescriptor.getClass();
        int i2 = DescriptorUtilsKt.f73888a;
        FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classDescriptor);
        fqNameUnsafeF.getClass();
        LinkedHashSet linkedHashSet = JvmBuiltInsSignatures.f72358a;
        FqNameUnsafe fqNameUnsafe = StandardNames.FqNames.g;
        boolean zEquals = fqNameUnsafeF.equals(fqNameUnsafe);
        boolean zIsAssignableFrom = false;
        SimpleType simpleType = this.f72339c;
        if (!zEquals) {
            HashMap map = StandardNames.FqNames.g0;
            if (map.get(fqNameUnsafeF) == null) {
                if (fqNameUnsafeF.equals(fqNameUnsafe) || map.get(fqNameUnsafeF) != null) {
                    zIsAssignableFrom = true;
                } else {
                    String str = JavaToKotlinClassMap.f72305a;
                    ClassId classIdF = JavaToKotlinClassMap.f(fqNameUnsafeF);
                    if (classIdF != null) {
                        try {
                            zIsAssignableFrom = Serializable.class.isAssignableFrom(Class.forName(classIdF.a().f73679a.f73683a));
                        } catch (ClassNotFoundException unused) {
                        }
                    }
                }
                return zIsAssignableFrom ? CollectionsKt.O(simpleType) : EmptyList.f71768b;
            }
        }
        return CollectionsKt.P((SimpleType) StorageKt.a(this.d, f72336h[1]), simpleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
    public final Collection e(ClassDescriptor classDescriptor) {
        LazyJavaClassDescriptor lazyJavaClassDescriptorF;
        Set setA;
        classDescriptor.getClass();
        if (!g().f72334b || (lazyJavaClassDescriptorF = f(classDescriptor)) == null || (setA = lazyJavaClassDescriptorF.F0().a()) == null) {
            setA = EmptySet.f71770b;
        }
        return setA;
    }

    public final LazyJavaClassDescriptor f(ClassDescriptor classDescriptor) {
        FqName fqNameA;
        if (classDescriptor == null) {
            KotlinBuiltIns.a(108);
            throw null;
        }
        Name name = KotlinBuiltIns.f72242f;
        if (!KotlinBuiltIns.b(classDescriptor, StandardNames.FqNames.f72271a) && KotlinBuiltIns.K(classDescriptor)) {
            int i2 = DescriptorUtilsKt.f73888a;
            FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classDescriptor);
            fqNameUnsafeF.getClass();
            if (fqNameUnsafeF.d()) {
                String str = JavaToKotlinClassMap.f72305a;
                ClassId classIdF = JavaToKotlinClassMap.f(fqNameUnsafeF);
                if (classIdF != null && (fqNameA = classIdF.a()) != null) {
                    ClassDescriptor classDescriptorB = DescriptorUtilKt.b(g().f72333a, fqNameA, NoLookupLocation.FROM_BUILTINS);
                    if (classDescriptorB instanceof LazyJavaClassDescriptor) {
                        return (LazyJavaClassDescriptor) classDescriptorB;
                    }
                }
            }
        }
        return null;
    }

    public final JvmBuiltIns.Settings g() {
        return (JvmBuiltIns.Settings) StorageKt.a(this.f72338b, f72336h[0]);
    }
}
