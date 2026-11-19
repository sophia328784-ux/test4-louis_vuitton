package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.no0;
import defpackage.tg0;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyGetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$Companion$EMPTY$1;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinSpecialProperties;
import kotlin.reflect.jvm.internal.impl.load.java.ClassicBuiltinSpecialProperties;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder;
import kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.PropertiesConventionUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures;
import kotlin.reflect.jvm.internal.impl.load.java.UtilsKt;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaForKotlinOverridePropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.UtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaTypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaConstructor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMember;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaRecordComponent;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaClassMemberScope extends LazyJavaScope {
    public static final /* synthetic */ int v = 0;
    public final ClassDescriptor n;
    public final JavaClass o;
    public final boolean p;
    public final NotNullLazyValue q;
    public final NotNullLazyValue r;
    public final NotNullLazyValue s;
    public final NotNullLazyValue t;
    public final MemoizedFunctionToNullable u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope(final LazyJavaResolverContext lazyJavaResolverContext, ClassDescriptor classDescriptor, JavaClass javaClass, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(lazyJavaResolverContext, lazyJavaClassMemberScope);
        lazyJavaResolverContext.getClass();
        classDescriptor.getClass();
        javaClass.getClass();
        this.n = classDescriptor;
        this.o = javaClass;
        this.p = z;
        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
        this.q = javaResolverComponents.f72944a.c(new Function0(this, lazyJavaResolverContext) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassMemberScope f73001b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final LazyJavaResolverContext f73002c;

            {
                this.f73001b = this;
                this.f73002c = lazyJavaResolverContext;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v10, types: [kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache] */
            /* JADX WARN: Type inference failed for: r0v16 */
            /* JADX WARN: Type inference failed for: r0v17, types: [kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope] */
            /* JADX WARN: Type inference failed for: r0v18, types: [kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope] */
            /* JADX WARN: Type inference failed for: r0v27 */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r26v1 */
            /* JADX WARN: Type inference failed for: r26v2, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r26v3 */
            /* JADX WARN: Type inference failed for: r2v16 */
            /* JADX WARN: Type inference failed for: r2v17, types: [kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor] */
            /* JADX WARN: Type inference failed for: r2v38 */
            /* JADX WARN: Type inference failed for: r2v8 */
            /* JADX WARN: Type inference failed for: r2v9, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor] */
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
                Annotations$Companion$EMPTY$1 annotations$Companion$EMPTY$1;
                Object obj;
                ?? r2;
                ?? arrayList;
                ?? r26;
                JavaMethod javaMethod;
                ?? r0;
                Pair pair;
                LazyJavaClassMemberScope lazyJavaClassMemberScope2 = this.f73001b;
                JavaClass javaClass2 = lazyJavaClassMemberScope2.o;
                LazyJavaResolverContext lazyJavaResolverContext2 = lazyJavaClassMemberScope2.f73032b;
                ClassDescriptor classDescriptor2 = lazyJavaClassMemberScope2.n;
                Collection<JavaConstructor> collectionF = javaClass2.f();
                ArrayList arrayList2 = new ArrayList(collectionF.size());
                for (JavaConstructor javaConstructor : collectionF) {
                    LazyJavaAnnotations lazyJavaAnnotationsA = LazyJavaAnnotationsKt.a(lazyJavaResolverContext2, javaConstructor);
                    JavaResolverComponents javaResolverComponents2 = lazyJavaResolverContext2.f72962a;
                    JavaClassConstructorDescriptor javaClassConstructorDescriptorT0 = JavaClassConstructorDescriptor.T0(classDescriptor2, lazyJavaAnnotationsA, false, javaResolverComponents2.f72951j.a(javaConstructor));
                    LazyJavaResolverContext lazyJavaResolverContext3 = new LazyJavaResolverContext(javaResolverComponents2, new LazyJavaTypeParameterResolver(lazyJavaResolverContext2, javaClassConstructorDescriptorT0, javaConstructor, classDescriptor2.p().size()), lazyJavaResolverContext2.f72964c);
                    LazyJavaScope.ResolvedValueParameters resolvedValueParametersU = LazyJavaScope.u(lazyJavaResolverContext3, javaClassConstructorDescriptorT0, javaConstructor.h());
                    List listP = classDescriptor2.p();
                    listP.getClass();
                    List list = listP;
                    ArrayList typeParameters = javaConstructor.getTypeParameters();
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(typeParameters, 10));
                    Iterator it = typeParameters.iterator();
                    while (it.hasNext()) {
                        TypeParameterDescriptor typeParameterDescriptorA = lazyJavaResolverContext3.f72963b.a((JavaTypeParameter) it.next());
                        typeParameterDescriptorA.getClass();
                        arrayList3.add(typeParameterDescriptorA);
                    }
                    javaClassConstructorDescriptorT0.S0(resolvedValueParametersU.f73059a, UtilsKt.a(javaConstructor.getVisibility()), CollectionsKt.Y(list, arrayList3));
                    javaClassConstructorDescriptorT0.M0(false);
                    javaClassConstructorDescriptorT0.N0(resolvedValueParametersU.f73060b);
                    javaClassConstructorDescriptorT0.O0(classDescriptor2.o());
                    lazyJavaResolverContext3.f72962a.g.a(javaConstructor, javaClassConstructorDescriptorT0);
                    arrayList2.add(javaClassConstructorDescriptorT0);
                }
                boolean zO = javaClass2.o();
                LazyJavaResolverContext lazyJavaResolverContext4 = this.f73002c;
                Annotations$Companion$EMPTY$1 annotations$Companion$EMPTY$2 = Annotations.Companion.f72432a;
                if (zO) {
                    JavaClassConstructorDescriptor javaClassConstructorDescriptorT1 = JavaClassConstructorDescriptor.T0(classDescriptor2, annotations$Companion$EMPTY$2, true, lazyJavaResolverContext2.f72962a.f72951j.a(javaClass2));
                    ArrayList<JavaRecordComponent> arrayListE = javaClass2.e();
                    ArrayList arrayList4 = new ArrayList(arrayListE.size());
                    JavaTypeAttributes javaTypeAttributesA = JavaTypeAttributesKt.a(TypeUsage.COMMON, false, null, 6);
                    int i2 = 0;
                    for (JavaRecordComponent javaRecordComponent : arrayListE) {
                        Annotations$Companion$EMPTY$1 annotations$Companion$EMPTY$3 = annotations$Companion$EMPTY$2;
                        arrayList4.add(new ValueParameterDescriptorImpl(javaClassConstructorDescriptorT1, null, i2, annotations$Companion$EMPTY$3, javaRecordComponent.getName(), lazyJavaResolverContext2.d.d(javaRecordComponent.getType(), javaTypeAttributesA), false, false, false, null, lazyJavaResolverContext2.f72962a.f72951j.a(javaRecordComponent)));
                        i2++;
                        annotations$Companion$EMPTY$2 = annotations$Companion$EMPTY$3;
                    }
                    annotations$Companion$EMPTY$1 = annotations$Companion$EMPTY$2;
                    obj = null;
                    javaClassConstructorDescriptorT1.N0(false);
                    DescriptorVisibility visibility = classDescriptor2.getVisibility();
                    visibility.getClass();
                    if (visibility.equals(JavaDescriptorVisibilities.f72847b)) {
                        visibility = JavaDescriptorVisibilities.f72848c;
                        visibility.getClass();
                    }
                    javaClassConstructorDescriptorT1.R0(arrayList4, visibility);
                    javaClassConstructorDescriptorT1.M0(false);
                    javaClassConstructorDescriptorT1.O0(classDescriptor2.o());
                    String strA = MethodSignatureMappingKt.a(javaClassConstructorDescriptorT1, 2);
                    if (arrayList2.isEmpty()) {
                        arrayList2.add(javaClassConstructorDescriptorT1);
                        lazyJavaResolverContext4.f72962a.g.a(javaClass2, javaClassConstructorDescriptorT1);
                        break;
                    }
                    Iterator it2 = arrayList2.iterator();
                    do {
                        if (!it2.hasNext()) {
                            arrayList2.add(javaClassConstructorDescriptorT1);
                            lazyJavaResolverContext4.f72962a.g.a(javaClass2, javaClassConstructorDescriptorT1);
                            break;
                        }
                    } while (!MethodSignatureMappingKt.a((ClassConstructorDescriptor) it2.next(), 2).equals(strA));
                } else {
                    annotations$Companion$EMPTY$1 = annotations$Companion$EMPTY$2;
                    obj = null;
                }
                lazyJavaResolverContext4.f72962a.x.h(classDescriptor2, arrayList2, lazyJavaResolverContext4);
                SignatureEnhancement signatureEnhancement = lazyJavaResolverContext4.f72962a.r;
                boolean zIsEmpty = arrayList2.isEmpty();
                List listQ = arrayList2;
                if (zIsEmpty) {
                    boolean zK = javaClass2.k();
                    javaClass2.E();
                    if (zK) {
                        JavaResolverComponents javaResolverComponents3 = lazyJavaResolverContext2.f72962a;
                        JavaTypeResolver javaTypeResolver = lazyJavaResolverContext2.d;
                        JavaClassConstructorDescriptor javaClassConstructorDescriptorT2 = JavaClassConstructorDescriptor.T0(classDescriptor2, annotations$Companion$EMPTY$1, true, javaResolverComponents3.f72951j.a(javaClass2));
                        if (zK) {
                            Collection collectionY = javaClass2.y();
                            arrayList = new ArrayList(collectionY.size());
                            JavaTypeAttributes javaTypeAttributesA2 = JavaTypeAttributesKt.a(TypeUsage.COMMON, true, null, 6);
                            ArrayList arrayList5 = new ArrayList();
                            ArrayList arrayList6 = new ArrayList();
                            for (Object obj2 : collectionY) {
                                if (Intrinsics.c(((JavaMethod) obj2).getName(), JvmAnnotationNames.f72870b)) {
                                    arrayList5.add(obj2);
                                } else {
                                    arrayList6.add(obj2);
                                }
                            }
                            Pair pair2 = new Pair(arrayList5, arrayList6);
                            List list2 = (List) pair2.f71705b;
                            List<JavaMethod> list3 = (List) pair2.f71706c;
                            list2.size();
                            JavaMethod javaMethod2 = (JavaMethod) CollectionsKt.firstOrNull(list2);
                            if (javaMethod2 != null) {
                                JavaType javaTypeZ = javaMethod2.z();
                                if (javaTypeZ instanceof JavaArrayType) {
                                    JavaArrayType javaArrayType = (JavaArrayType) javaTypeZ;
                                    pair = new Pair(javaTypeResolver.c(javaArrayType, javaTypeAttributesA2, true), javaTypeResolver.d(javaArrayType.x(), javaTypeAttributesA2));
                                } else {
                                    pair = new Pair(javaTypeResolver.d(javaTypeZ, javaTypeAttributesA2), null);
                                }
                                JavaClassConstructorDescriptor javaClassConstructorDescriptor = javaClassConstructorDescriptorT2;
                                javaMethod = javaMethod2;
                                ?? r1 = lazyJavaClassMemberScope2;
                                r1.v(arrayList, javaClassConstructorDescriptor, 0, javaMethod, (KotlinType) pair.f71705b, (KotlinType) pair.f71706c);
                                r0 = r1;
                                r2 = javaClassConstructorDescriptor;
                            } else {
                                javaMethod = javaMethod2;
                                r0 = lazyJavaClassMemberScope2;
                                r2 = javaClassConstructorDescriptorT2;
                            }
                            int i3 = javaMethod != null ? 1 : 0;
                            int i4 = 0;
                            for (JavaMethod javaMethod3 : list3) {
                                r0.v(arrayList, r2, i4 + i3, javaMethod3, javaTypeResolver.d(javaMethod3.z(), javaTypeAttributesA2), null);
                                i4++;
                            }
                        } else {
                            r2 = javaClassConstructorDescriptorT2;
                            arrayList = Collections.EMPTY_LIST;
                        }
                        r2.N0(false);
                        DescriptorVisibility visibility2 = classDescriptor2.getVisibility();
                        visibility2.getClass();
                        if (visibility2.equals(JavaDescriptorVisibilities.f72847b)) {
                            visibility2 = JavaDescriptorVisibilities.f72848c;
                            visibility2.getClass();
                        }
                        r2.R0(arrayList, visibility2);
                        r2.M0(true);
                        r2.O0(classDescriptor2.o());
                        lazyJavaResolverContext2.f72962a.g.a(javaClass2, r2);
                        r26 = r2;
                    } else {
                        r26 = obj;
                    }
                    listQ = CollectionsKt.Q(r26);
                }
                return CollectionsKt.y0(signatureEnhancement.c(lazyJavaResolverContext4, listQ));
            }
        });
        this.r = javaResolverComponents.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassMemberScope f73003b;

            {
                this.f73003b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return CollectionsKt.B0(this.f73003b.o.w());
            }
        });
        StorageManager storageManager = javaResolverComponents.f72944a;
        this.s = storageManager.c(new Function0(lazyJavaResolverContext, this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaResolverContext f73004b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final LazyJavaClassMemberScope f73005c;

            {
                this.f73004b = lazyJavaResolverContext;
                this.f73005c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i2 = LazyJavaClassMemberScope.v;
                LazyJavaResolverContext lazyJavaResolverContext2 = this.f73004b;
                return CollectionsKt.B0(lazyJavaResolverContext2.f72962a.x.b(this.f73005c.n, lazyJavaResolverContext2));
            }
        });
        this.t = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassMemberScope f73006b;

            {
                this.f73006b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Collection collectionU = this.f73006b.o.u();
                ArrayList arrayList = new ArrayList();
                for (Object obj : collectionU) {
                    if (((JavaField) obj).D()) {
                        arrayList.add(obj);
                    }
                }
                int iG = MapsKt.g(CollectionsKt.t(arrayList, 10));
                if (iG < 16) {
                    iG = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                for (Object obj2 : arrayList) {
                    linkedHashMap.put(((JavaField) obj2).getName(), obj2);
                }
                return linkedHashMap;
            }
        });
        this.u = storageManager.g(new Function1(this, lazyJavaResolverContext) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassMemberScope f73007b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final LazyJavaResolverContext f73008c;

            {
                this.f73007b = this;
                this.f73008c = lazyJavaResolverContext;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Name name = (Name) obj;
                int i2 = LazyJavaClassMemberScope.v;
                name.getClass();
                final LazyJavaClassMemberScope lazyJavaClassMemberScope2 = this.f73007b;
                NotNullLazyValue notNullLazyValue = lazyJavaClassMemberScope2.r;
                ClassDescriptor classDescriptor2 = lazyJavaClassMemberScope2.n;
                boolean zContains = ((Set) notNullLazyValue.mo47invoke()).contains(name);
                LazyJavaResolverContext lazyJavaResolverContext2 = this.f73008c;
                if (zContains) {
                    JavaClassFinder javaClassFinder = lazyJavaResolverContext2.f72962a.f72945b;
                    ClassId classIdF = DescriptorUtilsKt.f(classDescriptor2);
                    classIdF.getClass();
                    ReflectJavaClass reflectJavaClassA = javaClassFinder.a(new JavaClassFinder.Request(classIdF.d(name), null, lazyJavaClassMemberScope2.o, 2, null));
                    if (reflectJavaClassA == null) {
                        return null;
                    }
                    LazyJavaClassDescriptor lazyJavaClassDescriptor = new LazyJavaClassDescriptor(lazyJavaResolverContext2, lazyJavaClassMemberScope2.n, reflectJavaClassA, null, 8, null);
                    lazyJavaResolverContext2.f72962a.s.a(lazyJavaClassDescriptor);
                    return lazyJavaClassDescriptor;
                }
                if (!((Set) lazyJavaClassMemberScope2.s.mo47invoke()).contains(name)) {
                    JavaField javaField = (JavaField) ((Map) lazyJavaClassMemberScope2.t.mo47invoke()).get(name);
                    if (javaField == null) {
                        return null;
                    }
                    JavaResolverComponents javaResolverComponents2 = lazyJavaResolverContext2.f72962a;
                    return EnumEntrySyntheticClassDescriptor.F0(javaResolverComponents2.f72944a, lazyJavaClassMemberScope2.n, name, javaResolverComponents2.f72944a.c(new Function0(lazyJavaClassMemberScope2) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$9

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final LazyJavaClassMemberScope f73014b;

                        {
                            this.f73014b = lazyJavaClassMemberScope2;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i3 = LazyJavaClassMemberScope.v;
                            LazyJavaClassMemberScope lazyJavaClassMemberScope3 = this.f73014b;
                            return SetsKt.f(lazyJavaClassMemberScope3.a(), lazyJavaClassMemberScope3.d());
                        }
                    }), LazyJavaAnnotationsKt.a(lazyJavaResolverContext2, javaField), javaResolverComponents2.f72951j.a(javaField));
                }
                ListBuilder listBuilderV = CollectionsKt.v();
                lazyJavaResolverContext2.f72962a.x.a(classDescriptor2, name, listBuilderV, lazyJavaResolverContext2);
                ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
                int f74615i = listBuilderR.getF74615i();
                if (f74615i == 0) {
                    return null;
                }
                if (f74615i == 1) {
                    return (ClassDescriptor) CollectionsKt.h0(listBuilderR);
                }
                tg0.d(listBuilderR, "Multiple classes with same name are generated: ");
                return null;
            }
        });
    }

    public static SimpleFunctionDescriptor A(SimpleFunctionDescriptor simpleFunctionDescriptor, FunctionDescriptor functionDescriptor, AbstractCollection abstractCollection) {
        if (abstractCollection.isEmpty()) {
            return simpleFunctionDescriptor;
        }
        Iterator it = abstractCollection.iterator();
        while (it.hasNext()) {
            SimpleFunctionDescriptor simpleFunctionDescriptor2 = (SimpleFunctionDescriptor) it.next();
            if (!Intrinsics.c(simpleFunctionDescriptor, simpleFunctionDescriptor2) && simpleFunctionDescriptor2.k0() == null && D(simpleFunctionDescriptor2, functionDescriptor)) {
                FunctionDescriptor functionDescriptorBuild = simpleFunctionDescriptor.A0().h().build();
                functionDescriptorBuild.getClass();
                return (SimpleFunctionDescriptor) functionDescriptorBuild;
            }
        }
        return simpleFunctionDescriptor;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0036  */
    public static SimpleFunctionDescriptor B(SimpleFunctionDescriptor simpleFunctionDescriptor) {
        FqName fqNameI;
        List listH = simpleFunctionDescriptor.h();
        listH.getClass();
        ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) CollectionsKt.N(listH);
        if (valueParameterDescriptor != null) {
            ClassifierDescriptor classifierDescriptorY = valueParameterDescriptor.getType().H0().y();
            if (classifierDescriptorY != null) {
                int i2 = DescriptorUtilsKt.f73888a;
                FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classifierDescriptorY);
                fqNameUnsafeF.getClass();
                if (!fqNameUnsafeF.d()) {
                    fqNameUnsafeF = null;
                }
                if (fqNameUnsafeF != null) {
                    fqNameI = fqNameUnsafeF.i();
                } else {
                    fqNameI = null;
                }
            } else {
                fqNameI = null;
            }
            if (!Intrinsics.c(fqNameI, StandardNames.g)) {
                valueParameterDescriptor = null;
            }
            if (valueParameterDescriptor != null) {
                FunctionDescriptor.CopyBuilder copyBuilderA0 = simpleFunctionDescriptor.A0();
                List listH2 = simpleFunctionDescriptor.h();
                listH2.getClass();
                SimpleFunctionDescriptor simpleFunctionDescriptor2 = (SimpleFunctionDescriptor) copyBuilderA0.b(CollectionsKt.x(1, listH2)).m(((TypeProjection) valueParameterDescriptor.getType().F0().get(0)).getType()).build();
                SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) simpleFunctionDescriptor2;
                if (simpleFunctionDescriptorImpl != null) {
                    simpleFunctionDescriptorImpl.w = true;
                }
                return simpleFunctionDescriptor2;
            }
        }
        return null;
    }

    public static boolean D(FunctionDescriptor functionDescriptor, FunctionDescriptor functionDescriptor2) {
        OverridingUtil.OverrideCompatibilityInfo.Result resultB = OverridingUtil.f73837e.n(true, functionDescriptor2, functionDescriptor).b();
        resultB.getClass();
        if (resultB != OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE) {
            return false;
        }
        JavaIncompatibilityRulesOverridabilityCondition.f72849a.getClass();
        return !JavaIncompatibilityRulesOverridabilityCondition.Companion.a(functionDescriptor2, functionDescriptor);
    }

    public static boolean E(SimpleFunctionDescriptor simpleFunctionDescriptor, SimpleFunctionDescriptor simpleFunctionDescriptor2) {
        BuiltinMethodsWithDifferentJvmName.m.getClass();
        simpleFunctionDescriptor.getClass();
        SimpleFunctionDescriptor simpleFunctionDescriptorY0 = simpleFunctionDescriptor2;
        if (Intrinsics.c(simpleFunctionDescriptor.getName().b(), "removeAt")) {
            String strB = MethodSignatureMappingKt.b(simpleFunctionDescriptor);
            SpecialGenericSignatures.f72896a.getClass();
            if (Intrinsics.c(strB, SpecialGenericSignatures.f72901h.f72908e)) {
                simpleFunctionDescriptorY0 = simpleFunctionDescriptor2;
                simpleFunctionDescriptorY0 = simpleFunctionDescriptor2.y0();
            }
        }
        simpleFunctionDescriptorY0 = simpleFunctionDescriptor2;
        simpleFunctionDescriptorY0.getClass();
        return D(simpleFunctionDescriptorY0, simpleFunctionDescriptor);
    }

    public static SimpleFunctionDescriptor F(PropertyDescriptor propertyDescriptor, String str, Function1 function1) {
        SimpleFunctionDescriptor simpleFunctionDescriptor;
        Iterator it = ((Iterable) function1.invoke(Name.e(str))).iterator();
        do {
            simpleFunctionDescriptor = null;
            if (!it.hasNext()) {
                break;
            }
            SimpleFunctionDescriptor simpleFunctionDescriptor2 = (SimpleFunctionDescriptor) it.next();
            if (simpleFunctionDescriptor2.h().size() == 0) {
                NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = KotlinTypeChecker.f74269a;
                KotlinType returnType = simpleFunctionDescriptor2.getReturnType();
                if (returnType == null ? false : newKotlinTypeCheckerImpl.d(returnType, propertyDescriptor.getType())) {
                    simpleFunctionDescriptor = simpleFunctionDescriptor2;
                }
            }
        } while (simpleFunctionDescriptor == null);
        return simpleFunctionDescriptor;
    }

    public static SimpleFunctionDescriptor H(PropertyDescriptor propertyDescriptor, Function1 function1) {
        SimpleFunctionDescriptor simpleFunctionDescriptor;
        KotlinType returnType;
        String strB = propertyDescriptor.getName().b();
        strB.getClass();
        Iterator it = ((Iterable) function1.invoke(Name.e(JvmAbi.b(strB)))).iterator();
        do {
            simpleFunctionDescriptor = null;
            if (!it.hasNext()) {
                break;
            }
            SimpleFunctionDescriptor simpleFunctionDescriptor2 = (SimpleFunctionDescriptor) it.next();
            if (simpleFunctionDescriptor2.h().size() == 1 && (returnType = simpleFunctionDescriptor2.getReturnType()) != null) {
                Name name = KotlinBuiltIns.f72242f;
                if (KotlinBuiltIns.E(returnType, StandardNames.FqNames.d)) {
                    NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = KotlinTypeChecker.f74269a;
                    List listH = simpleFunctionDescriptor2.h();
                    listH.getClass();
                    if (newKotlinTypeCheckerImpl.b(((ValueParameterDescriptor) CollectionsKt.h0(listH)).getType(), propertyDescriptor.getType())) {
                        simpleFunctionDescriptor = simpleFunctionDescriptor2;
                    }
                }
            }
        } while (simpleFunctionDescriptor == null);
        return simpleFunctionDescriptor;
    }

    public static boolean K(SimpleFunctionDescriptor simpleFunctionDescriptor, FunctionDescriptor functionDescriptor) {
        String strA = MethodSignatureMappingKt.a(simpleFunctionDescriptor, 2);
        FunctionDescriptor functionDescriptorY0 = functionDescriptor.y0();
        functionDescriptorY0.getClass();
        return strA.equals(MethodSignatureMappingKt.a(functionDescriptorY0, 2)) && !D(simpleFunctionDescriptor, functionDescriptor);
    }

    public final boolean C(PropertyDescriptor propertyDescriptor, Function1 function1) {
        if (JavaDescriptorUtilKt.a(propertyDescriptor)) {
            return false;
        }
        SimpleFunctionDescriptor simpleFunctionDescriptorG = G(propertyDescriptor, function1);
        SimpleFunctionDescriptor simpleFunctionDescriptorH = H(propertyDescriptor, function1);
        if (simpleFunctionDescriptorG == null) {
            return false;
        }
        if (propertyDescriptor.I()) {
            return simpleFunctionDescriptorH != null && simpleFunctionDescriptorH.q() == simpleFunctionDescriptorG.q();
        }
        return true;
    }

    public final SimpleFunctionDescriptor G(PropertyDescriptor propertyDescriptor, Function1 function1) {
        PropertyGetterDescriptorImpl getter = propertyDescriptor.getGetter();
        PropertyGetterDescriptor propertyGetterDescriptor = getter != null ? (PropertyGetterDescriptor) SpecialBuiltinMembers.b(getter) : null;
        String strA = propertyGetterDescriptor != null ? ClassicBuiltinSpecialProperties.a(propertyGetterDescriptor) : null;
        if (strA != null && !SpecialBuiltinMembers.d(this.n, propertyGetterDescriptor)) {
            return F(propertyDescriptor, strA, function1);
        }
        String strB = propertyDescriptor.getName().b();
        strB.getClass();
        return F(propertyDescriptor, JvmAbi.a(strB), function1);
    }

    public final LinkedHashSet I(Name name) {
        Collection collectionZ = z();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = collectionZ.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(linkedHashSet, ((KotlinType) it.next()).n().b(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS));
        }
        return linkedHashSet;
    }

    public final Set J(Name name) {
        Collection collectionZ = z();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionZ.iterator();
        while (it.hasNext()) {
            Collection collectionC = ((KotlinType) it.next()).n().c(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(collectionC, 10));
            Iterator it2 = collectionC.iterator();
            while (it2.hasNext()) {
                arrayList2.add((PropertyDescriptor) it2.next());
            }
            CollectionsKt.j(arrayList, arrayList2);
        }
        return CollectionsKt.B0(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:? A[LOOP:1: B:56:0x012a->B:102:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x0177 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x0165 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x01ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:? A[LOOP:3: B:74:0x0186->B:110:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x01b6 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00db  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:52:0x0109  */
    /* JADX WARN: Code duplicated, block: B:55:0x0126  */
    /* JADX WARN: Code duplicated, block: B:58:0x0130  */
    /* JADX WARN: Code duplicated, block: B:61:0x013e  */
    /* JADX WARN: Code duplicated, block: B:64:0x0151  */
    /* JADX WARN: Code duplicated, block: B:67:0x016b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0182  */
    /* JADX WARN: Code duplicated, block: B:76:0x018c  */
    /* JADX WARN: Code duplicated, block: B:79:0x0199  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:88:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:93:0x01cf A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:96:0x00fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x00e8 A[SYNTHETIC] */
    public final boolean L(final SimpleFunctionDescriptor simpleFunctionDescriptor) {
        Iterable iterableQ;
        Name name;
        Name name2;
        SimpleFunctionDescriptor simpleFunctionDescriptorB;
        LinkedHashSet<SimpleFunctionDescriptor> linkedHashSetI;
        ArrayList arrayList;
        Iterator it;
        Iterator it2;
        FunctionDescriptor functionDescriptorA;
        ArrayList arrayList2;
        SimpleFunctionDescriptor simpleFunctionDescriptor2;
        Iterator it3;
        SimpleFunctionDescriptor simpleFunctionDescriptor3;
        Name name3 = simpleFunctionDescriptor.getName();
        name3.getClass();
        String strB = name3.b();
        strB.getClass();
        FqName fqName = JvmAbi.f72867a;
        if (StringsKt.P(strB, "get", false) || StringsKt.P(strB, "is", false)) {
            Name nameA = PropertiesConventionUtilKt.a(name3, "get", null, 12);
            if (nameA == null) {
                nameA = PropertiesConventionUtilKt.a(name3, "is", null, 8);
            }
            iterableQ = CollectionsKt.Q(nameA);
        } else if (StringsKt.P(strB, "set", false)) {
            iterableQ = ArraysKt.v(new Name[]{PropertiesConventionUtilKt.a(name3, "set", null, 4), PropertiesConventionUtilKt.a(name3, "set", "is", 4)});
        } else {
            iterableQ = (List) BuiltinSpecialProperties.f72826b.get(name3);
            if (iterableQ == null) {
                iterableQ = EmptyList.f71768b;
            }
        }
        Iterable iterable = iterableQ;
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            SpecialGenericSignatures.Companion companion = SpecialGenericSignatures.f72896a;
            Name name4 = simpleFunctionDescriptor.getName();
            name4.getClass();
            companion.getClass();
            name = (Name) SpecialGenericSignatures.l.get(name4);
            if (name == null) {
                BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.m;
                name2 = simpleFunctionDescriptor.getName();
                name2.getClass();
                builtinMethodsWithSpecialGenericSignature.getClass();
                if (!BuiltinMethodsWithSpecialGenericSignature.b(name2)) {
                    simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                    if (simpleFunctionDescriptorB == null) {
                        return true;
                    }
                    Name name5 = simpleFunctionDescriptor.getName();
                    name5.getClass();
                    linkedHashSetI = I(name5);
                    if (linkedHashSetI.isEmpty()) {
                        return true;
                    }
                    for (SimpleFunctionDescriptor simpleFunctionDescriptor4 : linkedHashSetI) {
                        if (simpleFunctionDescriptor4.isSuspend()) {
                        }
                    }
                    return true;
                }
                Name name6 = simpleFunctionDescriptor.getName();
                name6.getClass();
                LinkedHashSet linkedHashSetI2 = I(name6);
                arrayList = new ArrayList();
                it = linkedHashSetI2.iterator();
                while (it.hasNext()) {
                    functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a((SimpleFunctionDescriptor) it.next());
                    if (functionDescriptorA != null) {
                        arrayList.add(functionDescriptorA);
                    }
                }
                if (arrayList.isEmpty()) {
                    simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                    if (simpleFunctionDescriptorB == null) {
                        return true;
                    }
                    Name name7 = simpleFunctionDescriptor.getName();
                    name7.getClass();
                    linkedHashSetI = I(name7);
                    if (linkedHashSetI.isEmpty()) {
                        return true;
                    }
                    while (r8.hasNext()) {
                        if (simpleFunctionDescriptor4.isSuspend()) {
                        }
                    }
                    return true;
                }
                it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (K(simpleFunctionDescriptor, (FunctionDescriptor) it2.next())) {
                    }
                }
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name8 = simpleFunctionDescriptor.getName();
                name8.getClass();
                linkedHashSetI = I(name8);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            LinkedHashSet linkedHashSetI3 = I(name);
            arrayList2 = new ArrayList();
            for (Object obj : linkedHashSetI3) {
                simpleFunctionDescriptor3 = (SimpleFunctionDescriptor) obj;
                simpleFunctionDescriptor3.getClass();
                if (SpecialBuiltinMembers.b(simpleFunctionDescriptor3) != null) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.isEmpty()) {
                BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature2 = BuiltinMethodsWithSpecialGenericSignature.m;
                name2 = simpleFunctionDescriptor.getName();
                name2.getClass();
                builtinMethodsWithSpecialGenericSignature2.getClass();
                if (!BuiltinMethodsWithSpecialGenericSignature.b(name2)) {
                    simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                    if (simpleFunctionDescriptorB == null) {
                        return true;
                    }
                    Name name9 = simpleFunctionDescriptor.getName();
                    name9.getClass();
                    linkedHashSetI = I(name9);
                    if (linkedHashSetI.isEmpty()) {
                        return true;
                    }
                    while (r8.hasNext()) {
                        if (simpleFunctionDescriptor4.isSuspend()) {
                        }
                    }
                    return true;
                }
                Name name10 = simpleFunctionDescriptor.getName();
                name10.getClass();
                LinkedHashSet linkedHashSetI4 = I(name10);
                arrayList = new ArrayList();
                it = linkedHashSetI4.iterator();
                while (it.hasNext()) {
                    functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a((SimpleFunctionDescriptor) it.next());
                    if (functionDescriptorA != null) {
                        arrayList.add(functionDescriptorA);
                    }
                }
                if (arrayList.isEmpty()) {
                    simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                    if (simpleFunctionDescriptorB == null) {
                        return true;
                    }
                    Name name11 = simpleFunctionDescriptor.getName();
                    name11.getClass();
                    linkedHashSetI = I(name11);
                    if (linkedHashSetI.isEmpty()) {
                        return true;
                    }
                    while (r8.hasNext()) {
                        if (simpleFunctionDescriptor4.isSuspend()) {
                        }
                    }
                    return true;
                }
                it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (K(simpleFunctionDescriptor, (FunctionDescriptor) it2.next())) {
                    }
                }
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name12 = simpleFunctionDescriptor.getName();
                name12.getClass();
                linkedHashSetI = I(name12);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            FunctionDescriptor.CopyBuilder copyBuilderA0 = simpleFunctionDescriptor.A0();
            copyBuilderA0.i(name);
            copyBuilderA0.r();
            copyBuilderA0.l();
            FunctionDescriptor functionDescriptorBuild = copyBuilderA0.build();
            functionDescriptorBuild.getClass();
            simpleFunctionDescriptor2 = (SimpleFunctionDescriptor) functionDescriptorBuild;
            if (arrayList2.isEmpty()) {
                BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature3 = BuiltinMethodsWithSpecialGenericSignature.m;
                name2 = simpleFunctionDescriptor.getName();
                name2.getClass();
                builtinMethodsWithSpecialGenericSignature3.getClass();
                if (!BuiltinMethodsWithSpecialGenericSignature.b(name2)) {
                    simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                    if (simpleFunctionDescriptorB == null) {
                        return true;
                    }
                    Name name13 = simpleFunctionDescriptor.getName();
                    name13.getClass();
                    linkedHashSetI = I(name13);
                    if (linkedHashSetI.isEmpty()) {
                        return true;
                    }
                    while (r8.hasNext()) {
                        if (simpleFunctionDescriptor4.isSuspend()) {
                        }
                    }
                    return true;
                }
                Name name14 = simpleFunctionDescriptor.getName();
                name14.getClass();
                LinkedHashSet linkedHashSetI5 = I(name14);
                arrayList = new ArrayList();
                it = linkedHashSetI5.iterator();
                while (it.hasNext()) {
                    functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a((SimpleFunctionDescriptor) it.next());
                    if (functionDescriptorA != null) {
                        arrayList.add(functionDescriptorA);
                    }
                }
                if (arrayList.isEmpty()) {
                    simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                    if (simpleFunctionDescriptorB == null) {
                        return true;
                    }
                    Name name15 = simpleFunctionDescriptor.getName();
                    name15.getClass();
                    linkedHashSetI = I(name15);
                    if (linkedHashSetI.isEmpty()) {
                        return true;
                    }
                    while (r8.hasNext()) {
                        if (simpleFunctionDescriptor4.isSuspend()) {
                        }
                    }
                    return true;
                }
                it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (K(simpleFunctionDescriptor, (FunctionDescriptor) it2.next())) {
                    }
                }
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name16 = simpleFunctionDescriptor.getName();
                name16.getClass();
                linkedHashSetI = I(name16);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                if (E((SimpleFunctionDescriptor) it3.next(), simpleFunctionDescriptor2)) {
                }
            }
            BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature4 = BuiltinMethodsWithSpecialGenericSignature.m;
            name2 = simpleFunctionDescriptor.getName();
            name2.getClass();
            builtinMethodsWithSpecialGenericSignature4.getClass();
            if (!BuiltinMethodsWithSpecialGenericSignature.b(name2)) {
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name17 = simpleFunctionDescriptor.getName();
                name17.getClass();
                linkedHashSetI = I(name17);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            Name name18 = simpleFunctionDescriptor.getName();
            name18.getClass();
            LinkedHashSet linkedHashSetI6 = I(name18);
            arrayList = new ArrayList();
            it = linkedHashSetI6.iterator();
            while (it.hasNext()) {
                functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a((SimpleFunctionDescriptor) it.next());
                if (functionDescriptorA != null) {
                    arrayList.add(functionDescriptorA);
                }
            }
            if (arrayList.isEmpty()) {
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name19 = simpleFunctionDescriptor.getName();
                name19.getClass();
                linkedHashSetI = I(name19);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (K(simpleFunctionDescriptor, (FunctionDescriptor) it2.next())) {
                }
            }
            simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
            if (simpleFunctionDescriptorB == null) {
                return true;
            }
            Name name110 = simpleFunctionDescriptor.getName();
            name110.getClass();
            linkedHashSetI = I(name110);
            if (linkedHashSetI.isEmpty()) {
                return true;
            }
            while (r8.hasNext()) {
                if (simpleFunctionDescriptor4.isSuspend()) {
                }
            }
            return true;
        }
        Iterator it4 = iterable.iterator();
        while (it4.hasNext()) {
            Set<PropertyDescriptor> setJ = J((Name) it4.next());
            if (!(setJ instanceof Collection) || !setJ.isEmpty()) {
                for (PropertyDescriptor propertyDescriptor : setJ) {
                    if (C(propertyDescriptor, new Function1(simpleFunctionDescriptor, this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$6

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final SimpleFunctionDescriptor f73010b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final LazyJavaClassMemberScope f73011c;

                        {
                            this.f73010b = simpleFunctionDescriptor;
                            this.f73011c = this;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Name name20 = (Name) obj2;
                            int i2 = LazyJavaClassMemberScope.v;
                            name20.getClass();
                            SimpleFunctionDescriptor simpleFunctionDescriptor5 = this.f73010b;
                            if (Intrinsics.c(simpleFunctionDescriptor5.getName(), name20)) {
                                return CollectionsKt.O(simpleFunctionDescriptor5);
                            }
                            LazyJavaClassMemberScope lazyJavaClassMemberScope = this.f73011c;
                            return CollectionsKt.Y(lazyJavaClassMemberScope.N(name20), lazyJavaClassMemberScope.O(name20));
                        }
                    })) {
                        if (!propertyDescriptor.I()) {
                            String strB2 = simpleFunctionDescriptor.getName().b();
                            strB2.getClass();
                            if (!StringsKt.P(strB2, "set", false)) {
                            }
                        }
                    }
                }
            }
        }
        SpecialGenericSignatures.Companion companion2 = SpecialGenericSignatures.f72896a;
        Name name20 = simpleFunctionDescriptor.getName();
        name20.getClass();
        companion2.getClass();
        name = (Name) SpecialGenericSignatures.l.get(name20);
        if (name == null) {
            BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature5 = BuiltinMethodsWithSpecialGenericSignature.m;
            name2 = simpleFunctionDescriptor.getName();
            name2.getClass();
            builtinMethodsWithSpecialGenericSignature5.getClass();
            if (!BuiltinMethodsWithSpecialGenericSignature.b(name2)) {
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name111 = simpleFunctionDescriptor.getName();
                name111.getClass();
                linkedHashSetI = I(name111);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend() || !D(simpleFunctionDescriptorB, simpleFunctionDescriptor4)) {
                    }
                }
                return true;
            }
            Name name112 = simpleFunctionDescriptor.getName();
            name112.getClass();
            LinkedHashSet linkedHashSetI7 = I(name112);
            arrayList = new ArrayList();
            it = linkedHashSetI7.iterator();
            while (it.hasNext()) {
                functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a((SimpleFunctionDescriptor) it.next());
                if (functionDescriptorA != null) {
                    arrayList.add(functionDescriptorA);
                }
            }
            if (arrayList.isEmpty()) {
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name113 = simpleFunctionDescriptor.getName();
                name113.getClass();
                linkedHashSetI = I(name113);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (K(simpleFunctionDescriptor, (FunctionDescriptor) it2.next())) {
                }
            }
            simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
            if (simpleFunctionDescriptorB == null) {
                return true;
            }
            Name name114 = simpleFunctionDescriptor.getName();
            name114.getClass();
            linkedHashSetI = I(name114);
            if (linkedHashSetI.isEmpty()) {
                return true;
            }
            while (r8.hasNext()) {
                if (simpleFunctionDescriptor4.isSuspend()) {
                }
            }
            return true;
        }
        LinkedHashSet linkedHashSetI8 = I(name);
        arrayList2 = new ArrayList();
        while (r1.hasNext()) {
            simpleFunctionDescriptor3 = (SimpleFunctionDescriptor) obj;
            simpleFunctionDescriptor3.getClass();
            if (SpecialBuiltinMembers.b(simpleFunctionDescriptor3) != null) {
                arrayList2.add(obj);
            }
        }
        if (arrayList2.isEmpty()) {
            BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature6 = BuiltinMethodsWithSpecialGenericSignature.m;
            name2 = simpleFunctionDescriptor.getName();
            name2.getClass();
            builtinMethodsWithSpecialGenericSignature6.getClass();
            if (!BuiltinMethodsWithSpecialGenericSignature.b(name2)) {
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name115 = simpleFunctionDescriptor.getName();
                name115.getClass();
                linkedHashSetI = I(name115);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            Name name116 = simpleFunctionDescriptor.getName();
            name116.getClass();
            LinkedHashSet linkedHashSetI9 = I(name116);
            arrayList = new ArrayList();
            it = linkedHashSetI9.iterator();
            while (it.hasNext()) {
                functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a((SimpleFunctionDescriptor) it.next());
                if (functionDescriptorA != null) {
                    arrayList.add(functionDescriptorA);
                }
            }
            if (arrayList.isEmpty()) {
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name117 = simpleFunctionDescriptor.getName();
                name117.getClass();
                linkedHashSetI = I(name117);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (K(simpleFunctionDescriptor, (FunctionDescriptor) it2.next())) {
                }
            }
            simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
            if (simpleFunctionDescriptorB == null) {
                return true;
            }
            Name name118 = simpleFunctionDescriptor.getName();
            name118.getClass();
            linkedHashSetI = I(name118);
            if (linkedHashSetI.isEmpty()) {
                return true;
            }
            while (r8.hasNext()) {
                if (simpleFunctionDescriptor4.isSuspend()) {
                }
            }
            return true;
        }
        FunctionDescriptor.CopyBuilder copyBuilderA1 = simpleFunctionDescriptor.A0();
        copyBuilderA1.i(name);
        copyBuilderA1.r();
        copyBuilderA1.l();
        FunctionDescriptor functionDescriptorBuild2 = copyBuilderA1.build();
        functionDescriptorBuild2.getClass();
        simpleFunctionDescriptor2 = (SimpleFunctionDescriptor) functionDescriptorBuild2;
        if (arrayList2.isEmpty()) {
            BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature7 = BuiltinMethodsWithSpecialGenericSignature.m;
            name2 = simpleFunctionDescriptor.getName();
            name2.getClass();
            builtinMethodsWithSpecialGenericSignature7.getClass();
            if (!BuiltinMethodsWithSpecialGenericSignature.b(name2)) {
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name119 = simpleFunctionDescriptor.getName();
                name119.getClass();
                linkedHashSetI = I(name119);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            Name name1110 = simpleFunctionDescriptor.getName();
            name1110.getClass();
            LinkedHashSet linkedHashSetI10 = I(name1110);
            arrayList = new ArrayList();
            it = linkedHashSetI10.iterator();
            while (it.hasNext()) {
                functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a((SimpleFunctionDescriptor) it.next());
                if (functionDescriptorA != null) {
                    arrayList.add(functionDescriptorA);
                }
            }
            if (arrayList.isEmpty()) {
                simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
                if (simpleFunctionDescriptorB == null) {
                    return true;
                }
                Name name1111 = simpleFunctionDescriptor.getName();
                name1111.getClass();
                linkedHashSetI = I(name1111);
                if (linkedHashSetI.isEmpty()) {
                    return true;
                }
                while (r8.hasNext()) {
                    if (simpleFunctionDescriptor4.isSuspend()) {
                    }
                }
                return true;
            }
            it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (K(simpleFunctionDescriptor, (FunctionDescriptor) it2.next())) {
                }
            }
            simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
            if (simpleFunctionDescriptorB == null) {
                return true;
            }
            Name name1112 = simpleFunctionDescriptor.getName();
            name1112.getClass();
            linkedHashSetI = I(name1112);
            if (linkedHashSetI.isEmpty()) {
                return true;
            }
            while (r8.hasNext()) {
                if (simpleFunctionDescriptor4.isSuspend()) {
                }
            }
            return true;
        }
        it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            if (E((SimpleFunctionDescriptor) it3.next(), simpleFunctionDescriptor2)) {
            }
        }
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature8 = BuiltinMethodsWithSpecialGenericSignature.m;
        name2 = simpleFunctionDescriptor.getName();
        name2.getClass();
        builtinMethodsWithSpecialGenericSignature8.getClass();
        if (!BuiltinMethodsWithSpecialGenericSignature.b(name2)) {
            simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
            if (simpleFunctionDescriptorB == null) {
                return true;
            }
            Name name1113 = simpleFunctionDescriptor.getName();
            name1113.getClass();
            linkedHashSetI = I(name1113);
            if (linkedHashSetI.isEmpty()) {
                return true;
            }
            while (r8.hasNext()) {
                if (simpleFunctionDescriptor4.isSuspend()) {
                }
            }
            return true;
        }
        Name name1114 = simpleFunctionDescriptor.getName();
        name1114.getClass();
        LinkedHashSet linkedHashSetI11 = I(name1114);
        arrayList = new ArrayList();
        it = linkedHashSetI11.iterator();
        while (it.hasNext()) {
            functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a((SimpleFunctionDescriptor) it.next());
            if (functionDescriptorA != null) {
                arrayList.add(functionDescriptorA);
            }
        }
        if (arrayList.isEmpty()) {
            simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
            if (simpleFunctionDescriptorB == null) {
                return true;
            }
            Name name1115 = simpleFunctionDescriptor.getName();
            name1115.getClass();
            linkedHashSetI = I(name1115);
            if (linkedHashSetI.isEmpty()) {
                return true;
            }
            while (r8.hasNext()) {
                if (simpleFunctionDescriptor4.isSuspend()) {
                }
            }
            return true;
        }
        it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (K(simpleFunctionDescriptor, (FunctionDescriptor) it2.next())) {
            }
        }
        simpleFunctionDescriptorB = B(simpleFunctionDescriptor);
        if (simpleFunctionDescriptorB == null) {
            return true;
        }
        Name name1116 = simpleFunctionDescriptor.getName();
        name1116.getClass();
        linkedHashSetI = I(name1116);
        if (linkedHashSetI.isEmpty()) {
            return true;
        }
        while (r8.hasNext()) {
            if (simpleFunctionDescriptor4.isSuspend()) {
            }
        }
        return true;
        return false;
    }

    public final void M(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        kotlin.reflect.jvm.internal.impl.incremental.UtilsKt.a(this.f73032b.f72962a.n, lookupLocation, this.n, name);
    }

    public final ArrayList N(Name name) {
        Collection collectionD = ((DeclaredMemberIndex) this.f73034e.mo47invoke()).d(name);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(collectionD, 10));
        Iterator it = collectionD.iterator();
        while (it.hasNext()) {
            arrayList.add(t((JavaMethod) it.next()));
        }
        return arrayList;
    }

    public final ArrayList O(Name name) {
        LinkedHashSet linkedHashSetI = I(name);
        ArrayList arrayList = new ArrayList();
        for (Object obj : linkedHashSetI) {
            SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) obj;
            simpleFunctionDescriptor.getClass();
            if (SpecialBuiltinMembers.b(simpleFunctionDescriptor) == null && BuiltinMethodsWithSpecialGenericSignature.a(simpleFunctionDescriptor) == null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        M(name, lookupLocation);
        return super.b(name, lookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        M(name, lookupLocation);
        return super.c(name, lookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        MemoizedFunctionToNullable memoizedFunctionToNullable;
        ClassDescriptor classDescriptor;
        name.getClass();
        lookupLocation.getClass();
        M(name, lookupLocation);
        LazyJavaClassMemberScope lazyJavaClassMemberScope = (LazyJavaClassMemberScope) this.f73033c;
        return (lazyJavaClassMemberScope == null || (memoizedFunctionToNullable = lazyJavaClassMemberScope.u) == null || (classDescriptor = (ClassDescriptor) memoizedFunctionToNullable.invoke(name)) == null) ? (ClassifierDescriptor) this.u.invoke(name) : classDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set h(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return SetsKt.f((Set) this.r.mo47invoke(), ((Map) this.t.mo47invoke()).keySet());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set i(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        ClassDescriptor classDescriptor = this.n;
        Collection collectionI = classDescriptor.j().i();
        collectionI.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = collectionI.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(linkedHashSet, ((KotlinType) it.next()).n().a());
        }
        NotNullLazyValue notNullLazyValue = this.f73034e;
        linkedHashSet.addAll(((DeclaredMemberIndex) notNullLazyValue.mo47invoke()).a());
        linkedHashSet.addAll(((DeclaredMemberIndex) notNullLazyValue.mo47invoke()).b());
        linkedHashSet.addAll(h(descriptorKindFilter, function1));
        LazyJavaResolverContext lazyJavaResolverContext = this.f73032b;
        linkedHashSet.addAll(lazyJavaResolverContext.f72962a.x.c(classDescriptor, lazyJavaResolverContext));
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void j(ArrayList arrayList, Name name) {
        name.getClass();
        boolean zO = this.o.o();
        ClassDescriptor classDescriptor = this.n;
        LazyJavaResolverContext lazyJavaResolverContext = this.f73032b;
        if (zO) {
            NotNullLazyValue notNullLazyValue = this.f73034e;
            if (((DeclaredMemberIndex) notNullLazyValue.mo47invoke()).e(name) != null) {
                if (arrayList.isEmpty()) {
                    JavaRecordComponent javaRecordComponentE = ((DeclaredMemberIndex) notNullLazyValue.mo47invoke()).e(name);
                    javaRecordComponentE.getClass();
                    LazyJavaAnnotations lazyJavaAnnotationsA = LazyJavaAnnotationsKt.a(lazyJavaResolverContext, javaRecordComponentE);
                    JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
                    JavaMethodDescriptor javaMethodDescriptorT0 = JavaMethodDescriptor.T0(classDescriptor, lazyJavaAnnotationsA, javaRecordComponentE.getName(), javaResolverComponents.f72951j.a(javaRecordComponentE), true);
                    KotlinType kotlinTypeD = lazyJavaResolverContext.d.d(javaRecordComponentE.getType(), JavaTypeAttributesKt.a(TypeUsage.COMMON, false, null, 6));
                    ReceiverParameterDescriptor receiverParameterDescriptorP = p();
                    EmptyList emptyList = EmptyList.f71768b;
                    Modality.Companion.getClass();
                    javaMethodDescriptorT0.S0(null, receiverParameterDescriptorP, emptyList, emptyList, emptyList, kotlinTypeD, Modality.OPEN, DescriptorVisibilities.f72369e, null);
                    javaMethodDescriptorT0.U0(false, false);
                    javaResolverComponents.g.b(javaRecordComponentE, javaMethodDescriptorT0);
                    arrayList.add(javaMethodDescriptorT0);
                } else {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (((SimpleFunctionDescriptor) it.next()).h().isEmpty()) {
                        }
                    }
                    JavaRecordComponent javaRecordComponentE2 = ((DeclaredMemberIndex) notNullLazyValue.mo47invoke()).e(name);
                    javaRecordComponentE2.getClass();
                    LazyJavaAnnotations lazyJavaAnnotationsA2 = LazyJavaAnnotationsKt.a(lazyJavaResolverContext, javaRecordComponentE2);
                    JavaResolverComponents javaResolverComponents2 = lazyJavaResolverContext.f72962a;
                    JavaMethodDescriptor javaMethodDescriptorT1 = JavaMethodDescriptor.T0(classDescriptor, lazyJavaAnnotationsA2, javaRecordComponentE2.getName(), javaResolverComponents2.f72951j.a(javaRecordComponentE2), true);
                    KotlinType kotlinTypeD2 = lazyJavaResolverContext.d.d(javaRecordComponentE2.getType(), JavaTypeAttributesKt.a(TypeUsage.COMMON, false, null, 6));
                    ReceiverParameterDescriptor receiverParameterDescriptorP2 = p();
                    EmptyList emptyList2 = EmptyList.f71768b;
                    Modality.Companion.getClass();
                    javaMethodDescriptorT1.S0(null, receiverParameterDescriptorP2, emptyList2, emptyList2, emptyList2, kotlinTypeD2, Modality.OPEN, DescriptorVisibilities.f72369e, null);
                    javaMethodDescriptorT1.U0(false, false);
                    javaResolverComponents2.g.b(javaRecordComponentE2, javaMethodDescriptorT1);
                    arrayList.add(javaMethodDescriptorT1);
                }
            }
        }
        lazyJavaResolverContext.f72962a.x.d(classDescriptor, name, arrayList, lazyJavaResolverContext);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclaredMemberIndex k() {
        return new ClassDeclaredMemberIndex(this.o, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                JavaMember javaMember = (JavaMember) obj;
                int i2 = LazyJavaClassMemberScope.v;
                javaMember.getClass();
                return Boolean.valueOf(!javaMember.isStatic());
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void m(LinkedHashSet linkedHashSet, Name name) {
        name.getClass();
        LinkedHashSet linkedHashSetI = I(name);
        SpecialGenericSignatures.f72896a.getClass();
        if (!SpecialGenericSignatures.f72904k.contains(name)) {
            BuiltinMethodsWithSpecialGenericSignature.m.getClass();
            if (!BuiltinMethodsWithSpecialGenericSignature.b(name)) {
                if (!linkedHashSetI.isEmpty()) {
                    Iterator it = linkedHashSetI.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((FunctionDescriptor) it.next()).isSuspend()) {
                            }
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj : linkedHashSetI) {
                    if (L((SimpleFunctionDescriptor) obj)) {
                        arrayList.add(obj);
                    }
                }
                w(linkedHashSet, name, arrayList, false);
                return;
            }
        }
        SmartSet.d.getClass();
        SmartSet smartSetA = SmartSet.Companion.a();
        LinkedHashSet linkedHashSetD = DescriptorResolverUtils.d(linkedHashSetI, EmptyList.f71768b, this.n, name, this.f73032b.f72962a.u.a(), ErrorReporter.f74013a);
        x(name, linkedHashSet, linkedHashSetD, linkedHashSet, new LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(1, this, LazyJavaClassMemberScope.class, "searchMethodsByNameWithoutBuiltinMagic", "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;", 0));
        x(name, linkedHashSet, linkedHashSetD, smartSetA, new LazyJavaClassMemberScope$computeNonDeclaredFunctions$4(1, this, LazyJavaClassMemberScope.class, "searchMethodsInSupertypesWithoutBuiltinMagic", "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;", 0));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : linkedHashSetI) {
            if (L((SimpleFunctionDescriptor) obj2)) {
                arrayList2.add(obj2);
            }
        }
        w(linkedHashSet, name, CollectionsKt.Y(arrayList2, smartSetA), true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void n(ArrayList arrayList, Name name) {
        JavaMethod javaMethod;
        name.getClass();
        boolean zK = this.o.k();
        LazyJavaResolverContext lazyJavaResolverContext = this.f73032b;
        if (zK && (javaMethod = (JavaMethod) CollectionsKt.i0(((DeclaredMemberIndex) this.f73034e.mo47invoke()).d(name))) != null) {
            JavaPropertyDescriptor javaPropertyDescriptorM0 = JavaPropertyDescriptor.M0(this.n, LazyJavaAnnotationsKt.a(lazyJavaResolverContext, javaMethod), Modality.FINAL, UtilsKt.a(javaMethod.getVisibility()), false, javaMethod.getName(), lazyJavaResolverContext.f72962a.f72951j.a(javaMethod), false);
            PropertyGetterDescriptorImpl propertyGetterDescriptorImplC = DescriptorFactory.c(Annotations.Companion.f72432a, javaPropertyDescriptorM0);
            javaPropertyDescriptorM0.J0(propertyGetterDescriptorImplC, null, null, null);
            lazyJavaResolverContext.getClass();
            KotlinType kotlinTypeL = LazyJavaScope.l(javaMethod, new LazyJavaResolverContext(lazyJavaResolverContext.f72962a, new LazyJavaTypeParameterResolver(lazyJavaResolverContext, javaPropertyDescriptorM0, javaMethod, 0), lazyJavaResolverContext.f72964c));
            EmptyList emptyList = EmptyList.f71768b;
            javaPropertyDescriptorM0.L0(kotlinTypeL, emptyList, p(), null, emptyList);
            propertyGetterDescriptorImplC.n = kotlinTypeL;
            arrayList.add(javaPropertyDescriptorM0);
        }
        Set setJ = J(name);
        if (setJ.isEmpty()) {
            return;
        }
        SmartSet.d.getClass();
        SmartSet smartSetA = SmartSet.Companion.a();
        SmartSet smartSetA2 = SmartSet.Companion.a();
        y(setJ, arrayList, smartSetA, new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$7

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassMemberScope f73012b;

            {
                this.f73012b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Name name2 = (Name) obj;
                int i2 = LazyJavaClassMemberScope.v;
                name2.getClass();
                return this.f73012b.N(name2);
            }
        });
        y(SetsKt.d(setJ, smartSetA), smartSetA2, null, new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$$Lambda$8

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaClassMemberScope f73013b;

            {
                this.f73013b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Name name2 = (Name) obj;
                int i2 = LazyJavaClassMemberScope.v;
                name2.getClass();
                return this.f73013b.O(name2);
            }
        });
        LinkedHashSet linkedHashSetF = SetsKt.f(setJ, smartSetA2);
        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
        arrayList.addAll(DescriptorResolverUtils.d(linkedHashSetF, arrayList, this.n, name, javaResolverComponents.u.a(), javaResolverComponents.f72948f));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set o(DescriptorKindFilter descriptorKindFilter) {
        descriptorKindFilter.getClass();
        if (this.o.k()) {
            return a();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(((DeclaredMemberIndex) this.f73034e.mo47invoke()).c());
        Collection collectionI = this.n.j().i();
        collectionI.getClass();
        Iterator it = collectionI.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(linkedHashSet, ((KotlinType) it.next()).n().d());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final ReceiverParameterDescriptor p() {
        ClassDescriptor classDescriptor = this.n;
        if (classDescriptor != null) {
            int i2 = DescriptorUtils.f73834a;
            return classDescriptor.E0();
        }
        DescriptorUtils.a(0);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclarationDescriptor q() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final boolean r(JavaMethodDescriptor javaMethodDescriptor) {
        if (this.o.k()) {
            return false;
        }
        return L(javaMethodDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final LazyJavaScope.MethodSignatureData s(JavaMethod javaMethod, ArrayList arrayList, KotlinType kotlinType, List list) {
        javaMethod.getClass();
        kotlinType.getClass();
        list.getClass();
        SignaturePropagator.PropagatedSignature propagatedSignatureA = this.f73032b.f72962a.f72947e.a(javaMethod, this.n, kotlinType, list, arrayList);
        KotlinType kotlinType2 = propagatedSignatureA.f72935a;
        if (kotlinType2 == null) {
            SignaturePropagator.PropagatedSignature.a(4);
            throw null;
        }
        KotlinType kotlinType3 = propagatedSignatureA.f72936b;
        List list2 = propagatedSignatureA.f72937c;
        if (list2 == null) {
            SignaturePropagator.PropagatedSignature.a(5);
            throw null;
        }
        List list3 = propagatedSignatureA.d;
        if (list3 == null) {
            SignaturePropagator.PropagatedSignature.a(6);
            throw null;
        }
        boolean z = propagatedSignatureA.f72939f;
        List list4 = propagatedSignatureA.f72938e;
        if (list4 != null) {
            return new LazyJavaScope.MethodSignatureData(kotlinType2, kotlinType3, list2, list3, z, list4);
        }
        SignaturePropagator.PropagatedSignature.a(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final String toString() {
        return "Lazy Java member scope for " + this.o.c();
    }

    public final void v(ArrayList arrayList, JavaClassConstructorDescriptor javaClassConstructorDescriptor, int i2, JavaMethod javaMethod, KotlinType kotlinType, KotlinType kotlinType2) {
        Name name = javaMethod.getName();
        if (kotlinType == null) {
            TypeUtils.a(2);
            throw null;
        }
        UnwrappedType unwrappedTypeI = TypeUtils.i(kotlinType, false);
        boolean zG = javaMethod.G();
        UnwrappedType unwrappedTypeI2 = kotlinType2 != null ? TypeUtils.i(kotlinType2, false) : null;
        arrayList.add(new ValueParameterDescriptorImpl(javaClassConstructorDescriptor, null, i2, Annotations.Companion.f72432a, name, unwrappedTypeI, zG, false, false, unwrappedTypeI2, this.f73032b.f72962a.f72951j.a(javaMethod)));
    }

    public final void w(LinkedHashSet linkedHashSet, Name name, ArrayList arrayList, boolean z) {
        JavaResolverComponents javaResolverComponents = this.f73032b.f72962a;
        ErrorReporter errorReporter = javaResolverComponents.f72948f;
        LinkedHashSet<SimpleFunctionDescriptor> linkedHashSetD = DescriptorResolverUtils.d(arrayList, linkedHashSet, this.n, name, javaResolverComponents.u.a(), errorReporter);
        if (!z) {
            linkedHashSet.addAll(linkedHashSetD);
            return;
        }
        ArrayList arrayListY = CollectionsKt.Y(linkedHashSet, linkedHashSetD);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(linkedHashSetD, 10));
        for (SimpleFunctionDescriptor simpleFunctionDescriptorA : linkedHashSetD) {
            SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) SpecialBuiltinMembers.c(simpleFunctionDescriptorA);
            if (simpleFunctionDescriptor != null) {
                simpleFunctionDescriptorA = A(simpleFunctionDescriptorA, simpleFunctionDescriptor, arrayListY);
            }
            arrayList2.add(simpleFunctionDescriptorA);
        }
        linkedHashSet.addAll(arrayList2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0067  */
    public final void x(Name name, LinkedHashSet linkedHashSet, LinkedHashSet linkedHashSet2, AbstractSet abstractSet, Function1 function1) {
        SimpleFunctionDescriptor simpleFunctionDescriptorA;
        Object next;
        SimpleFunctionDescriptor simpleFunctionDescriptor;
        SimpleFunctionDescriptor simpleFunctionDescriptorA2;
        Iterator it = linkedHashSet2.iterator();
        while (it.hasNext()) {
            SimpleFunctionDescriptor simpleFunctionDescriptor2 = (SimpleFunctionDescriptor) it.next();
            SimpleFunctionDescriptor simpleFunctionDescriptor3 = (SimpleFunctionDescriptor) SpecialBuiltinMembers.b(simpleFunctionDescriptor2);
            SimpleFunctionDescriptor simpleFunctionDescriptor4 = null;
            if (simpleFunctionDescriptor3 != null) {
                String strA = SpecialBuiltinMembers.a(simpleFunctionDescriptor3);
                strA.getClass();
                Iterator it2 = ((Collection) function1.invoke(Name.e(strA))).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        simpleFunctionDescriptorA = null;
                        break;
                    }
                    FunctionDescriptor.CopyBuilder copyBuilderA0 = ((SimpleFunctionDescriptor) it2.next()).A0();
                    copyBuilderA0.i(name);
                    copyBuilderA0.r();
                    copyBuilderA0.l();
                    FunctionDescriptor functionDescriptorBuild = copyBuilderA0.build();
                    functionDescriptorBuild.getClass();
                    SimpleFunctionDescriptor simpleFunctionDescriptor5 = (SimpleFunctionDescriptor) functionDescriptorBuild;
                    if (E(simpleFunctionDescriptor3, simpleFunctionDescriptor5)) {
                        simpleFunctionDescriptorA = A(simpleFunctionDescriptor5, simpleFunctionDescriptor3, linkedHashSet);
                        break;
                    }
                }
            } else {
                simpleFunctionDescriptorA = null;
                break;
            }
            if (simpleFunctionDescriptorA != null) {
                abstractSet.add(simpleFunctionDescriptorA);
            }
            FunctionDescriptor functionDescriptorA = BuiltinMethodsWithSpecialGenericSignature.a(simpleFunctionDescriptor2);
            if (functionDescriptorA == null) {
                simpleFunctionDescriptorA2 = null;
            } else {
                Name name2 = functionDescriptorA.getName();
                name2.getClass();
                Iterator it3 = ((Iterable) function1.invoke(name2)).iterator();
                do {
                    if (!it3.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it3.next();
                } while (!K((SimpleFunctionDescriptor) next, functionDescriptorA));
                SimpleFunctionDescriptor simpleFunctionDescriptor6 = (SimpleFunctionDescriptor) next;
                if (simpleFunctionDescriptor6 != null) {
                    FunctionDescriptor.CopyBuilder copyBuilderA1 = simpleFunctionDescriptor6.A0();
                    List listH = functionDescriptorA.h();
                    listH.getClass();
                    List list = listH;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    Iterator it4 = list.iterator();
                    while (it4.hasNext()) {
                        arrayList.add(((ValueParameterDescriptor) it4.next()).getType());
                    }
                    List listH2 = simpleFunctionDescriptor6.h();
                    listH2.getClass();
                    copyBuilderA1.b(UtilKt.a(arrayList, listH2, functionDescriptorA));
                    copyBuilderA1.r();
                    copyBuilderA1.l();
                    copyBuilderA1.n();
                    simpleFunctionDescriptor = (SimpleFunctionDescriptor) copyBuilderA1.build();
                } else {
                    simpleFunctionDescriptor = null;
                }
                if (simpleFunctionDescriptor == null) {
                    simpleFunctionDescriptorA2 = null;
                } else {
                    if (!L(simpleFunctionDescriptor)) {
                        simpleFunctionDescriptor = null;
                    }
                    if (simpleFunctionDescriptor != null) {
                        simpleFunctionDescriptorA2 = A(simpleFunctionDescriptor, functionDescriptorA, linkedHashSet);
                    } else {
                        simpleFunctionDescriptorA2 = null;
                    }
                }
            }
            if (simpleFunctionDescriptorA2 != null) {
                abstractSet.add(simpleFunctionDescriptorA2);
            }
            if (simpleFunctionDescriptor2.isSuspend()) {
                Name name3 = simpleFunctionDescriptor2.getName();
                name3.getClass();
                Iterator it5 = ((Iterable) function1.invoke(name3)).iterator();
                while (it5.hasNext()) {
                    SimpleFunctionDescriptor simpleFunctionDescriptorB = B((SimpleFunctionDescriptor) it5.next());
                    if (simpleFunctionDescriptorB == null || !D(simpleFunctionDescriptorB, simpleFunctionDescriptor2)) {
                        simpleFunctionDescriptorB = null;
                    }
                    if (simpleFunctionDescriptorB != null) {
                        simpleFunctionDescriptor4 = simpleFunctionDescriptorB;
                        break;
                    }
                }
            }
            if (simpleFunctionDescriptor4 != null) {
                abstractSet.add(simpleFunctionDescriptor4);
            }
        }
    }

    public final void y(Set set, AbstractCollection abstractCollection, SmartSet smartSet, Function1 function1) {
        SimpleFunctionDescriptor simpleFunctionDescriptorH;
        PropertySetterDescriptorImpl propertySetterDescriptorImplK;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            PropertyDescriptor propertyDescriptor = (PropertyDescriptor) it.next();
            JavaForKotlinOverridePropertyDescriptor javaForKotlinOverridePropertyDescriptor = null;
            if (C(propertyDescriptor, function1)) {
                SimpleFunctionDescriptor simpleFunctionDescriptorG = G(propertyDescriptor, function1);
                simpleFunctionDescriptorG.getClass();
                if (propertyDescriptor.I()) {
                    simpleFunctionDescriptorH = H(propertyDescriptor, function1);
                    simpleFunctionDescriptorH.getClass();
                } else {
                    simpleFunctionDescriptorH = null;
                }
                if (simpleFunctionDescriptorH != null) {
                    simpleFunctionDescriptorH.q();
                    simpleFunctionDescriptorG.q();
                }
                JavaForKotlinOverridePropertyDescriptor javaForKotlinOverridePropertyDescriptor2 = new JavaForKotlinOverridePropertyDescriptor(this.n, simpleFunctionDescriptorG, simpleFunctionDescriptorH, propertyDescriptor);
                KotlinType returnType = simpleFunctionDescriptorG.getReturnType();
                returnType.getClass();
                EmptyList emptyList = EmptyList.f71768b;
                javaForKotlinOverridePropertyDescriptor2.L0(returnType, emptyList, p(), null, emptyList);
                PropertyGetterDescriptorImpl propertyGetterDescriptorImplI = DescriptorFactory.i(javaForKotlinOverridePropertyDescriptor2, simpleFunctionDescriptorG.getAnnotations(), false, simpleFunctionDescriptorG.getSource());
                propertyGetterDescriptorImplI.m = simpleFunctionDescriptorG;
                propertyGetterDescriptorImplI.H0(javaForKotlinOverridePropertyDescriptor2.getType());
                if (simpleFunctionDescriptorH != null) {
                    List listH = simpleFunctionDescriptorH.h();
                    listH.getClass();
                    ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) CollectionsKt.firstOrNull(listH);
                    if (valueParameterDescriptor == null) {
                        no0.t(simpleFunctionDescriptorH, "No parameter found for ");
                        return;
                    } else {
                        propertySetterDescriptorImplK = DescriptorFactory.k(javaForKotlinOverridePropertyDescriptor2, simpleFunctionDescriptorH.getAnnotations(), valueParameterDescriptor.getAnnotations(), false, simpleFunctionDescriptorH.getVisibility(), simpleFunctionDescriptorH.getSource());
                        propertySetterDescriptorImplK.m = simpleFunctionDescriptorH;
                    }
                } else {
                    propertySetterDescriptorImplK = null;
                }
                javaForKotlinOverridePropertyDescriptor2.J0(propertyGetterDescriptorImplI, propertySetterDescriptorImplK, null, null);
                javaForKotlinOverridePropertyDescriptor = javaForKotlinOverridePropertyDescriptor2;
            }
            if (javaForKotlinOverridePropertyDescriptor != null) {
                abstractCollection.add(javaForKotlinOverridePropertyDescriptor);
                if (smartSet != null) {
                    smartSet.add(propertyDescriptor);
                    return;
                }
                return;
            }
        }
    }

    public final Collection z() {
        boolean z = this.p;
        ClassDescriptor classDescriptor = this.n;
        if (!z) {
            return this.f73032b.f72962a.u.c().e(classDescriptor);
        }
        Collection collectionI = classDescriptor.j().i();
        collectionI.getClass();
        return collectionI;
    }

    public /* synthetic */ LazyJavaClassMemberScope(LazyJavaResolverContext lazyJavaResolverContext, ClassDescriptor classDescriptor, JavaClass javaClass, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, classDescriptor, javaClass, z, (i2 & 16) != 0 ? null : lazyJavaClassMemberScope);
    }
}
