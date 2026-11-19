package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.v7;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectAnnotationSource;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader.AnnotationsContainer;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.ClassMapperLite;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractBinaryClassAnnotationLoader<A, S extends AnnotationsContainer<? extends A>> implements AnnotationLoader<A> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f73204b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KotlinClassFinder f73205a;

    public static abstract class AnnotationsContainer<A> {
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:50:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:56:0x00cf  */
        /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
        public static KotlinJvmBinaryClass a(ProtoContainer protoContainer, boolean z, boolean z2, Boolean bool, boolean z3, KotlinClassFinder kotlinClassFinder, MetadataVersion metadataVersion) {
            JvmPackagePartSource jvmPackagePartSource;
            KotlinJvmBinaryClass kotlinJvmBinaryClass;
            ProtoContainer.Class r5;
            ProtoBuf$Class.Kind kind;
            protoContainer.getClass();
            SourceElement sourceElement = protoContainer.f74050c;
            kotlinClassFinder.getClass();
            metadataVersion.getClass();
            if (z) {
                if (bool == null) {
                    throw new IllegalStateException(("isConst should not be null for property (container=" + protoContainer + ')').toString());
                }
                if (protoContainer instanceof ProtoContainer.Class) {
                    ProtoContainer.Class r6 = (ProtoContainer.Class) protoContainer;
                    if (r6.g == ProtoBuf$Class.Kind.INTERFACE) {
                        return KotlinClassFinderKt.a(kotlinClassFinder, r6.f74052f.d(Name.e("DefaultImpls")), metadataVersion);
                    }
                }
                if (bool.booleanValue() && (protoContainer instanceof ProtoContainer.Package)) {
                    JvmPackagePartSource jvmPackagePartSource2 = sourceElement instanceof JvmPackagePartSource ? (JvmPackagePartSource) sourceElement : null;
                    JvmClassName jvmClassName = jvmPackagePartSource2 != null ? jvmPackagePartSource2.f73244c : null;
                    if (jvmClassName != null) {
                        ClassId.Companion companion = ClassId.d;
                        String strD = jvmClassName.d();
                        strD.getClass();
                        String strReplace = strD.replace('/', JwtParser.SEPARATOR_CHAR);
                        strReplace.getClass();
                        FqName fqName = new FqName(strReplace);
                        companion.getClass();
                        return KotlinClassFinderKt.a(kotlinClassFinder, ClassId.Companion.b(fqName), metadataVersion);
                    }
                }
            }
            if (z2 && (protoContainer instanceof ProtoContainer.Class)) {
                ProtoContainer.Class r7 = (ProtoContainer.Class) protoContainer;
                if (r7.g == ProtoBuf$Class.Kind.COMPANION_OBJECT && (r5 = r7.f74051e) != null && ((kind = r5.g) == ProtoBuf$Class.Kind.CLASS || kind == ProtoBuf$Class.Kind.ENUM_CLASS || (z3 && (kind == ProtoBuf$Class.Kind.INTERFACE || kind == ProtoBuf$Class.Kind.ANNOTATION_CLASS)))) {
                    SourceElement sourceElement2 = r5.f74050c;
                    KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = sourceElement2 instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) sourceElement2 : null;
                    if (kotlinJvmBinarySourceElement != null) {
                        return kotlinJvmBinarySourceElement.f73258b;
                    }
                } else if (protoContainer instanceof ProtoContainer.Package) {
                    jvmPackagePartSource = (JvmPackagePartSource) sourceElement;
                    kotlinJvmBinaryClass = jvmPackagePartSource.d;
                    if (kotlinJvmBinaryClass == null) {
                        return KotlinClassFinderKt.a(kotlinClassFinder, jvmPackagePartSource.c(), metadataVersion);
                    }
                    return kotlinJvmBinaryClass;
                }
            } else if ((protoContainer instanceof ProtoContainer.Package) && (sourceElement instanceof JvmPackagePartSource)) {
                jvmPackagePartSource = (JvmPackagePartSource) sourceElement;
                kotlinJvmBinaryClass = jvmPackagePartSource.d;
                if (kotlinJvmBinaryClass == null) {
                    return KotlinClassFinderKt.a(kotlinClassFinder, jvmPackagePartSource.c(), metadataVersion);
                }
                return kotlinJvmBinaryClass;
            }
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class PropertyRelatedElement {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PropertyRelatedElement[] $VALUES;
        public static final PropertyRelatedElement BACKING_FIELD;
        public static final PropertyRelatedElement DELEGATE_FIELD;
        public static final PropertyRelatedElement PROPERTY;

        static {
            PropertyRelatedElement propertyRelatedElement = new PropertyRelatedElement("PROPERTY", 0);
            PROPERTY = propertyRelatedElement;
            PropertyRelatedElement propertyRelatedElement2 = new PropertyRelatedElement("BACKING_FIELD", 1);
            BACKING_FIELD = propertyRelatedElement2;
            PropertyRelatedElement propertyRelatedElement3 = new PropertyRelatedElement("DELEGATE_FIELD", 2);
            DELEGATE_FIELD = propertyRelatedElement3;
            PropertyRelatedElement[] propertyRelatedElementArr = {propertyRelatedElement, propertyRelatedElement2, propertyRelatedElement3};
            $VALUES = propertyRelatedElementArr;
            $ENTRIES = EnumEntriesKt.a(propertyRelatedElementArr);
        }

        public static PropertyRelatedElement valueOf(String str) {
            return (PropertyRelatedElement) Enum.valueOf(PropertyRelatedElement.class, str);
        }

        public static PropertyRelatedElement[] values() {
            return (PropertyRelatedElement[]) $VALUES.clone();
        }
    }

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73206a;

        static {
            int[] iArr = new int[AnnotatedCallableKind.values().length];
            try {
                iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f73206a = iArr;
        }
    }

    public AbstractBinaryClassAnnotationLoader(KotlinClassFinder kotlinClassFinder) {
        kotlinClassFinder.getClass();
        this.f73205a = kotlinClassFinder;
    }

    public static /* synthetic */ List n(AbstractBinaryClassAnnotationLoader abstractBinaryClassAnnotationLoader, ProtoContainer protoContainer, MemberSignature memberSignature, Boolean bool, boolean z, int i2) {
        boolean z2 = (i2 & 4) == 0;
        if ((i2 & 16) != 0) {
            bool = null;
        }
        return abstractBinaryClassAnnotationLoader.m(protoContainer, memberSignature, z2, false, bool, (i2 & 32) != 0 ? false : z);
    }

    public static MemberSignature p(MessageLite messageLite, NameResolver nameResolver, TypeTable typeTable, AnnotatedCallableKind annotatedCallableKind, boolean z) {
        messageLite.getClass();
        nameResolver.getClass();
        typeTable.getClass();
        annotatedCallableKind.getClass();
        if (messageLite instanceof ProtoBuf$Constructor) {
            MemberSignature.Companion companion = MemberSignature.f73259b;
            ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
            JvmMemberSignature.Method methodA = JvmProtoBufUtil.a((ProtoBuf$Constructor) messageLite, nameResolver, typeTable);
            if (methodA != null) {
                companion.getClass();
                return MemberSignature.Companion.b(methodA);
            }
        } else if (messageLite instanceof ProtoBuf$Function) {
            MemberSignature.Companion companion2 = MemberSignature.f73259b;
            ExtensionRegistryLite extensionRegistryLite2 = JvmProtoBufUtil.f73672a;
            JvmMemberSignature.Method methodC = JvmProtoBufUtil.c((ProtoBuf$Function) messageLite, nameResolver, typeTable);
            if (methodC != null) {
                companion2.getClass();
                return MemberSignature.Companion.b(methodC);
            }
        } else if (messageLite instanceof ProtoBuf$Property) {
            GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.d;
            generatedExtension.getClass();
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.a((GeneratedMessageLite.ExtendableMessage) messageLite, generatedExtension);
            if (jvmPropertySignature != null) {
                int i2 = WhenMappings.f73206a[annotatedCallableKind.ordinal()];
                if (i2 != 1) {
                    if (i2 == 2) {
                        if ((jvmPropertySignature.f73630c & 8) != 8) {
                            return null;
                        }
                        MemberSignature.Companion companion3 = MemberSignature.f73259b;
                        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = jvmPropertySignature.g;
                        jvmMethodSignature.getClass();
                        companion3.getClass();
                        return MemberSignature.Companion.c(nameResolver, jvmMethodSignature);
                    }
                    if (i2 == 3) {
                        return AbstractBinaryClassAnnotationLoaderKt.a((ProtoBuf$Property) messageLite, nameResolver, typeTable, true, true, z);
                    }
                } else if (jvmPropertySignature.i()) {
                    MemberSignature.Companion companion4 = MemberSignature.f73259b;
                    JvmProtoBuf.JvmMethodSignature jvmMethodSignature2 = jvmPropertySignature.f73632f;
                    jvmMethodSignature2.getClass();
                    companion4.getClass();
                    return MemberSignature.Companion.c(nameResolver, jvmMethodSignature2);
                }
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List a(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind, int i2, ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        protoContainer.getClass();
        messageLite.getClass();
        annotatedCallableKind.getClass();
        return u(protoContainer, messageLite, annotatedCallableKind, i2);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List b(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind, int i2, ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        int size;
        protoContainer.getClass();
        messageLite.getClass();
        annotatedCallableKind.getClass();
        protoBuf$ValueParameter.getClass();
        boolean z = messageLite instanceof ProtoBuf$Function;
        int i3 = 0;
        if (z) {
            size = ((ProtoBuf$Function) messageLite).p.size();
        } else {
            size = messageLite instanceof ProtoBuf$Property ? ((ProtoBuf$Property) messageLite).p.size() : 0;
        }
        if (z) {
            int i4 = ((ProtoBuf$Function) messageLite).d;
            if ((i4 & 32) == 32 || (i4 & 64) == 64) {
                i3 = 1;
            }
        } else if (messageLite instanceof ProtoBuf$Property) {
            int i5 = ((ProtoBuf$Property) messageLite).d;
            if ((i5 & 32) == 32 || (i5 & 64) == 64) {
                i3 = 1;
            }
        } else {
            if (!(messageLite instanceof ProtoBuf$Constructor)) {
                throw new UnsupportedOperationException("Unsupported message: " + messageLite.getClass());
            }
            ProtoContainer.Class r11 = (ProtoContainer.Class) protoContainer;
            if (r11.g == ProtoBuf$Class.Kind.ENUM_CLASS) {
                i3 = 2;
            } else if (r11.f74053h) {
                i3 = 1;
            }
        }
        return u(protoContainer, messageLite, annotatedCallableKind, size + i3 + i2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final ArrayList c(ProtoContainer.Class r4) {
        r4.getClass();
        SourceElement sourceElement = r4.f74050c;
        KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = sourceElement instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) sourceElement : null;
        KotlinJvmBinaryClass kotlinJvmBinaryClass = kotlinJvmBinarySourceElement != null ? kotlinJvmBinarySourceElement.f73258b : null;
        if (kotlinJvmBinaryClass == null) {
            v7.i(r4.f74052f.a(), "Class for loading annotations is not found: ");
            return null;
        }
        final ArrayList arrayList = new ArrayList(1);
        kotlinJvmBinaryClass.b(new KotlinJvmBinaryClass.AnnotationVisitor() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader$loadClassAnnotations$1
            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
            public final void a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
            public final KotlinJvmBinaryClass.AnnotationArgumentVisitor b(ClassId classId, ReflectAnnotationSource reflectAnnotationSource) {
                return this.f73207a.t(classId, reflectAnnotationSource, arrayList);
            }
        });
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final ArrayList d(ProtoBuf$Type protoBuf$Type, NameResolver nameResolver) {
        protoBuf$Type.getClass();
        nameResolver.getClass();
        List list = protoBuf$Type.s;
        list.getClass();
        List<ProtoBuf$Annotation> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (ProtoBuf$Annotation protoBuf$Annotation : list2) {
            protoBuf$Annotation.getClass();
            arrayList.add(((BinaryClassAnnotationAndConstantLoaderImpl) this).g.a(protoBuf$Annotation, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List e(ProtoContainer protoContainer, ProtoBuf$EnumEntry protoBuf$EnumEntry) {
        protoContainer.getClass();
        protoBuf$EnumEntry.getClass();
        MemberSignature.Companion companion = MemberSignature.f73259b;
        String string = protoContainer.f74048a.getString(protoBuf$EnumEntry.f73382e);
        String strB = ClassMapperLite.b(((ProtoContainer.Class) protoContainer).f74052f.b());
        companion.getClass();
        return n(this, protoContainer, MemberSignature.Companion.a(string, strB), null, false, 60);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List f(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind) {
        messageLite.getClass();
        annotatedCallableKind.getClass();
        if (annotatedCallableKind == AnnotatedCallableKind.PROPERTY) {
            return v(protoContainer, (ProtoBuf$Property) messageLite, PropertyRelatedElement.PROPERTY);
        }
        MemberSignature memberSignatureP = p(messageLite, protoContainer.f74048a, protoContainer.f74049b, annotatedCallableKind, false);
        return memberSignatureP == null ? EmptyList.f71768b : n(this, protoContainer, memberSignatureP, null, false, 60);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final ArrayList h(ProtoBuf$TypeParameter protoBuf$TypeParameter, NameResolver nameResolver) {
        protoBuf$TypeParameter.getClass();
        nameResolver.getClass();
        List list = protoBuf$TypeParameter.l;
        list.getClass();
        List<ProtoBuf$Annotation> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (ProtoBuf$Annotation protoBuf$Annotation : list2) {
            protoBuf$Annotation.getClass();
            arrayList.add(((BinaryClassAnnotationAndConstantLoaderImpl) this).g.a(protoBuf$Annotation, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List j(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property) {
        protoBuf$Property.getClass();
        return v(protoContainer, protoBuf$Property, PropertyRelatedElement.BACKING_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List k(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind) {
        int size;
        messageLite.getClass();
        annotatedCallableKind.getClass();
        if (messageLite instanceof ProtoBuf$Function) {
            size = ((ProtoBuf$Function) messageLite).p.size();
        } else {
            size = messageLite instanceof ProtoBuf$Property ? ((ProtoBuf$Property) messageLite).p.size() : 0;
        }
        return u(protoContainer, messageLite, annotatedCallableKind, size);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public final List l(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property) {
        protoBuf$Property.getClass();
        return v(protoContainer, protoBuf$Property, PropertyRelatedElement.DELEGATE_FIELD);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    public final List m(ProtoContainer protoContainer, MemberSignature memberSignature, boolean z, boolean z2, Boolean bool, boolean z3) {
        List list;
        MetadataVersion metadataVersionQ = q();
        f73204b.getClass();
        KotlinJvmBinaryClass kotlinJvmBinaryClassA = Companion.a(protoContainer, z, z2, bool, z3, this.f73205a, metadataVersionQ);
        if (kotlinJvmBinaryClassA == null) {
            if (protoContainer instanceof ProtoContainer.Class) {
                SourceElement sourceElement = ((ProtoContainer.Class) protoContainer).f74050c;
                KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = sourceElement instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) sourceElement : null;
                if (kotlinJvmBinarySourceElement != null) {
                    kotlinJvmBinaryClassA = kotlinJvmBinarySourceElement.f73258b;
                } else {
                    kotlinJvmBinaryClassA = null;
                }
            } else {
                kotlinJvmBinaryClassA = null;
            }
        }
        return (kotlinJvmBinaryClassA == null || (list = (List) o(kotlinJvmBinaryClassA).f73209a.get(memberSignature)) == null) ? EmptyList.f71768b : list;
    }

    public abstract AnnotationsContainerWithConstants o(KotlinJvmBinaryClass kotlinJvmBinaryClass);

    public abstract MetadataVersion q();

    public final boolean r(ClassId classId) {
        KotlinJvmBinaryClass kotlinJvmBinaryClassA;
        classId.getClass();
        if (classId.e() == null || !Intrinsics.c(classId.f().b(), "Container") || (kotlinJvmBinaryClassA = KotlinClassFinderKt.a(this.f73205a, classId, q())) == null) {
            return false;
        }
        LinkedHashSet linkedHashSet = SpecialJvmAnnotations.f72232a;
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        kotlinJvmBinaryClassA.b(new KotlinJvmBinaryClass.AnnotationVisitor() { // from class: kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations$isAnnotatedWithContainerMetaAnnotation$1
            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
            public final void a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass.AnnotationVisitor
            public final KotlinJvmBinaryClass.AnnotationArgumentVisitor b(ClassId classId2, ReflectAnnotationSource reflectAnnotationSource) {
                if (!classId2.equals(JvmAbi.f72868b)) {
                    return null;
                }
                ref$BooleanRef.f71917b = true;
                return null;
            }
        });
        return ref$BooleanRef.f71917b;
    }

    public abstract BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1 s(ClassId classId, SourceElement sourceElement, List list);

    public final KotlinJvmBinaryClass.AnnotationArgumentVisitor t(ClassId classId, ReflectAnnotationSource reflectAnnotationSource, List list) {
        list.getClass();
        if (SpecialJvmAnnotations.f72232a.contains(classId)) {
            return null;
        }
        return s(classId, reflectAnnotationSource, list);
    }

    public final List u(ProtoContainer protoContainer, MessageLite messageLite, AnnotatedCallableKind annotatedCallableKind, int i2) {
        MemberSignature memberSignatureP = p(messageLite, protoContainer.f74048a, protoContainer.f74049b, annotatedCallableKind, false);
        if (memberSignatureP == null) {
            return EmptyList.f71768b;
        }
        MemberSignature.f73259b.getClass();
        return n(this, protoContainer, MemberSignature.Companion.e(memberSignatureP, i2), null, false, 60);
    }

    public final List v(ProtoContainer protoContainer, ProtoBuf$Property protoBuf$Property, PropertyRelatedElement propertyRelatedElement) {
        TypeTable typeTable = protoContainer.f74049b;
        Boolean boolD = Flags.B.d(protoBuf$Property.f73438e);
        boolean zD = JvmProtoBufUtil.d(protoBuf$Property);
        PropertyRelatedElement propertyRelatedElement2 = PropertyRelatedElement.PROPERTY;
        NameResolver nameResolver = protoContainer.f74048a;
        if (propertyRelatedElement == propertyRelatedElement2) {
            MemberSignature memberSignatureA = AbstractBinaryClassAnnotationLoaderKt.a(protoBuf$Property, nameResolver, typeTable, (40 & 8) == 0, (40 & 16) == 0, true);
            return memberSignatureA == null ? EmptyList.f71768b : n(this, protoContainer, memberSignatureA, boolD, zD, 8);
        }
        MemberSignature memberSignatureA2 = AbstractBinaryClassAnnotationLoaderKt.a(protoBuf$Property, nameResolver, typeTable, (40 & 8) == 0, (40 & 16) == 0, true);
        if (memberSignatureA2 == null) {
            return EmptyList.f71768b;
        }
        return StringsKt.k(memberSignatureA2.f73260a, "$delegate", false) != (propertyRelatedElement == PropertyRelatedElement.DELEGATE_FIELD) ? EmptyList.f71768b : m(protoContainer, memberSignatureA2, true, true, boolD, zD);
    }
}
