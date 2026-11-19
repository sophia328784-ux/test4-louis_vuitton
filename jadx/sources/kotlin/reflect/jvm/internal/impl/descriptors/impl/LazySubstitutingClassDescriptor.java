package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public class LazySubstitutingClassDescriptor extends ModuleAwareClassDescriptor {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f72517i = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ModuleAwareClassDescriptor f72518c;
    public final TypeSubstitutor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TypeSubstitutor f72519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f72520f;
    public ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ClassTypeConstructorImpl f72521h;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazySubstitutingClassDescriptor$1, reason: invalid class name */
    class AnonymousClass1 implements Function1<TypeParameterDescriptor, Boolean> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Boolean.valueOf(!((TypeParameterDescriptor) obj).L());
        }
    }

    public LazySubstitutingClassDescriptor(ModuleAwareClassDescriptor moduleAwareClassDescriptor, TypeSubstitutor typeSubstitutor) {
        this.f72518c = moduleAwareClassDescriptor;
        this.d = typeSubstitutor;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x0056  */
    /* JADX WARN: Code duplicated, block: B:36:0x005b  */
    public static /* synthetic */ void y0(int i2) {
        String str = (i2 == 2 || i2 == 3 || i2 == 5 || i2 == 6 || i2 == 8 || i2 == 10 || i2 == 13 || i2 == 23) ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[(i2 == 2 || i2 == 3 || i2 == 5 || i2 == 6 || i2 == 8 || i2 == 10 || i2 == 13 || i2 == 23) ? 3 : 2];
        if (i2 == 2) {
            objArr[0] = "typeArguments";
        } else if (i2 == 3) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i2 == 5) {
            objArr[0] = "typeSubstitution";
        } else if (i2 == 6) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i2 == 8) {
            objArr[0] = "typeArguments";
        } else if (i2 == 10) {
            objArr[0] = "typeSubstitution";
        } else if (i2 == 13) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i2 != 23) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor";
        } else {
            objArr[0] = "substitutor";
        }
        switch (i2) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 10:
            case 13:
            case 23:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 11:
                objArr[1] = "getMemberScope";
                break;
            case 12:
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getDefaultType";
                break;
            case 17:
                objArr[1] = "getContextReceivers";
                break;
            case 18:
                objArr[1] = "getConstructors";
                break;
            case 19:
                objArr[1] = "getAnnotations";
                break;
            case 20:
                objArr[1] = "getName";
                break;
            case 21:
                objArr[1] = "getOriginal";
                break;
            case 22:
                objArr[1] = "getContainingDeclaration";
                break;
            case 24:
                objArr[1] = "substitute";
                break;
            case 25:
                objArr[1] = "getKind";
                break;
            case 26:
                objArr[1] = "getModality";
                break;
            case 27:
                objArr[1] = "getVisibility";
                break;
            case 28:
                objArr[1] = "getUnsubstitutedInnerClassesScope";
                break;
            case 29:
                objArr[1] = "getSource";
                break;
            case 30:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 31:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "getTypeConstructor";
                break;
        }
        if (i2 == 2 || i2 == 3 || i2 == 5 || i2 == 6 || i2 == 8 || i2 == 10) {
            objArr[2] = "getMemberScope";
        } else if (i2 == 13) {
            objArr[2] = "getUnsubstitutedMemberScope";
        } else if (i2 == 23) {
            objArr[2] = "substitute";
        }
        String str2 = String.format(str, objArr);
        if (i2 != 2 && i2 != 3 && i2 != 5 && i2 != 6 && i2 != 8 && i2 != 10 && i2 != 13 && i2 != 23) {
            throw new IllegalStateException(str2);
        }
        throw new IllegalArgumentException(str2);
    }

    public final TypeSubstitutor B0() {
        if (this.f72519e == null) {
            TypeSubstitutor typeSubstitutor = this.d;
            if (typeSubstitutor.f74261a.e()) {
                this.f72519e = typeSubstitutor;
            } else {
                List parameters = this.f72518c.j().getParameters();
                this.f72520f = new ArrayList(parameters.size());
                this.f72519e = DescriptorSubstitutor.b(parameters, typeSubstitutor.g(), this, this.f72520f);
                this.g = CollectionsKt.y(this.f72520f, new AnonymousClass1());
            }
        }
        return this.f72519e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean D0() {
        return this.f72518c.D0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ReceiverParameterDescriptor E0() {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope N() {
        MemberScope memberScopeN = this.f72518c.N();
        if (memberScopeN != null) {
            return memberScopeN;
        }
        y0(28);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ValueClassRepresentation O() {
        ValueClassRepresentation valueClassRepresentationO = this.f72518c.O();
        if (valueClassRepresentationO == null) {
            return null;
        }
        Function1<SimpleType, SimpleType> function1 = new Function1<SimpleType, SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazySubstitutingClassDescriptor.2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SimpleType simpleType = (SimpleType) obj;
                if (simpleType != null) {
                    LazySubstitutingClassDescriptor lazySubstitutingClassDescriptor = LazySubstitutingClassDescriptor.this;
                    return lazySubstitutingClassDescriptor.d.f74261a.e() ? simpleType : (SimpleType) lazySubstitutingClassDescriptor.B0().j(Variance.INVARIANT, simpleType);
                }
                int i2 = LazySubstitutingClassDescriptor.f72517i;
                return simpleType;
            }
        };
        if (valueClassRepresentationO instanceof InlineClassRepresentation) {
            InlineClassRepresentation inlineClassRepresentation = (InlineClassRepresentation) valueClassRepresentationO;
            return new InlineClassRepresentation(inlineClassRepresentation.f72378a, (RigidTypeMarker) function1.invoke(inlineClassRepresentation.f72379b));
        }
        if (!(valueClassRepresentationO instanceof MultiFieldValueClassRepresentation)) {
            v40.g();
            return null;
        }
        List<Pair> list = ((MultiFieldValueClassRepresentation) valueClassRepresentationO).f72382a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (Pair pair : list) {
            arrayList.add(new Pair((Name) pair.f71705b, function1.invoke((RigidTypeMarker) pair.f71706c)));
        }
        return new MultiFieldValueClassRepresentation(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope Q() {
        return b0(DescriptorUtilsKt.h(DescriptorUtils.c(this.f72518c)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean R() {
        return this.f72518c.R();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final List S() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        y0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean T() {
        return this.f72518c.T();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean W() {
        return this.f72518c.W();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope Z(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            y0(6);
            throw null;
        }
        MemberScope memberScopeZ = this.f72518c.Z(typeSubstitution, kotlinTypeRefiner);
        if (!this.d.f74261a.e()) {
            return new SubstitutingScope(memberScopeZ, B0());
        }
        if (memberScopeZ != null) {
            return memberScopeZ;
        }
        y0(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public final ClassDescriptor y0() {
        ClassDescriptor classDescriptorY0 = this.f72518c.y0();
        if (classDescriptorY0 != null) {
            return classDescriptorY0;
        }
        y0(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final DeclarationDescriptorNonRoot b(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return typeSubstitutor.f74261a.e() ? this : new LazySubstitutingClassDescriptor(this, TypeSubstitutor.f(typeSubstitutor.g(), B0().g()));
        }
        y0(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope b0(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            y0(13);
            throw null;
        }
        MemberScope memberScopeB0 = this.f72518c.b0(kotlinTypeRefiner);
        if (!this.d.f74261a.e()) {
            return new SubstitutingScope(memberScopeB0, B0());
        }
        if (memberScopeB0 != null) {
            return memberScopeB0;
        }
        y0(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean c0() {
        return this.f72518c.c0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor d() {
        DeclarationDescriptor declarationDescriptorD = this.f72518c.d();
        if (declarationDescriptorD != null) {
            return declarationDescriptorD;
        }
        y0(22);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassKind e() {
        ClassKind classKindE = this.f72518c.e();
        if (classKindE != null) {
            return classKindE;
        }
        y0(25);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope e0() {
        MemberScope memberScopeE0 = this.f72518c.e0();
        if (memberScopeE0 != null) {
            return memberScopeE0;
        }
        y0(15);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final Collection f() {
        Collection<ClassConstructorDescriptor> collectionF = this.f72518c.f();
        ArrayList arrayList = new ArrayList(collectionF.size());
        for (ClassConstructorDescriptor classConstructorDescriptor : collectionF) {
            arrayList.add(((ClassConstructorDescriptor) classConstructorDescriptor.A0().j(classConstructorDescriptor.y0()).k(classConstructorDescriptor.q()).g(classConstructorDescriptor.getVisibility()).p(classConstructorDescriptor.e()).e().build()).b(B0()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassDescriptor f0() {
        return this.f72518c.f0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        Annotations annotations = this.f72518c.getAnnotations();
        if (annotations != null) {
            return annotations;
        }
        y0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Named
    public final Name getName() {
        Name name = this.f72518c.getName();
        if (name != null) {
            return name;
        }
        y0(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    public final SourceElement getSource() {
        return SourceElement.f72405a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
    public final DescriptorVisibility getVisibility() {
        DescriptorVisibility visibility = this.f72518c.getVisibility();
        if (visibility != null) {
            return visibility;
        }
        y0(27);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final MemberScope i0(TypeSubstitution typeSubstitution) {
        return Z(typeSubstitution, DescriptorUtilsKt.h(DescriptorUtils.c(this)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return this.f72518c.isExternal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean isInline() {
        return this.f72518c.isInline();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor j() {
        TypeConstructor typeConstructorJ = this.f72518c.j();
        if (this.d.f74261a.e()) {
            if (typeConstructorJ != null) {
                return typeConstructorJ;
            }
            y0(0);
            throw null;
        }
        if (this.f72521h == null) {
            TypeSubstitutor typeSubstitutorB0 = B0();
            Collection collectionI = typeConstructorJ.i();
            ArrayList arrayList = new ArrayList(collectionI.size());
            Iterator it = collectionI.iterator();
            while (it.hasNext()) {
                arrayList.add(typeSubstitutorB0.j(Variance.INVARIANT, (KotlinType) it.next()));
            }
            this.f72521h = new ClassTypeConstructorImpl(this, this.f72520f, arrayList, LockBasedStorageManager.f74137e);
        }
        ClassTypeConstructorImpl classTypeConstructorImpl = this.f72521h;
        if (classTypeConstructorImpl != null) {
            return classTypeConstructorImpl;
        }
        y0(1);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean k() {
        return this.f72518c.k();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final SimpleType o() {
        return KotlinTypeFactory.f(j(), TypeUtils.e(j().getParameters()), DefaultTypeAttributeTranslator.f74181a.a(getAnnotations()), false, Q());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List p() {
        B0();
        ArrayList arrayList = this.g;
        if (arrayList != null) {
            return arrayList;
        }
        y0(30);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality q() {
        Modality modalityQ = this.f72518c.q();
        if (modalityQ != null) {
            return modalityQ;
        }
        y0(26);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final boolean r() {
        return this.f72518c.r();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object v(DeclarationDescriptorVisitor declarationDescriptorVisitor, Object obj) {
        return declarationDescriptorVisitor.c(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
    public final ClassConstructorDescriptor y() {
        return this.f72518c.y();
    }
}
