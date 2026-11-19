package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;

/* JADX INFO: loaded from: classes4.dex */
public class JavaPropertyDescriptor extends PropertyDescriptorImpl implements JavaCallableMemberDescriptor {
    public final boolean B;
    public final Pair C;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaPropertyDescriptor(DeclarationDescriptor declarationDescriptor, Annotations annotations, Modality modality, DescriptorVisibility descriptorVisibility, boolean z, Name name, SourceElement sourceElement, PropertyDescriptor propertyDescriptor, CallableMemberDescriptor.Kind kind, boolean z2, Pair pair) {
        super(declarationDescriptor, propertyDescriptor, annotations, modality, descriptorVisibility, z, name, kind, sourceElement, false, false, false, false, false);
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
        if (sourceElement == null) {
            Z(5);
            throw null;
        }
        if (kind == null) {
            Z(6);
            throw null;
        }
        this.B = z2;
        this.C = pair;
    }

    public static JavaPropertyDescriptor M0(DeclarationDescriptor declarationDescriptor, LazyJavaAnnotations lazyJavaAnnotations, Modality modality, DescriptorVisibility descriptorVisibility, boolean z, Name name, JavaSourceElement javaSourceElement, boolean z2) {
        if (declarationDescriptor == null) {
            Z(7);
            throw null;
        }
        if (modality == null) {
            Z(9);
            throw null;
        }
        if (name == null) {
            Z(11);
            throw null;
        }
        if (javaSourceElement != null) {
            return new JavaPropertyDescriptor(declarationDescriptor, lazyJavaAnnotations, modality, descriptorVisibility, z, name, javaSourceElement, null, CallableMemberDescriptor.Kind.DECLARATION, z2, null);
        }
        Z(12);
        throw null;
    }

    public static /* synthetic */ void Z(int i2) {
        String str = i2 != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i2 != 21 ? 3 : 2];
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
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 18:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
            case 16:
                objArr[0] = b.a.d;
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 14:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case 17:
                objArr[0] = "newName";
                break;
            case 19:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
            case 22:
                objArr[0] = "inType";
                break;
        }
        if (i2 != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i2) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            case 21:
                break;
            case 22:
                objArr[2] = "setInType";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 == 21) {
            throw new IllegalStateException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    public final PropertyDescriptorImpl I0(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibility descriptorVisibility, PropertyDescriptor propertyDescriptor, CallableMemberDescriptor.Kind kind, Name name) {
        if (declarationDescriptor == null) {
            Z(13);
            throw null;
        }
        if (modality == null) {
            Z(14);
            throw null;
        }
        if (descriptorVisibility == null) {
            Z(15);
            throw null;
        }
        if (kind == null) {
            Z(16);
            throw null;
        }
        if (name == null) {
            Z(17);
            throw null;
        }
        return new JavaPropertyDescriptor(declarationDescriptor, getAnnotations(), modality, descriptorVisibility, this.g, name, SourceElement.f72405a, propertyDescriptor, kind, this.B, this.C);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    public final void K0(KotlinType kotlinType) {
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final boolean Y() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public final boolean isConst() {
        KotlinType type = getType();
        if (!this.B) {
            return false;
        }
        type.getClass();
        if (((!KotlinBuiltIns.H(type) && !UnsignedTypes.a(type)) || TypeUtils.g(type)) && !KotlinBuiltIns.I(type)) {
            return false;
        }
        Annotations annotations = TypeEnhancementKt.f73191a;
        FqName fqName = JvmAnnotationNames.p;
        fqName.getClass();
        return !ClassicTypeSystemContext.DefaultImpls.w(type, fqName) || KotlinBuiltIns.I(type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final Object n0(CallableDescriptor.UserDataKey userDataKey) {
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor
    public final JavaCallableMemberDescriptor p0(KotlinType kotlinType, ArrayList arrayList, KotlinType kotlinType2, Pair pair) {
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl;
        PropertySetterDescriptorImpl propertySetterDescriptorImpl;
        if (kotlinType2 == null) {
            Z(20);
            throw null;
        }
        PropertyDescriptor propertyDescriptorY0 = y0() == this ? null : y0();
        JavaPropertyDescriptor javaPropertyDescriptor = new JavaPropertyDescriptor(d(), getAnnotations(), q(), getVisibility(), this.g, getName(), getSource(), propertyDescriptorY0, e(), this.B, pair);
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl2 = this.x;
        if (propertyGetterDescriptorImpl2 != null) {
            PropertyGetterDescriptorImpl propertyGetterDescriptorImpl3 = new PropertyGetterDescriptorImpl(javaPropertyDescriptor, propertyGetterDescriptorImpl2.getAnnotations(), propertyGetterDescriptorImpl2.q(), propertyGetterDescriptorImpl2.getVisibility(), propertyGetterDescriptorImpl2.f72542f, propertyGetterDescriptorImpl2.g, propertyGetterDescriptorImpl2.f72545j, e(), propertyDescriptorY0 == null ? null : propertyDescriptorY0.getGetter(), propertyGetterDescriptorImpl2.getSource());
            propertyGetterDescriptorImpl3.m = propertyGetterDescriptorImpl2.m;
            propertyGetterDescriptorImpl3.n = kotlinType2;
            propertyGetterDescriptorImpl = propertyGetterDescriptorImpl3;
        } else {
            propertyGetterDescriptorImpl = null;
        }
        PropertySetterDescriptor propertySetterDescriptor = this.y;
        if (propertySetterDescriptor != null) {
            propertySetterDescriptorImpl = new PropertySetterDescriptorImpl(javaPropertyDescriptor, propertySetterDescriptor.getAnnotations(), propertySetterDescriptor.q(), propertySetterDescriptor.getVisibility(), propertySetterDescriptor.B(), propertySetterDescriptor.isExternal(), propertySetterDescriptor.isInline(), e(), propertyDescriptorY0 == null ? null : propertyDescriptorY0.getSetter(), propertySetterDescriptor.getSource());
            propertySetterDescriptorImpl.m = propertySetterDescriptorImpl.m;
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) propertySetterDescriptor.h().get(0);
            if (valueParameterDescriptor == null) {
                PropertySetterDescriptorImpl.Z(6);
                throw null;
            }
            propertySetterDescriptorImpl.n = valueParameterDescriptor;
        } else {
            propertySetterDescriptorImpl = null;
        }
        javaPropertyDescriptor.J0(propertyGetterDescriptorImpl, propertySetterDescriptorImpl, this.z, this.A);
        Function0 function0 = this.f72570i;
        if (function0 != null) {
            javaPropertyDescriptor.F0(this.f72569h, function0);
        }
        javaPropertyDescriptor.x0(i());
        javaPropertyDescriptor.L0(kotlinType2, getTypeParameters(), this.u, kotlinType != null ? DescriptorFactory.h(this, kotlinType, Annotations.Companion.f72432a) : null, EmptyList.f71768b);
        return javaPropertyDescriptor;
    }
}
