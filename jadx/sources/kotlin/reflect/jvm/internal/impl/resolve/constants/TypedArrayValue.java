package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public final class TypedArrayValue extends ArrayValue {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KotlinType f73885c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypedArrayValue(List<? extends ConstantValue<?>> list, final KotlinType kotlinType) {
        super(list, new Function1(kotlinType) { // from class: kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final KotlinType f73886b;

            {
                this.f73886b = kotlinType;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((ModuleDescriptor) obj).getClass();
                return this.f73886b;
            }
        });
        list.getClass();
        kotlinType.getClass();
        this.f73885c = kotlinType;
    }
}
