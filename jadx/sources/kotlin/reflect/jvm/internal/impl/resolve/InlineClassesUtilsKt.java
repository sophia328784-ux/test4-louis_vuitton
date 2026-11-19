package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyGetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;

/* JADX INFO: loaded from: classes4.dex */
public abstract class InlineClassesUtilsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f73835a = 0;

    static {
        FqName fqName = new FqName("kotlin.jvm.JvmInline");
        ClassId.d.getClass();
        ClassId.Companion.b(fqName);
        new FqName("kotlin.jvm.JvmName");
    }

    public static final boolean a(CallableMemberDescriptor callableMemberDescriptor) {
        ValueClassRepresentation valueClassRepresentationO;
        callableMemberDescriptor.getClass();
        if (!(callableMemberDescriptor instanceof PropertyGetterDescriptor)) {
            return false;
        }
        PropertyDescriptor propertyDescriptorP = ((PropertyGetterDescriptor) callableMemberDescriptor).P();
        propertyDescriptorP.getClass();
        if (propertyDescriptorP.J() != null) {
            return false;
        }
        DeclarationDescriptor declarationDescriptorD = propertyDescriptorP.d();
        ClassDescriptor classDescriptor = declarationDescriptorD instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptorD : null;
        if (classDescriptor == null || (valueClassRepresentationO = classDescriptor.O()) == null) {
            return false;
        }
        Name name = propertyDescriptorP.getName();
        name.getClass();
        return valueClassRepresentationO.a(name);
    }

    public static final boolean b(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        return (declarationDescriptor instanceof ClassDescriptor) && (((ClassDescriptor) declarationDescriptor).O() instanceof InlineClassRepresentation);
    }

    public static final boolean c(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        return (declarationDescriptor instanceof ClassDescriptor) && (((ClassDescriptor) declarationDescriptor).O() instanceof MultiFieldValueClassRepresentation);
    }

    public static final boolean d(VariableDescriptor variableDescriptor) {
        variableDescriptor.getClass();
        if (variableDescriptor.J() != null) {
            return false;
        }
        DeclarationDescriptor declarationDescriptorD = variableDescriptor.d();
        Name name = null;
        ClassDescriptor classDescriptor = declarationDescriptorD instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptorD : null;
        if (classDescriptor != null) {
            int i2 = DescriptorUtilsKt.f73888a;
            ValueClassRepresentation valueClassRepresentationO = classDescriptor.O();
            InlineClassRepresentation inlineClassRepresentation = valueClassRepresentationO instanceof InlineClassRepresentation ? (InlineClassRepresentation) valueClassRepresentationO : null;
            if (inlineClassRepresentation != null) {
                name = inlineClassRepresentation.f72378a;
            }
        }
        return Intrinsics.c(name, variableDescriptor.getName());
    }

    public static final boolean e(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        return b(declarationDescriptor) || c(declarationDescriptor);
    }

    public static final boolean f(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        return (classifierDescriptorY == null || !c(classifierDescriptorY) || ClassicTypeSystemContext.DefaultImpls.J(kotlinType)) ? false : true;
    }

    public static final SimpleType g(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
        if (classDescriptor != null) {
            int i2 = DescriptorUtilsKt.f73888a;
            ValueClassRepresentation valueClassRepresentationO = classDescriptor.O();
            InlineClassRepresentation inlineClassRepresentation = valueClassRepresentationO instanceof InlineClassRepresentation ? (InlineClassRepresentation) valueClassRepresentationO : null;
            if (inlineClassRepresentation != null) {
                return (SimpleType) inlineClassRepresentation.f72379b;
            }
        }
        return null;
    }
}
