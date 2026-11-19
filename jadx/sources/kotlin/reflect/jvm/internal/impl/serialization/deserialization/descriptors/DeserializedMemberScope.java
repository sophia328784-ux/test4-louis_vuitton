package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.tr;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import kotlin.reflect.jvm.internal.impl.resolve.MemberComparator$NameAndTypeMemberComparator;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DeserializedMemberScope extends MemberScopeImpl {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f74104f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DeserializationContext f74105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Implementation f74106c;
    public final NotNullLazyValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NullableLazyValue f74107e;

    public interface Implementation {
        Set a();

        Collection b(Name name, LookupLocation lookupLocation);

        Collection c(Name name, LookupLocation lookupLocation);

        Set d();

        Set e();

        TypeAliasDescriptor f(Name name);

        void g(ArrayList arrayList, DescriptorKindFilter descriptorKindFilter, Function1 function1, LookupLocation lookupLocation);
    }

    public final class OptimizedImplementation implements Implementation {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final /* synthetic */ KProperty[] f74110j;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f74111a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LinkedHashMap f74112b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map f74113c;
        public final MemoizedFunctionToNotNull d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MemoizedFunctionToNotNull f74114e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final MemoizedFunctionToNullable f74115f;
        public final NotNullLazyValue g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final NotNullLazyValue f74116h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ DeserializedMemberScope f74117i;

        static {
            PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(OptimizedImplementation.class, "functionNames", "getFunctionNames()Ljava/util/Set;", 0);
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            f74110j = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(OptimizedImplementation.class, "variableNames", "getVariableNames()Ljava/util/Set;", 0, reflectionFactory)};
        }

        public OptimizedImplementation(DeserializedMemberScope deserializedMemberScope, List<ProtoBuf$Function> list, List<ProtoBuf$Property> list2, List<ProtoBuf$TypeAlias> list3) {
            list.getClass();
            list2.getClass();
            list3.getClass();
            this.f74117i = deserializedMemberScope;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                Name nameB = NameResolverUtilKt.b(deserializedMemberScope.f74105b.f73999b, ((ProtoBuf$Function) ((MessageLite) obj)).g);
                Object arrayList = linkedHashMap.get(nameB);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(nameB, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            this.f74111a = h(linkedHashMap);
            DeserializedMemberScope deserializedMemberScope2 = this.f74117i;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj2 : list2) {
                Name nameB2 = NameResolverUtilKt.b(deserializedMemberScope2.f74105b.f73999b, ((ProtoBuf$Property) ((MessageLite) obj2)).g);
                Object arrayList2 = linkedHashMap2.get(nameB2);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap2.put(nameB2, arrayList2);
                }
                ((List) arrayList2).add(obj2);
            }
            this.f74112b = h(linkedHashMap2);
            this.f74117i.f74105b.f73998a.f73990c.getClass();
            DeserializedMemberScope deserializedMemberScope3 = this.f74117i;
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (Object obj3 : list3) {
                Name nameB3 = NameResolverUtilKt.b(deserializedMemberScope3.f74105b.f73999b, ((ProtoBuf$TypeAlias) ((MessageLite) obj3)).f73495f);
                Object arrayList3 = linkedHashMap3.get(nameB3);
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    linkedHashMap3.put(nameB3, arrayList3);
                }
                ((List) arrayList3).add(obj3);
            }
            this.f74113c = h(linkedHashMap3);
            this.d = this.f74117i.f74105b.f73998a.f73988a.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedMemberScope.OptimizedImplementation f74118b;

                {
                    this.f74118b = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    List listX;
                    Name name = (Name) obj4;
                    KProperty[] kPropertyArr = DeserializedMemberScope.OptimizedImplementation.f74110j;
                    name.getClass();
                    DeserializedMemberScope.OptimizedImplementation optimizedImplementation = this.f74118b;
                    LinkedHashMap linkedHashMap4 = optimizedImplementation.f74111a;
                    Parser parser = ProtoBuf$Function.A;
                    parser.getClass();
                    DeserializedMemberScope deserializedMemberScope4 = optimizedImplementation.f74117i;
                    byte[] bArr = (byte[]) linkedHashMap4.get(name);
                    Collection<ProtoBuf$Function> collection = (bArr == null || (listX = SequencesKt.x(SequencesKt.l(new DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1(parser, new ByteArrayInputStream(bArr), deserializedMemberScope4)))) == null) ? EmptyList.f71768b : listX;
                    ArrayList arrayList4 = new ArrayList(collection.size());
                    for (ProtoBuf$Function protoBuf$Function : collection) {
                        MemberDeserializer memberDeserializer = deserializedMemberScope4.f74105b.f74004i;
                        protoBuf$Function.getClass();
                        DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptorF = memberDeserializer.f(protoBuf$Function);
                        if (!deserializedMemberScope4.r(deserializedSimpleFunctionDescriptorF)) {
                            deserializedSimpleFunctionDescriptorF = null;
                        }
                        if (deserializedSimpleFunctionDescriptorF != null) {
                            arrayList4.add(deserializedSimpleFunctionDescriptorF);
                        }
                    }
                    deserializedMemberScope4.j(arrayList4, name);
                    return CollectionsKt.a(arrayList4);
                }
            });
            this.f74114e = this.f74117i.f74105b.f73998a.f73988a.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedMemberScope.OptimizedImplementation f74119b;

                {
                    this.f74119b = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    List listX;
                    Name name = (Name) obj4;
                    KProperty[] kPropertyArr = DeserializedMemberScope.OptimizedImplementation.f74110j;
                    name.getClass();
                    DeserializedMemberScope.OptimizedImplementation optimizedImplementation = this.f74119b;
                    LinkedHashMap linkedHashMap4 = optimizedImplementation.f74112b;
                    Parser parser = ProtoBuf$Property.G;
                    parser.getClass();
                    DeserializedMemberScope deserializedMemberScope4 = optimizedImplementation.f74117i;
                    byte[] bArr = (byte[]) linkedHashMap4.get(name);
                    Collection<ProtoBuf$Property> collection = (bArr == null || (listX = SequencesKt.x(SequencesKt.l(new DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1(parser, new ByteArrayInputStream(bArr), deserializedMemberScope4)))) == null) ? EmptyList.f71768b : listX;
                    ArrayList arrayList4 = new ArrayList(collection.size());
                    for (ProtoBuf$Property protoBuf$Property : collection) {
                        MemberDeserializer memberDeserializer = deserializedMemberScope4.f74105b.f74004i;
                        protoBuf$Property.getClass();
                        arrayList4.add(memberDeserializer.g(protoBuf$Property, false));
                    }
                    deserializedMemberScope4.k(arrayList4, name);
                    return CollectionsKt.a(arrayList4);
                }
            });
            this.f74115f = this.f74117i.f74105b.f73998a.f73988a.g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedMemberScope.OptimizedImplementation f74120b;

                {
                    this.f74120b = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    Name name = (Name) obj4;
                    KProperty[] kPropertyArr = DeserializedMemberScope.OptimizedImplementation.f74110j;
                    name.getClass();
                    DeserializedMemberScope.OptimizedImplementation optimizedImplementation = this.f74120b;
                    DeserializedMemberScope deserializedMemberScope4 = optimizedImplementation.f74117i;
                    byte[] bArr = (byte[]) optimizedImplementation.f74113c.get(name);
                    if (bArr == null) {
                        return null;
                    }
                    ProtoBuf$TypeAlias protoBuf$TypeAlias = (ProtoBuf$TypeAlias) ((AbstractParser) ProtoBuf$TypeAlias.r).b(new ByteArrayInputStream(bArr), deserializedMemberScope4.f74105b.f73998a.p);
                    if (protoBuf$TypeAlias == null) {
                        return null;
                    }
                    MemberDeserializer memberDeserializer = deserializedMemberScope4.f74105b.f74004i;
                    DeserializationContext deserializationContext = memberDeserializer.f74021a;
                    protoBuf$TypeAlias.getClass();
                    List list4 = protoBuf$TypeAlias.l;
                    list4.getClass();
                    List<ProtoBuf$Annotation> list5 = list4;
                    ArrayList arrayList4 = new ArrayList(kotlin.collections.CollectionsKt.t(list5, 10));
                    for (ProtoBuf$Annotation protoBuf$Annotation : list5) {
                        AnnotationDeserializer annotationDeserializer = memberDeserializer.f74022b;
                        protoBuf$Annotation.getClass();
                        arrayList4.add(annotationDeserializer.a(protoBuf$Annotation, deserializationContext.f73999b));
                    }
                    Annotations annotationsA = Annotations.Companion.a(arrayList4);
                    DelegatedDescriptorVisibility delegatedDescriptorVisibilityA = ProtoEnumFlagsUtilsKt.a((ProtoBuf$Visibility) Flags.d.d(protoBuf$TypeAlias.f73494e));
                    DeserializationComponents deserializationComponents = deserializationContext.f73998a;
                    TypeTable typeTable = deserializationContext.d;
                    DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = new DeserializedTypeAliasDescriptor(deserializationComponents.f73988a, deserializationContext.f74000c, annotationsA, NameResolverUtilKt.b(deserializationContext.f73999b, protoBuf$TypeAlias.f73495f), delegatedDescriptorVisibilityA, protoBuf$TypeAlias, deserializationContext.f73999b, deserializationContext.d, deserializationContext.f74001e, deserializationContext.g);
                    List list6 = protoBuf$TypeAlias.g;
                    list6.getClass();
                    TypeDeserializer typeDeserializer = deserializationContext.a(deserializedTypeAliasDescriptor, list6, deserializationContext.f73999b, deserializationContext.d, deserializationContext.f74001e, deserializationContext.f74002f).f74003h;
                    deserializedTypeAliasDescriptor.G0(typeDeserializer.b(), typeDeserializer.d(ProtoTypeTableUtilKt.l(protoBuf$TypeAlias, typeTable), false), typeDeserializer.d(ProtoTypeTableUtilKt.d(protoBuf$TypeAlias, typeTable), false));
                    return deserializedTypeAliasDescriptor;
                }
            });
            final DeserializedMemberScope deserializedMemberScope4 = this.f74117i;
            this.g = deserializedMemberScope4.f74105b.f73998a.f73988a.c(new Function0(this, deserializedMemberScope4) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedMemberScope.OptimizedImplementation f74121b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final DeserializedMemberScope f74122c;

                {
                    this.f74121b = this;
                    this.f74122c = deserializedMemberScope4;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return SetsKt.f(this.f74121b.f74111a.keySet(), this.f74122c.o());
                }
            });
            final DeserializedMemberScope deserializedMemberScope5 = this.f74117i;
            this.f74116h = deserializedMemberScope5.f74105b.f73998a.f73988a.c(new Function0(this, deserializedMemberScope5) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$4

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedMemberScope.OptimizedImplementation f74123b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final DeserializedMemberScope f74124c;

                {
                    this.f74123b = this;
                    this.f74124c = deserializedMemberScope5;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return SetsKt.f(this.f74123b.f74112b.keySet(), this.f74124c.p());
                }
            });
        }

        public static LinkedHashMap h(LinkedHashMap linkedHashMap) throws IOException {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.g(linkedHashMap.size()));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable<AbstractMessageLite> iterable = (Iterable) entry.getValue();
                ArrayList arrayList = new ArrayList(kotlin.collections.CollectionsKt.t(iterable, 10));
                for (AbstractMessageLite abstractMessageLite : iterable) {
                    int iC = abstractMessageLite.c();
                    int iF = CodedOutputStream.f(iC) + iC;
                    if (iF > 4096) {
                        iF = 4096;
                    }
                    CodedOutputStream codedOutputStreamJ = CodedOutputStream.j(byteArrayOutputStream, iF);
                    codedOutputStreamJ.v(iC);
                    abstractMessageLite.e(codedOutputStreamJ);
                    codedOutputStreamJ.k();
                    arrayList.add(Unit.f71739a);
                }
                linkedHashMap2.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public final Set a() {
            return (Set) StorageKt.a(this.g, f74110j[0]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public final Collection b(Name name, LookupLocation lookupLocation) {
            name.getClass();
            lookupLocation.getClass();
            return !a().contains(name) ? EmptyList.f71768b : (Collection) this.d.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public final Collection c(Name name, LookupLocation lookupLocation) {
            name.getClass();
            lookupLocation.getClass();
            return !d().contains(name) ? EmptyList.f71768b : (Collection) this.f74114e.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public final Set d() {
            return (Set) StorageKt.a(this.f74116h, f74110j[1]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public final Set e() {
            return this.f74113c.keySet();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public final TypeAliasDescriptor f(Name name) {
            name.getClass();
            return (TypeAliasDescriptor) this.f74115f.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public final void g(ArrayList arrayList, DescriptorKindFilter descriptorKindFilter, Function1 function1, LookupLocation lookupLocation) {
            descriptorKindFilter.getClass();
            function1.getClass();
            lookupLocation.getClass();
            DescriptorKindFilter.f73910c.getClass();
            boolean zA = descriptorKindFilter.a(DescriptorKindFilter.f73914i);
            MemberComparator$NameAndTypeMemberComparator memberComparator$NameAndTypeMemberComparator = MemberComparator$NameAndTypeMemberComparator.f73836b;
            if (zA) {
                Set<Name> setD = d();
                ArrayList arrayList2 = new ArrayList();
                for (Name name : setD) {
                    if (((Boolean) function1.invoke(name)).booleanValue()) {
                        arrayList2.addAll(c(name, lookupLocation));
                    }
                }
                kotlin.collections.CollectionsKt.m0(memberComparator$NameAndTypeMemberComparator, arrayList2);
                arrayList.addAll(arrayList2);
            }
            DescriptorKindFilter.f73910c.getClass();
            if (descriptorKindFilter.a(DescriptorKindFilter.f73913h)) {
                Set<Name> setA = a();
                ArrayList arrayList3 = new ArrayList();
                for (Name name2 : setA) {
                    if (((Boolean) function1.invoke(name2)).booleanValue()) {
                        arrayList3.addAll(b(name2, lookupLocation));
                    }
                }
                kotlin.collections.CollectionsKt.m0(memberComparator$NameAndTypeMemberComparator, arrayList3);
                arrayList.addAll(arrayList3);
            }
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(DeserializedMemberScope.class, "classNames", "getClassNames$deserialization()Ljava/util/Set;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f74104f = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(DeserializedMemberScope.class, "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;", 0, reflectionFactory)};
    }

    public DeserializedMemberScope(DeserializationContext deserializationContext, List list, List list2, List list3, final Function0 function0) {
        deserializationContext.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        function0.getClass();
        this.f74105b = deserializationContext;
        DeserializationComponents deserializationComponents = deserializationContext.f73998a;
        deserializationComponents.f73990c.getClass();
        this.f74106c = new OptimizedImplementation(this, list, list2, list3);
        this.d = deserializationComponents.f73988a.c(new Function0(function0) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Function0 f74108b;

            {
                this.f74108b = function0;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = DeserializedMemberScope.f74104f;
                return kotlin.collections.CollectionsKt.B0((Iterable) this.f74108b.mo47invoke());
            }
        });
        this.f74107e = deserializationComponents.f73988a.e(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedMemberScope f74109b;

            {
                this.f74109b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = DeserializedMemberScope.f74104f;
                DeserializedMemberScope deserializedMemberScope = this.f74109b;
                Set setN = deserializedMemberScope.n();
                if (setN == null) {
                    return null;
                }
                return SetsKt.f(SetsKt.f(deserializedMemberScope.m(), deserializedMemberScope.f74106c.e()), setN);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set a() {
        return this.f74106c.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return this.f74106c.b(name, lookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return this.f74106c.c(name, lookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set d() {
        return this.f74106c.d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set e() {
        KProperty kProperty = f74104f[1];
        NullableLazyValue nullableLazyValue = this.f74107e;
        nullableLazyValue.getClass();
        kProperty.getClass();
        return (Set) nullableLazyValue.mo47invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        if (!q(name)) {
            Implementation implementation = this.f74106c;
            if (implementation.e().contains(name)) {
                return implementation.f(name);
            }
            return null;
        }
        DeserializationComponents deserializationComponents = this.f74105b.f73998a;
        ClassId classIdL = l(name);
        deserializationComponents.getClass();
        ClassDeserializer classDeserializer = deserializationComponents.u;
        ClassDeserializer.Companion companion = ClassDeserializer.f73981c;
        return classDeserializer.a(classIdL, null);
    }

    public abstract void h(ArrayList arrayList, Function1 function1);

    public final Collection i(DescriptorKindFilter descriptorKindFilter, Function1 function1, NoLookupLocation noLookupLocation) {
        TypeAliasDescriptor typeAliasDescriptorF;
        descriptorKindFilter.getClass();
        function1.getClass();
        noLookupLocation.getClass();
        ArrayList arrayList = new ArrayList(0);
        DescriptorKindFilter.f73910c.getClass();
        if (descriptorKindFilter.a(DescriptorKindFilter.f73911e)) {
            h(arrayList, function1);
        }
        Implementation implementation = this.f74106c;
        implementation.g(arrayList, descriptorKindFilter, function1, noLookupLocation);
        if (descriptorKindFilter.a(DescriptorKindFilter.f73916k)) {
            for (Name name : m()) {
                if (((Boolean) function1.invoke(name)).booleanValue()) {
                    DeserializationComponents deserializationComponents = this.f74105b.f73998a;
                    ClassId classIdL = l(name);
                    deserializationComponents.getClass();
                    ClassDeserializer classDeserializer = deserializationComponents.u;
                    ClassDeserializer.Companion companion = ClassDeserializer.f73981c;
                    ClassDescriptor classDescriptorA = classDeserializer.a(classIdL, null);
                    if (classDescriptorA != null) {
                        arrayList.add(classDescriptorA);
                    }
                }
            }
        }
        DescriptorKindFilter.f73910c.getClass();
        if (descriptorKindFilter.a(DescriptorKindFilter.f73912f)) {
            for (Name name2 : implementation.e()) {
                if (((Boolean) function1.invoke(name2)).booleanValue() && (typeAliasDescriptorF = implementation.f(name2)) != null) {
                    arrayList.add(typeAliasDescriptorF);
                }
            }
        }
        return CollectionsKt.a(arrayList);
    }

    public void j(ArrayList arrayList, Name name) {
        name.getClass();
    }

    public void k(ArrayList arrayList, Name name) {
        name.getClass();
    }

    public abstract ClassId l(Name name);

    public final Set m() {
        return (Set) StorageKt.a(this.d, f74104f[0]);
    }

    public abstract Set n();

    public abstract Set o();

    public abstract Set p();

    public boolean q(Name name) {
        name.getClass();
        return m().contains(name);
    }

    public boolean r(DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor) {
        return true;
    }
}
