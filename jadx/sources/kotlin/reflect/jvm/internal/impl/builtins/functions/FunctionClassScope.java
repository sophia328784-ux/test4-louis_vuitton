package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class FunctionClassScope extends GivenFunctionsMemberScope {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionClassScope(StorageManager storageManager, FunctionClassDescriptor functionClassDescriptor) {
        super(storageManager, functionClassDescriptor);
        storageManager.getClass();
        functionClassDescriptor.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope
    public final List h() {
        ClassDescriptor classDescriptor = this.f73921b;
        classDescriptor.getClass();
        FunctionClassDescriptor functionClassDescriptor = (FunctionClassDescriptor) classDescriptor;
        FunctionTypeKind functionTypeKind = functionClassDescriptor.f72288i;
        if (Intrinsics.c(functionTypeKind, FunctionTypeKind.Function.f72293c)) {
            FunctionInvokeDescriptor.F.getClass();
            return CollectionsKt.O(FunctionInvokeDescriptor.Factory.a(functionClassDescriptor, false));
        }
        if (!Intrinsics.c(functionTypeKind, FunctionTypeKind.SuspendFunction.f72296c)) {
            return EmptyList.f71768b;
        }
        FunctionInvokeDescriptor.F.getClass();
        return CollectionsKt.O(FunctionInvokeDescriptor.Factory.a(functionClassDescriptor, true));
    }
}
