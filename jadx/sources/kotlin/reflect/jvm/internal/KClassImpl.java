package kotlin.reflect.jvm.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.b21;
import defpackage.d20;
import defpackage.fc;
import defpackage.md;
import defpackage.pq0;
import defpackage.tr;
import defpackage.v40;
import defpackage.wp;
import io.jsonwebtoken.JwtParser;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations;
import kotlin.reflect.jvm.internal.impl.builtins.CompanionObjectMapping;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassDescriptor;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKind;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.Java16SealedRecordLoader;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.km.Attributes;
import kotlin.reflect.jvm.internal.impl.km.ClassKind;
import kotlin.reflect.jvm.internal.impl.km.InconsistentKotlinMetadataException;
import kotlin.reflect.jvm.internal.impl.km.KmClass;
import kotlin.reflect.jvm.internal.impl.km.KmClassifier;
import kotlin.reflect.jvm.internal.impl.km.KmType;
import kotlin.reflect.jvm.internal.impl.km.KmTypeParameter;
import kotlin.reflect.jvm.internal.impl.km.KmTypeProjection;
import kotlin.reflect.jvm.internal.impl.km.KmVariance;
import kotlin.reflect.jvm.internal.impl.km.Modality;
import kotlin.reflect.jvm.internal.impl.km.Visibility;
import kotlin.reflect.jvm.internal.impl.km.internal.EnumFlagDelegate;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadersKt;
import kotlin.reflect.jvm.internal.impl.km.jvm.KotlinClassMetadata;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.types.DescriptorKType;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\u00020\u00052\u00020\u0006:\u0003%&'B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\t\u0010\nR\u0011\u0010\u000e\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020\u001b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001dR\u0014\u0010$\u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006("}, d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl;", "", "T", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;", "Ljava/lang/Class;", "jClass", "<init>", "(Ljava/lang/Class;)V", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/km/KmClass;", "getKmClass", "()Lkotlin/metadata/KmClass;", "kmClass", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "getClassId", "()Lorg/jetbrains/kotlin/name/ClassId;", "classId", "Lkotlin/reflect/jvm/internal/impl/km/ClassKind;", "getClassKind$kotlin_reflection", "()Lkotlin/metadata/ClassKind;", "classKind", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getMemberScope$kotlin_reflection", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "memberScope", "getStaticScope$kotlin_reflection", "staticScope", "Lkotlin/reflect/jvm/internal/impl/km/Modality;", "getModality", "()Lkotlin/metadata/Modality;", "modality", "Data", "MemberBelonginess", "Companion", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KClassImpl<T> extends KDeclarationContainerImpl implements KClass<T>, KTypeParameterOwnerImpl, TypeConstructorMarker {
    public static final HashSet g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class f72090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f72091f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl$Companion;", "", "", "", "SPECIAL_JVM_ANNOTATION_NAMES", "Ljava/util/Set;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "<init>", "(Lkotlin/reflect/jvm/internal/KClassImpl;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class Data extends KDeclarationContainerImpl.Data {
        public static final /* synthetic */ KProperty[] u;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Lazy f72094c;
        public final ReflectProperties.LazySoftVal d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72095e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72096f;
        public final ReflectProperties.LazySoftVal g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72097h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Lazy f72098i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72099j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ReflectProperties.LazySoftVal f72100k;
        public final ReflectProperties.LazySoftVal l;
        public final ReflectProperties.LazySoftVal m;
        public final ReflectProperties.LazySoftVal n;
        public final ReflectProperties.LazySoftVal o;
        public final ReflectProperties.LazySoftVal p;
        public final ReflectProperties.LazySoftVal q;
        public final ReflectProperties.LazySoftVal r;
        public final ReflectProperties.LazySoftVal s;

        static {
            PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(Data.class, "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", 0);
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            u = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(Data.class, "annotations", "getAnnotations()Ljava/util/List;", 0, reflectionFactory), tr.q(Data.class, "simpleName", "getSimpleName()Ljava/lang/String;", 0, reflectionFactory), tr.q(Data.class, "qualifiedName", "getQualifiedName()Ljava/lang/String;", 0, reflectionFactory), tr.q(Data.class, "constructors", "getConstructors()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "nestedClasses", "getNestedClasses()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "typeParameters", "getTypeParameters()Ljava/util/List;", 0, reflectionFactory), tr.q(Data.class, "typeParameterTable", "getTypeParameterTable()Lkotlin/reflect/jvm/internal/TypeParameterTable;", 0, reflectionFactory), tr.q(Data.class, "supertypes", "getSupertypes()Ljava/util/List;", 0, reflectionFactory), tr.q(Data.class, "sealedSubclasses", "getSealedSubclasses()Ljava/util/List;", 0, reflectionFactory), tr.q(Data.class, "declaredNonStaticMembers", "getDeclaredNonStaticMembers()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "declaredStaticMembers", "getDeclaredStaticMembers()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "inheritedNonStaticMembers", "getInheritedNonStaticMembers()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "inheritedStaticMembers", "getInheritedStaticMembers()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "allNonStaticMembers", "getAllNonStaticMembers()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "allStaticMembers", "getAllStaticMembers()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "declaredMembers", "getDeclaredMembers()Ljava/util/Collection;", 0, reflectionFactory), tr.q(Data.class, "allMembers", "getAllMembers()Ljava/util/Collection;", 0, reflectionFactory)};
        }

        public Data() {
            super(KClassImpl.this);
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            this.f72094c = LazyKt.a(lazyThreadSafetyMode, new Function0(KClassImpl.this, this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72101b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KClassImpl.Data f72102c;

                {
                    this.f72101b = kClassImpl;
                    this.f72102c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KotlinClassMetadata fileFacade;
                    String string;
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    if (SystemPropertiesKt.f72182b) {
                        Metadata metadata = (Metadata) this.f72101b.f72090e.getAnnotation(Metadata.class);
                        if (metadata != null) {
                            KotlinClassMetadata.f72802a.getClass();
                            if (metadata.mv().length == 0) {
                                md.n("Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.");
                                return null;
                            }
                            MetadataVersion metadataVersion = new MetadataVersion(metadata.mv(), (8 & metadata.xi()) != 0);
                            boolean zA = metadataVersion.a(1, 1, 0);
                            if (!zA) {
                                if (zA) {
                                    StringBuilder sb = new StringBuilder("while maximum supported version is ");
                                    sb.append(metadataVersion.f73585f ? MetadataVersion.g : MetadataVersion.f73584h);
                                    sb.append(". To support newer versions, update the kotlin-metadata-jvm library.");
                                    string = sb.toString();
                                } else {
                                    string = "while minimum supported version is 1.1.0 (Kotlin 1.0).";
                                }
                                b21.s("Provided Metadata instance has version ", metadataVersion, ", ", string);
                                return null;
                            }
                            try {
                                int iK = metadata.k();
                                if (iK == 1) {
                                    fileFacade = new KotlinClassMetadata.Class(metadata, true);
                                } else if (iK == 2) {
                                    fileFacade = new KotlinClassMetadata.FileFacade(metadata, true);
                                } else if (iK == 3) {
                                    fileFacade = new KotlinClassMetadata.SyntheticClass(metadata, true);
                                } else if (iK != 4) {
                                    fileFacade = iK != 5 ? new KotlinClassMetadata.Unknown(metadata, true) : new KotlinClassMetadata.MultiFileClassPart(metadata, true);
                                } else {
                                    fileFacade = new KotlinClassMetadata.MultiFileClassFacade(metadata, true);
                                }
                                KotlinClassMetadata.Class r0 = fileFacade instanceof KotlinClassMetadata.Class ? (KotlinClassMetadata.Class) fileFacade : null;
                                if (r0 != null) {
                                    return r0.f72803b;
                                }
                            } catch (Throwable th) {
                                if ((th instanceof IllegalArgumentException) || (th instanceof VirtualMachineError) || (th instanceof ThreadDeath)) {
                                    throw th;
                                }
                                throw new InconsistentKotlinMetadataException("Exception occurred when reading Kotlin metadata", th);
                            }
                        }
                    } else {
                        ClassDescriptor classDescriptorA = this.f72102c.a();
                        if (classDescriptorA instanceof FunctionClassDescriptor) {
                            FunctionClassDescriptor functionClassDescriptor = (FunctionClassDescriptor) classDescriptorA;
                            FunctionTypeKind functionTypeKind = functionClassDescriptor.f72288i;
                            if (!(functionTypeKind instanceof FunctionTypeKind.Function)) {
                                wp.f("Unsupported function type kind: ", functionTypeKind, " (", classDescriptorA);
                                return null;
                            }
                            int i2 = functionClassDescriptor.f72289j;
                            KmClass kmClass = new KmClass();
                            kmClass.f72692b = pq0.k(i2, "kotlin/Function");
                            ClassKind classKind = ClassKind.INTERFACE;
                            KProperty[] kPropertyArr2 = Attributes.f72643a;
                            classKind.getClass();
                            EnumFlagDelegate enumFlagDelegate = Attributes.d;
                            KProperty[] kPropertyArr3 = Attributes.f72643a;
                            enumFlagDelegate.b(kmClass, kPropertyArr3[9], classKind);
                            Modality modality = Modality.ABSTRACT;
                            modality.getClass();
                            Attributes.f72644b.b(kmClass, kPropertyArr3[7], modality);
                            Visibility visibility = Visibility.PUBLIC;
                            visibility.getClass();
                            Attributes.f72645c.b(kmClass, kPropertyArr3[8], visibility);
                            ArrayList arrayList = kmClass.f72693c;
                            if (1 <= i2) {
                                int i3 = 1;
                                while (true) {
                                    arrayList.add(new KmTypeParameter(pq0.k(i3, "P"), i3, KmVariance.IN));
                                    if (i3 == i2) {
                                        break;
                                    }
                                    i3++;
                                }
                            }
                            int i4 = i2 + 1;
                            arrayList.add(new KmTypeParameter("R", i4, KmVariance.OUT));
                            KmType kmType = new KmType();
                            kmType.f72738b = new KmClassifier.Class("kotlin/Function");
                            KmVariance kmVariance = KmVariance.INVARIANT;
                            KmType kmType2 = new KmType();
                            kmType2.f72738b = new KmClassifier.TypeParameter(i4);
                            kmType.f72739c.add(new KmTypeProjection(kmVariance, kmType2));
                            kmClass.d.add(kmType);
                            return kmClass;
                        }
                        DeserializedClassDescriptor deserializedClassDescriptor = classDescriptorA instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) classDescriptorA : null;
                        if (deserializedClassDescriptor != null) {
                            return ReadersKt.c(deserializedClassDescriptor.g, deserializedClassDescriptor.n.f73999b, false, 6);
                        }
                    }
                    return null;
                }
            });
            this.d = ReflectProperties.a(null, new Function0(KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72103b;

                {
                    this.f72103b = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    ClassDescriptor classDescriptorA;
                    KotlinClassHeader kotlinClassHeader;
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    HashSet hashSet = KClassImpl.g;
                    KClassImpl kClassImpl = this.f72103b;
                    ClassId classIdU = kClassImpl.U();
                    Class cls = kClassImpl.f72090e;
                    ReflectProperties.LazySoftVal lazySoftVal = ((KClassImpl.Data) kClassImpl.f72091f.getF71699b()).f72141a;
                    KProperty kProperty = KDeclarationContainerImpl.Data.f72140b[0];
                    Object objMo47invoke = lazySoftVal.mo47invoke();
                    objMo47invoke.getClass();
                    RuntimeModuleData runtimeModuleData = (RuntimeModuleData) objMo47invoke;
                    DeserializationComponents deserializationComponents = runtimeModuleData.f72587a;
                    ModuleDescriptor moduleDescriptor = deserializationComponents.f73989b;
                    if (classIdU.f73677c && cls.isAnnotationPresent(Metadata.class)) {
                        deserializationComponents.getClass();
                        ClassDeserializer classDeserializer = deserializationComponents.u;
                        ClassDeserializer.Companion companion = ClassDeserializer.f73981c;
                        classDescriptorA = classDeserializer.a(classIdU, null);
                    } else {
                        classDescriptorA = FindClassInModuleKt.a(moduleDescriptor, classIdU);
                    }
                    if (classDescriptorA != null) {
                        return classDescriptorA;
                    }
                    if (cls.isSynthetic()) {
                        return KClassImpl.T(classIdU, runtimeModuleData);
                    }
                    ReflectKotlinClass.f72579c.getClass();
                    ReflectKotlinClass reflectKotlinClassA = ReflectKotlinClass.Factory.a(cls);
                    KotlinClassHeader.Kind kind = (reflectKotlinClassA == null || (kotlinClassHeader = reflectKotlinClassA.f72581b) == null) ? null : kotlinClassHeader.f73275a;
                    switch (kind == null ? -1 : KClassImpl.WhenMappings.f72133a[kind.ordinal()]) {
                        case -1:
                        case 6:
                            wp.f("Unresolved class: ", cls, " (kind = ", kind);
                            return null;
                        case 0:
                        default:
                            v40.g();
                            return null;
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            return KClassImpl.T(classIdU, runtimeModuleData);
                        case 5:
                            wp.f("Unknown class: ", cls, " (kind = ", kind);
                            return null;
                    }
                }
            });
            this.f72095e = ReflectProperties.a(null, new Function0(KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72116b;

                {
                    this.f72116b = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    Annotation[] annotations = this.f72116b.f72090e.getAnnotations();
                    annotations.getClass();
                    ArrayList arrayList = new ArrayList();
                    for (Annotation annotation : annotations) {
                        if (!KClassImpl.g.contains(JvmClassMappingKt.b(JvmClassMappingKt.a(annotation)).getName())) {
                            arrayList.add(annotation);
                        }
                    }
                    return UtilKt.k(arrayList);
                }
            });
            this.f72096f = ReflectProperties.a(null, new Function0(KClassImpl.this, this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72121b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KClassImpl.Data f72122c;

                {
                    this.f72121b = kClassImpl;
                    this.f72122c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl kClassImpl = this.f72121b;
                    if (kClassImpl.f72090e.isAnonymousClass()) {
                        return null;
                    }
                    ClassId classIdU = kClassImpl.U();
                    if (!classIdU.f73677c) {
                        String strB = classIdU.f().b();
                        strB.getClass();
                        return strB;
                    }
                    Class cls = kClassImpl.f72090e;
                    this.f72122c.getClass();
                    String simpleName = cls.getSimpleName();
                    Method enclosingMethod = cls.getEnclosingMethod();
                    if (enclosingMethod != null) {
                        return StringsKt.Q(simpleName, enclosingMethod.getName() + '$', simpleName);
                    }
                    Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                    if (enclosingConstructor == null) {
                        int iU = StringsKt.u(simpleName, '$', 0, 6);
                        return iU == -1 ? simpleName : simpleName.substring(iU + 1, simpleName.length());
                    }
                    return StringsKt.Q(simpleName, enclosingConstructor.getName() + '$', simpleName);
                }
            });
            this.g = ReflectProperties.a(null, new Function0(KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$4

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72123b;

                {
                    this.f72123b = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl kClassImpl = this.f72123b;
                    if (kClassImpl.f72090e.isAnonymousClass()) {
                        return null;
                    }
                    ClassId classIdU = kClassImpl.U();
                    if (classIdU.f73677c) {
                        return null;
                    }
                    return classIdU.a().f73679a.f73683a;
                }
            });
            this.f72097h = ReflectProperties.a(null, new Function0(KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$5

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72124b;

                {
                    this.f72124b = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl kClassImpl = this.f72124b;
                    Collection collectionI = kClassImpl.I();
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(collectionI, 10));
                    Iterator it = collectionI.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new DescriptorKFunction(kClassImpl, (ConstructorDescriptor) it.next()));
                    }
                    return arrayList;
                }
            });
            ReflectProperties.a(null, new Function0(this, KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$6

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl.Data f72125b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KClassImpl f72126c;

                {
                    this.f72125b = this;
                    this.f72126c = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KmClass kmClassB = this.f72125b.b();
                    KClassImpl kClassImpl = this.f72126c;
                    if (kmClassB == null) {
                        Class<?>[] declaredClasses = kClassImpl.f72090e.getDeclaredClasses();
                        declaredClasses.getClass();
                        ArrayList arrayList = new ArrayList();
                        for (Class<?> cls : declaredClasses) {
                            cls.getClass();
                            arrayList.add(Reflection.f71922a.b(cls));
                        }
                        return arrayList;
                    }
                    String str = kmClassB.f72692b;
                    if (str == null) {
                        Intrinsics.h("name");
                        throw null;
                    }
                    ClassId classIdE = ConvertFromMetadataKt.e(str);
                    ClassLoader classLoaderD = ReflectClassUtilKt.d(kClassImpl.f72090e);
                    ArrayList arrayList2 = kmClassB.f72697i;
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        Class clsG = UtilKt.g(classLoaderD, classIdE.d(Name.e((String) it.next())), 0);
                        KClass kClassB = clsG != null ? Reflection.f71922a.b(clsG) : null;
                        if (kClassB != null) {
                            arrayList3.add(kClassB);
                        }
                    }
                    return arrayList3;
                }
            });
            this.f72098i = LazyKt.a(lazyThreadSafetyMode, new Function0(this, KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$7

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl.Data f72127b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KClassImpl f72128c;

                {
                    this.f72127b = this;
                    this.f72128c = kClassImpl;
                }

                /* JADX WARN: Code duplicated, block: B:26:0x0072  */
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() throws IllegalAccessException, NoSuchFieldException {
                    Field declaredField;
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KmClass kmClassB = this.f72127b.b();
                    if (kmClassB == null || !(Attributes.a(kmClassB) == ClassKind.OBJECT || Attributes.a(kmClassB) == ClassKind.COMPANION_OBJECT)) {
                        return null;
                    }
                    ClassKind classKindA = Attributes.a(kmClassB);
                    ClassKind classKind = ClassKind.COMPANION_OBJECT;
                    KClassImpl kClassImpl = this.f72128c;
                    if (classKindA == classKind) {
                        LinkedHashSet linkedHashSet = CompanionObjectMapping.f72239a;
                        String str = kmClassB.f72692b;
                        if (str == null) {
                            Intrinsics.h("name");
                            throw null;
                        }
                        if (CollectionsKt.u(linkedHashSet, ConvertFromMetadataKt.e(str).e())) {
                            declaredField = kClassImpl.f72090e.getDeclaredField("INSTANCE");
                        } else {
                            Class<?> enclosingClass = kClassImpl.f72090e.getEnclosingClass();
                            String str2 = kmClassB.f72692b;
                            if (str2 == null) {
                                Intrinsics.h("name");
                                throw null;
                            }
                            if (StringsKt.P(str2, FileUtils.HIDDEN_PREFIX, false)) {
                                b21.n("Local class is not supported: ".concat(str2));
                                return null;
                            }
                            String strR = StringsKt.R('/', str2, str2);
                            declaredField = enclosingClass.getDeclaredField(StringsKt.R(JwtParser.SEPARATOR_CHAR, strR, strR));
                        }
                    } else {
                        declaredField = kClassImpl.f72090e.getDeclaredField("INSTANCE");
                    }
                    Object obj = declaredField.get(null);
                    obj.getClass();
                    return obj;
                }
            });
            this.f72099j = ReflectProperties.a(null, new Function0(this, KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$8

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl.Data f72129b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KClassImpl f72130c;

                {
                    this.f72129b = this;
                    this.f72130c = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KClassImpl.Data data = this.f72129b;
                    KClassImpl kClassImpl = this.f72130c;
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    if (SystemPropertiesKt.f72181a) {
                        List listP = data.a().p();
                        listP.getClass();
                        List<TypeParameterDescriptor> list = listP;
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                        for (TypeParameterDescriptor typeParameterDescriptor : list) {
                            typeParameterDescriptor.getClass();
                            arrayList.add(new KTypeParameterImpl(kClassImpl, typeParameterDescriptor));
                        }
                        return arrayList;
                    }
                    if (data.b() != null) {
                        return data.c().f72184a;
                    }
                    TypeVariable[] typeParameters = kClassImpl.f72090e.getTypeParameters();
                    typeParameters.getClass();
                    int iG = MapsKt.g(typeParameters.length);
                    if (iG < 16) {
                        iG = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                    for (TypeVariable typeVariable : typeParameters) {
                        KClassImpl kClassImplC = ConvertFromJavaKt.c(typeVariable);
                        String name = typeVariable.getName();
                        name.getClass();
                        linkedHashMap.put(typeVariable, new KTypeParameterImpl(kClassImplC, name, KVariance.INVARIANT, false));
                    }
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        TypeVariable typeVariable2 = (TypeVariable) entry.getKey();
                        KTypeParameterImpl kTypeParameterImpl = (KTypeParameterImpl) entry.getValue();
                        Type[] bounds = typeVariable2.getBounds();
                        bounds.getClass();
                        ArrayList arrayList2 = new ArrayList(bounds.length);
                        for (Type type : bounds) {
                            type.getClass();
                            arrayList2.add(ConvertFromJavaKt.e(type, linkedHashMap, null, false, 6));
                        }
                        kTypeParameterImpl.getClass();
                        kTypeParameterImpl.g = arrayList2;
                    }
                    return CollectionsKt.y0(linkedHashMap.values());
                }
            });
            this.f72100k = ReflectProperties.a(null, new Function0(this, KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$9

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl.Data f72131b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KClassImpl f72132c;

                {
                    this.f72131b = this;
                    this.f72132c = kClassImpl;
                }

                /* JADX WARN: Code duplicated, block: B:14:0x0043  */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r8v2, types: [java.util.ArrayList] */
                /* JADX WARN: Type inference failed for: r8v3 */
                /* JADX WARN: Type inference failed for: r8v5, types: [java.util.List] */
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KClass kClassB;
                    Lazy lazy;
                    KClassImpl.Data data;
                    KClassImpl.Data data2 = this.f72131b;
                    KClassImpl kClassImpl = this.f72132c;
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    if (data2.b() == null) {
                        return TypeParameterTable.f72183e;
                    }
                    TypeParameterTable.Companion companion = TypeParameterTable.d;
                    KmClass kmClassB = data2.b();
                    kmClassB.getClass();
                    ArrayList<KmTypeParameter> arrayList = kmClassB.f72693c;
                    Class<?> enclosingClass = kClassImpl.f72090e.getEnclosingClass();
                    if (enclosingClass != null) {
                        KmClass kmClassB2 = data2.b();
                        kmClassB2.getClass();
                        if (!Attributes.f72646e.a(kmClassB2, Attributes.f72643a[10])) {
                            enclosingClass = null;
                        }
                        if (enclosingClass != null) {
                            kClassB = Reflection.f71922a.b(enclosingClass);
                        } else {
                            kClassB = null;
                        }
                    } else {
                        kClassB = null;
                    }
                    KClassImpl kClassImpl2 = kClassB instanceof KClassImpl ? (KClassImpl) kClassB : null;
                    TypeParameterTable typeParameterTableC = (kClassImpl2 == null || (lazy = kClassImpl2.f72091f) == null || (data = (KClassImpl.Data) lazy.getF71699b()) == null) ? null : data.c();
                    ClassLoader classLoaderD = ReflectClassUtilKt.d(kClassImpl.f72090e);
                    companion.getClass();
                    arrayList.getClass();
                    classLoaderD.getClass();
                    ArrayList<KTypeParameterImpl> arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                    for (KmTypeParameter kmTypeParameter : arrayList) {
                        arrayList2.add(new KTypeParameterImpl(kClassImpl, kmTypeParameter.f72746b, ConvertFromMetadataKt.g(kmTypeParameter.d), Attributes.f72650j.a(kmTypeParameter, Attributes.f72643a[49])));
                    }
                    IndexingIterable indexingIterableD0 = CollectionsKt.D0(arrayList);
                    int iG = MapsKt.g(CollectionsKt.t(indexingIterableD0, 10));
                    if (iG < 16) {
                        iG = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                    Iterator it = indexingIterableD0.iterator();
                    while (true) {
                        IndexingIterator indexingIterator = (IndexingIterator) it;
                        if (!indexingIterator.f71774b.hasNext()) {
                            break;
                        }
                        IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                        Pair pair = new Pair(Integer.valueOf(((KmTypeParameter) indexedValue.f71772b).f72747c), arrayList2.get(indexedValue.f71771a));
                        linkedHashMap.put(pair.f71705b, pair.f71706c);
                    }
                    TypeParameterTable typeParameterTable = new TypeParameterTable(arrayList2, linkedHashMap, typeParameterTableC, null);
                    int i2 = 0;
                    for (KTypeParameterImpl kTypeParameterImpl : arrayList2) {
                        int i3 = i2 + 1;
                        ArrayList arrayList3 = ((KmTypeParameter) arrayList.get(i2)).f72748e;
                        ?? arrayList4 = new ArrayList(CollectionsKt.t(arrayList3, 10));
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            arrayList4.add(ConvertFromMetadataKt.f((KmType) it2.next(), classLoaderD, typeParameterTable, null));
                        }
                        if (arrayList4.isEmpty()) {
                            arrayList4 = CollectionsKt.O(StandardKTypes.f72179b);
                        }
                        kTypeParameterImpl.getClass();
                        kTypeParameterImpl.g = (List) arrayList4;
                        i2 = i3;
                    }
                    return typeParameterTable;
                }
            });
            this.l = ReflectProperties.a(null, new Function0(KClassImpl.this, this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$10

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72104b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KClassImpl.Data f72105c;

                {
                    this.f72104b = kClassImpl;
                    this.f72105c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    String str;
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    final KClassImpl kClassImpl = this.f72104b;
                    Class cls = kClassImpl.f72090e;
                    if (Intrinsics.c(cls, Object.class)) {
                        return EmptyList.f71768b;
                    }
                    boolean z = SystemPropertiesKt.f72181a;
                    KClassImpl.Data data = this.f72105c;
                    if (z) {
                        Collection<KotlinType> collectionI = data.a().j().i();
                        collectionI.getClass();
                        ArrayList arrayList = new ArrayList(collectionI.size());
                        final KClassImpl kClassImpl2 = KClassImpl.this;
                        for (final KotlinType kotlinType : collectionI) {
                            kotlinType.getClass();
                            arrayList.add(new DescriptorKType(kotlinType, new Function0(kotlinType, kClassImpl2) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$20

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public final KotlinType f72117b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public final KClassImpl f72118c;

                                {
                                    this.f72117b = kotlinType;
                                    this.f72118c = kClassImpl2;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    KProperty[] kPropertyArr2 = KClassImpl.Data.u;
                                    ClassifierDescriptor classifierDescriptorY = this.f72117b.H0().y();
                                    if (!(classifierDescriptorY instanceof ClassDescriptor)) {
                                        d20.c(classifierDescriptorY, "Supertype not a class: ");
                                        return null;
                                    }
                                    Class clsI = UtilKt.i((ClassDescriptor) classifierDescriptorY);
                                    KClassImpl kClassImpl3 = this.f72118c;
                                    if (clsI == null) {
                                        d20.m("Unsupported superclass of ", kClassImpl3, ": ", classifierDescriptorY);
                                        return null;
                                    }
                                    Class cls2 = kClassImpl3.f72090e;
                                    if (Intrinsics.c(cls2.getSuperclass(), clsI)) {
                                        Type genericSuperclass = cls2.getGenericSuperclass();
                                        genericSuperclass.getClass();
                                        return genericSuperclass;
                                    }
                                    Class<?>[] interfaces = cls2.getInterfaces();
                                    interfaces.getClass();
                                    int iE = ArraysKt.E(interfaces, clsI);
                                    if (iE < 0) {
                                        d20.m("No superclass of ", kClassImpl3, " in Java reflection for ", classifierDescriptorY);
                                        return null;
                                    }
                                    Type type = cls2.getGenericInterfaces()[iE];
                                    type.getClass();
                                    return type;
                                }
                            }));
                        }
                        ClassDescriptor classDescriptorA = data.a();
                        if (classDescriptorA == null) {
                            KotlinBuiltIns.a(107);
                            throw null;
                        }
                        Name name = KotlinBuiltIns.f72242f;
                        if (!KotlinBuiltIns.b(classDescriptorA, StandardNames.FqNames.f72271a) && !KotlinBuiltIns.b(classDescriptorA, StandardNames.FqNames.f72272b)) {
                            if (arrayList.isEmpty()) {
                                arrayList.add(StandardKTypes.f72178a);
                            } else {
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    KClassifier f74442c = ((KType) it.next()).getF74442c();
                                    KClassImpl kClassImpl3 = f74442c instanceof KClassImpl ? (KClassImpl) f74442c : null;
                                    if (kClassImpl3 == null || (kClassImpl3.V() != ClassKind.INTERFACE && kClassImpl3.V() != ClassKind.ANNOTATION_CLASS)) {
                                    }
                                }
                                arrayList.add(StandardKTypes.f72178a);
                            }
                        }
                        return kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.a(arrayList);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    KmClass kmClassB = data.b();
                    ArrayList<KmType> arrayList3 = kmClassB != null ? kmClassB.d : null;
                    if (arrayList3 != null) {
                        for (KmType kmType : arrayList3) {
                            KmClassifier kmClassifierA = kmType.a();
                            KmClassifier.Class r7 = kmClassifierA instanceof KmClassifier.Class ? (KmClassifier.Class) kmClassifierA : null;
                            if (r7 == null || (str = r7.f72700a) == null) {
                                StringBuilder sb = new StringBuilder("Supertype of ");
                                sb.append(kClassImpl);
                                KmClassifier kmClassifierA2 = kmType.a();
                                sb.append(" not a class: ");
                                sb.append(kmClassifierA2);
                                throw new KotlinReflectionInternalError(sb.toString());
                            }
                            final ClassId classIdE = ConvertFromMetadataKt.e(str);
                            final Class clsG = UtilKt.g(ReflectClassUtilKt.d(cls), classIdE, 0);
                            if (clsG == null) {
                                d20.m("Unsupported superclass of ", kClassImpl, ": ", classIdE);
                                return null;
                            }
                            arrayList2.add(ConvertFromMetadataKt.f(kmType, ReflectClassUtilKt.d(cls), data.c(), new Function0(kClassImpl, clsG, classIdE) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$21

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public final KClassImpl f72119b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public final Class f72120c;
                                public final ClassId d;

                                {
                                    this.f72119b = kClassImpl;
                                    this.f72120c = clsG;
                                    this.d = classIdE;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    KProperty[] kPropertyArr2 = KClassImpl.Data.u;
                                    KClassImpl kClassImpl4 = this.f72119b;
                                    Class superclass = kClassImpl4.f72090e.getSuperclass();
                                    Class cls2 = this.f72120c;
                                    boolean zC = Intrinsics.c(superclass, cls2);
                                    Class cls3 = kClassImpl4.f72090e;
                                    if (zC) {
                                        Type genericSuperclass = cls3.getGenericSuperclass();
                                        genericSuperclass.getClass();
                                        return genericSuperclass;
                                    }
                                    Class<?>[] interfaces = cls3.getInterfaces();
                                    interfaces.getClass();
                                    int iE = ArraysKt.E(interfaces, cls2);
                                    if (iE < 0) {
                                        d20.m("No superclass of ", kClassImpl4, " in Java reflection for ", this.d);
                                        return null;
                                    }
                                    Type type = cls3.getGenericInterfaces()[iE];
                                    type.getClass();
                                    return type;
                                }
                            }));
                        }
                        if (cls.isArray()) {
                            arrayList2.add(StandardKTypes.f72180c);
                        }
                        if (Serializable.class.isAssignableFrom(cls)) {
                            KType kType = StandardKTypes.d;
                            if (!arrayList2.contains(kType)) {
                                ReflectProperties.LazySoftVal lazySoftVal = data.g;
                                KProperty kProperty = KClassImpl.Data.u[3];
                                String str2 = (String) lazySoftVal.mo47invoke();
                                if (str2 != null && StringsKt.P(str2, "kotlin.", false)) {
                                    arrayList2.add(kType);
                                }
                            }
                        }
                    } else {
                        Type genericSuperclass = cls.getGenericSuperclass();
                        if (genericSuperclass != null) {
                            if (genericSuperclass.equals(Object.class)) {
                                genericSuperclass = null;
                            }
                            if (genericSuperclass != null) {
                                arrayList2.add(ConvertFromJavaKt.e(genericSuperclass, MapsKt.c(), TypeNullability.NOT_NULL, false, 4));
                            }
                        }
                        Type[] genericInterfaces = cls.getGenericInterfaces();
                        genericInterfaces.getClass();
                        for (Type type : genericInterfaces) {
                            type.getClass();
                            arrayList2.add(ConvertFromJavaKt.e(type, MapsKt.c(), TypeNullability.NOT_NULL, false, 4));
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        arrayList2.add(StandardKTypes.f72178a);
                    } else {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            KClassifier f74442c2 = ((KType) it2.next()).getF74442c();
                            KClassImpl kClassImpl4 = f74442c2 instanceof KClassImpl ? (KClassImpl) f74442c2 : null;
                            if (kClassImpl4 == null || (kClassImpl4.V() != ClassKind.INTERFACE && kClassImpl4.V() != ClassKind.ANNOTATION_CLASS)) {
                            }
                        }
                        arrayList2.add(StandardKTypes.f72178a);
                    }
                    return kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.a(arrayList2);
                }
            });
            ReflectProperties.a(null, new Function0(KClassImpl.this, this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$11

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72106b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final KClassImpl.Data f72107c;

                {
                    this.f72106b = kClassImpl;
                    this.f72107c = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.collections.EmptyList] */
                /* JADX WARN: Type inference failed for: r0v5 */
                /* JADX WARN: Type inference failed for: r0v6, types: [kotlin.collections.EmptyList] */
                /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList] */
                /* JADX WARN: Type inference failed for: r0v9, types: [java.util.ArrayList] */
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() throws IllegalAccessException, InvocationTargetException {
                    Object arrayList;
                    Class[] clsArr;
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    Class cls = this.f72106b.f72090e;
                    ClassLoader classLoaderD = ReflectClassUtilKt.d(cls);
                    KmClass kmClassB = this.f72107c.b();
                    if (kmClassB != null) {
                        ArrayList arrayList2 = kmClassB.l;
                        arrayList = new ArrayList();
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            KClass kClassB = ConvertFromMetadataKt.b(classLoaderD, (String) it.next());
                            if (kClassB != null) {
                                arrayList.add(kClassB);
                            }
                        }
                    } else if (Intrinsics.c(Java16SealedRecordLoader.b(cls), Boolean.TRUE)) {
                        Method method = Java16SealedRecordLoader.a().f72596b;
                        if (method == null) {
                            clsArr = null;
                        } else {
                            Object objInvoke = method.invoke(cls, null);
                            objInvoke.getClass();
                            clsArr = (Class[]) objInvoke;
                        }
                        if (clsArr != null) {
                            arrayList = new ArrayList(clsArr.length);
                            for (Class cls2 : clsArr) {
                                arrayList.add(JvmClassMappingKt.e(cls2));
                            }
                        } else {
                            arrayList = 0;
                        }
                        if (arrayList == 0) {
                            arrayList = EmptyList.f71768b;
                        }
                    } else {
                        arrayList = EmptyList.f71768b;
                    }
                    arrayList.getClass();
                    return arrayList;
                }
            });
            this.m = ReflectProperties.a(null, new Function0(KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$12

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72108b;

                {
                    this.f72108b = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl kClassImpl = this.f72108b;
                    return KClassImpl.S(kClassImpl, kClassImpl.W().o().n(), KClassImpl.MemberBelonginess.DECLARED);
                }
            });
            this.n = ReflectProperties.a(null, new Function0(KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$13

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72109b;

                {
                    this.f72109b = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl kClassImpl = this.f72109b;
                    MemberScope memberScopeE0 = kClassImpl.W().e0();
                    memberScopeE0.getClass();
                    return KClassImpl.S(kClassImpl, memberScopeE0, KClassImpl.MemberBelonginess.DECLARED);
                }
            });
            this.o = ReflectProperties.a(null, new Function0(KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$14

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72110b;

                {
                    this.f72110b = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl kClassImpl = this.f72110b;
                    return KClassImpl.S(kClassImpl, kClassImpl.W().o().n(), KClassImpl.MemberBelonginess.INHERITED);
                }
            });
            this.p = ReflectProperties.a(null, new Function0(KClassImpl.this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$15

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl f72111b;

                {
                    this.f72111b = kClassImpl;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl kClassImpl = this.f72111b;
                    MemberScope memberScopeE0 = kClassImpl.W().e0();
                    memberScopeE0.getClass();
                    return KClassImpl.S(kClassImpl, memberScopeE0, KClassImpl.MemberBelonginess.INHERITED);
                }
            });
            this.q = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$16

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl.Data f72112b;

                {
                    this.f72112b = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl.Data data = this.f72112b;
                    ReflectProperties.LazySoftVal lazySoftVal = data.m;
                    KProperty[] kPropertyArr2 = KClassImpl.Data.u;
                    KProperty kProperty = kPropertyArr2[10];
                    Object objMo47invoke = lazySoftVal.mo47invoke();
                    objMo47invoke.getClass();
                    ReflectProperties.LazySoftVal lazySoftVal2 = data.o;
                    KProperty kProperty2 = kPropertyArr2[12];
                    Object objMo47invoke2 = lazySoftVal2.mo47invoke();
                    objMo47invoke2.getClass();
                    return CollectionsKt.Y((Collection) objMo47invoke, (Collection) objMo47invoke2);
                }
            });
            this.r = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$17

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl.Data f72113b;

                {
                    this.f72113b = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl.Data data = this.f72113b;
                    ReflectProperties.LazySoftVal lazySoftVal = data.n;
                    KProperty[] kPropertyArr2 = KClassImpl.Data.u;
                    KProperty kProperty = kPropertyArr2[11];
                    Object objMo47invoke = lazySoftVal.mo47invoke();
                    objMo47invoke.getClass();
                    ReflectProperties.LazySoftVal lazySoftVal2 = data.p;
                    KProperty kProperty2 = kPropertyArr2[13];
                    Object objMo47invoke2 = lazySoftVal2.mo47invoke();
                    objMo47invoke2.getClass();
                    return CollectionsKt.Y((Collection) objMo47invoke, (Collection) objMo47invoke2);
                }
            });
            ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$18

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl.Data f72114b;

                {
                    this.f72114b = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl.Data data = this.f72114b;
                    ReflectProperties.LazySoftVal lazySoftVal = data.m;
                    KProperty[] kPropertyArr2 = KClassImpl.Data.u;
                    KProperty kProperty = kPropertyArr2[10];
                    Object objMo47invoke = lazySoftVal.mo47invoke();
                    objMo47invoke.getClass();
                    ReflectProperties.LazySoftVal lazySoftVal2 = data.n;
                    KProperty kProperty2 = kPropertyArr2[11];
                    Object objMo47invoke2 = lazySoftVal2.mo47invoke();
                    objMo47invoke2.getClass();
                    return CollectionsKt.Y((Collection) objMo47invoke, (Collection) objMo47invoke2);
                }
            });
            this.s = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$$Lambda$19

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KClassImpl.Data f72115b;

                {
                    this.f72115b = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    KProperty[] kPropertyArr = KClassImpl.Data.u;
                    KClassImpl.Data data = this.f72115b;
                    ReflectProperties.LazySoftVal lazySoftVal = data.q;
                    KProperty[] kPropertyArr2 = KClassImpl.Data.u;
                    KProperty kProperty = kPropertyArr2[14];
                    Object objMo47invoke = lazySoftVal.mo47invoke();
                    objMo47invoke.getClass();
                    ReflectProperties.LazySoftVal lazySoftVal2 = data.r;
                    KProperty kProperty2 = kPropertyArr2[15];
                    Object objMo47invoke2 = lazySoftVal2.mo47invoke();
                    objMo47invoke2.getClass();
                    return CollectionsKt.Y((Collection) objMo47invoke, (Collection) objMo47invoke2);
                }
            });
        }

        public final ClassDescriptor a() {
            KProperty kProperty = u[0];
            Object objMo47invoke = this.d.mo47invoke();
            objMo47invoke.getClass();
            return (ClassDescriptor) objMo47invoke;
        }

        public final KmClass b() {
            return (KmClass) this.f72094c.getF71699b();
        }

        public final TypeParameterTable c() {
            KProperty kProperty = u[7];
            Object objMo47invoke = this.f72100k.mo47invoke();
            objMo47invoke.getClass();
            return (TypeParameterTable) objMo47invoke;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl$MemberBelonginess;", "", "DECLARED", "INHERITED", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MemberBelonginess {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ MemberBelonginess[] $VALUES;
        public static final MemberBelonginess DECLARED;
        public static final MemberBelonginess INHERITED;

        static {
            MemberBelonginess memberBelonginess = new MemberBelonginess("DECLARED", 0);
            DECLARED = memberBelonginess;
            MemberBelonginess memberBelonginess2 = new MemberBelonginess("INHERITED", 1);
            INHERITED = memberBelonginess2;
            MemberBelonginess[] memberBelonginessArr = {memberBelonginess, memberBelonginess2};
            $VALUES = memberBelonginessArr;
            $ENTRIES = EnumEntriesKt.a(memberBelonginessArr);
        }

        public static MemberBelonginess valueOf(String str) {
            return (MemberBelonginess) Enum.valueOf(MemberBelonginess.class, str);
        }

        public static MemberBelonginess[] values() {
            return (MemberBelonginess[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72133a;

        static {
            int[] iArr = new int[KotlinClassHeader.Kind.values().length];
            try {
                iArr[KotlinClassHeader.Kind.FILE_FACADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS_PART.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[KotlinClassHeader.Kind.SYNTHETIC_CLASS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[KotlinClassHeader.Kind.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[KotlinClassHeader.Kind.CLASS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f72133a = iArr;
        }
    }

    static {
        new Companion(null);
        LinkedHashSet linkedHashSet = SpecialJvmAnnotations.f72232a;
        HashSet hashSet = new HashSet();
        Iterator<T> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            hashSet.add(((ClassId) it.next()).a().f73679a.toString());
        }
        g = hashSet;
    }

    public KClassImpl(Class<T> cls) {
        cls.getClass();
        this.f72090e = cls;
        this.f72091f = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final KClassImpl f72092b;

            {
                this.f72092b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                HashSet hashSet = KClassImpl.g;
                return new KClassImpl.Data();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005c  */
    public static final Collection S(KClassImpl kClassImpl, MemberScope memberScope, MemberBelonginess memberBelonginess) {
        DescriptorKCallable descriptorKCallable;
        kClassImpl.getClass();
        KClassImpl$getMembers$visitor$1 kClassImpl$getMembers$visitor$1 = new KClassImpl$getMembers$visitor$1(kClassImpl);
        Collection<DeclarationDescriptor> collectionA = ResolutionScope.DefaultImpls.a(memberScope, null, 3);
        ArrayList arrayList = new ArrayList();
        for (DeclarationDescriptor declarationDescriptor : collectionA) {
            if (declarationDescriptor instanceof CallableMemberDescriptor) {
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) declarationDescriptor;
                if (Intrinsics.c(callableMemberDescriptor.getVisibility(), DescriptorVisibilities.f72371h)) {
                    descriptorKCallable = null;
                } else {
                    memberBelonginess.getClass();
                    CallableMemberDescriptor.Kind kindE = callableMemberDescriptor.e();
                    kindE.getClass();
                    if ((kindE != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) == (memberBelonginess == MemberBelonginess.DECLARED)) {
                        descriptorKCallable = (DescriptorKCallable) declarationDescriptor.v(kClassImpl$getMembers$visitor$1, Unit.f71739a);
                    } else {
                        descriptorKCallable = null;
                    }
                }
            } else {
                descriptorKCallable = null;
            }
            if (descriptorKCallable != null) {
                arrayList.add(descriptorKCallable);
            }
        }
        return CollectionsKt.y0(arrayList);
    }

    public static ClassDescriptorImpl T(ClassId classId, RuntimeModuleData runtimeModuleData) {
        DeserializationComponents deserializationComponents = runtimeModuleData.f72587a;
        ClassDescriptorImpl classDescriptorImpl = new ClassDescriptorImpl(new EmptyPackageFragmentDescriptor(deserializationComponents.f73989b, classId.f73675a), classId.f(), kotlin.reflect.jvm.internal.impl.descriptors.Modality.FINAL, kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.CLASS, CollectionsKt.O(deserializationComponents.f73989b.g().k("Any").o()), SourceElement.f72405a, false, deserializationComponents.f73988a);
        classDescriptorImpl.F0(new KClassImpl$createSyntheticClass$1$1(deserializationComponents.f73988a, classDescriptorImpl), EmptySet.f71770b, null);
        return classDescriptorImpl;
    }

    @Override // kotlin.reflect.KClass
    public final String B() {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72091f.getF71699b()).f72096f;
        KProperty kProperty = Data.u[2];
        return (String) lazySoftVal.mo47invoke();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection I() {
        ClassDescriptor classDescriptorW = W();
        if (classDescriptorW.e() == kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.INTERFACE || classDescriptorW.e() == kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.OBJECT) {
            return EmptyList.f71768b;
        }
        Collection collectionF = classDescriptorW.f();
        collectionF.getClass();
        return collectionF;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection J(Name name) {
        MemberScope memberScopeN = W().o().n();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        Collection collectionB = memberScopeN.b(name, noLookupLocation);
        MemberScope memberScopeE0 = W().e0();
        memberScopeE0.getClass();
        return CollectionsKt.Y(collectionB, memberScopeE0.b(name, noLookupLocation));
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final PropertyDescriptor K(int i2) {
        Class<?> declaringClass;
        Class cls = this.f72090e;
        if (cls.getSimpleName().equals("DefaultImpls") && (declaringClass = cls.getDeclaringClass()) != null && declaringClass.isInterface()) {
            return ((KClassImpl) Reflection.f71922a.b(declaringClass)).K(i2);
        }
        ClassDescriptor classDescriptorW = W();
        DeserializedClassDescriptor deserializedClassDescriptor = classDescriptorW instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) classDescriptorW : null;
        if (deserializedClassDescriptor != null) {
            ProtoBuf$Class protoBuf$Class = deserializedClassDescriptor.g;
            GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.f73608h;
            generatedExtension.getClass();
            protoBuf$Class.getClass();
            ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) (i2 < protoBuf$Class.m(generatedExtension) ? protoBuf$Class.l(generatedExtension, i2) : null);
            if (protoBuf$Property != null) {
                DeserializationContext deserializationContext = deserializedClassDescriptor.n;
                return (PropertyDescriptor) UtilKt.e(this.f72090e, protoBuf$Property, deserializationContext.f73999b, deserializationContext.d, deserializedClassDescriptor.f74076h, new Function2() { // from class: kotlin.reflect.jvm.internal.KClassImpl$$Lambda$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        MemberDeserializer memberDeserializer = (MemberDeserializer) obj;
                        ProtoBuf$Property protoBuf$Property2 = (ProtoBuf$Property) obj2;
                        HashSet hashSet = KClassImpl.g;
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
    public final Collection M(Name name) {
        MemberScope memberScopeN = W().o().n();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        Collection collectionC = memberScopeN.c(name, noLookupLocation);
        MemberScope memberScopeE0 = W().e0();
        memberScopeE0.getClass();
        return CollectionsKt.Y(collectionC, memberScopeE0.c(name, noLookupLocation));
    }

    public final ClassId U() {
        PrimitiveType primitiveTypeF;
        ClassId classId = RuntimeTypeMapper.f72176a;
        Class cls = this.f72090e;
        cls.getClass();
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            componentType.getClass();
            primitiveTypeF = componentType.isPrimitive() ? JvmPrimitiveType.b(componentType.getSimpleName()).f() : null;
            if (primitiveTypeF != null) {
                return new ClassId(StandardNames.l, primitiveTypeF.d());
            }
            ClassId.Companion companion = ClassId.d;
            FqName fqNameI = StandardNames.FqNames.g.i();
            companion.getClass();
            return ClassId.Companion.b(fqNameI);
        }
        if (cls.equals(Void.TYPE)) {
            return RuntimeTypeMapper.f72176a;
        }
        primitiveTypeF = cls.isPrimitive() ? JvmPrimitiveType.b(cls.getSimpleName()).f() : null;
        if (primitiveTypeF != null) {
            return new ClassId(StandardNames.l, primitiveTypeF.f());
        }
        ClassId classIdA = ReflectClassUtilKt.a(cls);
        if (!classIdA.f73677c) {
            String str = JavaToKotlinClassMap.f72305a;
            FqName fqNameA = classIdA.a();
            fqNameA.getClass();
            ClassId classId2 = (ClassId) JavaToKotlinClassMap.f72310h.get(fqNameA.f73679a);
            if (classId2 != null) {
                return classId2;
            }
        }
        return classIdA;
    }

    public final ClassKind V() {
        ClassKind classKindA;
        KmClass kmClassX = X();
        if (kmClassX != null && (classKindA = Attributes.a(kmClassX)) != null) {
            return classKindA;
        }
        Class cls = this.f72090e;
        if (cls.isAnnotation()) {
            return ClassKind.ANNOTATION_CLASS;
        }
        if (cls.isInterface()) {
            return ClassKind.INTERFACE;
        }
        if (cls.isEnum()) {
            return ClassKind.ENUM_CLASS;
        }
        return cls.getSuperclass().isEnum() ? ClassKind.ENUM_ENTRY : ClassKind.CLASS;
    }

    public final ClassDescriptor W() {
        return ((Data) this.f72091f.getF71699b()).a();
    }

    public final KmClass X() {
        return ((Data) this.f72091f.getF71699b()).b();
    }

    public final Modality Y() {
        Modality modality;
        KmClass kmClassX = X();
        if (kmClassX != null && (modality = (Modality) Attributes.f72644b.a(kmClassX, Attributes.f72643a[7])) != null) {
            return modality;
        }
        Class cls = this.f72090e;
        if (cls.isAnnotation() || cls.isEnum()) {
            return Modality.FINAL;
        }
        if (Intrinsics.c(Java16SealedRecordLoader.b(cls), Boolean.TRUE)) {
            return Modality.SEALED;
        }
        if (Modifier.isAbstract(cls.getModifiers())) {
            return Modality.ABSTRACT;
        }
        return !Modifier.isFinal(cls.getModifiers()) ? Modality.OPEN : Modality.FINAL;
    }

    @Override // kotlin.reflect.KClass
    public final boolean equals(Object obj) {
        return (obj instanceof KClassImpl) && JvmClassMappingKt.c(this).equals(JvmClassMappingKt.c((KClass) obj));
    }

    @Override // kotlin.reflect.KClass
    public final Collection f() {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72091f.getF71699b()).f72097h;
        KProperty kProperty = Data.u[4];
        Object objMo47invoke = lazySoftVal.mo47invoke();
        objMo47invoke.getClass();
        return (Collection) objMo47invoke;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    /* JADX INFO: renamed from: getAnnotations */
    public final List getF74444f() {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72091f.getF71699b()).f72095e;
        KProperty kProperty = Data.u[1];
        Object objMo47invoke = lazySoftVal.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: getTypeParameters */
    public final List getD() {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72091f.getF71699b()).f72099j;
        KProperty kProperty = Data.u[6];
        Object objMo47invoke = lazySoftVal.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }

    @Override // kotlin.reflect.KClass
    public final int hashCode() {
        return JvmClassMappingKt.c(this).hashCode();
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: i */
    public final List getF74432e() {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72091f.getF71699b()).l;
        KProperty kProperty = Data.u[8];
        Object objMo47invoke = lazySoftVal.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }

    @Override // kotlin.reflect.KClass
    public final boolean isAbstract() {
        return Y() == Modality.ABSTRACT;
    }

    @Override // kotlin.reflect.KClass
    public final boolean k() {
        KmClass kmClassX = X();
        if (kmClassX != null) {
            return Attributes.f72646e.a(kmClassX, Attributes.f72643a[10]);
        }
        Class cls = this.f72090e;
        return (cls.getDeclaringClass() == null || Modifier.isStatic(cls.getModifiers())) ? false : true;
    }

    @Override // kotlin.reflect.KClass
    public final boolean m() {
        return Y() == Modality.SEALED;
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    /* JADX INFO: renamed from: q, reason: from getter */
    public final Class getF72090e() {
        return this.f72090e;
    }

    @Override // kotlin.reflect.KClass
    public final boolean r() {
        KmClass kmClassX = X();
        return kmClassX != null && Attributes.f72647f.a(kmClassX, Attributes.f72643a[14]);
    }

    @Override // kotlin.reflect.KClass
    public final Object s() {
        return ((Data) this.f72091f.getF71699b()).f72098i.getF71699b();
    }

    @Override // kotlin.reflect.KClass
    public final boolean t(Object obj) {
        List list = ReflectClassUtilKt.f72602a;
        Class cls = this.f72090e;
        cls.getClass();
        Integer num = (Integer) ReflectClassUtilKt.d.get(cls);
        if (num != null) {
            return TypeIntrinsics.f(num.intValue(), obj);
        }
        Class cls2 = (Class) ReflectClassUtilKt.f72604c.get(cls);
        if (cls2 != null) {
            cls = cls2;
        }
        return cls.isInstance(obj);
    }

    public final String toString() {
        ClassId classIdU = U();
        FqName fqName = classIdU.f73675a;
        return "class ".concat((fqName.f73679a.c() ? "" : fc.l(new StringBuilder(), fqName.f73679a.f73683a, JwtParser.SEPARATOR_CHAR)).concat(StringsKt.I(classIdU.f73676b.f73679a.f73683a, JwtParser.SEPARATOR_CHAR, '$')));
    }

    @Override // kotlin.reflect.KClass
    public final Collection v() {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72091f.getF71699b()).s;
        KProperty kProperty = Data.u[17];
        Object objMo47invoke = lazySoftVal.mo47invoke();
        objMo47invoke.getClass();
        return (Collection) objMo47invoke;
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: w */
    public final String getF74431c() {
        ReflectProperties.LazySoftVal lazySoftVal = ((Data) this.f72091f.getF71699b()).g;
        KProperty kProperty = Data.u[3];
        return (String) lazySoftVal.mo47invoke();
    }
}
