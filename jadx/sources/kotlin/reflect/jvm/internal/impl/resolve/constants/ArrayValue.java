package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public class ArrayValue extends ConstantValue<List<? extends ConstantValue<?>>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f73866b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArrayValue(List<? extends ConstantValue<?>> list, Function1<? super ModuleDescriptor, ? extends KotlinType> function1) {
        super(list);
        list.getClass();
        function1.getClass();
        this.f73866b = function1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType a(ModuleDescriptor moduleDescriptor) {
        moduleDescriptor.getClass();
        KotlinType kotlinType = (KotlinType) this.f73866b.invoke(moduleDescriptor);
        if (!KotlinBuiltIns.z(kotlinType) && !KotlinBuiltIns.G(kotlinType) && !KotlinBuiltIns.C(kotlinType, StandardNames.FqNames.W.f73679a) && !KotlinBuiltIns.C(kotlinType, StandardNames.FqNames.X.f73679a) && !KotlinBuiltIns.C(kotlinType, StandardNames.FqNames.Y.f73679a)) {
            KotlinBuiltIns.C(kotlinType, StandardNames.FqNames.Z.f73679a);
        }
        return kotlinType;
    }
}
