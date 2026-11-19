package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionInvokeDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public interface ValueParameterDescriptor extends ParameterDescriptor, VariableDescriptor {
    ValueParameterDescriptor A(FunctionInvokeDescriptor functionInvokeDescriptor, Name name, int i2);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    ValueParameterDescriptor y0();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    CallableDescriptor d();

    int getIndex();

    boolean h0();

    boolean j0();

    KotlinType o0();

    boolean u0();
}
