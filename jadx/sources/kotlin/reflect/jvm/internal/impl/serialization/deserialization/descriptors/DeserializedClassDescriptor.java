package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.lc0;
import defpackage.mt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DeserializedDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.UtilsKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.CliSealedClassInheritorsProvider;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextClassReceiver;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class DeserializedClassDescriptor extends AbstractClassDescriptor implements DeserializedDescriptor {
    public static final /* synthetic */ int A = 0;
    public final ProtoBuf$Class g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BinaryVersion f74076h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SourceElement f74077i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ClassId f74078j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Modality f74079k;
    public final DelegatedDescriptorVisibility l;
    public final ClassKind m;
    public final DeserializationContext n;
    public final MemberScopeImpl o;
    public final DeserializedClassTypeConstructor p;
    public final ScopesHolderForClass q;
    public final EnumEntryClassDescriptors r;
    public final DeclarationDescriptor s;
    public final NullableLazyValue t;
    public final NotNullLazyValue u;
    public final NullableLazyValue v;
    public final NotNullLazyValue w;
    public final NullableLazyValue x;
    public final ProtoContainer.Class y;
    public final Annotations z;

    public final class DeserializedClassMemberScope extends DeserializedMemberScope {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final /* synthetic */ int f74086k = 0;
        public final KotlinTypeRefiner g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final NotNullLazyValue f74087h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final NotNullLazyValue f74088i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ DeserializedClassDescriptor f74089j;

        public DeserializedClassMemberScope(DeserializedClassDescriptor deserializedClassDescriptor, KotlinTypeRefiner kotlinTypeRefiner) {
            kotlinTypeRefiner.getClass();
            this.f74089j = deserializedClassDescriptor;
            DeserializationContext deserializationContext = deserializedClassDescriptor.n;
            ProtoBuf$Class protoBuf$Class = deserializedClassDescriptor.g;
            List list = protoBuf$Class.r;
            list.getClass();
            List list2 = protoBuf$Class.s;
            list2.getClass();
            List list3 = protoBuf$Class.t;
            list3.getClass();
            List list4 = protoBuf$Class.l;
            list4.getClass();
            List list5 = list4;
            NameResolver nameResolver = deserializedClassDescriptor.n.f73999b;
            final ArrayList arrayList = new ArrayList(CollectionsKt.t(list5, 10));
            Iterator it = list5.iterator();
            while (it.hasNext()) {
                arrayList.add(NameResolverUtilKt.b(nameResolver, ((Number) it.next()).intValue()));
            }
            super(deserializationContext, list, list2, list3, new Function0(arrayList) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final List f74090b;

                {
                    this.f74090b = arrayList;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i2 = DeserializedClassDescriptor.DeserializedClassMemberScope.f74086k;
                    return this.f74090b;
                }
            });
            this.g = kotlinTypeRefiner;
            this.f74087h = this.f74105b.f73998a.f73988a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$$Lambda$1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedClassDescriptor.DeserializedClassMemberScope f74091b;

                {
                    this.f74091b = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i2 = DeserializedClassDescriptor.DeserializedClassMemberScope.f74086k;
                    DescriptorKindFilter descriptorKindFilter = DescriptorKindFilter.l;
                    MemberScope.f73929a.getClass();
                    return this.f74091b.i(descriptorKindFilter, MemberScope.Companion.f73931b, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
                }
            });
            this.f74088i = this.f74105b.f73998a.f73988a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$$Lambda$2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedClassDescriptor.DeserializedClassMemberScope f74092b;

                {
                    this.f74092b = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    DeserializedClassDescriptor.DeserializedClassMemberScope deserializedClassMemberScope = this.f74092b;
                    return deserializedClassMemberScope.g.e(deserializedClassMemberScope.f74089j);
                }
            });
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Collection b(Name name, LookupLocation lookupLocation) {
            name.getClass();
            lookupLocation.getClass();
            s(name, lookupLocation);
            return super.b(name, lookupLocation);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Collection c(Name name, LookupLocation lookupLocation) {
            name.getClass();
            lookupLocation.getClass();
            s(name, lookupLocation);
            return super.c(name, lookupLocation);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
            ClassDescriptor classDescriptor;
            name.getClass();
            lookupLocation.getClass();
            s(name, lookupLocation);
            EnumEntryClassDescriptors enumEntryClassDescriptors = this.f74089j.r;
            return (enumEntryClassDescriptors == null || (classDescriptor = (ClassDescriptor) enumEntryClassDescriptors.f74097b.invoke(name)) == null) ? super.f(name, lookupLocation) : classDescriptor;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
            descriptorKindFilter.getClass();
            function1.getClass();
            return (Collection) this.f74087h.mo47invoke();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0 */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.collections.EmptyList] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList] */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final void h(ArrayList arrayList, Function1 function1) {
            ?? arrayList2;
            function1.getClass();
            EnumEntryClassDescriptors enumEntryClassDescriptors = this.f74089j.r;
            if (enumEntryClassDescriptors != null) {
                Set<Name> setKeySet = enumEntryClassDescriptors.f74096a.keySet();
                arrayList2 = new ArrayList();
                for (Name name : setKeySet) {
                    name.getClass();
                    ClassDescriptor classDescriptor = (ClassDescriptor) enumEntryClassDescriptors.f74097b.invoke(name);
                    if (classDescriptor != null) {
                        arrayList2.add(classDescriptor);
                    }
                }
            } else {
                arrayList2 = 0;
            }
            if (arrayList2 == 0) {
                arrayList2 = EmptyList.f71768b;
            }
            arrayList.addAll(arrayList2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final void j(ArrayList arrayList, Name name) {
            name.getClass();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((Collection) this.f74088i.mo47invoke()).iterator();
            while (it.hasNext()) {
                arrayList2.addAll(((KotlinType) it.next()).n().b(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            DeserializationContext deserializationContext = this.f74105b;
            arrayList.addAll(deserializationContext.f73998a.n.a(name, this.f74089j));
            ArrayList arrayList3 = new ArrayList(arrayList);
            deserializationContext.f73998a.q.a().h(name, arrayList2, arrayList3, this.f74089j, new DeserializedClassDescriptor$DeserializedClassMemberScope$generateFakeOverrides$1(arrayList));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final void k(ArrayList arrayList, Name name) {
            name.getClass();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((Collection) this.f74088i.mo47invoke()).iterator();
            while (it.hasNext()) {
                arrayList2.addAll(((KotlinType) it.next()).n().c(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            ArrayList arrayList3 = new ArrayList(arrayList);
            this.f74105b.f73998a.q.a().h(name, arrayList2, arrayList3, this.f74089j, new DeserializedClassDescriptor$DeserializedClassMemberScope$generateFakeOverrides$1(arrayList));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final ClassId l(Name name) {
            name.getClass();
            return this.f74089j.f74078j.d(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final Set n() {
            List listI = this.f74089j.p.i();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = listI.iterator();
            while (it.hasNext()) {
                Set setE = ((KotlinType) it.next()).n().e();
                if (setE == null) {
                    return null;
                }
                CollectionsKt.j(linkedHashSet, setE);
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final Set o() {
            DeserializedClassDescriptor deserializedClassDescriptor = this.f74089j;
            List listI = deserializedClassDescriptor.p.i();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = listI.iterator();
            while (it.hasNext()) {
                CollectionsKt.j(linkedHashSet, ((KotlinType) it.next()).n().a());
            }
            linkedHashSet.addAll(this.f74105b.f73998a.n.e(deserializedClassDescriptor));
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final Set p() {
            List listI = this.f74089j.p.i();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = listI.iterator();
            while (it.hasNext()) {
                CollectionsKt.j(linkedHashSet, ((KotlinType) it.next()).n().d());
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final boolean r(DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor) {
            return this.f74105b.f73998a.o.b(this.f74089j, deserializedSimpleFunctionDescriptor);
        }

        public final void s(Name name, LookupLocation lookupLocation) {
            name.getClass();
            lookupLocation.getClass();
            UtilsKt.a(this.f74105b.f73998a.f73994i, lookupLocation, this.f74089j, name);
        }
    }

    public final class DeserializedClassTypeConstructor extends AbstractClassTypeConstructor {
        public final NotNullLazyValue d;

        public DeserializedClassTypeConstructor() {
            super(DeserializedClassDescriptor.this.n.f73998a.f73988a);
            this.d = DeserializedClassDescriptor.this.n.f73998a.f73988a.c(new Function0(DeserializedClassDescriptor.this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassTypeConstructor$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedClassDescriptor f74095b;

                {
                    this.f74095b = deserializedClassDescriptor;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return TypeParameterUtilsKt.b(this.f74095b);
                }
            });
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean A() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection b() {
            String strB;
            FqName fqNameA;
            DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
            ProtoBuf$Class protoBuf$Class = deserializedClassDescriptor.g;
            DeserializationContext deserializationContext = deserializedClassDescriptor.n;
            List listJ = ProtoTypeTableUtilKt.j(protoBuf$Class, deserializationContext.d);
            ArrayList arrayList = new ArrayList(CollectionsKt.t(listJ, 10));
            Iterator it = listJ.iterator();
            while (it.hasNext()) {
                arrayList.add(deserializationContext.f74003h.g((ProtoBuf$Type) it.next()));
            }
            ArrayList arrayListY = CollectionsKt.Y(arrayList, deserializationContext.f73998a.n.d(deserializedClassDescriptor));
            ArrayList<NotFoundClasses.MockClassDescriptor> arrayList2 = new ArrayList();
            Iterator it2 = arrayListY.iterator();
            while (it2.hasNext()) {
                ClassifierDescriptor classifierDescriptorY = ((KotlinType) it2.next()).H0().y();
                NotFoundClasses.MockClassDescriptor mockClassDescriptor = classifierDescriptorY instanceof NotFoundClasses.MockClassDescriptor ? (NotFoundClasses.MockClassDescriptor) classifierDescriptorY : null;
                if (mockClassDescriptor != null) {
                    arrayList2.add(mockClassDescriptor);
                }
            }
            if (!arrayList2.isEmpty()) {
                ErrorReporter errorReporter = deserializationContext.f73998a.f73993h;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
                for (NotFoundClasses.MockClassDescriptor mockClassDescriptor2 : arrayList2) {
                    ClassId classIdF = DescriptorUtilsKt.f(mockClassDescriptor2);
                    if (classIdF == null || (fqNameA = classIdF.a()) == null || (strB = fqNameA.f73679a.f73683a) == null) {
                        strB = mockClassDescriptor2.getName().b();
                        strB.getClass();
                    }
                    arrayList3.add(strB);
                }
                errorReporter.a(deserializedClassDescriptor, arrayList3);
            }
            return CollectionsKt.y0(arrayListY);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final SupertypeLoopChecker e() {
            return SupertypeLoopChecker.EMPTY.f72407a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List getParameters() {
            return (List) this.d.mo47invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor
        /* JADX INFO: renamed from: m */
        public final ClassDescriptor y() {
            return DeserializedClassDescriptor.this;
        }

        public final String toString() {
            String str = DeserializedClassDescriptor.this.getName().f73687b;
            str.getClass();
            return str;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final ClassifierDescriptor y() {
            return DeserializedClassDescriptor.this;
        }
    }

    public final class EnumEntryClassDescriptors {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f74096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MemoizedFunctionToNullable f74097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final NotNullLazyValue f74098c;

        public EnumEntryClassDescriptors() {
            List list = DeserializedClassDescriptor.this.g.u;
            list.getClass();
            List list2 = list;
            int iG = MapsKt.g(CollectionsKt.t(list2, 10));
            LinkedHashMap linkedHashMap = new LinkedHashMap(iG < 16 ? 16 : iG);
            for (Object obj : list2) {
                linkedHashMap.put(NameResolverUtilKt.b(DeserializedClassDescriptor.this.n.f73999b, ((ProtoBuf$EnumEntry) obj).f73382e), obj);
            }
            this.f74096a = linkedHashMap;
            final DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
            this.f74097b = deserializedClassDescriptor.n.f73998a.f73988a.g(new Function1(this, deserializedClassDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$EnumEntryClassDescriptors$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedClassDescriptor.EnumEntryClassDescriptors f74099b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final DeserializedClassDescriptor f74100c;

                {
                    this.f74099b = this;
                    this.f74100c = deserializedClassDescriptor;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Name name = (Name) obj2;
                    name.getClass();
                    DeserializedClassDescriptor.EnumEntryClassDescriptors enumEntryClassDescriptors = this.f74099b;
                    final ProtoBuf$EnumEntry protoBuf$EnumEntry = (ProtoBuf$EnumEntry) enumEntryClassDescriptors.f74096a.get(name);
                    if (protoBuf$EnumEntry == null) {
                        return null;
                    }
                    final DeserializedClassDescriptor deserializedClassDescriptor2 = this.f74100c;
                    return EnumEntrySyntheticClassDescriptor.F0(deserializedClassDescriptor2.n.f73998a.f73988a, deserializedClassDescriptor2, name, enumEntryClassDescriptors.f74098c, new DeserializedAnnotations(deserializedClassDescriptor2.n.f73998a.f73988a, new Function0(deserializedClassDescriptor2, protoBuf$EnumEntry) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$EnumEntryClassDescriptors$$Lambda$2

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final DeserializedClassDescriptor f74102b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final ProtoBuf$EnumEntry f74103c;

                        {
                            this.f74102b = deserializedClassDescriptor2;
                            this.f74103c = protoBuf$EnumEntry;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            DeserializedClassDescriptor deserializedClassDescriptor3 = this.f74102b;
                            return CollectionsKt.y0(deserializedClassDescriptor3.n.f73998a.f73991e.e(deserializedClassDescriptor3.y, this.f74103c));
                        }
                    }), SourceElement.f72405a);
                }
            });
            this.f74098c = DeserializedClassDescriptor.this.n.f73998a.f73988a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$EnumEntryClassDescriptors$$Lambda$1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DeserializedClassDescriptor.EnumEntryClassDescriptors f74101b;

                {
                    this.f74101b = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    DeserializedClassDescriptor.EnumEntryClassDescriptors enumEntryClassDescriptors = this.f74101b;
                    enumEntryClassDescriptors.getClass();
                    HashSet hashSet = new HashSet();
                    DeserializedClassDescriptor deserializedClassDescriptor2 = DeserializedClassDescriptor.this;
                    DeserializedClassDescriptor.DeserializedClassTypeConstructor deserializedClassTypeConstructor = deserializedClassDescriptor2.p;
                    DeserializationContext deserializationContext = deserializedClassDescriptor2.n;
                    ProtoBuf$Class protoBuf$Class = deserializedClassDescriptor2.g;
                    Iterator it = deserializedClassTypeConstructor.i().iterator();
                    while (it.hasNext()) {
                        for (DeclarationDescriptor declarationDescriptor : ResolutionScope.DefaultImpls.a(((KotlinType) it.next()).n(), null, 3)) {
                            if ((declarationDescriptor instanceof SimpleFunctionDescriptor) || (declarationDescriptor instanceof PropertyDescriptor)) {
                                hashSet.add(((CallableMemberDescriptor) declarationDescriptor).getName());
                            }
                        }
                    }
                    List list3 = protoBuf$Class.r;
                    list3.getClass();
                    Iterator it2 = list3.iterator();
                    while (it2.hasNext()) {
                        hashSet.add(NameResolverUtilKt.b(deserializationContext.f73999b, ((ProtoBuf$Function) it2.next()).g));
                    }
                    List list4 = protoBuf$Class.s;
                    list4.getClass();
                    Iterator it3 = list4.iterator();
                    while (it3.hasNext()) {
                        hashSet.add(NameResolverUtilKt.b(deserializationContext.f73999b, ((ProtoBuf$Property) it3.next()).g));
                    }
                    return SetsKt.f(hashSet, hashSet);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor(DeserializationContext deserializationContext, ProtoBuf$Class protoBuf$Class, NameResolver nameResolver, BinaryVersion binaryVersion, SourceElement sourceElement) {
        ClassKind classKind;
        MemberScopeImpl staticScopeForKotlinEnum;
        super(deserializationContext.f73998a.f73988a, NameResolverUtilKt.a(nameResolver, protoBuf$Class.f73331f).f());
        deserializationContext.getClass();
        protoBuf$Class.getClass();
        nameResolver.getClass();
        binaryVersion.getClass();
        sourceElement.getClass();
        this.g = protoBuf$Class;
        this.f74076h = binaryVersion;
        this.f74077i = sourceElement;
        this.f74078j = NameResolverUtilKt.a(nameResolver, protoBuf$Class.f73331f);
        this.f74079k = ProtoEnumFlags.a((ProtoBuf$Modality) Flags.f73575e.d(protoBuf$Class.f73330e));
        this.l = ProtoEnumFlagsUtilsKt.a((ProtoBuf$Visibility) Flags.d.d(protoBuf$Class.f73330e));
        ProtoBuf$Class.Kind kind = (ProtoBuf$Class.Kind) Flags.f73576f.d(protoBuf$Class.f73330e);
        switch (kind == null ? -1 : ProtoEnumFlags.WhenMappings.f74055b[kind.ordinal()]) {
            case 1:
                classKind = ClassKind.CLASS;
                break;
            case 2:
                classKind = ClassKind.INTERFACE;
                break;
            case 3:
                classKind = ClassKind.ENUM_CLASS;
                break;
            case 4:
                classKind = ClassKind.ENUM_ENTRY;
                break;
            case 5:
                classKind = ClassKind.ANNOTATION_CLASS;
                break;
            case 6:
            case 7:
                classKind = ClassKind.OBJECT;
                break;
            default:
                classKind = ClassKind.CLASS;
                break;
        }
        ClassKind classKind2 = classKind;
        this.m = classKind2;
        List list = protoBuf$Class.f73332h;
        list.getClass();
        ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Class.B;
        protoBuf$TypeTable.getClass();
        TypeTable typeTable = new TypeTable(protoBuf$TypeTable);
        VersionRequirementTable.Companion companion = VersionRequirementTable.f73600b;
        ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = protoBuf$Class.D;
        protoBuf$VersionRequirementTable.getClass();
        companion.getClass();
        DeserializationContext deserializationContextA = deserializationContext.a(this, list, nameResolver, typeTable, VersionRequirementTable.Companion.a(protoBuf$VersionRequirementTable), binaryVersion);
        DeserializationComponents deserializationComponents = deserializationContextA.f73998a;
        this.n = deserializationContextA;
        boolean zBooleanValue = Flags.m.d(protoBuf$Class.f73330e).booleanValue();
        ClassKind classKind3 = ClassKind.ENUM_CLASS;
        if (classKind2 == classKind3) {
            staticScopeForKotlinEnum = new StaticScopeForKotlinEnum(deserializationComponents.f73988a, this, zBooleanValue || Intrinsics.c(deserializationComponents.t.a(), Boolean.TRUE));
        } else {
            staticScopeForKotlinEnum = MemberScope.Empty.f73933b;
        }
        this.o = staticScopeForKotlinEnum;
        this.p = new DeserializedClassTypeConstructor();
        ScopesHolderForClass.Companion companion2 = ScopesHolderForClass.f72399e;
        StorageManager storageManager = deserializationComponents.f73988a;
        StorageManager storageManager2 = deserializationComponents.f73988a;
        KotlinTypeRefiner kotlinTypeRefinerC = deserializationComponents.q.c();
        DeserializedClassDescriptor$memberScopeHolder$1 deserializedClassDescriptor$memberScopeHolder$1 = new DeserializedClassDescriptor$memberScopeHolder$1(1, this, DeserializedClassMemberScope.class, "<init>", "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V", 0);
        companion2.getClass();
        storageManager.getClass();
        kotlinTypeRefinerC.getClass();
        this.q = new ScopesHolderForClass(this, storageManager, deserializedClassDescriptor$memberScopeHolder$1, kotlinTypeRefinerC, null);
        this.r = classKind2 == classKind3 ? new EnumEntryClassDescriptors() : null;
        DeclarationDescriptor declarationDescriptor = deserializationContext.f74000c;
        this.s = declarationDescriptor;
        this.t = storageManager2.e(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedClassDescriptor f74080b;

            {
                this.f74080b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Object next;
                DeserializedClassDescriptor deserializedClassDescriptor = this.f74080b;
                if (deserializedClassDescriptor.m.a()) {
                    ClassConstructorDescriptorImpl classConstructorDescriptorImplJ = DescriptorFactory.j(deserializedClassDescriptor);
                    classConstructorDescriptorImplJ.O0(deserializedClassDescriptor.o());
                    return classConstructorDescriptorImplJ;
                }
                List list2 = deserializedClassDescriptor.g.q;
                list2.getClass();
                Iterator it = list2.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (Flags.n.d(((ProtoBuf$Constructor) next).f73351e).booleanValue());
                ProtoBuf$Constructor protoBuf$Constructor = (ProtoBuf$Constructor) next;
                if (protoBuf$Constructor != null) {
                    return deserializedClassDescriptor.n.f74004i.e(protoBuf$Constructor, true);
                }
                return null;
            }
        });
        this.u = storageManager2.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedClassDescriptor f74081b;

            {
                this.f74081b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DeserializedClassDescriptor deserializedClassDescriptor = this.f74081b;
                DeserializationContext deserializationContext2 = deserializedClassDescriptor.n;
                List list2 = deserializedClassDescriptor.g.q;
                list2.getClass();
                ArrayList<ProtoBuf$Constructor> arrayList = new ArrayList();
                for (Object obj : list2) {
                    if (Flags.n.d(((ProtoBuf$Constructor) obj).f73351e).booleanValue()) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                for (ProtoBuf$Constructor protoBuf$Constructor : arrayList) {
                    MemberDeserializer memberDeserializer = deserializationContext2.f74004i;
                    protoBuf$Constructor.getClass();
                    arrayList2.add(memberDeserializer.e(protoBuf$Constructor, false));
                }
                return CollectionsKt.Y(CollectionsKt.Y(arrayList2, CollectionsKt.Q(deserializedClassDescriptor.y())), deserializationContext2.f73998a.n.c(deserializedClassDescriptor));
            }
        });
        this.v = storageManager2.e(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedClassDescriptor f74082b;

            {
                this.f74082b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DeserializedClassDescriptor deserializedClassDescriptor = this.f74082b;
                ProtoBuf$Class protoBuf$Class2 = deserializedClassDescriptor.g;
                if ((protoBuf$Class2.d & 4) == 4) {
                    ClassifierDescriptor classifierDescriptorF = deserializedClassDescriptor.F0().f(NameResolverUtilKt.b(deserializedClassDescriptor.n.f73999b, protoBuf$Class2.g), NoLookupLocation.FROM_DESERIALIZATION);
                    if (classifierDescriptorF instanceof ClassDescriptor) {
                        return (ClassDescriptor) classifierDescriptorF;
                    }
                }
                return null;
            }
        });
        this.w = storageManager2.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedClassDescriptor f74083b;

            {
                this.f74083b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DeserializedClassDescriptor deserializedClassDescriptor = this.f74083b;
                Modality modality = deserializedClassDescriptor.f74079k;
                Modality modality2 = Modality.SEALED;
                if (modality != modality2) {
                    return EmptyList.f71768b;
                }
                List<Integer> list2 = deserializedClassDescriptor.g.v;
                list2.getClass();
                if (list2.isEmpty()) {
                    CliSealedClassInheritorsProvider.f73824a.getClass();
                    if (deserializedClassDescriptor.f74079k != modality2) {
                        return EmptyList.f71768b;
                    }
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    DeclarationDescriptor declarationDescriptor2 = deserializedClassDescriptor.s;
                    if (declarationDescriptor2 instanceof PackageFragmentDescriptor) {
                        CliSealedClassInheritorsProvider.a(deserializedClassDescriptor, linkedHashSet, ((PackageFragmentDescriptor) declarationDescriptor2).n(), false);
                    }
                    MemberScope memberScopeN = deserializedClassDescriptor.N();
                    memberScopeN.getClass();
                    CliSealedClassInheritorsProvider.a(deserializedClassDescriptor, linkedHashSet, memberScopeN, true);
                    return CollectionsKt.o0(linkedHashSet, new Comparator() { // from class: kotlin.reflect.jvm.internal.impl.resolve.CliSealedClassInheritorsProvider$computeSealedSubclasses$$inlined$sortedBy$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return ComparisonsKt.a(DescriptorUtilsKt.g((ClassDescriptor) obj).f73679a.f73683a, DescriptorUtilsKt.g((ClassDescriptor) obj2).f73679a.f73683a);
                        }
                    });
                }
                ArrayList arrayList = new ArrayList();
                for (Integer num : list2) {
                    DeserializationContext deserializationContext2 = deserializedClassDescriptor.n;
                    DeserializationComponents deserializationComponents2 = deserializationContext2.f73998a;
                    NameResolver nameResolver2 = deserializationContext2.f73999b;
                    num.getClass();
                    ClassId classIdA = NameResolverUtilKt.a(nameResolver2, num.intValue());
                    deserializationComponents2.getClass();
                    ClassDeserializer classDeserializer = deserializationComponents2.u;
                    ClassDeserializer.Companion companion3 = ClassDeserializer.f73981c;
                    ClassDescriptor classDescriptorA = classDeserializer.a(classIdA, null);
                    if (classDescriptorA != null) {
                        arrayList.add(classDescriptorA);
                    }
                }
                return arrayList;
            }
        });
        this.x = storageManager2.e(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$$Lambda$4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedClassDescriptor f74084b;

            {
                this.f74084b = this;
            }

            /* JADX WARN: Code duplicated, block: B:39:0x00e6  */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Object multiFieldValueClassRepresentation;
                RigidTypeMarker rigidTypeMarker;
                int i2 = DeserializedClassDescriptor.A;
                DeserializedClassDescriptor deserializedClassDescriptor = this.f74084b;
                if (deserializedClassDescriptor.isInline() || deserializedClassDescriptor.r()) {
                    boolean zA = deserializedClassDescriptor.f74076h.a(1, 5, 1);
                    ProtoBuf$Class protoBuf$Class2 = deserializedClassDescriptor.g;
                    DeserializationContext deserializationContext2 = deserializedClassDescriptor.n;
                    NameResolver nameResolver2 = deserializationContext2.f73999b;
                    TypeTable typeTable2 = deserializationContext2.d;
                    DeserializedClassDescriptor$computeValueClassRepresentation$1 deserializedClassDescriptor$computeValueClassRepresentation$1 = new DeserializedClassDescriptor$computeValueClassRepresentation$1(1, deserializationContext2.f74003h, TypeDeserializer.class, "simpleType", "simpleType(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Type;Z)Lorg/jetbrains/kotlin/types/SimpleType;", 0);
                    DeserializedClassDescriptor$computeValueClassRepresentation$2 deserializedClassDescriptor$computeValueClassRepresentation$2 = new DeserializedClassDescriptor$computeValueClassRepresentation$2(1, deserializedClassDescriptor, DeserializedClassDescriptor.class, "getValueClassPropertyType", "getValueClassPropertyType(Lorg/jetbrains/kotlin/name/Name;)Lorg/jetbrains/kotlin/types/SimpleType;", 0);
                    protoBuf$Class2.getClass();
                    nameResolver2.getClass();
                    typeTable2.getClass();
                    if ((protoBuf$Class2.d & 8) == 8) {
                        Name nameD = Name.d(nameResolver2.getString(protoBuf$Class2.x));
                        int i3 = protoBuf$Class2.d;
                        ProtoBuf$Type protoBuf$TypeA = (i3 & 16) == 16 ? protoBuf$Class2.y : (i3 & 32) == 32 ? typeTable2.a(protoBuf$Class2.z) : null;
                        if ((protoBuf$TypeA == null || (rigidTypeMarker = (RigidTypeMarker) deserializedClassDescriptor$computeValueClassRepresentation$1.invoke(protoBuf$TypeA)) == null) && (rigidTypeMarker = (RigidTypeMarker) deserializedClassDescriptor$computeValueClassRepresentation$2.invoke(nameD)) == null) {
                            lc0.o("cannot determine underlying type for value class ", Name.d(nameResolver2.getString(protoBuf$Class2.f73331f)), " with property ", nameD);
                            return null;
                        }
                        multiFieldValueClassRepresentation = new InlineClassRepresentation(nameD, rigidTypeMarker);
                    } else if (zA && Flags.f73580k.d(protoBuf$Class2.f73330e).booleanValue()) {
                        List list2 = protoBuf$Class2.q;
                        list2.getClass();
                        Iterator it = list2.iterator();
                        boolean z = false;
                        Object obj = null;
                        while (true) {
                            if (!it.hasNext()) {
                                if (!z) {
                                    break;
                                }
                                break;
                            }
                            Object next = it.next();
                            if (!Flags.n.d(((ProtoBuf$Constructor) next).f73351e).booleanValue()) {
                                if (!z) {
                                    obj = next;
                                    z = true;
                                }
                            }
                            obj = null;
                            break;
                        }
                        ProtoBuf$Constructor protoBuf$Constructor = (ProtoBuf$Constructor) obj;
                        if (protoBuf$Constructor == null) {
                            multiFieldValueClassRepresentation = null;
                        } else {
                            List list3 = protoBuf$Constructor.f73352f;
                            list3.getClass();
                            List<ProtoBuf$ValueParameter> list4 = list3;
                            ArrayList arrayList = new ArrayList(CollectionsKt.t(list4, 10));
                            for (ProtoBuf$ValueParameter protoBuf$ValueParameter : list4) {
                                arrayList.add(new Pair(Name.d(nameResolver2.getString(protoBuf$ValueParameter.f73529f)), deserializedClassDescriptor$computeValueClassRepresentation$1.invoke(ProtoTypeTableUtilKt.k(protoBuf$ValueParameter, typeTable2))));
                            }
                            multiFieldValueClassRepresentation = new MultiFieldValueClassRepresentation(arrayList);
                        }
                    } else {
                        multiFieldValueClassRepresentation = null;
                    }
                    if (multiFieldValueClassRepresentation != null) {
                        return multiFieldValueClassRepresentation;
                    }
                    if (!zA) {
                        ClassConstructorDescriptor classConstructorDescriptorY = deserializedClassDescriptor.y();
                        if (classConstructorDescriptorY != null) {
                            List listH = classConstructorDescriptorY.h();
                            listH.getClass();
                            Name name = ((ValueParameterDescriptor) CollectionsKt.B(listH)).getName();
                            name.getClass();
                            SimpleType simpleTypeG0 = deserializedClassDescriptor.G0(name);
                            if (simpleTypeG0 != null) {
                                return new InlineClassRepresentation(name, simpleTypeG0);
                            }
                            mt.f(deserializedClassDescriptor, "Value class has no underlying property: ");
                            return null;
                        }
                        mt.f(deserializedClassDescriptor, "Inline class has no primary constructor: ");
                    }
                }
                return null;
            }
        });
        NameResolver nameResolver2 = deserializationContextA.f73999b;
        TypeTable typeTable2 = deserializationContextA.d;
        DeserializedClassDescriptor deserializedClassDescriptor = declarationDescriptor instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) declarationDescriptor : null;
        this.y = new ProtoContainer.Class(protoBuf$Class, nameResolver2, typeTable2, sourceElement, deserializedClassDescriptor != null ? deserializedClassDescriptor.y : null);
        this.z = !Flags.f73574c.d(protoBuf$Class.f73330e).booleanValue() ? Annotations.Companion.f72432a : new NonEmptyDeserializedAnnotations(storageManager2, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$$Lambda$5

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedClassDescriptor f74085b;

            {
                this.f74085b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DeserializedClassDescriptor deserializedClassDescriptor2 = this.f74085b;
                return CollectionsKt.y0(deserializedClassDescriptor2.n.f73998a.f73991e.c(deserializedClassDescriptor2.y));
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean D0() {
        return Flags.f73577h.d(this.g.f73330e).booleanValue();
    }

    public final DeserializedClassMemberScope F0() {
        return (DeserializedClassMemberScope) this.q.a(this.n.f73998a.q.c());
    }

    public final SimpleType G0(Name name) {
        Iterator it = F0().c(name, NoLookupLocation.FROM_DESERIALIZATION).iterator();
        boolean z = false;
        Object obj = null;
        while (true) {
            if (!it.hasNext()) {
                if (!z) {
                    break;
                }
                break;
            }
            Object next = it.next();
            if (((PropertyDescriptor) next).J() == null) {
                if (!z) {
                    z = true;
                    obj = next;
                }
            }
            obj = null;
            break;
        }
        PropertyDescriptor propertyDescriptor = (PropertyDescriptor) obj;
        return (SimpleType) (propertyDescriptor != null ? propertyDescriptor.getType() : null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ValueClassRepresentation O() {
        return (ValueClassRepresentation) this.x.mo47invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean R() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final List S() {
        DeserializationContext deserializationContext = this.n;
        List listA = ProtoTypeTableUtilKt.a(this.g, deserializationContext.d);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(new ReceiverParameterDescriptorImpl(E0(), new ContextClassReceiver(this, deserializationContext.f74003h.g((ProtoBuf$Type) it.next()), null, null), Annotations.Companion.f72432a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean T() {
        return Flags.f73576f.d(this.g.f73330e) == ProtoBuf$Class.Kind.COMPANION_OBJECT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean W() {
        return Flags.l.d(this.g.f73330e).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope b0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        return this.q.a(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean c0() {
        return Flags.f73579j.d(this.g.f73330e).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor d() {
        return this.s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassKind e() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope e0() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final Collection f() {
        return (Collection) this.u.mo47invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassDescriptor f0() {
        return (ClassDescriptor) this.v.mo47invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    public final SourceElement getSource() {
        return this.f74077i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
    public final DescriptorVisibility getVisibility() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return Flags.f73578i.d(this.g.f73330e).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean isInline() {
        if (!Flags.f73580k.d(this.g.f73330e).booleanValue()) {
            return false;
        }
        BinaryVersion binaryVersion = this.f74076h;
        int i2 = binaryVersion.f73569b;
        if (i2 >= 1) {
            if (i2 > 1) {
                return false;
            }
            int i3 = binaryVersion.f73570c;
            if (i3 >= 4 && (i3 > 4 || binaryVersion.d > 1)) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor j() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean k() {
        return Flags.g.d(this.g.f73330e).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List p() {
        return this.n.f74003h.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality q() {
        return this.f74079k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean r() {
        return Flags.f73580k.d(this.g.f73330e).booleanValue() && this.f74076h.a(1, 4, 2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("deserialized ");
        sb.append(c0() ? "expect " : "");
        sb.append("class ");
        sb.append(getName());
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassConstructorDescriptor y() {
        return (ClassConstructorDescriptor) this.t.mo47invoke();
    }
}
