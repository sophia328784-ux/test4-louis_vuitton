package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* JADX INFO: loaded from: classes4.dex */
public final class LongValue extends IntegerValueConstant<Long> {
    public LongValue(long j2) {
        super(Long.valueOf(j2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType a(ModuleDescriptor moduleDescriptor) {
        moduleDescriptor.getClass();
        KotlinBuiltIns kotlinBuiltInsG = moduleDescriptor.g();
        kotlinBuiltInsG.getClass();
        SimpleType simpleTypeT = kotlinBuiltInsG.t(PrimitiveType.LONG);
        if (simpleTypeT != null) {
            return simpleTypeT;
        }
        KotlinBuiltIns.a(60);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final String toString() {
        return ((Number) this.f73869a).longValue() + ".toLong()";
    }
}
