package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FieldDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.NonEmptyDeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public final class MemberDeserializer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeserializationContext f74021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnnotationDeserializer f74022b;

    public MemberDeserializer(DeserializationContext deserializationContext) {
        deserializationContext.getClass();
        this.f74021a = deserializationContext;
        DeserializationComponents deserializationComponents = deserializationContext.f73998a;
        this.f74022b = new AnnotationDeserializer(deserializationComponents.f73989b, deserializationComponents.l);
    }

    public final ProtoContainer a(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor instanceof PackageFragmentDescriptor) {
            FqName fqNameC = ((PackageFragmentDescriptor) declarationDescriptor).c();
            DeserializationContext deserializationContext = this.f74021a;
            return new ProtoContainer.Package(fqNameC, deserializationContext.f73999b, deserializationContext.d, deserializationContext.g);
        }
        if (declarationDescriptor instanceof DeserializedClassDescriptor) {
            return ((DeserializedClassDescriptor) declarationDescriptor).y;
        }
        return null;
    }

    public final ArrayList b(List list, List list2, final GeneratedMessageLite.ExtendableMessage extendableMessage, final AnnotatedCallableKind annotatedCallableKind) {
        final MemberDeserializer memberDeserializer = this;
        DeserializationContext deserializationContext = memberDeserializer.f74021a;
        DeclarationDescriptor declarationDescriptor = deserializationContext.f74000c;
        declarationDescriptor.getClass();
        CallableDescriptor callableDescriptor = (CallableDescriptor) declarationDescriptor;
        DeclarationDescriptor declarationDescriptorD = callableDescriptor.d();
        declarationDescriptorD.getClass();
        final ProtoContainer protoContainerA = memberDeserializer.a(declarationDescriptorD);
        ArrayList arrayList = new ArrayList();
        final int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) obj;
            final ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) CollectionsKt.G(i2, list2);
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImplB = DescriptorFactory.b(callableDescriptor, deserializationContext.f74003h.g(protoBuf$Type), null, (protoContainerA == null || !Flags.f73574c.d((protoBuf$ValueParameter == null || (protoBuf$ValueParameter.d & 1) != 1) ? 0 : protoBuf$ValueParameter.f73528e).booleanValue()) ? Annotations.Companion.f72432a : new NonEmptyDeserializedAnnotations(deserializationContext.f73998a.f73988a, new Function0(memberDeserializer, protoContainerA, extendableMessage, annotatedCallableKind, i2, protoBuf$ValueParameter) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$$Lambda$6

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final MemberDeserializer f74037b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final ProtoContainer f74038c;
                public final MessageLite d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final AnnotatedCallableKind f74039e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final int f74040f;
                public final ProtoBuf$ValueParameter g;

                {
                    this.f74037b = memberDeserializer;
                    this.f74038c = protoContainerA;
                    this.d = extendableMessage;
                    this.f74039e = annotatedCallableKind;
                    this.f74040f = i2;
                    this.g = protoBuf$ValueParameter;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return CollectionsKt.y0(this.f74037b.f74021a.f73998a.f73991e.a(this.f74038c, this.d, this.f74039e, this.f74040f, this.g));
                }
            }), i2);
            if (receiverParameterDescriptorImplB != null) {
                arrayList.add(receiverParameterDescriptorImplB);
            }
            memberDeserializer = this;
            i2 = i3;
        }
        return arrayList;
    }

    public final Annotations c(final GeneratedMessageLite.ExtendableMessage extendableMessage, int i2, final AnnotatedCallableKind annotatedCallableKind) {
        return !Flags.f73574c.d(i2).booleanValue() ? Annotations.Companion.f72432a : new NonEmptyDeserializedAnnotations(this.f74021a.f73998a.f73988a, new Function0(this, extendableMessage, annotatedCallableKind) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final MemberDeserializer f74027b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final MessageLite f74028c;
            public final AnnotatedCallableKind d;

            {
                this.f74027b = this;
                this.f74028c = extendableMessage;
                this.d = annotatedCallableKind;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                MemberDeserializer memberDeserializer = this.f74027b;
                ProtoContainer protoContainerA = memberDeserializer.a(memberDeserializer.f74021a.f74000c);
                List listY0 = protoContainerA != null ? CollectionsKt.y0(memberDeserializer.f74021a.f73998a.f73991e.f(protoContainerA, this.f74028c, this.d)) : null;
                return listY0 == null ? EmptyList.f71768b : listY0;
            }
        });
    }

    public final Annotations d(final ProtoBuf$Property protoBuf$Property, final boolean z) {
        return !Flags.f73574c.d(protoBuf$Property.f73438e).booleanValue() ? Annotations.Companion.f72432a : new NonEmptyDeserializedAnnotations(this.f74021a.f73998a.f73988a, new Function0(this, z, protoBuf$Property) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final MemberDeserializer f74029b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final boolean f74030c;
            public final ProtoBuf$Property d;

            {
                this.f74029b = this;
                this.f74030c = z;
                this.d = protoBuf$Property;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List listY0;
                MemberDeserializer memberDeserializer = this.f74029b;
                ProtoContainer protoContainerA = memberDeserializer.a(memberDeserializer.f74021a.f74000c);
                if (protoContainerA != null) {
                    DeserializationContext deserializationContext = memberDeserializer.f74021a;
                    boolean z2 = this.f74030c;
                    ProtoBuf$Property protoBuf$Property2 = this.d;
                    listY0 = z2 ? CollectionsKt.y0(deserializationContext.f73998a.f73991e.l(protoContainerA, protoBuf$Property2)) : CollectionsKt.y0(deserializationContext.f73998a.f73991e.j(protoContainerA, protoBuf$Property2));
                } else {
                    listY0 = null;
                }
                return listY0 == null ? EmptyList.f71768b : listY0;
            }
        });
    }

    public final DeserializedClassConstructorDescriptor e(ProtoBuf$Constructor protoBuf$Constructor, boolean z) {
        protoBuf$Constructor.getClass();
        DeserializationContext deserializationContext = this.f74021a;
        DeclarationDescriptor declarationDescriptor = deserializationContext.f74000c;
        declarationDescriptor.getClass();
        ClassDescriptor classDescriptor = (ClassDescriptor) declarationDescriptor;
        int i2 = protoBuf$Constructor.f73351e;
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        DeserializedClassConstructorDescriptor deserializedClassConstructorDescriptor = new DeserializedClassConstructorDescriptor(classDescriptor, null, c(protoBuf$Constructor, i2, annotatedCallableKind), z, CallableMemberDescriptor.Kind.DECLARATION, protoBuf$Constructor, deserializationContext.f73999b, deserializationContext.d, deserializationContext.f74001e, deserializationContext.g, null, 1024, null);
        MemberDeserializer memberDeserializer = deserializationContext.a(deserializedClassConstructorDescriptor, EmptyList.f71768b, deserializationContext.f73999b, deserializationContext.d, deserializationContext.f74001e, deserializationContext.f74002f).f74004i;
        List list = protoBuf$Constructor.f73352f;
        list.getClass();
        deserializedClassConstructorDescriptor.R0(memberDeserializer.h(list, protoBuf$Constructor, annotatedCallableKind), ProtoEnumFlagsUtilsKt.a((ProtoBuf$Visibility) Flags.d.d(protoBuf$Constructor.f73351e)));
        deserializedClassConstructorDescriptor.O0(classDescriptor.o());
        deserializedClassConstructorDescriptor.s = classDescriptor.c0();
        deserializedClassConstructorDescriptor.x = !Flags.o.d(protoBuf$Constructor.f73351e).booleanValue();
        return deserializedClassConstructorDescriptor;
    }

    public final DeserializedSimpleFunctionDescriptor f(ProtoBuf$Function protoBuf$Function) {
        int i2;
        VersionRequirementTable versionRequirementTable;
        KotlinType kotlinTypeG;
        protoBuf$Function.getClass();
        if ((protoBuf$Function.d & 1) == 1) {
            i2 = protoBuf$Function.f73402e;
        } else {
            int i3 = protoBuf$Function.f73403f;
            i2 = ((i3 >> 8) << 6) + (i3 & 63);
        }
        int i4 = i2;
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        Annotations annotationsC = c(protoBuf$Function, i4, annotatedCallableKind);
        int i5 = protoBuf$Function.d;
        int i6 = i5 & 32;
        DeserializationContext deserializationContext = this.f74021a;
        Annotations deserializedAnnotations = (i6 == 32 || (i5 & 64) == 64) ? new DeserializedAnnotations(deserializationContext.f73998a.f73988a, new MemberDeserializer$$Lambda$4(this, protoBuf$Function, annotatedCallableKind)) : Annotations.Companion.f72432a;
        DeclarationDescriptor declarationDescriptor = deserializationContext.f74000c;
        NameResolver nameResolver = deserializationContext.f73999b;
        TypeTable typeTable = deserializationContext.d;
        if (DescriptorUtilsKt.g(declarationDescriptor).a(NameResolverUtilKt.b(nameResolver, protoBuf$Function.g)).equals(SuspendFunctionTypeUtilKt.f74059a)) {
            VersionRequirementTable.f73600b.getClass();
            versionRequirementTable = VersionRequirementTable.f73601c;
        } else {
            versionRequirementTable = deserializationContext.f74001e;
        }
        Annotations annotations = deserializedAnnotations;
        DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor = new DeserializedSimpleFunctionDescriptor(deserializationContext.f74000c, null, annotationsC, NameResolverUtilKt.b(nameResolver, protoBuf$Function.g), ProtoEnumFlagsUtilsKt.b((ProtoBuf$MemberKind) Flags.p.d(i4)), protoBuf$Function, deserializationContext.f73999b, deserializationContext.d, versionRequirementTable, deserializationContext.g, null, 1024, null);
        List list = protoBuf$Function.f73406j;
        list.getClass();
        DeserializationContext deserializationContextA = deserializationContext.a(deserializedSimpleFunctionDescriptor, list, deserializationContext.f73999b, deserializationContext.d, deserializationContext.f74001e, deserializationContext.f74002f);
        MemberDeserializer memberDeserializer = deserializationContextA.f74004i;
        TypeDeserializer typeDeserializer = deserializationContextA.f74003h;
        ProtoBuf$Type protoBuf$TypeF = ProtoTypeTableUtilKt.f(protoBuf$Function, typeTable);
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImplH = (protoBuf$TypeF == null || (kotlinTypeG = typeDeserializer.g(protoBuf$TypeF)) == null) ? null : DescriptorFactory.h(deserializedSimpleFunctionDescriptor, kotlinTypeG, annotations);
        DeclarationDescriptor declarationDescriptor2 = deserializationContext.f74000c;
        ClassDescriptor classDescriptor = declarationDescriptor2 instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptor2 : null;
        ReceiverParameterDescriptor receiverParameterDescriptorE0 = classDescriptor != null ? classDescriptor.E0() : null;
        List listB = ProtoTypeTableUtilKt.b(protoBuf$Function, typeTable);
        List list2 = protoBuf$Function.p;
        list2.getClass();
        ArrayList arrayListB = memberDeserializer.b(listB, list2, protoBuf$Function, annotatedCallableKind);
        List listB2 = typeDeserializer.b();
        List list3 = protoBuf$Function.q;
        list3.getClass();
        deserializedSimpleFunctionDescriptor.S0(receiverParameterDescriptorImplH, receiverParameterDescriptorE0, arrayListB, listB2, memberDeserializer.h(list3, protoBuf$Function, annotatedCallableKind), typeDeserializer.g(ProtoTypeTableUtilKt.h(protoBuf$Function, typeTable)), ProtoEnumFlags.a((ProtoBuf$Modality) Flags.f73575e.d(i4)), ProtoEnumFlagsUtilsKt.a((ProtoBuf$Visibility) Flags.d.d(i4)), MapsKt.c());
        deserializedSimpleFunctionDescriptor.n = Flags.q.d(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.o = Flags.r.d(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.p = Flags.u.d(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.q = Flags.s.d(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.r = Flags.t.d(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.w = Flags.v.d(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.s = Flags.w.d(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.x = !Flags.x.d(i4).booleanValue();
        deserializationContext.f73998a.m.a(protoBuf$Function, deserializedSimpleFunctionDescriptor, typeTable, typeDeserializer);
        return deserializedSimpleFunctionDescriptor;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0149  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v10, types: [kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor] */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public final DeserializedPropertyDescriptor g(final ProtoBuf$Property protoBuf$Property, boolean z) {
        int i2;
        Annotations annotationsC;
        final MemberDeserializer memberDeserializer;
        Annotations deserializedAnnotations;
        Flags.FlagField flagField;
        Flags.FlagField flagField2;
        boolean z2;
        PropertyGetterDescriptorImpl propertyGetterDescriptorImplC;
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl;
        NullableLazyValue nullableLazyValue;
        PropertySetterDescriptorImpl propertySetterDescriptorImplD;
        ?? r5;
        Object objE;
        ClassDescriptor classDescriptor;
        KotlinType kotlinTypeG;
        protoBuf$Property.getClass();
        if ((protoBuf$Property.d & 1) == 1) {
            i2 = protoBuf$Property.f73438e;
        } else {
            int i3 = protoBuf$Property.f73439f;
            i2 = ((i3 >> 8) << 6) + (i3 & 63);
        }
        DeserializationContext deserializationContext = this.f74021a;
        if (z) {
            List list = protoBuf$Property.v;
            list.getClass();
            List<ProtoBuf$Annotation> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (ProtoBuf$Annotation protoBuf$Annotation : list2) {
                protoBuf$Annotation.getClass();
                arrayList.add(this.f74022b.a(protoBuf$Annotation, deserializationContext.f73999b));
            }
            annotationsC = Annotations.Companion.a(arrayList);
        } else {
            annotationsC = null;
        }
        DeclarationDescriptor declarationDescriptor = deserializationContext.f74000c;
        TypeTable typeTable = deserializationContext.d;
        if (annotationsC == null) {
            annotationsC = c(protoBuf$Property, i2, AnnotatedCallableKind.PROPERTY);
        }
        Flags.FlagField flagField3 = Flags.f73575e;
        Modality modalityA = ProtoEnumFlags.a((ProtoBuf$Modality) flagField3.d(i2));
        Flags.FlagField flagField4 = Flags.d;
        int i4 = i2;
        DeserializationContext deserializationContext2 = deserializationContext;
        final DeserializedPropertyDescriptor deserializedPropertyDescriptor = new DeserializedPropertyDescriptor(declarationDescriptor, null, annotationsC, modalityA, ProtoEnumFlagsUtilsKt.a((ProtoBuf$Visibility) flagField4.d(i2)), Flags.y.d(i2).booleanValue(), NameResolverUtilKt.b(deserializationContext.f73999b, protoBuf$Property.g), ProtoEnumFlagsUtilsKt.b((ProtoBuf$MemberKind) Flags.p.d(i2)), Flags.C.d(i2).booleanValue(), Flags.B.d(i2).booleanValue(), Flags.E.d(i2).booleanValue(), Flags.F.d(i2).booleanValue(), Flags.G.d(i2).booleanValue(), protoBuf$Property, deserializationContext.f73999b, deserializationContext.d, deserializationContext.f74001e, deserializationContext.g);
        List list3 = protoBuf$Property.f73442j;
        list3.getClass();
        DeserializationContext deserializationContextA = deserializationContext2.a(deserializedPropertyDescriptor, list3, deserializationContext2.f73999b, deserializationContext2.d, deserializationContext2.f74001e, deserializationContext2.f74002f);
        TypeDeserializer typeDeserializer = deserializationContextA.f74003h;
        boolean zBooleanValue = Flags.z.d(i4).booleanValue();
        if (zBooleanValue) {
            int i5 = protoBuf$Property.d;
            if ((i5 & 32) == 32 || (i5 & 64) == 64) {
                memberDeserializer = this;
                deserializedAnnotations = new DeserializedAnnotations(deserializationContext2.f73998a.f73988a, new MemberDeserializer$$Lambda$4(memberDeserializer, protoBuf$Property, AnnotatedCallableKind.PROPERTY_GETTER));
            } else {
                memberDeserializer = this;
                deserializedAnnotations = Annotations.Companion.f72432a;
            }
        } else {
            memberDeserializer = this;
            deserializedAnnotations = Annotations.Companion.f72432a;
        }
        KotlinType kotlinTypeG2 = typeDeserializer.g(ProtoTypeTableUtilKt.i(protoBuf$Property, typeTable));
        List listB = typeDeserializer.b();
        DeclarationDescriptor declarationDescriptor2 = deserializationContext2.f74000c;
        ClassDescriptor classDescriptor2 = declarationDescriptor2 instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptor2 : null;
        ReceiverParameterDescriptor receiverParameterDescriptorE0 = classDescriptor2 != null ? classDescriptor2.E0() : null;
        ProtoBuf$Type protoBuf$TypeG = ProtoTypeTableUtilKt.g(protoBuf$Property, typeTable);
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImplH = (protoBuf$TypeG == null || (kotlinTypeG = typeDeserializer.g(protoBuf$TypeG)) == null) ? null : DescriptorFactory.h(deserializedPropertyDescriptor, kotlinTypeG, deserializedAnnotations);
        MemberDeserializer memberDeserializer2 = deserializationContextA.f74004i;
        List listC = ProtoTypeTableUtilKt.c(protoBuf$Property, typeTable);
        List list4 = protoBuf$Property.p;
        list4.getClass();
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.PROPERTY_GETTER;
        deserializedPropertyDescriptor.L0(kotlinTypeG2, listB, receiverParameterDescriptorE0, receiverParameterDescriptorImplH, memberDeserializer2.b(listC, list4, protoBuf$Property, annotatedCallableKind));
        int iB = Flags.b(Flags.f73574c.d(i4).booleanValue(), (ProtoBuf$Visibility) flagField4.d(i4), (ProtoBuf$Modality) flagField3.d(i4));
        SourceElement sourceElement = SourceElement.f72405a;
        if (zBooleanValue) {
            int i6 = (protoBuf$Property.d & 256) == 256 ? protoBuf$Property.r : iB;
            boolean zBooleanValue2 = Flags.K.d(i6).booleanValue();
            boolean zBooleanValue3 = Flags.L.d(i6).booleanValue();
            boolean zBooleanValue4 = Flags.M.d(i6).booleanValue();
            Annotations annotationsC2 = memberDeserializer.c(protoBuf$Property, i6, annotatedCallableKind);
            if (zBooleanValue2) {
                flagField2 = flagField3;
                flagField = flagField4;
                z2 = true;
                propertyGetterDescriptorImplC = new PropertyGetterDescriptorImpl(deserializedPropertyDescriptor, annotationsC2, ProtoEnumFlags.a((ProtoBuf$Modality) flagField3.d(i6)), ProtoEnumFlagsUtilsKt.a((ProtoBuf$Visibility) flagField4.d(i6)), !zBooleanValue2, zBooleanValue3, zBooleanValue4, deserializedPropertyDescriptor.e(), null, sourceElement);
            } else {
                flagField = flagField4;
                flagField2 = flagField3;
                z2 = true;
                propertyGetterDescriptorImplC = DescriptorFactory.c(annotationsC2, deserializedPropertyDescriptor);
            }
            propertyGetterDescriptorImplC.H0(deserializedPropertyDescriptor.getReturnType());
        } else {
            deserializationContext2 = deserializationContext2;
            deserializationContextA = deserializationContextA;
            iB = iB;
            flagField = flagField4;
            flagField2 = flagField3;
            memberDeserializer = memberDeserializer;
            z2 = true;
            propertyGetterDescriptorImplC = null;
        }
        if (Flags.A.d(i4).booleanValue()) {
            int i7 = (protoBuf$Property.d & 512) == 512 ? protoBuf$Property.s : iB;
            boolean zBooleanValue5 = Flags.K.d(i7).booleanValue();
            boolean zBooleanValue6 = Flags.L.d(i7).booleanValue();
            boolean zBooleanValue7 = Flags.M.d(i7).booleanValue();
            AnnotatedCallableKind annotatedCallableKind2 = AnnotatedCallableKind.PROPERTY_SETTER;
            Annotations annotationsC3 = memberDeserializer.c(protoBuf$Property, i7, annotatedCallableKind2);
            if (zBooleanValue5) {
                propertyGetterDescriptorImpl = propertyGetterDescriptorImplC;
                propertySetterDescriptorImplD = new PropertySetterDescriptorImpl(deserializedPropertyDescriptor, annotationsC3, ProtoEnumFlags.a((ProtoBuf$Modality) flagField2.d(i7)), ProtoEnumFlagsUtilsKt.a((ProtoBuf$Visibility) flagField.d(i7)), !zBooleanValue5, zBooleanValue6, zBooleanValue7, deserializedPropertyDescriptor.e(), null, sourceElement);
                DeserializationContext deserializationContext3 = deserializationContextA;
                ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) CollectionsKt.h0(deserializationContext3.a(propertySetterDescriptorImplD, EmptyList.f71768b, deserializationContext3.f73999b, deserializationContext3.d, deserializationContext3.f74001e, deserializationContext3.f74002f).f74004i.h(CollectionsKt.O(protoBuf$Property.q), protoBuf$Property, annotatedCallableKind2));
                if (valueParameterDescriptor == null) {
                    PropertySetterDescriptorImpl.Z(6);
                    throw null;
                }
                propertySetterDescriptorImplD.n = valueParameterDescriptor;
                nullableLazyValue = null;
            } else {
                propertyGetterDescriptorImpl = propertyGetterDescriptorImplC;
                nullableLazyValue = null;
                propertySetterDescriptorImplD = DescriptorFactory.d(annotationsC3, deserializedPropertyDescriptor);
            }
        } else {
            propertyGetterDescriptorImpl = propertyGetterDescriptorImplC;
            nullableLazyValue = null;
            propertySetterDescriptorImplD = null;
        }
        if (Flags.D.d(i4).booleanValue()) {
            deserializedPropertyDescriptor.F0(nullableLazyValue, new Function0(memberDeserializer, protoBuf$Property, deserializedPropertyDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final MemberDeserializer f74023b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final ProtoBuf$Property f74024c;
                public final DeserializedPropertyDescriptor d;

                {
                    this.f74023b = memberDeserializer;
                    this.f74024c = protoBuf$Property;
                    this.d = deserializedPropertyDescriptor;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    final MemberDeserializer memberDeserializer3 = this.f74023b;
                    StorageManager storageManager = memberDeserializer3.f74021a.f73998a.f73988a;
                    final ProtoBuf$Property protoBuf$Property2 = this.f74024c;
                    final DeserializedPropertyDescriptor deserializedPropertyDescriptor2 = this.d;
                    return storageManager.e(new Function0(memberDeserializer3, protoBuf$Property2, deserializedPropertyDescriptor2) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$$Lambda$7

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final MemberDeserializer f74041b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final ProtoBuf$Property f74042c;
                        public final DeserializedPropertyDescriptor d;

                        {
                            this.f74041b = memberDeserializer3;
                            this.f74042c = protoBuf$Property2;
                            this.d = deserializedPropertyDescriptor2;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            MemberDeserializer memberDeserializer4 = this.f74041b;
                            ProtoContainer protoContainerA = memberDeserializer4.a(memberDeserializer4.f74021a.f74000c);
                            protoContainerA.getClass();
                            AnnotationAndConstantLoader annotationAndConstantLoader = memberDeserializer4.f74021a.f73998a.f73991e;
                            KotlinType returnType = this.d.getReturnType();
                            returnType.getClass();
                            return (ConstantValue) annotationAndConstantLoader.i(protoContainerA, this.f74042c, returnType);
                        }
                    });
                }
            });
        }
        DeclarationDescriptor declarationDescriptor3 = deserializationContext2.f74000c;
        if (declarationDescriptor3 instanceof ClassDescriptor) {
            classDescriptor = (ClassDescriptor) declarationDescriptor3;
        } else {
            r5 = nullableLazyValue;
        }
        if (r5 != 0) {
            r5 = classDescriptor;
            objE = r5.e();
        } else {
            r5 = classDescriptor;
            objE = nullableLazyValue;
        }
        if (objE == ClassKind.ANNOTATION_CLASS) {
            deserializedPropertyDescriptor.F0(nullableLazyValue, new Function0(memberDeserializer, protoBuf$Property, deserializedPropertyDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$$Lambda$1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final MemberDeserializer f74025b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final ProtoBuf$Property f74026c;
                public final DeserializedPropertyDescriptor d;

                {
                    this.f74025b = memberDeserializer;
                    this.f74026c = protoBuf$Property;
                    this.d = deserializedPropertyDescriptor;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    final MemberDeserializer memberDeserializer3 = this.f74025b;
                    StorageManager storageManager = memberDeserializer3.f74021a.f73998a.f73988a;
                    final ProtoBuf$Property protoBuf$Property2 = this.f74026c;
                    final DeserializedPropertyDescriptor deserializedPropertyDescriptor2 = this.d;
                    return storageManager.e(new Function0(memberDeserializer3, protoBuf$Property2, deserializedPropertyDescriptor2) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$$Lambda$8

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final MemberDeserializer f74043b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final ProtoBuf$Property f74044c;
                        public final DeserializedPropertyDescriptor d;

                        {
                            this.f74043b = memberDeserializer3;
                            this.f74044c = protoBuf$Property2;
                            this.d = deserializedPropertyDescriptor2;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            MemberDeserializer memberDeserializer4 = this.f74043b;
                            ProtoContainer protoContainerA = memberDeserializer4.a(memberDeserializer4.f74021a.f74000c);
                            protoContainerA.getClass();
                            AnnotationAndConstantLoader annotationAndConstantLoader = memberDeserializer4.f74021a.f73998a.f73991e;
                            KotlinType returnType = this.d.getReturnType();
                            returnType.getClass();
                            return (ConstantValue) annotationAndConstantLoader.g(protoContainerA, this.f74044c, returnType);
                        }
                    });
                }
            });
        }
        deserializedPropertyDescriptor.J0(propertyGetterDescriptorImpl, propertySetterDescriptorImplD, new FieldDescriptorImpl(memberDeserializer.d(protoBuf$Property, false), deserializedPropertyDescriptor), new FieldDescriptorImpl(memberDeserializer.d(protoBuf$Property, z2), deserializedPropertyDescriptor));
        return deserializedPropertyDescriptor;
    }

    public final List h(List list, final GeneratedMessageLite.ExtendableMessage extendableMessage, final AnnotatedCallableKind annotatedCallableKind) {
        final int i2;
        Annotations nonEmptyDeserializedAnnotations;
        final MemberDeserializer memberDeserializer = this;
        DeserializationContext deserializationContext = memberDeserializer.f74021a;
        DeclarationDescriptor declarationDescriptor = deserializationContext.f74000c;
        TypeTable typeTable = deserializationContext.d;
        TypeDeserializer typeDeserializer = deserializationContext.f74003h;
        declarationDescriptor.getClass();
        CallableDescriptor callableDescriptor = (CallableDescriptor) declarationDescriptor;
        DeclarationDescriptor declarationDescriptorD = callableDescriptor.d();
        declarationDescriptorD.getClass();
        final ProtoContainer protoContainerA = memberDeserializer.a(declarationDescriptorD);
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        int i3 = 0;
        for (Object obj : list2) {
            int i4 = i3 + 1;
            KotlinType kotlinTypeG = null;
            if (i3 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            final ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) obj;
            int i5 = (protoBuf$ValueParameter.d & 1) == 1 ? protoBuf$ValueParameter.f73528e : 0;
            if (protoContainerA == null || !Flags.f73574c.d(i5).booleanValue()) {
                i2 = i3;
                nonEmptyDeserializedAnnotations = Annotations.Companion.f72432a;
            } else {
                i2 = i3;
                nonEmptyDeserializedAnnotations = new NonEmptyDeserializedAnnotations(deserializationContext.f73998a.f73988a, new Function0(memberDeserializer, protoContainerA, extendableMessage, annotatedCallableKind, i2, protoBuf$ValueParameter) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer$$Lambda$5

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final MemberDeserializer f74033b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final ProtoContainer f74034c;
                    public final MessageLite d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final AnnotatedCallableKind f74035e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final int f74036f;
                    public final ProtoBuf$ValueParameter g;

                    {
                        this.f74033b = memberDeserializer;
                        this.f74034c = protoContainerA;
                        this.d = extendableMessage;
                        this.f74035e = annotatedCallableKind;
                        this.f74036f = i2;
                        this.g = protoBuf$ValueParameter;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return CollectionsKt.y0(this.f74033b.f74021a.f73998a.f73991e.b(this.f74034c, this.d, this.f74035e, this.f74036f, this.g));
                    }
                });
            }
            Name nameB = NameResolverUtilKt.b(deserializationContext.f73999b, protoBuf$ValueParameter.f73529f);
            KotlinType kotlinTypeG2 = typeDeserializer.g(ProtoTypeTableUtilKt.k(protoBuf$ValueParameter, typeTable));
            boolean zBooleanValue = Flags.H.d(i5).booleanValue();
            boolean zBooleanValue2 = Flags.I.d(i5).booleanValue();
            boolean zBooleanValue3 = Flags.J.d(i5).booleanValue();
            typeTable.getClass();
            int i6 = protoBuf$ValueParameter.d;
            ProtoBuf$Type protoBuf$TypeA = (i6 & 16) == 16 ? protoBuf$ValueParameter.f73531i : (i6 & 32) == 32 ? typeTable.a(protoBuf$ValueParameter.f73532j) : null;
            if (protoBuf$TypeA != null) {
                kotlinTypeG = typeDeserializer.g(protoBuf$TypeA);
            }
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new ValueParameterDescriptorImpl(callableDescriptor, null, i2, nonEmptyDeserializedAnnotations, nameB, kotlinTypeG2, zBooleanValue, zBooleanValue2, zBooleanValue3, kotlinTypeG, SourceElement.f72405a));
            arrayList = arrayList2;
            i3 = i4;
            memberDeserializer = this;
        }
        return CollectionsKt.y0(arrayList);
    }
}
