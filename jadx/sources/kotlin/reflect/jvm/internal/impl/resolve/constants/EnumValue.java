package kotlin.reflect.jvm.internal.impl.resolve.constants;

import io.jsonwebtoken.JwtParser;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class EnumValue extends ConstantValue<Pair<? extends ClassId, ? extends Name>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClassId f73871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Name f73872c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumValue(ClassId classId, Name name) {
        super(new Pair(classId, name));
        classId.getClass();
        name.getClass();
        this.f73871b = classId;
        this.f73872c = name;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType a(ModuleDescriptor moduleDescriptor) {
        SimpleType simpleTypeO;
        moduleDescriptor.getClass();
        ClassId classId = this.f73871b;
        ClassDescriptor classDescriptorA = FindClassInModuleKt.a(moduleDescriptor, classId);
        if (classDescriptorA != null) {
            int i2 = DescriptorUtils.f73834a;
            if (!DescriptorUtils.l(classDescriptorA, ClassKind.ENUM_CLASS)) {
                classDescriptorA = null;
            }
            if (classDescriptorA != null && (simpleTypeO = classDescriptorA.o()) != null) {
                return simpleTypeO;
            }
        }
        ErrorTypeKind errorTypeKind = ErrorTypeKind.ERROR_ENUM_TYPE;
        String string = classId.toString();
        String str = this.f73872c.f73687b;
        str.getClass();
        return ErrorUtils.c(errorTypeKind, string, str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f73871b.f());
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(this.f73872c);
        return sb.toString();
    }
}
