package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import defpackage.a61;
import defpackage.az;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ExtensionReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ImplicitContextReceiver;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FunctionDescriptorImpl extends DeclarationDescriptorNonRootImpl implements FunctionDescriptor {
    public volatile Function0 A;
    public final FunctionDescriptor B;
    public final CallableMemberDescriptor.Kind C;
    public FunctionDescriptor D;
    public Map E;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f72492f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public KotlinType f72493h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f72494i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ReceiverParameterDescriptor f72495j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ReceiverParameterDescriptor f72496k;
    public Modality l;
    public DescriptorVisibility m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public Collection z;

    public class CopyConfiguration implements FunctionDescriptor.CopyBuilder<FunctionDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TypeSubstitution f72500a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DeclarationDescriptor f72501b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Modality f72502c;
        public DescriptorVisibility d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public FunctionDescriptor f72503e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CallableMemberDescriptor.Kind f72504f;
        public List g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List f72505h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ReceiverParameterDescriptor f72506i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ReceiverParameterDescriptor f72507j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public KotlinType f72508k;
        public Name l;
        public boolean m;
        public boolean n;
        public boolean o;
        public boolean p;
        public boolean q;
        public List r;
        public Annotations s;
        public boolean t;
        public final LinkedHashMap u;
        public Boolean v;
        public boolean w;
        public final /* synthetic */ FunctionDescriptorImpl x;

        public CopyConfiguration(FunctionDescriptorImpl functionDescriptorImpl, TypeSubstitution typeSubstitution, DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibility descriptorVisibility, CallableMemberDescriptor.Kind kind, List<ValueParameterDescriptor> list, List<ReceiverParameterDescriptor> list2, ReceiverParameterDescriptor receiverParameterDescriptor, KotlinType kotlinType, Name name) {
            if (typeSubstitution == null) {
                s(0);
                throw null;
            }
            if (declarationDescriptor == null) {
                s(1);
                throw null;
            }
            if (modality == null) {
                s(2);
                throw null;
            }
            if (descriptorVisibility == null) {
                s(3);
                throw null;
            }
            if (kind == null) {
                s(4);
                throw null;
            }
            if (list == null) {
                s(5);
                throw null;
            }
            if (list2 == null) {
                s(6);
                throw null;
            }
            if (kotlinType == null) {
                s(7);
                throw null;
            }
            this.x = functionDescriptorImpl;
            this.f72503e = null;
            this.f72507j = functionDescriptorImpl.f72496k;
            this.m = true;
            this.n = false;
            this.o = false;
            this.p = false;
            this.q = functionDescriptorImpl.u;
            this.r = null;
            this.s = null;
            this.t = functionDescriptorImpl.v;
            this.u = new LinkedHashMap();
            this.v = null;
            this.w = false;
            this.f72500a = typeSubstitution;
            this.f72501b = declarationDescriptor;
            this.f72502c = modality;
            this.d = descriptorVisibility;
            this.f72504f = kind;
            this.g = list;
            this.f72505h = list2;
            this.f72506i = receiverParameterDescriptor;
            this.f72508k = kotlinType;
            this.l = name;
        }

        public static /* synthetic */ void s(int i2) {
            String str;
            int i3;
            switch (i2) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
            switch (i2) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                    i3 = 2;
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    i3 = 3;
                    break;
            }
            Object[] objArr = new Object[i3];
            switch (i2) {
                case 1:
                    objArr[0] = "newOwner";
                    break;
                case 2:
                    objArr[0] = "newModality";
                    break;
                case 3:
                    objArr[0] = "newVisibility";
                    break;
                case 4:
                case 14:
                    objArr[0] = b.a.d;
                    break;
                case 5:
                    objArr[0] = "newValueParameterDescriptors";
                    break;
                case 6:
                    objArr[0] = "newContextReceiverParameters";
                    break;
                case 7:
                    objArr[0] = "newReturnType";
                    break;
                case 8:
                    objArr[0] = "owner";
                    break;
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 10:
                    objArr[0] = "modality";
                    break;
                case 12:
                    objArr[0] = "visibility";
                    break;
                case 17:
                    objArr[0] = "name";
                    break;
                case 19:
                case 21:
                    objArr[0] = "parameters";
                    break;
                case 23:
                    objArr[0] = "type";
                    break;
                case 25:
                    objArr[0] = "contextReceiverParameters";
                    break;
                case 35:
                    objArr[0] = "additionalAnnotations";
                    break;
                case 37:
                default:
                    objArr[0] = "substitution";
                    break;
                case 39:
                    objArr[0] = "userDataKey";
                    break;
            }
            switch (i2) {
                case 9:
                    objArr[1] = "setOwner";
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 11:
                    objArr[1] = "setModality";
                    break;
                case 13:
                    objArr[1] = "setVisibility";
                    break;
                case 15:
                    objArr[1] = "setKind";
                    break;
                case 16:
                    objArr[1] = "setCopyOverrides";
                    break;
                case 18:
                    objArr[1] = "setName";
                    break;
                case 20:
                    objArr[1] = "setValueParameters";
                    break;
                case 22:
                    objArr[1] = "setTypeParameters";
                    break;
                case 24:
                    objArr[1] = "setReturnType";
                    break;
                case 26:
                    objArr[1] = "setContextReceiverParameters";
                    break;
                case 27:
                    objArr[1] = "setExtensionReceiverParameter";
                    break;
                case 28:
                    objArr[1] = "setDispatchReceiverParameter";
                    break;
                case 29:
                    objArr[1] = "setOriginal";
                    break;
                case 30:
                    objArr[1] = "setSignatureChange";
                    break;
                case 31:
                    objArr[1] = "setPreserveSourceElement";
                    break;
                case 32:
                    objArr[1] = "setDropOriginalInContainingParts";
                    break;
                case 33:
                    objArr[1] = "setHiddenToOvercomeSignatureClash";
                    break;
                case 34:
                    objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                    break;
                case 36:
                    objArr[1] = "setAdditionalAnnotations";
                    break;
                case 38:
                    objArr[1] = "setSubstitution";
                    break;
                case 40:
                    objArr[1] = "putUserData";
                    break;
                case 41:
                    objArr[1] = "getSubstitution";
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    objArr[1] = "setJustForTypeSubstitution";
                    break;
            }
            switch (i2) {
                case 8:
                    objArr[2] = "setOwner";
                    break;
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                    break;
                case 10:
                    objArr[2] = "setModality";
                    break;
                case 12:
                    objArr[2] = "setVisibility";
                    break;
                case 14:
                    objArr[2] = "setKind";
                    break;
                case 17:
                    objArr[2] = "setName";
                    break;
                case 19:
                    objArr[2] = "setValueParameters";
                    break;
                case 21:
                    objArr[2] = "setTypeParameters";
                    break;
                case 23:
                    objArr[2] = "setReturnType";
                    break;
                case 25:
                    objArr[2] = "setContextReceiverParameters";
                    break;
                case 35:
                    objArr[2] = "setAdditionalAnnotations";
                    break;
                case 37:
                    objArr[2] = "setSubstitution";
                    break;
                case 39:
                    objArr[2] = "putUserData";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            switch (i2) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                    throw new IllegalStateException(str2);
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    throw new IllegalArgumentException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder a(EmptyList emptyList) {
            if (emptyList != null) {
                this.r = emptyList;
                return this;
            }
            s(21);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder b(List list) {
            if (list != null) {
                this.g = list;
                return this;
            }
            s(19);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor build() {
            return this.x.H0(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder c(ReceiverParameterDescriptor receiverParameterDescriptor) {
            this.f72507j = receiverParameterDescriptor;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder d() {
            this.t = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder e() {
            this.m = false;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder f(TypeSubstitution typeSubstitution) {
            if (typeSubstitution != null) {
                this.f72500a = typeSubstitution;
                return this;
            }
            s(37);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder g(DescriptorVisibility descriptorVisibility) {
            if (descriptorVisibility != null) {
                this.d = descriptorVisibility;
                return this;
            }
            s(12);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder h() {
            this.q = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder i(Name name) {
            if (name != null) {
                this.l = name;
                return this;
            }
            s(17);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder j(ClassConstructorDescriptor classConstructorDescriptor) {
            this.f72503e = classConstructorDescriptor;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder k(Modality modality) {
            if (modality != null) {
                this.f72502c = modality;
                return this;
            }
            s(10);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder l() {
            this.o = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder m(KotlinType kotlinType) {
            if (kotlinType != null) {
                this.f72508k = kotlinType;
                return this;
            }
            s(23);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder n() {
            this.u.put(JavaMethodDescriptor.I, Boolean.TRUE);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder o(DeclarationDescriptor declarationDescriptor) {
            if (declarationDescriptor != null) {
                this.f72501b = declarationDescriptor;
                return this;
            }
            s(8);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder p(CallableMemberDescriptor.Kind kind) {
            if (kind != null) {
                this.f72504f = kind;
                return this;
            }
            s(14);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder q(Annotations annotations) {
            if (annotations != null) {
                this.s = annotations;
                return this;
            }
            s(35);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder r() {
            this.n = true;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionDescriptorImpl(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        super(declarationDescriptor, annotations, name, sourceElement);
        if (declarationDescriptor == null) {
            Z(0);
            throw null;
        }
        if (annotations == null) {
            Z(1);
            throw null;
        }
        if (name == null) {
            Z(2);
            throw null;
        }
        if (kind == null) {
            Z(3);
            throw null;
        }
        if (sourceElement == null) {
            Z(4);
            throw null;
        }
        this.m = DescriptorVisibilities.f72372i;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = true;
        this.y = false;
        this.z = null;
        this.A = null;
        this.D = null;
        this.E = null;
        this.B = functionDescriptor == null ? this : functionDescriptor;
        this.C = kind;
    }

    public static ArrayList I0(FunctionDescriptor functionDescriptor, List list, TypeSubstitutor typeSubstitutor, boolean z, boolean z2, boolean[] zArr) {
        Function0<List<VariableDescriptor>> function0;
        if (list == null) {
            Z(30);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) it.next();
            KotlinType type = valueParameterDescriptor.getType();
            Variance variance = Variance.IN_VARIANCE;
            KotlinType kotlinTypeJ = typeSubstitutor.j(variance, type);
            KotlinType kotlinTypeO0 = valueParameterDescriptor.o0();
            KotlinType kotlinTypeJ2 = kotlinTypeO0 == null ? null : typeSubstitutor.j(variance, kotlinTypeO0);
            if (kotlinTypeJ == null) {
                return null;
            }
            if ((kotlinTypeJ != valueParameterDescriptor.getType() || kotlinTypeO0 != kotlinTypeJ2) && zArr != null) {
                zArr[0] = true;
            }
            if (valueParameterDescriptor instanceof ValueParameterDescriptorImpl.WithDestructuringDeclaration) {
                final List list2 = (List) ((ValueParameterDescriptorImpl.WithDestructuringDeclaration) valueParameterDescriptor).n.getF71699b();
                function0 = new Function0<List<VariableDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return list2;
                    }
                };
            } else {
                function0 = null;
            }
            ValueParameterDescriptor valueParameterDescriptor2 = z ? null : valueParameterDescriptor;
            int index = valueParameterDescriptor.getIndex();
            Annotations annotations = valueParameterDescriptor.getAnnotations();
            Name name = valueParameterDescriptor.getName();
            boolean zU0 = valueParameterDescriptor.u0();
            boolean zJ0 = valueParameterDescriptor.j0();
            boolean zH0 = valueParameterDescriptor.h0();
            SourceElement source = z2 ? valueParameterDescriptor.getSource() : SourceElement.f72405a;
            ValueParameterDescriptorImpl.m.getClass();
            annotations.getClass();
            name.getClass();
            source.getClass();
            arrayList.add(function0 == null ? new ValueParameterDescriptorImpl(functionDescriptor, valueParameterDescriptor2, index, annotations, name, kotlinTypeJ, zU0, zJ0, zH0, kotlinTypeJ2, source) : new ValueParameterDescriptorImpl.WithDestructuringDeclaration(functionDescriptor, valueParameterDescriptor2, index, annotations, name, kotlinTypeJ, zU0, zJ0, zH0, kotlinTypeJ2, source, function0));
        }
        return arrayList;
    }

    public static /* synthetic */ void Z(int i2) {
        String str;
        int i3;
        switch (i2) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i2) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                i3 = 2;
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                i3 = 3;
                break;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = b.a.d;
                break;
            case 4:
                objArr[0] = Payload.SOURCE;
                break;
            case 5:
                objArr[0] = "contextReceiverParameters";
                break;
            case 6:
                objArr[0] = "typeParameters";
                break;
            case 7:
            case 28:
            case 30:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 8:
            case 10:
                objArr[0] = "visibility";
                break;
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 11:
                objArr[0] = "unsubstitutedReturnType";
                break;
            case 12:
                objArr[0] = "extensionReceiverParameter";
                break;
            case 17:
                objArr[0] = "overriddenDescriptors";
                break;
            case 22:
                objArr[0] = "originalSubstitutor";
                break;
            case 24:
            case 29:
            case 31:
                objArr[0] = "substitutor";
                break;
            case 25:
                objArr[0] = "configuration";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i2) {
            case 9:
                objArr[1] = "initialize";
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 13:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 14:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 15:
                objArr[1] = "getModality";
                break;
            case 16:
                objArr[1] = "getVisibility";
                break;
            case 18:
                objArr[1] = "getTypeParameters";
                break;
            case 19:
                objArr[1] = "getValueParameters";
                break;
            case 20:
                objArr[1] = "getOriginal";
                break;
            case 21:
                objArr[1] = "getKind";
                break;
            case 23:
                objArr[1] = "newCopyBuilder";
                break;
            case 26:
                objArr[1] = "copy";
                break;
            case 27:
                objArr[1] = "getSourceToUseForCopy";
                break;
        }
        switch (i2) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                break;
            case 10:
                objArr[2] = "setVisibility";
                break;
            case 11:
                objArr[2] = "setReturnType";
                break;
            case 12:
                objArr[2] = "setExtensionReceiverParameter";
                break;
            case 17:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 22:
                objArr[2] = "substitute";
                break;
            case 24:
                objArr[2] = "newCopyBuilder";
                break;
            case 25:
                objArr[2] = "doSubstitute";
                break;
            case 28:
            case 29:
            case 30:
            case 31:
                objArr[2] = "getSubstitutedValueParameters";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i2) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                throw new IllegalStateException(str2);
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public FunctionDescriptor.CopyBuilder A0() {
        return K0(TypeSubstitutor.f74260b);
    }

    public final FunctionDescriptor B0(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibility descriptorVisibility, CallableMemberDescriptor.Kind kind) {
        FunctionDescriptor functionDescriptorBuild = A0().o(declarationDescriptor).k(modality).g(descriptorVisibility).p(kind).e().build();
        if (functionDescriptorBuild != null) {
            return functionDescriptorBuild;
        }
        Z(26);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public SimpleFunctionDescriptor l0(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibility descriptorVisibility, CallableMemberDescriptor.Kind kind) {
        return (SimpleFunctionDescriptor) B0(declarationDescriptor, modality, descriptorVisibility, kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptor G() {
        return this.f72496k;
    }

    public abstract FunctionDescriptorImpl G0(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name);

    /* JADX WARN: Code duplicated, block: B:103:0x0215  */
    /* JADX WARN: Code duplicated, block: B:106:0x021a  */
    /* JADX WARN: Code duplicated, block: B:114:0x023b  */
    /* JADX WARN: Code duplicated, block: B:116:0x023f  */
    /* JADX WARN: Code duplicated, block: B:118:0x0242  */
    /* JADX WARN: Code duplicated, block: B:120:0x024a  */
    /* JADX WARN: Code duplicated, block: B:129:0x01da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x00df  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:49:0x010d  */
    /* JADX WARN: Code duplicated, block: B:50:0x010f  */
    /* JADX WARN: Code duplicated, block: B:52:0x0117  */
    /* JADX WARN: Code duplicated, block: B:55:0x011e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0125  */
    /* JADX WARN: Code duplicated, block: B:60:0x012b  */
    /* JADX WARN: Code duplicated, block: B:61:0x012d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0133  */
    /* JADX WARN: Code duplicated, block: B:72:0x0154  */
    /* JADX WARN: Code duplicated, block: B:73:0x0156  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:87:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:89:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:92:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:98:0x020b  */
    public FunctionDescriptorImpl H0(CopyConfiguration copyConfiguration) {
        Annotations annotations;
        ReceiverParameterDescriptor receiverParameterDescriptor;
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl;
        ReceiverParameterDescriptor receiverParameterDescriptor2;
        AbstractReceiverParameterDescriptor abstractReceiverParameterDescriptor;
        ArrayList arrayListI0;
        KotlinType kotlinTypeJ;
        boolean z;
        boolean z2;
        Boolean bool;
        boolean zBooleanValue;
        LinkedHashMap linkedHashMap;
        Map map;
        FunctionDescriptor functionDescriptor;
        Function0 function0;
        AbstractReceiverParameterDescriptor abstractReceiverParameterDescriptorB;
        boolean z3;
        KotlinType kotlinTypeJ2;
        boolean z4;
        boolean[] zArr = new boolean[1];
        if (copyConfiguration.s != null) {
            annotations = getAnnotations();
            Annotations annotations2 = copyConfiguration.s;
            annotations.getClass();
            annotations2.getClass();
            if (annotations.isEmpty()) {
                annotations = annotations2;
            } else if (!annotations2.isEmpty()) {
                annotations = new CompositeAnnotations(annotations, annotations2);
            }
        } else {
            annotations = getAnnotations();
        }
        Annotations annotations3 = annotations;
        DeclarationDescriptor declarationDescriptor = copyConfiguration.f72501b;
        FunctionDescriptor functionDescriptor2 = copyConfiguration.f72503e;
        CallableMemberDescriptor.Kind kind = copyConfiguration.f72504f;
        Name name = copyConfiguration.l;
        SourceElement source = copyConfiguration.o ? (functionDescriptor2 != null ? functionDescriptor2 : y0()).getSource() : SourceElement.f72405a;
        if (source == null) {
            Z(27);
            throw null;
        }
        FunctionDescriptorImpl functionDescriptorImplG0 = G0(kind, declarationDescriptor, functionDescriptor2, source, annotations3, name);
        List typeParameters = copyConfiguration.r;
        if (typeParameters == null) {
            typeParameters = getTypeParameters();
        }
        zArr[0] = zArr[0] | (!typeParameters.isEmpty());
        ArrayList arrayList = new ArrayList(typeParameters.size());
        final TypeSubstitutor typeSubstitutorC = DescriptorSubstitutor.c(typeParameters, copyConfiguration.f72500a, functionDescriptorImplG0, arrayList, zArr);
        if (typeSubstitutorC != null) {
            ArrayList arrayList2 = new ArrayList();
            if (copyConfiguration.f72505h.isEmpty()) {
                receiverParameterDescriptor = copyConfiguration.f72506i;
                if (receiverParameterDescriptor != null) {
                    kotlinTypeJ2 = typeSubstitutorC.j(Variance.IN_VARIANCE, receiverParameterDescriptor.getType());
                    if (kotlinTypeJ2 != null) {
                        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2 = new ReceiverParameterDescriptorImpl(functionDescriptorImplG0, new ExtensionReceiver(functionDescriptorImplG0, kotlinTypeJ2, copyConfiguration.f72506i.getValue()), copyConfiguration.f72506i.getAnnotations());
                        boolean z5 = zArr[0];
                        if (kotlinTypeJ2 != copyConfiguration.f72506i.getType()) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        zArr[0] = z4 | z5;
                        receiverParameterDescriptorImpl = receiverParameterDescriptorImpl2;
                    }
                } else {
                    receiverParameterDescriptorImpl = null;
                }
                receiverParameterDescriptor2 = copyConfiguration.f72507j;
                if (receiverParameterDescriptor2 != null) {
                    abstractReceiverParameterDescriptorB = receiverParameterDescriptor2.b(typeSubstitutorC);
                    if (abstractReceiverParameterDescriptorB != null) {
                        boolean z6 = zArr[0];
                        if (abstractReceiverParameterDescriptorB != copyConfiguration.f72507j) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zArr[0] = z6 | z3;
                        abstractReceiverParameterDescriptor = abstractReceiverParameterDescriptorB;
                    }
                } else {
                    abstractReceiverParameterDescriptor = null;
                }
                arrayListI0 = I0(functionDescriptorImplG0, copyConfiguration.g, typeSubstitutorC, copyConfiguration.p, copyConfiguration.o, zArr);
                if (arrayListI0 != null) {
                    boolean z7 = zArr[0];
                    if (kotlinTypeJ != copyConfiguration.f72508k) {
                        z = true;
                    } else {
                        z = false;
                    }
                    z2 = z7 | z;
                    zArr[0] = z2;
                    if (z2) {
                    }
                    functionDescriptorImplG0.J0(receiverParameterDescriptorImpl, abstractReceiverParameterDescriptor, arrayList2, arrayList, arrayListI0, kotlinTypeJ, copyConfiguration.f72502c, copyConfiguration.d);
                    functionDescriptorImplG0.n = this.n;
                    functionDescriptorImplG0.o = this.o;
                    functionDescriptorImplG0.p = this.p;
                    functionDescriptorImplG0.q = this.q;
                    functionDescriptorImplG0.r = this.r;
                    functionDescriptorImplG0.w = this.w;
                    functionDescriptorImplG0.s = this.s;
                    functionDescriptorImplG0.t = this.t;
                    functionDescriptorImplG0.M0(this.x);
                    functionDescriptorImplG0.u = copyConfiguration.q;
                    functionDescriptorImplG0.v = copyConfiguration.t;
                    bool = copyConfiguration.v;
                    if (bool != null) {
                        zBooleanValue = bool.booleanValue();
                    } else {
                        zBooleanValue = this.y;
                    }
                    functionDescriptorImplG0.N0(zBooleanValue);
                    if (copyConfiguration.u.isEmpty()) {
                        linkedHashMap = copyConfiguration.u;
                        map = this.E;
                        if (map != null) {
                            for (Map.Entry entry : map.entrySet()) {
                                if (!linkedHashMap.containsKey(entry.getKey())) {
                                    linkedHashMap.put(entry.getKey(), entry.getValue());
                                }
                            }
                        }
                        if (linkedHashMap.size() == 1) {
                            functionDescriptorImplG0.E = Collections.singletonMap(linkedHashMap.keySet().iterator().next(), linkedHashMap.values().iterator().next());
                        } else {
                            functionDescriptorImplG0.E = linkedHashMap;
                        }
                    } else {
                        linkedHashMap = copyConfiguration.u;
                        map = this.E;
                        if (map != null) {
                            while (r3.hasNext()) {
                                if (!linkedHashMap.containsKey(entry.getKey())) {
                                    linkedHashMap.put(entry.getKey(), entry.getValue());
                                }
                            }
                        }
                        if (linkedHashMap.size() == 1) {
                            functionDescriptorImplG0.E = Collections.singletonMap(linkedHashMap.keySet().iterator().next(), linkedHashMap.values().iterator().next());
                        } else {
                            functionDescriptorImplG0.E = linkedHashMap;
                        }
                    }
                    if (copyConfiguration.n) {
                        functionDescriptor = this.D;
                        if (functionDescriptor == null) {
                            functionDescriptor = this;
                        }
                        functionDescriptorImplG0.D = functionDescriptor.b(typeSubstitutorC);
                    } else {
                        functionDescriptor = this.D;
                        if (functionDescriptor == null) {
                            functionDescriptor = this;
                        }
                        functionDescriptorImplG0.D = functionDescriptor.b(typeSubstitutorC);
                    }
                    if (copyConfiguration.m) {
                        if (copyConfiguration.f72500a.e()) {
                            function0 = this.A;
                            if (function0 != null) {
                                functionDescriptorImplG0.A = function0;
                                return functionDescriptorImplG0;
                            }
                            functionDescriptorImplG0.x0(i());
                            return functionDescriptorImplG0;
                        }
                        functionDescriptorImplG0.A = new Function0<Collection<FunctionDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.1
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                SmartList smartList = new SmartList();
                                Iterator it = FunctionDescriptorImpl.this.i().iterator();
                                while (it.hasNext()) {
                                    smartList.add(((FunctionDescriptor) it.next()).b(typeSubstitutorC));
                                }
                                return smartList;
                            }
                        };
                    }
                    return functionDescriptorImplG0;
                }
            } else {
                int i2 = 0;
                for (ReceiverParameterDescriptor receiverParameterDescriptor3 : copyConfiguration.f72505h) {
                    KotlinType kotlinTypeJ3 = typeSubstitutorC.j(Variance.IN_VARIANCE, receiverParameterDescriptor3.getType());
                    if (kotlinTypeJ3 != null) {
                        int i3 = i2 + 1;
                        arrayList2.add(DescriptorFactory.b(functionDescriptorImplG0, kotlinTypeJ3, ((ImplicitContextReceiver) receiverParameterDescriptor3.getValue()).a(), receiverParameterDescriptor3.getAnnotations(), i2));
                        zArr[0] = zArr[0] | (kotlinTypeJ3 != receiverParameterDescriptor3.getType());
                        i2 = i3;
                    }
                }
                receiverParameterDescriptor = copyConfiguration.f72506i;
                if (receiverParameterDescriptor != null) {
                    kotlinTypeJ2 = typeSubstitutorC.j(Variance.IN_VARIANCE, receiverParameterDescriptor.getType());
                    if (kotlinTypeJ2 != null) {
                        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl3 = new ReceiverParameterDescriptorImpl(functionDescriptorImplG0, new ExtensionReceiver(functionDescriptorImplG0, kotlinTypeJ2, copyConfiguration.f72506i.getValue()), copyConfiguration.f72506i.getAnnotations());
                        boolean z8 = zArr[0];
                        if (kotlinTypeJ2 != copyConfiguration.f72506i.getType()) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        zArr[0] = z4 | z8;
                        receiverParameterDescriptorImpl = receiverParameterDescriptorImpl3;
                    }
                } else {
                    receiverParameterDescriptorImpl = null;
                }
                receiverParameterDescriptor2 = copyConfiguration.f72507j;
                if (receiverParameterDescriptor2 != null) {
                    abstractReceiverParameterDescriptorB = receiverParameterDescriptor2.b(typeSubstitutorC);
                    if (abstractReceiverParameterDescriptorB != null) {
                        boolean z9 = zArr[0];
                        if (abstractReceiverParameterDescriptorB != copyConfiguration.f72507j) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zArr[0] = z9 | z3;
                        abstractReceiverParameterDescriptor = abstractReceiverParameterDescriptorB;
                    }
                } else {
                    abstractReceiverParameterDescriptor = null;
                }
                arrayListI0 = I0(functionDescriptorImplG0, copyConfiguration.g, typeSubstitutorC, copyConfiguration.p, copyConfiguration.o, zArr);
                if (arrayListI0 != null && (kotlinTypeJ = typeSubstitutorC.j(Variance.OUT_VARIANCE, copyConfiguration.f72508k)) != null) {
                    boolean z10 = zArr[0];
                    if (kotlinTypeJ != copyConfiguration.f72508k) {
                        z = true;
                    } else {
                        z = false;
                    }
                    z2 = z10 | z;
                    zArr[0] = z2;
                    if (z2 && copyConfiguration.w) {
                        return this;
                    }
                    functionDescriptorImplG0.J0(receiverParameterDescriptorImpl, abstractReceiverParameterDescriptor, arrayList2, arrayList, arrayListI0, kotlinTypeJ, copyConfiguration.f72502c, copyConfiguration.d);
                    functionDescriptorImplG0.n = this.n;
                    functionDescriptorImplG0.o = this.o;
                    functionDescriptorImplG0.p = this.p;
                    functionDescriptorImplG0.q = this.q;
                    functionDescriptorImplG0.r = this.r;
                    functionDescriptorImplG0.w = this.w;
                    functionDescriptorImplG0.s = this.s;
                    functionDescriptorImplG0.t = this.t;
                    functionDescriptorImplG0.M0(this.x);
                    functionDescriptorImplG0.u = copyConfiguration.q;
                    functionDescriptorImplG0.v = copyConfiguration.t;
                    bool = copyConfiguration.v;
                    if (bool != null) {
                        zBooleanValue = bool.booleanValue();
                    } else {
                        zBooleanValue = this.y;
                    }
                    functionDescriptorImplG0.N0(zBooleanValue);
                    if (copyConfiguration.u.isEmpty() || this.E != null) {
                        linkedHashMap = copyConfiguration.u;
                        map = this.E;
                        if (map != null) {
                            while (r3.hasNext()) {
                                if (!linkedHashMap.containsKey(entry.getKey())) {
                                    linkedHashMap.put(entry.getKey(), entry.getValue());
                                }
                            }
                        }
                        if (linkedHashMap.size() == 1) {
                            functionDescriptorImplG0.E = Collections.singletonMap(linkedHashMap.keySet().iterator().next(), linkedHashMap.values().iterator().next());
                        } else {
                            functionDescriptorImplG0.E = linkedHashMap;
                        }
                    }
                    if (copyConfiguration.n || this.D != null) {
                        functionDescriptor = this.D;
                        if (functionDescriptor == null) {
                            functionDescriptor = this;
                        }
                        functionDescriptorImplG0.D = functionDescriptor.b(typeSubstitutorC);
                    }
                    if (copyConfiguration.m && !y0().i().isEmpty()) {
                        if (copyConfiguration.f72500a.e()) {
                            function0 = this.A;
                            if (function0 != null) {
                                functionDescriptorImplG0.A = function0;
                                return functionDescriptorImplG0;
                            }
                            functionDescriptorImplG0.x0(i());
                            return functionDescriptorImplG0;
                        }
                        functionDescriptorImplG0.A = new Function0<Collection<FunctionDescriptor>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.1
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                SmartList smartList = new SmartList();
                                Iterator it = FunctionDescriptorImpl.this.i().iterator();
                                while (it.hasNext()) {
                                    smartList.add(((FunctionDescriptor) it.next()).b(typeSubstitutorC));
                                }
                                return smartList;
                            }
                        };
                    }
                    return functionDescriptorImplG0;
                }
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptor J() {
        return this.f72495j;
    }

    public void J0(ReceiverParameterDescriptor receiverParameterDescriptor, ReceiverParameterDescriptor receiverParameterDescriptor2, List list, List list2, List list3, KotlinType kotlinType, Modality modality, DescriptorVisibility descriptorVisibility) {
        if (list == null) {
            Z(5);
            throw null;
        }
        if (list2 == null) {
            Z(6);
            throw null;
        }
        if (list3 == null) {
            Z(7);
            throw null;
        }
        if (descriptorVisibility == null) {
            Z(8);
            throw null;
        }
        this.f72492f = CollectionsKt.y0(list2);
        this.g = CollectionsKt.y0(list3);
        this.f72493h = kotlinType;
        this.l = modality;
        this.m = descriptorVisibility;
        this.f72495j = receiverParameterDescriptor;
        this.f72496k = receiverParameterDescriptor2;
        this.f72494i = list;
        for (int i2 = 0; i2 < list2.size(); i2++) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) list2.get(i2);
            if (typeParameterDescriptor.getIndex() != i2) {
                StringBuilder sb = new StringBuilder();
                sb.append(typeParameterDescriptor);
                az.t(sb, " index is ", typeParameterDescriptor.getIndex(), " but position is ", i2);
                return;
            }
        }
        for (int i3 = 0; i3 < list3.size(); i3++) {
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) list3.get(i3);
            if (valueParameterDescriptor.getIndex() != i3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(valueParameterDescriptor);
                az.t(sb2, "index is ", valueParameterDescriptor.getIndex(), " but position is ", i3);
                return;
            }
        }
    }

    public final CopyConfiguration K0(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return new CopyConfiguration(this, typeSubstitutor.g(), d(), q(), getVisibility(), e(), h(), r0(), this.f72495j, getReturnType(), null);
        }
        Z(24);
        throw null;
    }

    public final void L0(CallableDescriptor.UserDataKey userDataKey, Object obj) {
        if (this.E == null) {
            this.E = new LinkedHashMap();
        }
        this.E.put(userDataKey, obj);
    }

    public void M0(boolean z) {
        this.x = z;
    }

    public void N0(boolean z) {
        this.y = z;
    }

    public final void O0(SimpleType simpleType) {
        if (simpleType != null) {
            this.f72493h = simpleType;
        } else {
            Z(11);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean R() {
        return this.t;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public boolean Y() {
        return this.y;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public FunctionDescriptor y0() {
        FunctionDescriptor functionDescriptorY0;
        FunctionDescriptor functionDescriptor = this.B;
        ?? r1 = this;
        if (functionDescriptor != this) {
            functionDescriptorY0 = functionDescriptor.y0();
        }
        if (r1 != 0) {
            r1 = functionDescriptorY0;
            return r1;
        }
        r1 = functionDescriptorY0;
        Z(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public FunctionDescriptor b(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            Z(22);
            throw null;
        }
        if (typeSubstitutor.f74261a.e()) {
            return this;
        }
        CopyConfiguration copyConfigurationK0 = K0(typeSubstitutor);
        copyConfigurationK0.f72503e = y0();
        copyConfigurationK0.o = true;
        copyConfigurationK0.w = true;
        return copyConfigurationK0.x.H0(copyConfigurationK0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean c0() {
        return this.s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final CallableMemberDescriptor.Kind e() {
        CallableMemberDescriptor.Kind kind = this.C;
        if (kind != null) {
            return kind;
        }
        Z(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public KotlinType getReturnType() {
        return this.f72493h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getTypeParameters() {
        List list = this.f72492f;
        if (list != null) {
            return list;
        }
        a61.q(this, "typeParameters == null for ");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
    public final DescriptorVisibility getVisibility() {
        DescriptorVisibility descriptorVisibility = this.m;
        if (descriptorVisibility != null) {
            return descriptorVisibility;
        }
        Z(16);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List h() {
        List list = this.g;
        if (list != null) {
            return list;
        }
        Z(19);
        throw null;
    }

    public Collection i() {
        Function0 function0 = this.A;
        if (function0 != null) {
            this.z = (Collection) function0.mo47invoke();
            this.A = null;
        }
        Collection collection = this.z;
        if (collection == null) {
            collection = Collections.EMPTY_LIST;
        }
        if (collection != null) {
            return collection;
        }
        Z(14);
        throw null;
    }

    public boolean isExternal() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isInfix() {
        if (this.o) {
            return true;
        }
        Iterator it = y0().i().iterator();
        while (it.hasNext()) {
            if (((FunctionDescriptor) it.next()).isInfix()) {
                return true;
            }
        }
        return false;
    }

    public boolean isInline() {
        return this.q;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isOperator() {
        if (this.n) {
            return true;
        }
        Iterator it = y0().i().iterator();
        while (it.hasNext()) {
            if (((FunctionDescriptor) it.next()).isOperator()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public boolean isSuspend() {
        return this.w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final FunctionDescriptor k0() {
        return this.D;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public Object n0(CallableDescriptor.UserDataKey userDataKey) {
        Map map = this.E;
        if (map == null) {
            return null;
        }
        return map.get(userDataKey);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality q() {
        Modality modality = this.l;
        if (modality != null) {
            return modality;
        }
        Z(15);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List r0() {
        List list = this.f72494i;
        if (list != null) {
            return list;
        }
        Z(13);
        throw null;
    }

    public Object v(DeclarationDescriptorVisitor declarationDescriptorVisitor, Object obj) {
        return declarationDescriptorVisitor.l(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean w0() {
        return this.u;
    }

    public boolean x() {
        return this.r;
    }

    public void x0(Collection collection) {
        if (collection == null) {
            Z(17);
            throw null;
        }
        this.z = collection;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (((FunctionDescriptor) it.next()).z0()) {
                this.v = true;
                return;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean z0() {
        return this.v;
    }
}
