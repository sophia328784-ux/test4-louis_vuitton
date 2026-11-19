package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import defpackage.a61;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FieldDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ExtensionReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ImplicitContextReceiver;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public class PropertyDescriptorImpl extends VariableDescriptorWithInitializerImpl implements PropertyDescriptor {
    public FieldDescriptor A;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Modality f72547j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public DescriptorVisibility f72548k;
    public Collection l;
    public final PropertyDescriptor m;
    public final CallableMemberDescriptor.Kind n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public List t;
    public ReceiverParameterDescriptor u;
    public ReceiverParameterDescriptor v;
    public ArrayList w;
    public PropertyGetterDescriptorImpl x;
    public PropertySetterDescriptor y;
    public FieldDescriptor z;

    public class CopyConfiguration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DeclarationDescriptor f72549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Modality f72550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public DescriptorVisibility f72551c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CallableMemberDescriptor.Kind f72552e;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ReceiverParameterDescriptor f72554h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Name f72555i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final KotlinType f72556j;
        public PropertyDescriptor d = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TypeSubstitution f72553f = TypeSubstitution.f74258a;
        public boolean g = true;

        public CopyConfiguration() {
            this.f72549a = PropertyDescriptorImpl.this.d();
            this.f72550b = PropertyDescriptorImpl.this.q();
            this.f72551c = PropertyDescriptorImpl.this.getVisibility();
            this.f72552e = PropertyDescriptorImpl.this.e();
            this.f72554h = PropertyDescriptorImpl.this.u;
            this.f72555i = PropertyDescriptorImpl.this.getName();
            this.f72556j = PropertyDescriptorImpl.this.getType();
        }

        public static /* synthetic */ void a(int i2) {
            String str = (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 5 || i2 == 7 || i2 == 9 || i2 == 11 || i2 == 19 || i2 == 13 || i2 == 14 || i2 == 16 || i2 == 17) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i2 == 1 || i2 == 2 || i2 == 3 || i2 == 5 || i2 == 7 || i2 == 9 || i2 == 11 || i2 == 19 || i2 == 13 || i2 == 14 || i2 == 16 || i2 == 17) ? 2 : 3];
            switch (i2) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
                    break;
                case 4:
                    objArr[0] = "type";
                    break;
                case 6:
                    objArr[0] = "modality";
                    break;
                case 8:
                    objArr[0] = "visibility";
                    break;
                case 10:
                    objArr[0] = b.a.d;
                    break;
                case 12:
                    objArr[0] = "typeParameters";
                    break;
                case 15:
                    objArr[0] = "substitution";
                    break;
                case 18:
                    objArr[0] = "name";
                    break;
                default:
                    objArr[0] = "owner";
                    break;
            }
            if (i2 == 1) {
                objArr[1] = "setOwner";
            } else if (i2 == 2) {
                objArr[1] = "setOriginal";
            } else if (i2 == 3) {
                objArr[1] = "setPreserveSourceElement";
            } else if (i2 == 5) {
                objArr[1] = "setReturnType";
            } else if (i2 == 7) {
                objArr[1] = "setModality";
            } else if (i2 == 9) {
                objArr[1] = "setVisibility";
            } else if (i2 == 11) {
                objArr[1] = "setKind";
            } else if (i2 == 19) {
                objArr[1] = "setName";
            } else if (i2 == 13) {
                objArr[1] = "setTypeParameters";
            } else if (i2 == 14) {
                objArr[1] = "setDispatchReceiverParameter";
            } else if (i2 == 16) {
                objArr[1] = "setSubstitution";
            } else if (i2 != 17) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
            } else {
                objArr[1] = "setCopyOverrides";
            }
            switch (i2) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    break;
                case 4:
                    objArr[2] = "setReturnType";
                    break;
                case 6:
                    objArr[2] = "setModality";
                    break;
                case 8:
                    objArr[2] = "setVisibility";
                    break;
                case 10:
                    objArr[2] = "setKind";
                    break;
                case 12:
                    objArr[2] = "setTypeParameters";
                    break;
                case 15:
                    objArr[2] = "setSubstitution";
                    break;
                case 18:
                    objArr[2] = "setName";
                    break;
                default:
                    objArr[2] = "setOwner";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 5 && i2 != 7 && i2 != 9 && i2 != 11 && i2 != 19 && i2 != 13 && i2 != 14 && i2 != 16 && i2 != 17) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r11v5, types: [kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyAccessorDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl] */
        /* JADX WARN: Type inference failed for: r11v6 */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.PropertyGetterDescriptor] */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r17v3 */
        /* JADX WARN: Type inference failed for: r17v4, types: [kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor] */
        /* JADX WARN: Type inference failed for: r17v5 */
        /* JADX WARN: Type inference failed for: r19v0, types: [java.lang.Throwable, kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl] */
        /* JADX WARN: Type inference failed for: r3v13 */
        /* JADX WARN: Type inference failed for: r3v15, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyAccessorDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl] */
        /* JADX WARN: Type inference failed for: r3v20 */
        /* JADX WARN: Type inference failed for: r4v26, types: [kotlin.reflect.jvm.internal.impl.descriptors.FieldDescriptor] */
        /* JADX WARN: Type inference failed for: r4v27 */
        /* JADX WARN: Type inference failed for: r4v31 */
        /* JADX WARN: Type inference failed for: r4v32, types: [kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor] */
        /* JADX WARN: Type inference failed for: r4v33 */
        /* JADX WARN: Type inference failed for: r4v34, types: [kotlin.reflect.jvm.internal.impl.types.KotlinType] */
        /* JADX WARN: Type inference failed for: r4v41 */
        /* JADX WARN: Type inference failed for: r4v42 */
        /* JADX WARN: Type inference failed for: r4v43 */
        /* JADX WARN: Type inference failed for: r5v14, types: [kotlin.reflect.jvm.internal.impl.descriptors.FieldDescriptor] */
        /* JADX WARN: Type inference failed for: r5v15 */
        /* JADX WARN: Type inference failed for: r5v18 */
        /* JADX WARN: Type inference failed for: r5v19, types: [kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor] */
        /* JADX WARN: Type inference failed for: r5v31 */
        /* JADX WARN: Type inference failed for: r5v32 */
        /* JADX WARN: Type inference failed for: r9v0, types: [kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorWithInitializerImpl] */
        public final PropertyDescriptorImpl b() {
            AbstractReceiverParameterDescriptor abstractReceiverParameterDescriptor;
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl;
            ?? propertyGetterDescriptorImpl;
            ?? propertySetterDescriptorImpl;
            TypeSubstitutor typeSubstitutor;
            Function0 function0;
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2;
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl3;
            PropertyDescriptorImpl propertyDescriptorImpl = PropertyDescriptorImpl.this;
            propertyDescriptorImpl.getClass();
            ?? I0 = propertyDescriptorImpl.I0(this.f72549a, this.f72550b, this.f72551c, this.d, this.f72552e, this.f72555i);
            List typeParameters = propertyDescriptorImpl.getTypeParameters();
            ArrayList arrayList = new ArrayList(((ArrayList) typeParameters).size());
            TypeSubstitutor typeSubstitutorB = DescriptorSubstitutor.b(typeParameters, this.f72553f, I0, arrayList);
            Variance variance = Variance.OUT_VARIANCE;
            KotlinType kotlinType = this.f72556j;
            KotlinType kotlinTypeJ = typeSubstitutorB.j(variance, kotlinType);
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl4 = null;
            if (kotlinTypeJ != null) {
                Variance variance2 = Variance.IN_VARIANCE;
                KotlinType kotlinTypeJ2 = typeSubstitutorB.j(variance2, kotlinType);
                if (kotlinTypeJ2 != null) {
                    I0.K0(kotlinTypeJ2);
                }
                ReceiverParameterDescriptor receiverParameterDescriptor = this.f72554h;
                if (receiverParameterDescriptor != null) {
                    AbstractReceiverParameterDescriptor abstractReceiverParameterDescriptorB = receiverParameterDescriptor.b(typeSubstitutorB);
                    abstractReceiverParameterDescriptor = abstractReceiverParameterDescriptorB != null ? abstractReceiverParameterDescriptorB : null;
                }
                ReceiverParameterDescriptor receiverParameterDescriptor2 = propertyDescriptorImpl.v;
                if (receiverParameterDescriptor2 != null) {
                    KotlinType kotlinTypeJ3 = typeSubstitutorB.j(variance2, receiverParameterDescriptor2.getType());
                    receiverParameterDescriptorImpl = kotlinTypeJ3 == null ? null : new ReceiverParameterDescriptorImpl(I0, new ExtensionReceiver(I0, kotlinTypeJ3, receiverParameterDescriptor2.getValue()), receiverParameterDescriptor2.getAnnotations());
                } else {
                    receiverParameterDescriptorImpl = null;
                }
                ArrayList arrayList2 = new ArrayList();
                for (ReceiverParameterDescriptor receiverParameterDescriptor3 : propertyDescriptorImpl.t) {
                    KotlinType kotlinTypeJ4 = typeSubstitutorB.j(Variance.IN_VARIANCE, receiverParameterDescriptor3.getType());
                    if (kotlinTypeJ4 == null) {
                        receiverParameterDescriptorImpl2 = receiverParameterDescriptorImpl4;
                        receiverParameterDescriptorImpl3 = receiverParameterDescriptorImpl2;
                    } else {
                        receiverParameterDescriptorImpl3 = receiverParameterDescriptorImpl4;
                        receiverParameterDescriptorImpl2 = new ReceiverParameterDescriptorImpl(I0, new ContextReceiver(I0, kotlinTypeJ4, ((ImplicitContextReceiver) receiverParameterDescriptor3.getValue()).a(), receiverParameterDescriptor3.getValue()), receiverParameterDescriptor3.getAnnotations());
                    }
                    if (receiverParameterDescriptorImpl2 != null) {
                        arrayList2.add(receiverParameterDescriptorImpl2);
                    }
                    receiverParameterDescriptorImpl4 = receiverParameterDescriptorImpl3;
                }
                ?? r19 = receiverParameterDescriptorImpl4;
                I0.L0(kotlinTypeJ, arrayList, abstractReceiverParameterDescriptor, receiverParameterDescriptorImpl, arrayList2);
                PropertyGetterDescriptorImpl propertyGetterDescriptorImpl2 = propertyDescriptorImpl.x;
                SourceElement sourceElement = SourceElement.f72405a;
                if (propertyGetterDescriptorImpl2 == null) {
                    propertyGetterDescriptorImpl = r19;
                } else {
                    Annotations annotations = propertyGetterDescriptorImpl2.getAnnotations();
                    Modality modality = this.f72550b;
                    DescriptorVisibility visibility = propertyDescriptorImpl.x.getVisibility();
                    if (this.f72552e == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && DescriptorVisibilities.e(DescriptorVisibilities.g(((DelegatedDescriptorVisibility) visibility).f72365a.c()))) {
                        visibility = DescriptorVisibilities.f72371h;
                    }
                    DescriptorVisibility descriptorVisibility = visibility;
                    PropertyGetterDescriptorImpl propertyGetterDescriptorImpl3 = propertyDescriptorImpl.x;
                    boolean z = propertyGetterDescriptorImpl3.f72542f;
                    boolean z2 = propertyGetterDescriptorImpl3.g;
                    boolean z3 = propertyGetterDescriptorImpl3.f72545j;
                    CallableMemberDescriptor.Kind kind = this.f72552e;
                    PropertyDescriptor propertyDescriptor = this.d;
                    propertyGetterDescriptorImpl = new PropertyGetterDescriptorImpl(I0, annotations, modality, descriptorVisibility, z, z2, z3, kind, propertyDescriptor == null ? r19 : propertyDescriptor.getGetter(), sourceElement);
                }
                if (propertyGetterDescriptorImpl != 0) {
                    PropertyGetterDescriptorImpl propertyGetterDescriptorImpl4 = propertyDescriptorImpl.x;
                    KotlinType kotlinType2 = propertyGetterDescriptorImpl4.n;
                    propertyGetterDescriptorImpl.m = propertyGetterDescriptorImpl4.k0() != null ? propertyGetterDescriptorImpl4.k0().b(typeSubstitutorB) : r19;
                    propertyGetterDescriptorImpl.H0(kotlinType2 != null ? typeSubstitutorB.j(Variance.OUT_VARIANCE, kotlinType2) : r19);
                }
                PropertySetterDescriptor propertySetterDescriptor = propertyDescriptorImpl.y;
                if (propertySetterDescriptor == null) {
                    propertySetterDescriptorImpl = r19;
                } else {
                    Annotations annotations2 = propertySetterDescriptor.getAnnotations();
                    Modality modality2 = this.f72550b;
                    DescriptorVisibility visibility2 = propertyDescriptorImpl.y.getVisibility();
                    if (this.f72552e == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && DescriptorVisibilities.e(DescriptorVisibilities.g(((DelegatedDescriptorVisibility) visibility2).f72365a.c()))) {
                        visibility2 = DescriptorVisibilities.f72371h;
                    }
                    DescriptorVisibility descriptorVisibility2 = visibility2;
                    boolean zB = propertyDescriptorImpl.y.B();
                    boolean zIsExternal = propertyDescriptorImpl.y.isExternal();
                    boolean zIsInline = propertyDescriptorImpl.y.isInline();
                    CallableMemberDescriptor.Kind kind2 = this.f72552e;
                    PropertyDescriptor propertyDescriptor2 = this.d;
                    propertySetterDescriptorImpl = new PropertySetterDescriptorImpl(I0, annotations2, modality2, descriptorVisibility2, zB, zIsExternal, zIsInline, kind2, propertyDescriptor2 == null ? r19 : propertyDescriptor2.getSetter(), sourceElement);
                }
                if (propertySetterDescriptorImpl != 0) {
                    typeSubstitutor = typeSubstitutorB;
                    List listI0 = FunctionDescriptorImpl.I0(propertySetterDescriptorImpl, propertyDescriptorImpl.y.h(), typeSubstitutor, false, false, null);
                    if (listI0 == null) {
                        listI0 = Collections.singletonList(PropertySetterDescriptorImpl.G0(propertySetterDescriptorImpl, DescriptorUtilsKt.e(this.f72549a).o(), ((ValueParameterDescriptor) propertyDescriptorImpl.y.h().get(0)).getAnnotations()));
                    }
                    if (listI0.size() != 1) {
                        r81.b();
                        return r19;
                    }
                    PropertySetterDescriptor propertySetterDescriptor2 = propertyDescriptorImpl.y;
                    if (propertySetterDescriptor2 == null) {
                        PropertyDescriptorImpl.Z(31);
                        throw r19;
                    }
                    propertySetterDescriptorImpl.m = propertySetterDescriptor2.k0() != null ? propertySetterDescriptor2.k0().b(typeSubstitutor) : r19;
                    ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) listI0.get(0);
                    if (valueParameterDescriptor == null) {
                        PropertySetterDescriptorImpl.Z(6);
                        throw r19;
                    }
                    propertySetterDescriptorImpl.n = valueParameterDescriptor;
                } else {
                    typeSubstitutor = typeSubstitutorB;
                }
                FieldDescriptor fieldDescriptor = propertyDescriptorImpl.z;
                ?? fieldDescriptorImpl = fieldDescriptor == null ? r19 : new FieldDescriptorImpl(fieldDescriptor.getAnnotations(), I0);
                FieldDescriptor fieldDescriptor2 = propertyDescriptorImpl.A;
                I0.J0(propertyGetterDescriptorImpl, propertySetterDescriptorImpl, fieldDescriptorImpl, fieldDescriptor2 == null ? r19 : new FieldDescriptorImpl(fieldDescriptor2.getAnnotations(), I0));
                if (this.g) {
                    SmartSet.d.getClass();
                    SmartSet smartSetA = SmartSet.Companion.a();
                    Iterator it = propertyDescriptorImpl.i().iterator();
                    while (it.hasNext()) {
                        smartSetA.add(((PropertyDescriptor) it.next()).b(typeSubstitutor));
                    }
                    I0.l = smartSetA;
                }
                if (propertyDescriptorImpl.isConst() && (function0 = propertyDescriptorImpl.f72570i) != null) {
                    I0.F0(propertyDescriptorImpl.f72569h, function0);
                }
                return I0;
            }
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PropertyDescriptorImpl(DeclarationDescriptor declarationDescriptor, PropertyDescriptor propertyDescriptor, Annotations annotations, Modality modality, DescriptorVisibility descriptorVisibility, boolean z, Name name, CallableMemberDescriptor.Kind kind, SourceElement sourceElement, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        super(declarationDescriptor, annotations, name, null, z, sourceElement);
        if (declarationDescriptor == null) {
            Z(0);
            throw null;
        }
        if (annotations == null) {
            Z(1);
            throw null;
        }
        if (modality == null) {
            Z(2);
            throw null;
        }
        if (descriptorVisibility == null) {
            Z(3);
            throw null;
        }
        if (name == null) {
            Z(4);
            throw null;
        }
        if (kind == null) {
            Z(5);
            throw null;
        }
        if (sourceElement == null) {
            Z(6);
            throw null;
        }
        this.l = null;
        this.t = Collections.EMPTY_LIST;
        this.f72547j = modality;
        this.f72548k = descriptorVisibility;
        this.m = propertyDescriptor == null ? this : propertyDescriptor;
        this.n = kind;
        this.o = z2;
        this.p = z3;
        this.q = z4;
        this.r = z5;
        this.s = z6;
    }

    public static PropertyDescriptorImpl H0(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibility descriptorVisibility, boolean z, Name name, CallableMemberDescriptor.Kind kind, SourceElement sourceElement) {
        if (declarationDescriptor == null) {
            Z(7);
            throw null;
        }
        if (modality == null) {
            Z(9);
            throw null;
        }
        if (descriptorVisibility == null) {
            Z(10);
            throw null;
        }
        if (name == null) {
            Z(11);
            throw null;
        }
        if (kind == null) {
            Z(12);
            throw null;
        }
        if (sourceElement != null) {
            return new PropertyDescriptorImpl(declarationDescriptor, null, Annotations.Companion.f72432a, modality, descriptorVisibility, z, name, kind, sourceElement, false, false, false, false, false);
        }
        Z(13);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    public static /* synthetic */ void Z(int i2) {
        String str;
        int i3;
        if (i2 != 28 && i2 != 38 && i2 != 39 && i2 != 41 && i2 != 42) {
            switch (i2) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i2 != 28 && i2 != 38 && i2 != 39 && i2 != 41 && i2 != 42) {
            switch (i2) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    i3 = 2;
                    break;
                default:
                    i3 = 3;
                    break;
            }
        } else {
            i3 = 2;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
            case 20:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 35:
                objArr[0] = b.a.d;
                break;
            case 6:
            case 13:
            case 37:
                objArr[0] = Payload.SOURCE;
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 14:
                objArr[0] = "inType";
                break;
            case 15:
            case 17:
                objArr[0] = "outType";
                break;
            case 16:
            case 18:
                objArr[0] = "typeParameters";
                break;
            case 19:
                objArr[0] = "contextReceiverParameters";
                break;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 28:
            case 38:
            case 39:
            case 41:
            case EACTags.CURRENCY_CODE /* 42 */:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl";
                break;
            case 27:
                objArr[0] = "originalSubstitutor";
                break;
            case 29:
                objArr[0] = "copyConfiguration";
                break;
            case 30:
                objArr[0] = "substitutor";
                break;
            case 31:
                objArr[0] = "accessorDescriptor";
                break;
            case 32:
                objArr[0] = "newOwner";
                break;
            case 33:
                objArr[0] = "newModality";
                break;
            case 34:
                objArr[0] = "newVisibility";
                break;
            case 36:
                objArr[0] = "newName";
                break;
            case 40:
                objArr[0] = "overriddenDescriptors";
                break;
        }
        if (i2 == 28) {
            objArr[1] = "getSourceToUseForCopy";
        } else if (i2 == 38) {
            objArr[1] = "getOriginal";
        } else if (i2 == 39) {
            objArr[1] = "getKind";
        } else if (i2 == 41) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i2 != 42) {
            switch (i2) {
                case 21:
                    objArr[1] = "getTypeParameters";
                    break;
                case 22:
                    objArr[1] = "getContextReceiverParameters";
                    break;
                case 23:
                    objArr[1] = "getReturnType";
                    break;
                case 24:
                    objArr[1] = "getModality";
                    break;
                case 25:
                    objArr[1] = "getVisibility";
                    break;
                case 26:
                    objArr[1] = "getAccessors";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl";
                    break;
            }
        } else {
            objArr[1] = "copy";
        }
        switch (i2) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[2] = "create";
                break;
            case 14:
                objArr[2] = "setInType";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "setType";
                break;
            case 20:
                objArr[2] = "setVisibility";
                break;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 28:
            case 38:
            case 39:
            case 41:
            case EACTags.CURRENCY_CODE /* 42 */:
                break;
            case 27:
                objArr[2] = "substitute";
                break;
            case 29:
                objArr[2] = "doSubstitute";
                break;
            case 30:
            case 31:
                objArr[2] = "getSubstitutedInitialSignatureDescriptor";
                break;
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 40:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 28 && i2 != 38 && i2 != 39 && i2 != 41 && i2 != 42) {
            switch (i2) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptor G() {
        return this.u;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public final PropertyDescriptorImpl l0(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibility descriptorVisibility, CallableMemberDescriptor.Kind kind) {
        CopyConfiguration copyConfiguration = new CopyConfiguration();
        if (declarationDescriptor == null) {
            CopyConfiguration.a(0);
            throw null;
        }
        copyConfiguration.f72549a = declarationDescriptor;
        copyConfiguration.d = null;
        copyConfiguration.f72550b = modality;
        if (descriptorVisibility == null) {
            CopyConfiguration.a(8);
            throw null;
        }
        copyConfiguration.f72551c = descriptorVisibility;
        if (kind == null) {
            CopyConfiguration.a(10);
            throw null;
        }
        copyConfiguration.f72552e = kind;
        copyConfiguration.g = false;
        PropertyDescriptorImpl propertyDescriptorImplB = copyConfiguration.b();
        if (propertyDescriptorImplB != null) {
            return propertyDescriptorImplB;
        }
        Z(42);
        throw null;
    }

    public PropertyDescriptorImpl I0(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibility descriptorVisibility, PropertyDescriptor propertyDescriptor, CallableMemberDescriptor.Kind kind, Name name) {
        if (declarationDescriptor == null) {
            Z(32);
            throw null;
        }
        if (modality == null) {
            Z(33);
            throw null;
        }
        if (descriptorVisibility == null) {
            Z(34);
            throw null;
        }
        if (kind == null) {
            Z(35);
            throw null;
        }
        if (name == null) {
            Z(36);
            throw null;
        }
        return new PropertyDescriptorImpl(declarationDescriptor, propertyDescriptor, getAnnotations(), modality, descriptorVisibility, this.g, name, kind, SourceElement.f72405a, this.o, isConst(), this.q, isExternal(), this.s);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptor J() {
        return this.v;
    }

    public final void J0(PropertyGetterDescriptorImpl propertyGetterDescriptorImpl, PropertySetterDescriptorImpl propertySetterDescriptorImpl, FieldDescriptor fieldDescriptor, FieldDescriptor fieldDescriptor2) {
        this.x = propertyGetterDescriptorImpl;
        this.y = propertySetterDescriptorImpl;
        this.z = fieldDescriptor;
        this.A = fieldDescriptor2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final FieldDescriptor K() {
        return this.A;
    }

    public void K0(KotlinType kotlinType) {
    }

    public final void L0(KotlinType kotlinType, List list, ReceiverParameterDescriptor receiverParameterDescriptor, ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl, List list2) {
        if (kotlinType == null) {
            Z(17);
            throw null;
        }
        if (list == null) {
            Z(18);
            throw null;
        }
        if (list2 == null) {
            Z(19);
            throw null;
        }
        this.f72568f = kotlinType;
        this.w = new ArrayList(list);
        this.v = receiverParameterDescriptorImpl;
        this.u = receiverParameterDescriptor;
        this.t = list2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean R() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final PropertyDescriptor y0() {
        PropertyDescriptor propertyDescriptorY0;
        PropertyDescriptor propertyDescriptor = this.m;
        ?? r1 = this;
        if (propertyDescriptor != this) {
            propertyDescriptorY0 = propertyDescriptor.y0();
        }
        if (r1 != 0) {
            r1 = propertyDescriptorY0;
            return r1;
        }
        r1 = propertyDescriptorY0;
        Z(38);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final PropertyDescriptor b(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            Z(27);
            throw null;
        }
        if (typeSubstitutor.f74261a.e()) {
            return this;
        }
        CopyConfiguration copyConfiguration = new CopyConfiguration();
        TypeSubstitution typeSubstitutionG = typeSubstitutor.g();
        if (typeSubstitutionG == null) {
            CopyConfiguration.a(15);
            throw null;
        }
        copyConfiguration.f72553f = typeSubstitutionG;
        copyConfiguration.d = y0();
        return copyConfiguration.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean c0() {
        return this.q;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final CallableMemberDescriptor.Kind e() {
        CallableMemberDescriptor.Kind kind = this.n;
        if (kind != null) {
            return kind;
        }
        Z(39);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final PropertyGetterDescriptorImpl getGetter() {
        return this.x;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final KotlinType getReturnType() {
        KotlinType type = getType();
        if (type != null) {
            return type;
        }
        Z(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final PropertySetterDescriptor getSetter() {
        return this.y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getTypeParameters() {
        ArrayList arrayList = this.w;
        if (arrayList != null) {
            return arrayList;
        }
        a61.q(this, "typeParameters == null for ");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
    public final DescriptorVisibility getVisibility() {
        DescriptorVisibility descriptorVisibility = this.f72548k;
        if (descriptorVisibility != null) {
            return descriptorVisibility;
        }
        Z(25);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final Collection i() {
        Collection collection = this.l;
        if (collection == null) {
            collection = Collections.EMPTY_LIST;
        }
        if (collection != null) {
            return collection;
        }
        Z(41);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public boolean isConst() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isExternal() {
        return this.r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public Object n0(CallableDescriptor.UserDataKey userDataKey) {
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality q() {
        Modality modality = this.f72547j;
        if (modality != null) {
            return modality;
        }
        Z(24);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final FieldDescriptor q0() {
        return this.z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List r0() {
        List list = this.t;
        if (list != null) {
            return list;
        }
        Z(22);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public final boolean s0() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final ArrayList t() {
        ArrayList arrayList = new ArrayList(2);
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl = this.x;
        if (propertyGetterDescriptorImpl != null) {
            arrayList.add(propertyGetterDescriptorImpl);
        }
        PropertySetterDescriptor propertySetterDescriptor = this.y;
        if (propertySetterDescriptor != null) {
            arrayList.add(propertySetterDescriptor);
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object v(DeclarationDescriptorVisitor declarationDescriptorVisitor, Object obj) {
        return declarationDescriptorVisitor.g(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptorWithAccessors
    public final boolean w() {
        return this.s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final void x0(Collection collection) {
        if (collection != null) {
            this.l = collection;
        } else {
            Z(40);
            throw null;
        }
    }
}
