package kotlin.reflect.jvm.internal;

import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.PackagePartScopeCache;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinderKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ChainedMemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\nB\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Ljava/lang/Class;", "jClass", "<init>", "(Ljava/lang/Class;)V", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "scope", "Data", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KPackageImpl extends KDeclarationContainerImpl {
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class f72145e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f72146f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "<init>", "(Lkotlin/reflect/jvm/internal/KPackageImpl;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class Data extends KDeclarationContainerImpl.Data {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ KProperty[] f72149f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72150c;
        public final ReflectProperties.LazySoftVal d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Lazy f72151e;

        static {
            PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(Data.class, "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;", 0);
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            f72149f = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(Data.class, "scope", "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", 0, reflectionFactory), tr.q(Data.class, "members", "getMembers()Ljava/util/Collection;", 0, reflectionFactory)};
        }

        public Data(final KPackageImpl kPackageImpl) {
            super(kPackageImpl);
            this.f72150c = ReflectProperties.a(null, new Function0(kPackageImpl) { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KPackageImpl f72152b;

                {
                    this.f72152b = kPackageImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KPackageImpl.Data.f72149f;
                    ReflectKotlinClass.Factory factory = ReflectKotlinClass.f72579c;
                    Class cls = this.f72152b.f72145e;
                    factory.getClass();
                    return ReflectKotlinClass.Factory.a(cls);
                }
            });
            this.d = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$$Lambda$1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KPackageImpl.Data f72153b;

                {
                    this.f72153b = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r5v13, types: [java.util.ArrayList] */
                /* JADX WARN: Type inference failed for: r5v4, types: [java.util.List] */
                /* JADX WARN: Type inference failed for: r5v5 */
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    ?? O;
                    KProperty[] kPropertyArr = KPackageImpl.Data.f72149f;
                    KPackageImpl.Data data = this.f72153b;
                    ReflectProperties.LazySoftVal lazySoftVal = data.f72150c;
                    KProperty kProperty = KPackageImpl.Data.f72149f[0];
                    ReflectKotlinClass reflectKotlinClass = (ReflectKotlinClass) lazySoftVal.mo47invoke();
                    if (reflectKotlinClass == null) {
                        return MemberScope.Empty.f73933b;
                    }
                    Class cls = reflectKotlinClass.f72580a;
                    ReflectProperties.LazySoftVal lazySoftVal2 = data.f72141a;
                    KProperty kProperty2 = KDeclarationContainerImpl.Data.f72140b[0];
                    Object objMo47invoke = lazySoftVal2.mo47invoke();
                    objMo47invoke.getClass();
                    PackagePartScopeCache packagePartScopeCache = ((RuntimeModuleData) objMo47invoke).f72588b;
                    DeserializedDescriptorResolver deserializedDescriptorResolver = packagePartScopeCache.f72574a;
                    ConcurrentHashMap concurrentHashMap = packagePartScopeCache.f72576c;
                    ClassId classIdA = ReflectClassUtilKt.a(cls);
                    Object obj = concurrentHashMap.get(classIdA);
                    if (obj == null) {
                        FqName fqName = ReflectClassUtilKt.a(cls).f73675a;
                        KotlinClassHeader kotlinClassHeader = reflectKotlinClass.f72581b;
                        KotlinClassHeader.Kind kind = kotlinClassHeader.f73275a;
                        KotlinClassHeader.Kind kind2 = KotlinClassHeader.Kind.MULTIFILE_CLASS;
                        if (kind == kind2) {
                            String[] strArr = kotlinClassHeader.f73277c;
                            List<String> listAsList = null;
                            if (kind != kind2) {
                                strArr = null;
                            }
                            if (strArr != null) {
                                listAsList = Arrays.asList(strArr);
                                listAsList.getClass();
                            }
                            if (listAsList == null) {
                                listAsList = EmptyList.f71768b;
                            }
                            O = new ArrayList();
                            for (String str : listAsList) {
                                ClassId.Companion companion = ClassId.d;
                                FqName fqName2 = new FqName(JvmClassName.c(str).f73899a.replace('/', JwtParser.SEPARATOR_CHAR));
                                companion.getClass();
                                KotlinJvmBinaryClass kotlinJvmBinaryClassA = KotlinClassFinderKt.a(packagePartScopeCache.f72575b, ClassId.Companion.b(fqName2), deserializedDescriptorResolver.c().f73990c.a());
                                if (kotlinJvmBinaryClassA != null) {
                                    O.add(kotlinJvmBinaryClassA);
                                }
                            }
                        } else {
                            O = CollectionsKt.O(reflectKotlinClass);
                        }
                        EmptyPackageFragmentDescriptor emptyPackageFragmentDescriptor = new EmptyPackageFragmentDescriptor(deserializedDescriptorResolver.c().f73989b, fqName);
                        ArrayList arrayList = new ArrayList();
                        Iterator it = ((Iterable) O).iterator();
                        while (it.hasNext()) {
                            DeserializedPackageMemberScope deserializedPackageMemberScopeA = deserializedDescriptorResolver.a(emptyPackageFragmentDescriptor, (KotlinJvmBinaryClass) it.next());
                            if (deserializedPackageMemberScopeA != null) {
                                arrayList.add(deserializedPackageMemberScopeA);
                            }
                        }
                        List listY0 = CollectionsKt.y0(arrayList);
                        ChainedMemberScope.d.getClass();
                        MemberScope memberScopeA = ChainedMemberScope.Companion.a(listY0, "package " + fqName + " (" + reflectKotlinClass + ')');
                        Object objPutIfAbsent = concurrentHashMap.putIfAbsent(classIdA, memberScopeA);
                        obj = objPutIfAbsent == null ? memberScopeA : objPutIfAbsent;
                    }
                    obj.getClass();
                    return (MemberScope) obj;
                }
            });
            this.f72151e = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(this, kPackageImpl) { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$$Lambda$2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KPackageImpl.Data f72154b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KPackageImpl f72155c;

                {
                    this.f72154b = this;
                    this.f72155c = kPackageImpl;
                }

                /* JADX WARN: Code duplicated, block: B:9:0x0021  */
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    String str;
                    KotlinClassHeader kotlinClassHeader;
                    KProperty[] kPropertyArr = KPackageImpl.Data.f72149f;
                    ReflectProperties.LazySoftVal lazySoftVal = this.f72154b.f72150c;
                    KProperty kProperty = KPackageImpl.Data.f72149f[0];
                    ReflectKotlinClass reflectKotlinClass = (ReflectKotlinClass) lazySoftVal.mo47invoke();
                    if (reflectKotlinClass == null || (kotlinClassHeader = reflectKotlinClass.f72581b) == null) {
                        str = null;
                    } else {
                        str = kotlinClassHeader.f73279f;
                        if (kotlinClassHeader.f73275a != KotlinClassHeader.Kind.MULTIFILE_CLASS_PART) {
                            str = null;
                        }
                    }
                    if (str == null || str.length() <= 0) {
                        return null;
                    }
                    ClassLoader classLoader = this.f72155c.f72145e.getClassLoader();
                    String strReplace = str.replace('/', JwtParser.SEPARATOR_CHAR);
                    strReplace.getClass();
                    return classLoader.loadClass(strReplace);
                }
            });
            ReflectProperties.a(null, new Function0(this, kPackageImpl) { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$$Lambda$3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KPackageImpl.Data f72156b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KPackageImpl f72157c;

                {
                    this.f72156b = this;
                    this.f72157c = kPackageImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KPackageImpl.Data.f72149f;
                    KPackageImpl$Data$members$2$visitor$1 kPackageImpl$Data$members$2$visitor$1 = new KPackageImpl$Data$members$2$visitor$1(this.f72157c);
                    ReflectProperties.LazySoftVal lazySoftVal = this.f72156b.d;
                    KProperty kProperty = KPackageImpl.Data.f72149f[1];
                    Object objMo47invoke = lazySoftVal.mo47invoke();
                    objMo47invoke.getClass();
                    Collection<DeclarationDescriptor> collectionA = ResolutionScope.DefaultImpls.a((MemberScope) objMo47invoke, null, 3);
                    ArrayList arrayList = new ArrayList();
                    for (DeclarationDescriptor declarationDescriptor : collectionA) {
                        DescriptorKCallable descriptorKCallable = declarationDescriptor instanceof CallableMemberDescriptor ? (DescriptorKCallable) declarationDescriptor.v(kPackageImpl$Data$members$2$visitor$1, Unit.f71739a) : null;
                        if (descriptorKCallable != null) {
                            arrayList.add(descriptorKCallable);
                        }
                    }
                    return CollectionsKt.y0(arrayList);
                }
            });
        }
    }

    public KPackageImpl(Class<?> cls) {
        cls.getClass();
        this.f72145e = cls;
        this.f72146f = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPackageImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final KPackageImpl f72147b;

            {
                this.f72147b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i2 = KPackageImpl.g;
                return new KPackageImpl.Data(this.f72147b);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection I() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection J(Name name) {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72146f.getF71699b()).d;
        KProperty kProperty = Data.f72149f[1];
        Object objMo47invoke = lazySoftVal.mo47invoke();
        objMo47invoke.getClass();
        return ((MemberScope) objMo47invoke).b(name, NoLookupLocation.FROM_REFLECTION);
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final PropertyDescriptor K(int i2) {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72146f.getF71699b()).d;
        KProperty kProperty = Data.f72149f[1];
        Object objMo47invoke = lazySoftVal.mo47invoke();
        objMo47invoke.getClass();
        MemberScope memberScope = (MemberScope) objMo47invoke;
        DeserializedPackageMemberScope deserializedPackageMemberScope = memberScope instanceof DeserializedPackageMemberScope ? (DeserializedPackageMemberScope) memberScope : null;
        if (deserializedPackageMemberScope != null) {
            DeserializationContext deserializationContext = deserializedPackageMemberScope.f74105b;
            ProtoBuf$Package protoBuf$Package = deserializedPackageMemberScope.f74127h;
            GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.l;
            generatedExtension.getClass();
            protoBuf$Package.getClass();
            ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) (i2 < protoBuf$Package.m(generatedExtension) ? protoBuf$Package.l(generatedExtension, i2) : null);
            if (protoBuf$Property != null) {
                NameResolver nameResolver = deserializationContext.f73999b;
                ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Package.f73417h;
                protoBuf$TypeTable.getClass();
                return (PropertyDescriptor) UtilKt.e(this.f72145e, protoBuf$Property, nameResolver, new TypeTable(protoBuf$TypeTable), deserializationContext.f74002f, new Function2() { // from class: kotlin.reflect.jvm.internal.KPackageImpl$$Lambda$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        MemberDeserializer memberDeserializer = (MemberDeserializer) obj;
                        ProtoBuf$Property protoBuf$Property2 = (ProtoBuf$Property) obj2;
                        int i3 = KPackageImpl.g;
                        memberDeserializer.getClass();
                        protoBuf$Property2.getClass();
                        return memberDeserializer.g(protoBuf$Property2, true);
                    }
                });
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Class L() {
        Class cls = (Class) ((Data) this.f72146f.getF71699b()).f72151e.getF71699b();
        return cls == null ? this.f72145e : cls;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection M(Name name) {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72146f.getF71699b()).d;
        KProperty kProperty = Data.f72149f[1];
        Object objMo47invoke = lazySoftVal.mo47invoke();
        objMo47invoke.getClass();
        return ((MemberScope) objMo47invoke).c(name, NoLookupLocation.FROM_REFLECTION);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof KPackageImpl) {
            return Intrinsics.c(this.f72145e, ((KPackageImpl) obj).f72145e);
        }
        return false;
    }

    public final int hashCode() {
        return this.f72145e.hashCode();
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    /* JADX INFO: renamed from: q, reason: from getter */
    public final Class getF72145e() {
        return this.f72145e;
    }

    public final String toString() {
        return "file class " + ReflectClassUtilKt.a(this.f72145e).a();
    }
}
