package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeAliasConstructorDescriptorImpl extends FunctionDescriptorImpl implements TypeAliasConstructorDescriptor {
    public final StorageManager F;
    public final TypeAliasDescriptor G;
    public final NullableLazyValue H;
    public ClassConstructorDescriptor I;
    public static final /* synthetic */ KProperty[] K = {Reflection.f71922a.h(new PropertyReference1Impl(TypeAliasConstructorDescriptorImpl.class, "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;", 0))};
    public static final Companion J = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TypeAliasConstructorDescriptorImpl(StorageManager storageManager, TypeAliasDescriptor typeAliasDescriptor, final ClassConstructorDescriptor classConstructorDescriptor, TypeAliasConstructorDescriptor typeAliasConstructorDescriptor, Annotations annotations, CallableMemberDescriptor.Kind kind, SourceElement sourceElement) {
        super(kind, typeAliasDescriptor, typeAliasConstructorDescriptor, sourceElement, annotations, SpecialNames.f73694e);
        this.F = storageManager;
        this.G = typeAliasDescriptor;
        this.t = typeAliasDescriptor.R();
        this.H = storageManager.e(new Function0(this, classConstructorDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptorImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeAliasConstructorDescriptorImpl f72561b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final ClassConstructorDescriptor f72562c;

            {
                this.f72561b = this;
                this.f72562c = classConstructorDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = this.f72561b;
                StorageManager storageManager2 = typeAliasConstructorDescriptorImpl.F;
                TypeAliasDescriptor typeAliasDescriptor2 = typeAliasConstructorDescriptorImpl.G;
                ClassConstructorDescriptor classConstructorDescriptor2 = this.f72562c;
                Annotations annotations2 = classConstructorDescriptor2.getAnnotations();
                CallableMemberDescriptor.Kind kindE = classConstructorDescriptor2.e();
                kindE.getClass();
                TypeAliasDescriptor typeAliasDescriptor3 = typeAliasConstructorDescriptorImpl.G;
                SourceElement source = typeAliasDescriptor3.getSource();
                source.getClass();
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl2 = new TypeAliasConstructorDescriptorImpl(storageManager2, typeAliasDescriptor2, classConstructorDescriptor2, typeAliasConstructorDescriptorImpl, annotations2, kindE, source);
                TypeAliasConstructorDescriptorImpl.J.getClass();
                TypeSubstitutor typeSubstitutorD = typeAliasDescriptor3.s() == null ? null : TypeSubstitutor.d(typeAliasDescriptor3.C());
                if (typeSubstitutorD == null) {
                    return null;
                }
                ReceiverParameterDescriptor receiverParameterDescriptorG = classConstructorDescriptor2.G();
                AbstractReceiverParameterDescriptor abstractReceiverParameterDescriptorB = receiverParameterDescriptorG != null ? receiverParameterDescriptorG.b(typeSubstitutorD) : null;
                List listR0 = classConstructorDescriptor2.r0();
                listR0.getClass();
                List list = listR0;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ReceiverParameterDescriptor) it.next()).b(typeSubstitutorD));
                }
                List listP = typeAliasDescriptor3.p();
                List listH = typeAliasConstructorDescriptorImpl.h();
                KotlinType kotlinType = typeAliasConstructorDescriptorImpl.f72493h;
                kotlinType.getClass();
                typeAliasConstructorDescriptorImpl2.J0(null, abstractReceiverParameterDescriptorB, arrayList, listP, listH, kotlinType, Modality.FINAL, typeAliasDescriptor3.getVisibility());
                return typeAliasConstructorDescriptorImpl2;
            }
        });
        this.I = classConstructorDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl G0(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        declarationDescriptor.getClass();
        kind.getClass();
        annotations.getClass();
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind != kind2) {
            CallableMemberDescriptor.Kind kind3 = CallableMemberDescriptor.Kind.SYNTHESIZED;
        }
        return new TypeAliasConstructorDescriptorImpl(this.F, this.G, this.I, this, annotations, kind2, sourceElement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptor
    public final ClassConstructorDescriptor M() {
        return this.I;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public final TypeAliasConstructorDescriptorImpl b(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        FunctionDescriptor functionDescriptorB = super.b(typeSubstitutor);
        functionDescriptorB.getClass();
        TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = (TypeAliasConstructorDescriptorImpl) functionDescriptorB;
        KotlinType kotlinType = typeAliasConstructorDescriptorImpl.f72493h;
        kotlinType.getClass();
        ClassConstructorDescriptor classConstructorDescriptorB = this.I.y0().b(TypeSubstitutor.d(kotlinType));
        if (classConstructorDescriptorB == null) {
            return null;
        }
        typeAliasConstructorDescriptorImpl.I = classConstructorDescriptorB;
        return typeAliasConstructorDescriptorImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor
    public final boolean U() {
        return this.I.U();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor
    public final ClassDescriptor V() {
        ClassDescriptor classDescriptorV = this.I.V();
        classDescriptorV.getClass();
        return classDescriptorV;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public final CallableDescriptor y0() {
        FunctionDescriptor functionDescriptorY0 = super.y0();
        functionDescriptorY0.getClass();
        return (TypeAliasConstructorDescriptor) functionDescriptorY0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final /* bridge */ /* synthetic */ ConstructorDescriptor b(TypeSubstitutor typeSubstitutor) {
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ClassifierDescriptorWithTypeParameters d() {
        return this.G;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final KotlinType getReturnType() {
        KotlinType kotlinType = this.f72493h;
        kotlinType.getClass();
        return kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final CallableMemberDescriptor l0(ClassDescriptor classDescriptor, Modality modality, DelegatedDescriptorVisibility delegatedDescriptorVisibility, CallableMemberDescriptor.Kind kind) {
        classDescriptor.getClass();
        delegatedDescriptorVisibility.getClass();
        kind.getClass();
        FunctionDescriptorImpl.CopyConfiguration copyConfigurationK0 = K0(TypeSubstitutor.f74260b);
        copyConfigurationK0.f72501b = classDescriptor;
        copyConfigurationK0.f72502c = modality;
        copyConfigurationK0.d = delegatedDescriptorVisibility;
        copyConfigurationK0.f72504f = kind;
        copyConfigurationK0.m = false;
        CallableDescriptor callableDescriptorH0 = copyConfigurationK0.x.H0(copyConfigurationK0);
        callableDescriptorH0.getClass();
        return (TypeAliasConstructorDescriptor) callableDescriptorH0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl
    public final DeclarationDescriptorWithSource y0() {
        FunctionDescriptor functionDescriptorY0 = super.y0();
        functionDescriptorY0.getClass();
        return (TypeAliasConstructorDescriptor) functionDescriptorY0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor d() {
        return this.G;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public final CallableMemberDescriptor y0() {
        FunctionDescriptor functionDescriptorY0 = super.y0();
        functionDescriptorY0.getClass();
        return (TypeAliasConstructorDescriptor) functionDescriptorY0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public final DeclarationDescriptor y0() {
        FunctionDescriptor functionDescriptorY0 = super.y0();
        functionDescriptorY0.getClass();
        return (TypeAliasConstructorDescriptor) functionDescriptorY0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public final FunctionDescriptor y0() {
        FunctionDescriptor functionDescriptorY0 = super.y0();
        functionDescriptorY0.getClass();
        return (TypeAliasConstructorDescriptor) functionDescriptorY0;
    }

    public /* synthetic */ TypeAliasConstructorDescriptorImpl(StorageManager storageManager, TypeAliasDescriptor typeAliasDescriptor, ClassConstructorDescriptor classConstructorDescriptor, TypeAliasConstructorDescriptor typeAliasConstructorDescriptor, Annotations annotations, CallableMemberDescriptor.Kind kind, SourceElement sourceElement, DefaultConstructorMarker defaultConstructorMarker) {
        this(storageManager, typeAliasDescriptor, classConstructorDescriptor, typeAliasConstructorDescriptor, annotations, kind, sourceElement);
    }
}
