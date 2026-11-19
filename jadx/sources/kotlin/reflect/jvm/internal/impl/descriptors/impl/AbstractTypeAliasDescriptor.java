package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$Companion$EMPTY$1;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.NameUtils;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextClassReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ImplicitContextReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractTypeAliasDescriptor extends DeclarationDescriptorNonRootImpl implements TypeAliasDescriptor {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72454k = {Reflection.f71922a.h(new PropertyReference1Impl(AbstractTypeAliasDescriptor.class, "constructors", "getConstructors()Ljava/util/Collection;", 0))};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StorageManager f72455f;
    public final DescriptorVisibility g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotNullLazyValue f72456h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f72457i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AbstractTypeAliasDescriptor$typeConstructor$1 f72458j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1] */
    public AbstractTypeAliasDescriptor(StorageManager storageManager, DeclarationDescriptor declarationDescriptor, Annotations annotations, Name name, SourceElement sourceElement, DescriptorVisibility descriptorVisibility) {
        super(declarationDescriptor, annotations, name, sourceElement);
        storageManager.getClass();
        declarationDescriptor.getClass();
        annotations.getClass();
        name.getClass();
        sourceElement.getClass();
        descriptorVisibility.getClass();
        this.f72455f = storageManager;
        this.g = descriptorVisibility;
        this.f72456h = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AbstractTypeAliasDescriptor f72459b;

            {
                this.f72459b = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r13v0 */
            /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r13v2 */
            /* JADX WARN: Type inference failed for: r13v3 */
            /* JADX WARN: Type inference failed for: r13v4 */
            /* JADX WARN: Type inference failed for: r15v0, types: [kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptorImpl] */
            /* JADX WARN: Type inference failed for: r18v0, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r4v2, types: [kotlin.collections.EmptyList] */
            /* JADX WARN: Type inference failed for: r4v3 */
            /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList] */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ClassConstructorDescriptor classConstructorDescriptorB;
                ?? arrayList;
                KProperty[] kPropertyArr = AbstractTypeAliasDescriptor.f72454k;
                AbstractTypeAliasDescriptor abstractTypeAliasDescriptor = this.f72459b;
                abstractTypeAliasDescriptor.getClass();
                DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = (DeserializedTypeAliasDescriptor) abstractTypeAliasDescriptor;
                ClassDescriptor classDescriptorS = deserializedTypeAliasDescriptor.s();
                if (classDescriptorS == null) {
                    return EmptyList.f71768b;
                }
                Collection<ClassConstructorDescriptor> collectionF = classDescriptorS.f();
                collectionF.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (ClassConstructorDescriptor classConstructorDescriptor : collectionF) {
                    TypeAliasConstructorDescriptorImpl.Companion companion = TypeAliasConstructorDescriptorImpl.J;
                    StorageManager storageManager2 = abstractTypeAliasDescriptor.f72455f;
                    classConstructorDescriptor.getClass();
                    companion.getClass();
                    storageManager2.getClass();
                    ?? r13 = 0;
                    r13 = 0;
                    r13 = 0;
                    TypeSubstitutor typeSubstitutorD = deserializedTypeAliasDescriptor.s() == null ? null : TypeSubstitutor.d(deserializedTypeAliasDescriptor.C());
                    if (typeSubstitutorD != null && (classConstructorDescriptorB = classConstructorDescriptor.b(typeSubstitutorD)) != null) {
                        Annotations annotations2 = classConstructorDescriptor.getAnnotations();
                        CallableMemberDescriptor.Kind kindE = classConstructorDescriptor.e();
                        kindE.getClass();
                        SourceElement source = abstractTypeAliasDescriptor.getSource();
                        source.getClass();
                        ?? typeAliasConstructorDescriptorImpl = new TypeAliasConstructorDescriptorImpl(storageManager2, abstractTypeAliasDescriptor, classConstructorDescriptorB, null, annotations2, kindE, source, null);
                        List listH = classConstructorDescriptor.h();
                        if (listH == null) {
                            FunctionDescriptorImpl.Z(28);
                            throw null;
                        }
                        TypeSubstitutor typeSubstitutor = typeSubstitutorD;
                        ArrayList arrayListI0 = FunctionDescriptorImpl.I0(typeAliasConstructorDescriptorImpl, listH, typeSubstitutor, false, false, null);
                        if (arrayListI0 != null) {
                            SimpleType simpleTypeC = SpecialTypesKt.c(FlexibleTypesKt.a(classConstructorDescriptorB.getReturnType().K0()), deserializedTypeAliasDescriptor.o());
                            ReceiverParameterDescriptor receiverParameterDescriptorG = classConstructorDescriptor.G();
                            Annotations$Companion$EMPTY$1 annotations$Companion$EMPTY$1 = Annotations.Companion.f72432a;
                            ReceiverParameterDescriptorImpl receiverParameterDescriptorImplH = receiverParameterDescriptorG != null ? DescriptorFactory.h(typeAliasConstructorDescriptorImpl, typeSubstitutor.h(Variance.INVARIANT, receiverParameterDescriptorG.getType()), annotations$Companion$EMPTY$1) : null;
                            ClassDescriptor classDescriptorS2 = deserializedTypeAliasDescriptor.s();
                            if (classDescriptorS2 != null) {
                                List listR0 = classConstructorDescriptor.r0();
                                listR0.getClass();
                                List list = listR0;
                                arrayList = new ArrayList(CollectionsKt.t(list, 10));
                                Iterator it = list.iterator();
                                int i2 = 0;
                                while (it.hasNext()) {
                                    Object next = it.next();
                                    int i3 = i2 + 1;
                                    if (i2 < 0) {
                                        CollectionsKt.t0();
                                        throw null;
                                    }
                                    ReceiverParameterDescriptor receiverParameterDescriptor = (ReceiverParameterDescriptor) next;
                                    KotlinType kotlinTypeH = typeSubstitutor.h(Variance.INVARIANT, receiverParameterDescriptor.getType());
                                    ReceiverValue value = receiverParameterDescriptor.getValue();
                                    value.getClass();
                                    Iterator it2 = it;
                                    ContextClassReceiver contextClassReceiver = new ContextClassReceiver(classDescriptorS2, kotlinTypeH, ((ImplicitContextReceiver) value).a(), null);
                                    Regex regex = NameUtils.f73689a;
                                    arrayList.add(new ReceiverParameterDescriptorImpl(classDescriptorS2, contextClassReceiver, annotations$Companion$EMPTY$1, Name.e(NameUtils.f73690b + '_' + i2)));
                                    it = it2;
                                    i2 = i3;
                                }
                            } else {
                                arrayList = EmptyList.f71768b;
                            }
                            typeAliasConstructorDescriptorImpl.J0(receiverParameterDescriptorImplH, null, arrayList, abstractTypeAliasDescriptor.p(), arrayListI0, simpleTypeC, Modality.FINAL, abstractTypeAliasDescriptor.g);
                            r13 = typeAliasConstructorDescriptorImpl;
                        }
                    }
                    if (r13 != 0) {
                        arrayList2.add(r13);
                    }
                }
                return arrayList2;
            }
        });
        this.f72458j = new TypeConstructor() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final boolean A() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final KotlinBuiltIns g() {
                return DescriptorUtilsKt.i(this.f72462b).g();
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final List getParameters() {
                return this.f72462b.F0();
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final Collection i() {
                Collection collectionI = ((DeserializedTypeAliasDescriptor) this.f72462b).m0().H0().i();
                collectionI.getClass();
                return collectionI;
            }

            public final String toString() {
                return "[typealias " + this.f72462b.getName().b() + ']';
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final ClassifierDescriptor y() {
                return this.f72462b;
            }
        };
    }

    public final SimpleType B0() {
        MemberScope memberScopeQ;
        ClassDescriptor classDescriptorS = ((DeserializedTypeAliasDescriptor) this).s();
        if (classDescriptorS == null || (memberScopeQ = classDescriptorS.Q()) == null) {
            memberScopeQ = MemberScope.Empty.f73933b;
        }
        Function1 function1 = new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AbstractTypeAliasDescriptor f72461b;

            {
                this.f72461b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KProperty[] kPropertyArr = AbstractTypeAliasDescriptor.f72454k;
                ((KotlinTypeRefiner) obj).d(this.f72461b);
                return null;
            }
        };
        ErrorType errorType = TypeUtils.f74263a;
        return ErrorUtils.f(this) ? ErrorUtils.c(ErrorTypeKind.UNABLE_TO_SUBSTITUTE_TYPE, toString()) : TypeUtils.n(j(), memberScopeQ, function1);
    }

    public abstract List F0();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean R() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public final ClassifierDescriptor y0() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public final DeclarationDescriptor y0() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean c0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
    public final DescriptorVisibility getVisibility() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor j() {
        return this.f72458j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean k() {
        return TypeUtils.d(((DeserializedTypeAliasDescriptor) this).m0(), new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AbstractTypeAliasDescriptor f72460b;

            {
                this.f72460b = this;
            }

            /* JADX WARN: Code duplicated, block: B:9:0x0029  */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z;
                UnwrappedType unwrappedType = (UnwrappedType) obj;
                KProperty[] kPropertyArr = AbstractTypeAliasDescriptor.f72454k;
                unwrappedType.getClass();
                if (KotlinTypeKt.a(unwrappedType)) {
                    z = false;
                } else {
                    ClassifierDescriptor classifierDescriptorY = unwrappedType.H0().y();
                    if (!(classifierDescriptorY instanceof TypeParameterDescriptor) || Intrinsics.c(((TypeParameterDescriptor) classifierDescriptorY).d(), this.f72460b)) {
                        z = false;
                    } else {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        }, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List p() {
        List list = this.f72457i;
        if (list != null) {
            return list;
        }
        Intrinsics.h("declaredTypeParametersImpl");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public final String toString() {
        return "typealias " + getName().b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object v(DeclarationDescriptorVisitor declarationDescriptorVisitor, Object obj) {
        return declarationDescriptorVisitor.b(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl
    public final DeclarationDescriptorWithSource y0() {
        return this;
    }
}
