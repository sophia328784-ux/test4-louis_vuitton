package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.n00;
import defpackage.no0;
import defpackage.o60;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaTypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindExclude;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;

/* JADX INFO: loaded from: classes4.dex */
public abstract class LazyJavaScope extends MemberScopeImpl {
    public static final /* synthetic */ KProperty[] m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyJavaResolverContext f73032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyJavaScope f73033c;
    public final NotNullLazyValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotNullLazyValue f73034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MemoizedFunctionToNotNull f73035f;
    public final MemoizedFunctionToNullable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MemoizedFunctionToNotNull f73036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NotNullLazyValue f73037i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final NotNullLazyValue f73038j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NotNullLazyValue f73039k;
    public final MemoizedFunctionToNotNull l;

    public static final class MethodSignatureData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KotlinType f73054a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final KotlinType f73055b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f73056c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f73057e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List f73058f;

        public MethodSignatureData(KotlinType kotlinType, KotlinType kotlinType2, List<? extends ValueParameterDescriptor> list, List<? extends TypeParameterDescriptor> list2, boolean z, List<String> list3) {
            kotlinType.getClass();
            list.getClass();
            list2.getClass();
            list3.getClass();
            this.f73054a = kotlinType;
            this.f73055b = kotlinType2;
            this.f73056c = list;
            this.d = list2;
            this.f73057e = z;
            this.f73058f = list3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodSignatureData)) {
                return false;
            }
            MethodSignatureData methodSignatureData = (MethodSignatureData) obj;
            return Intrinsics.c(this.f73054a, methodSignatureData.f73054a) && Intrinsics.c(this.f73055b, methodSignatureData.f73055b) && Intrinsics.c(this.f73056c, methodSignatureData.f73056c) && Intrinsics.c(this.d, methodSignatureData.d) && this.f73057e == methodSignatureData.f73057e && Intrinsics.c(this.f73058f, methodSignatureData.f73058f);
        }

        public final int hashCode() {
            int iHashCode = this.f73054a.hashCode() * 31;
            KotlinType kotlinType = this.f73055b;
            return this.f73058f.hashCode() + o60.b(n00.a(n00.a((iHashCode + (kotlinType == null ? 0 : kotlinType.hashCode())) * 31, 31, this.f73056c), 31, this.d), 31, this.f73057e);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MethodSignatureData(returnType=");
            sb.append(this.f73054a);
            sb.append(", receiverType=");
            sb.append(this.f73055b);
            sb.append(", valueParameters=");
            sb.append(this.f73056c);
            sb.append(", typeParameters=");
            sb.append(this.d);
            sb.append(", hasStableParameterNames=");
            sb.append(this.f73057e);
            sb.append(", errors=");
            return tr.m(sb, this.f73058f, ')');
        }
    }

    public static final class ResolvedValueParameters {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f73059a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f73060b;

        public ResolvedValueParameters(List<? extends ValueParameterDescriptor> list, boolean z) {
            list.getClass();
            this.f73059a = list;
            this.f73060b = z;
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(LazyJavaScope.class, "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        m = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(LazyJavaScope.class, "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;", 0, reflectionFactory), tr.q(LazyJavaScope.class, "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;", 0, reflectionFactory)};
    }

    public LazyJavaScope(LazyJavaResolverContext lazyJavaResolverContext, LazyJavaScope lazyJavaScope) {
        lazyJavaResolverContext.getClass();
        this.f73032b = lazyJavaResolverContext;
        this.f73033c = lazyJavaScope;
        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
        this.d = javaResolverComponents.f72944a.a(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73040b;

            {
                this.f73040b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = LazyJavaScope.m;
                DescriptorKindFilter descriptorKindFilter = DescriptorKindFilter.l;
                MemberScope.f73929a.getClass();
                Function1 function1 = MemberScope.Companion.f73931b;
                LazyJavaScope lazyJavaScope2 = this.f73040b;
                lazyJavaScope2.getClass();
                descriptorKindFilter.getClass();
                function1.getClass();
                NoLookupLocation noLookupLocation = NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                DescriptorKindFilter.f73910c.getClass();
                boolean zA = descriptorKindFilter.a(DescriptorKindFilter.f73916k);
                List list = descriptorKindFilter.f73917a;
                if (zA) {
                    for (Name name : lazyJavaScope2.h(descriptorKindFilter, function1)) {
                        function1.invoke(name);
                        ClassifierDescriptor classifierDescriptorF = lazyJavaScope2.f(name, noLookupLocation);
                        if (classifierDescriptorF != null) {
                            linkedHashSet.add(classifierDescriptorF);
                        }
                    }
                }
                DescriptorKindFilter.f73910c.getClass();
                if (descriptorKindFilter.a(DescriptorKindFilter.f73913h) && !list.contains(DescriptorKindExclude.NonExtensions.f73907a)) {
                    for (Name name2 : lazyJavaScope2.i(descriptorKindFilter, function1)) {
                        function1.invoke(name2);
                        linkedHashSet.addAll(lazyJavaScope2.b(name2, noLookupLocation));
                    }
                }
                DescriptorKindFilter.f73910c.getClass();
                if (descriptorKindFilter.a(DescriptorKindFilter.f73914i) && !list.contains(DescriptorKindExclude.NonExtensions.f73907a)) {
                    for (Name name3 : lazyJavaScope2.o(descriptorKindFilter)) {
                        function1.invoke(name3);
                        linkedHashSet.addAll(lazyJavaScope2.c(name3, noLookupLocation));
                    }
                }
                return CollectionsKt.y0(linkedHashSet);
            }
        }, EmptyList.f71768b);
        this.f73034e = javaResolverComponents.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73041b;

            {
                this.f73041b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = LazyJavaScope.m;
                return this.f73041b.k();
            }
        });
        this.f73035f = javaResolverComponents.f72944a.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73046b;

            {
                this.f73046b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Name name = (Name) obj;
                KProperty[] kPropertyArr = LazyJavaScope.m;
                name.getClass();
                LazyJavaScope lazyJavaScope2 = this.f73046b;
                LazyJavaScope lazyJavaScope3 = lazyJavaScope2.f73033c;
                if (lazyJavaScope3 != null) {
                    return (Collection) lazyJavaScope3.f73035f.invoke(name);
                }
                ArrayList arrayList = new ArrayList();
                for (JavaMethod javaMethod : ((DeclaredMemberIndex) lazyJavaScope2.f73034e.mo47invoke()).d(name)) {
                    JavaMethodDescriptor javaMethodDescriptorT = lazyJavaScope2.t(javaMethod);
                    if (lazyJavaScope2.r(javaMethodDescriptorT)) {
                        lazyJavaScope2.f73032b.f72962a.g.b(javaMethod, javaMethodDescriptorT);
                        arrayList.add(javaMethodDescriptorT);
                    }
                }
                lazyJavaScope2.j(arrayList, name);
                return arrayList;
            }
        });
        this.g = javaResolverComponents.f72944a.g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73047b;

            {
                this.f73047b = this;
            }

            /* JADX WARN: Code duplicated, block: B:50:0x0125  */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Name name = (Name) obj;
                KProperty[] kPropertyArr = LazyJavaScope.m;
                name.getClass();
                LazyJavaScope lazyJavaScope2 = this.f73047b;
                LazyJavaScope lazyJavaScope3 = lazyJavaScope2.f73033c;
                if (lazyJavaScope3 != null) {
                    return (PropertyDescriptor) lazyJavaScope3.g.invoke(name);
                }
                JavaField javaFieldF = ((DeclaredMemberIndex) lazyJavaScope2.f73034e.mo47invoke()).f(name);
                if (javaFieldF == null || javaFieldF.D()) {
                    return null;
                }
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                boolean z = !javaFieldF.isFinal();
                LazyJavaResolverContext lazyJavaResolverContext2 = lazyJavaScope2.f73032b;
                LazyJavaAnnotations lazyJavaAnnotationsA = LazyJavaAnnotationsKt.a(lazyJavaResolverContext2, javaFieldF);
                JavaResolverComponents javaResolverComponents2 = lazyJavaResolverContext2.f72962a;
                JavaPropertyDescriptor javaPropertyDescriptorM0 = JavaPropertyDescriptor.M0(lazyJavaScope2.q(), lazyJavaAnnotationsA, Modality.FINAL, UtilsKt.a(javaFieldF.getVisibility()), z, javaFieldF.getName(), javaResolverComponents2.f72951j.a(javaFieldF), javaFieldF.isFinal() && javaFieldF.isStatic());
                ref$ObjectRef.f71921b = javaPropertyDescriptorM0;
                javaPropertyDescriptorM0.J0(null, null, null, null);
                KotlinType kotlinTypeD = lazyJavaResolverContext2.d.d(javaFieldF.getType(), JavaTypeAttributesKt.a(TypeUsage.COMMON, false, null, 7));
                if ((KotlinBuiltIns.H(kotlinTypeD) || KotlinBuiltIns.I(kotlinTypeD)) && javaFieldF.isFinal()) {
                    javaFieldF.isStatic();
                }
                PropertyDescriptorImpl propertyDescriptorImpl = (PropertyDescriptorImpl) ref$ObjectRef.f71921b;
                EmptyList emptyList = EmptyList.f71768b;
                propertyDescriptorImpl.L0(kotlinTypeD, emptyList, lazyJavaScope2.p(), null, emptyList);
                DeclarationDescriptor declarationDescriptorQ = lazyJavaScope2.q();
                ClassDescriptor classDescriptor = declarationDescriptorQ instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptorQ : null;
                if (classDescriptor != null) {
                    ref$ObjectRef.f71921b = javaResolverComponents2.x.f(classDescriptor, (PropertyDescriptorImpl) ref$ObjectRef.f71921b, lazyJavaResolverContext2);
                }
                Object obj2 = ref$ObjectRef.f71921b;
                VariableDescriptor variableDescriptor = (VariableDescriptor) obj2;
                KotlinType type = ((PropertyDescriptorImpl) obj2).getType();
                if (variableDescriptor == null) {
                    DescriptorUtils.a(65);
                    throw null;
                }
                if (type == null) {
                    DescriptorUtils.a(66);
                    throw null;
                }
                int i2 = DescriptorUtils.f73834a;
                if (!variableDescriptor.I() && !KotlinTypeKt.a(type)) {
                    if (TypeUtils.b(type)) {
                        ((PropertyDescriptorImpl) ref$ObjectRef.f71921b).F0(null, new Function0(lazyJavaScope2, javaFieldF, ref$ObjectRef) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$10

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final LazyJavaScope f73042b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final JavaField f73043c;
                            public final Ref$ObjectRef d;

                            {
                                this.f73042b = lazyJavaScope2;
                                this.f73043c = javaFieldF;
                                this.d = ref$ObjectRef;
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                final LazyJavaScope lazyJavaScope4 = this.f73042b;
                                StorageManager storageManager = lazyJavaScope4.f73032b.f72962a.f72944a;
                                final JavaField javaField = this.f73043c;
                                final Ref$ObjectRef ref$ObjectRef2 = this.d;
                                return storageManager.e(new Function0(lazyJavaScope4, javaField, ref$ObjectRef2) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$11

                                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                                    public final LazyJavaScope f73044b;

                                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                                    public final JavaField f73045c;
                                    public final Ref$ObjectRef d;

                                    {
                                        this.f73044b = lazyJavaScope4;
                                        this.f73045c = javaField;
                                        this.d = ref$ObjectRef2;
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        this.f73044b.f73032b.f72962a.f72949h.a(this.f73045c, (PropertyDescriptor) this.d.f71921b);
                                        return null;
                                    }
                                });
                            }
                        });
                    } else {
                        int i3 = DescriptorUtilsKt.f73888a;
                        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(variableDescriptor);
                        moduleDescriptorC.getClass();
                        KotlinBuiltIns kotlinBuiltInsG = moduleDescriptorC.g();
                        if (KotlinBuiltIns.H(type)) {
                            ((PropertyDescriptorImpl) ref$ObjectRef.f71921b).F0(null, new Function0(lazyJavaScope2, javaFieldF, ref$ObjectRef) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$10

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public final LazyJavaScope f73042b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public final JavaField f73043c;
                                public final Ref$ObjectRef d;

                                {
                                    this.f73042b = lazyJavaScope2;
                                    this.f73043c = javaFieldF;
                                    this.d = ref$ObjectRef;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    final LazyJavaScope lazyJavaScope4 = this.f73042b;
                                    StorageManager storageManager = lazyJavaScope4.f73032b.f72962a.f72944a;
                                    final JavaField javaField = this.f73043c;
                                    final Ref$ObjectRef ref$ObjectRef2 = this.d;
                                    return storageManager.e(new Function0(lazyJavaScope4, javaField, ref$ObjectRef2) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$11

                                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                                        public final LazyJavaScope f73044b;

                                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                                        public final JavaField f73045c;
                                        public final Ref$ObjectRef d;

                                        {
                                            this.f73044b = lazyJavaScope4;
                                            this.f73045c = javaField;
                                            this.d = ref$ObjectRef2;
                                        }

                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            this.f73044b.f73032b.f72962a.f72949h.a(this.f73045c, (PropertyDescriptor) this.d.f71921b);
                                            return null;
                                        }
                                    });
                                }
                            });
                        } else {
                            NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = KotlinTypeChecker.f74269a;
                            if (newKotlinTypeCheckerImpl.b(kotlinBuiltInsG.v(), type) || newKotlinTypeCheckerImpl.b(kotlinBuiltInsG.k("Number").o(), type) || newKotlinTypeCheckerImpl.b(kotlinBuiltInsG.e(), type) || UnsignedTypes.a(type)) {
                                ((PropertyDescriptorImpl) ref$ObjectRef.f71921b).F0(null, new Function0(lazyJavaScope2, javaFieldF, ref$ObjectRef) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$10

                                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                                    public final LazyJavaScope f73042b;

                                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                                    public final JavaField f73043c;
                                    public final Ref$ObjectRef d;

                                    {
                                        this.f73042b = lazyJavaScope2;
                                        this.f73043c = javaFieldF;
                                        this.d = ref$ObjectRef;
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        final LazyJavaScope lazyJavaScope4 = this.f73042b;
                                        StorageManager storageManager = lazyJavaScope4.f73032b.f72962a.f72944a;
                                        final JavaField javaField = this.f73043c;
                                        final Ref$ObjectRef ref$ObjectRef2 = this.d;
                                        return storageManager.e(new Function0(lazyJavaScope4, javaField, ref$ObjectRef2) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$11

                                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                                            public final LazyJavaScope f73044b;

                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                            public final JavaField f73045c;
                                            public final Ref$ObjectRef d;

                                            {
                                                this.f73044b = lazyJavaScope4;
                                                this.f73045c = javaField;
                                                this.d = ref$ObjectRef2;
                                            }

                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                this.f73044b.f73032b.f72962a.f72949h.a(this.f73045c, (PropertyDescriptor) this.d.f71921b);
                                                return null;
                                            }
                                        });
                                    }
                                });
                            }
                        }
                    }
                }
                javaResolverComponents2.g.d(javaFieldF, (PropertyDescriptor) ref$ObjectRef.f71921b);
                return (PropertyDescriptor) ref$ObjectRef.f71921b;
            }
        });
        this.f73036h = javaResolverComponents.f72944a.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73048b;

            {
                this.f73048b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Name name = (Name) obj;
                KProperty[] kPropertyArr = LazyJavaScope.m;
                name.getClass();
                LazyJavaScope lazyJavaScope2 = this.f73048b;
                LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) lazyJavaScope2.f73035f.invoke(name));
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj2 : linkedHashSet) {
                    String strA = MethodSignatureMappingKt.a((SimpleFunctionDescriptor) obj2, 2);
                    Object arrayList = linkedHashMap.get(strA);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        linkedHashMap.put(strA, arrayList);
                    }
                    ((List) arrayList).add(obj2);
                }
                for (List list : linkedHashMap.values()) {
                    if (list.size() != 1) {
                        List list2 = list;
                        Collection collectionA = OverridingUtilsKt.a(list2, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$9
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) obj3;
                                KProperty[] kPropertyArr2 = LazyJavaScope.m;
                                simpleFunctionDescriptor.getClass();
                                return simpleFunctionDescriptor;
                            }
                        });
                        linkedHashSet.removeAll(list2);
                        linkedHashSet.addAll(collectionA);
                    }
                }
                lazyJavaScope2.m(linkedHashSet, name);
                LazyJavaResolverContext lazyJavaResolverContext2 = lazyJavaScope2.f73032b;
                return CollectionsKt.y0(lazyJavaResolverContext2.f72962a.r.c(lazyJavaResolverContext2, linkedHashSet));
            }
        });
        this.f73037i = javaResolverComponents.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$5

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73049b;

            {
                this.f73049b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = LazyJavaScope.m;
                return this.f73049b.i(DescriptorKindFilter.o, null);
            }
        });
        this.f73038j = javaResolverComponents.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$6

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73050b;

            {
                this.f73050b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = LazyJavaScope.m;
                return this.f73050b.o(DescriptorKindFilter.p);
            }
        });
        this.f73039k = javaResolverComponents.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$7

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73051b;

            {
                this.f73051b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = LazyJavaScope.m;
                return this.f73051b.h(DescriptorKindFilter.n, null);
            }
        });
        this.l = javaResolverComponents.f72944a.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$$Lambda$8

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaScope f73052b;

            {
                this.f73052b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Name name = (Name) obj;
                KProperty[] kPropertyArr = LazyJavaScope.m;
                name.getClass();
                ArrayList arrayList = new ArrayList();
                LazyJavaScope lazyJavaScope2 = this.f73052b;
                Object objInvoke = lazyJavaScope2.g.invoke(name);
                if (objInvoke != null) {
                    arrayList.add(objInvoke);
                }
                lazyJavaScope2.n(arrayList, name);
                DeclarationDescriptor declarationDescriptorQ = lazyJavaScope2.q();
                int i2 = DescriptorUtils.f73834a;
                if (DescriptorUtils.l(declarationDescriptorQ, ClassKind.ANNOTATION_CLASS)) {
                    return CollectionsKt.y0(arrayList);
                }
                LazyJavaResolverContext lazyJavaResolverContext2 = lazyJavaScope2.f73032b;
                return CollectionsKt.y0(lazyJavaResolverContext2.f72962a.r.c(lazyJavaResolverContext2, arrayList));
            }
        });
    }

    public static KotlinType l(JavaMethod javaMethod, LazyJavaResolverContext lazyJavaResolverContext) {
        javaMethod.getClass();
        return lazyJavaResolverContext.d.d(javaMethod.z(), JavaTypeAttributesKt.a(TypeUsage.COMMON, javaMethod.g().f72614a.isAnnotation(), null, 6));
    }

    public static ResolvedValueParameters u(LazyJavaResolverContext lazyJavaResolverContext, FunctionDescriptorImpl functionDescriptorImpl, List list) {
        Pair pair;
        Name name;
        list.getClass();
        IndexingIterable indexingIterableD0 = CollectionsKt.D0(list);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(indexingIterableD0, 10));
        Iterator it = indexingIterableD0.iterator();
        boolean z = false;
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it;
            if (!indexingIterator.f71774b.hasNext()) {
                return new ResolvedValueParameters(CollectionsKt.y0(arrayList), z);
            }
            IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
            int i2 = indexedValue.f71771a;
            JavaValueParameter javaValueParameter = (JavaValueParameter) indexedValue.f71772b;
            LazyJavaAnnotations lazyJavaAnnotationsA = LazyJavaAnnotationsKt.a(lazyJavaResolverContext, javaValueParameter);
            JavaTypeResolver javaTypeResolver = lazyJavaResolverContext.d;
            JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
            JavaTypeAttributes javaTypeAttributesA = JavaTypeAttributesKt.a(TypeUsage.COMMON, false, null, 7);
            if (javaValueParameter.n()) {
                JavaType type = javaValueParameter.getType();
                JavaArrayType javaArrayType = type instanceof JavaArrayType ? (JavaArrayType) type : null;
                if (javaArrayType == null) {
                    no0.t(javaValueParameter, "Vararg parameter should be an array: ");
                    return null;
                }
                UnwrappedType unwrappedTypeC = javaTypeResolver.c(javaArrayType, javaTypeAttributesA, true);
                pair = new Pair(unwrappedTypeC, javaResolverComponents.o.g().f(unwrappedTypeC));
            } else {
                pair = new Pair(javaTypeResolver.d(javaValueParameter.getType(), javaTypeAttributesA), null);
            }
            KotlinType kotlinType = (KotlinType) pair.f71705b;
            KotlinType kotlinType2 = (KotlinType) pair.f71706c;
            if (Intrinsics.c(functionDescriptorImpl.getName().b(), "equals") && list.size() == 1 && javaResolverComponents.o.g().p().equals(kotlinType)) {
                name = Name.e("other");
            } else {
                name = javaValueParameter.getName();
                if (name == null) {
                    z = true;
                }
                if (name == null) {
                    name = Name.e("p" + i2);
                }
            }
            arrayList.add(new ValueParameterDescriptorImpl(functionDescriptorImpl, null, i2, lazyJavaAnnotationsA, name, kotlinType, false, false, false, kotlinType2, javaResolverComponents.f72951j.a(javaValueParameter)));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set a() {
        return (Set) StorageKt.a(this.f73037i, m[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return !a().contains(name) ? EmptyList.f71768b : (Collection) this.f73036h.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return !d().contains(name) ? EmptyList.f71768b : (Collection) this.l.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set d() {
        return (Set) StorageKt.a(this.f73038j, m[1]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set e() {
        return (Set) StorageKt.a(this.f73039k, m[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        return (Collection) this.d.mo47invoke();
    }

    public abstract Set h(DescriptorKindFilter descriptorKindFilter, Function1 function1);

    public abstract Set i(DescriptorKindFilter descriptorKindFilter, Function1 function1);

    public void j(ArrayList arrayList, Name name) {
        name.getClass();
    }

    public abstract DeclaredMemberIndex k();

    public abstract void m(LinkedHashSet linkedHashSet, Name name);

    public abstract void n(ArrayList arrayList, Name name);

    public abstract Set o(DescriptorKindFilter descriptorKindFilter);

    public abstract ReceiverParameterDescriptor p();

    public abstract DeclarationDescriptor q();

    public boolean r(JavaMethodDescriptor javaMethodDescriptor) {
        return true;
    }

    public abstract MethodSignatureData s(JavaMethod javaMethod, ArrayList arrayList, KotlinType kotlinType, List list);

    public final JavaMethodDescriptor t(JavaMethod javaMethod) {
        Modality modality;
        Map mapC;
        javaMethod.getClass();
        LazyJavaResolverContext lazyJavaResolverContext = this.f73032b;
        JavaMethodDescriptor javaMethodDescriptorT0 = JavaMethodDescriptor.T0(q(), LazyJavaAnnotationsKt.a(lazyJavaResolverContext, javaMethod), javaMethod.getName(), lazyJavaResolverContext.f72962a.f72951j.a(javaMethod), ((DeclaredMemberIndex) this.f73034e.mo47invoke()).e(javaMethod.getName()) != null && ((ArrayList) javaMethod.h()).isEmpty());
        lazyJavaResolverContext.getClass();
        LazyJavaResolverContext lazyJavaResolverContext2 = new LazyJavaResolverContext(lazyJavaResolverContext.f72962a, new LazyJavaTypeParameterResolver(lazyJavaResolverContext, javaMethodDescriptorT0, javaMethod, 0), lazyJavaResolverContext.f72964c);
        ArrayList typeParameters = javaMethod.getTypeParameters();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(typeParameters, 10));
        Iterator it = typeParameters.iterator();
        while (it.hasNext()) {
            TypeParameterDescriptor typeParameterDescriptorA = lazyJavaResolverContext2.f72963b.a((JavaTypeParameter) it.next());
            typeParameterDescriptorA.getClass();
            arrayList.add(typeParameterDescriptorA);
        }
        ResolvedValueParameters resolvedValueParametersU = u(lazyJavaResolverContext2, javaMethodDescriptorT0, javaMethod.h());
        List list = resolvedValueParametersU.f73059a;
        MethodSignatureData methodSignatureDataS = s(javaMethod, arrayList, l(javaMethod, lazyJavaResolverContext2), list);
        KotlinType kotlinType = methodSignatureDataS.f73055b;
        List list2 = methodSignatureDataS.f73058f;
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImplH = kotlinType != null ? DescriptorFactory.h(javaMethodDescriptorT0, kotlinType, Annotations.Companion.f72432a) : null;
        ReceiverParameterDescriptor receiverParameterDescriptorP = p();
        EmptyList emptyList = EmptyList.f71768b;
        List list3 = methodSignatureDataS.d;
        List list4 = methodSignatureDataS.f73056c;
        KotlinType kotlinType2 = methodSignatureDataS.f73054a;
        Modality.Companion companion = Modality.Companion;
        boolean zIsAbstract = javaMethod.isAbstract();
        boolean zIsFinal = javaMethod.isFinal();
        companion.getClass();
        if (zIsAbstract) {
            modality = Modality.ABSTRACT;
        } else {
            modality = !zIsFinal ? Modality.OPEN : Modality.FINAL;
        }
        Modality modality2 = modality;
        DescriptorVisibility descriptorVisibilityA = UtilsKt.a(javaMethod.getVisibility());
        if (kotlinType != null) {
            mapC = MapsKt.h(new Pair(JavaMethodDescriptor.H, CollectionsKt.B(list)));
        } else {
            mapC = MapsKt.c();
        }
        javaMethodDescriptorT0.S0(receiverParameterDescriptorImplH, receiverParameterDescriptorP, emptyList, list3, list4, kotlinType2, modality2, descriptorVisibilityA, mapC);
        javaMethodDescriptorT0.U0(methodSignatureDataS.f73057e, resolvedValueParametersU.f73060b);
        if (list2.isEmpty()) {
            return javaMethodDescriptorT0;
        }
        lazyJavaResolverContext2.f72962a.f72947e.b(javaMethodDescriptorT0, list2);
        throw null;
    }

    public String toString() {
        return "Lazy scope for " + q();
    }

    public /* synthetic */ LazyJavaScope(LazyJavaResolverContext lazyJavaResolverContext, LazyJavaScope lazyJavaScope, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, (i2 & 2) != 0 ? null : lazyJavaScope);
    }
}
