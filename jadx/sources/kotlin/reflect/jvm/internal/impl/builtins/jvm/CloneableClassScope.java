package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class CloneableClassScope extends GivenFunctionsMemberScope {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f72302e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Name f72303f = Name.e("clone");

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloneableClassScope(StorageManager storageManager, ClassDescriptor classDescriptor) {
        super(storageManager, classDescriptor);
        storageManager.getClass();
        classDescriptor.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope
    public final List h() {
        CallableMemberDescriptor.Kind kind = CallableMemberDescriptor.Kind.DECLARATION;
        SourceElement sourceElement = SourceElement.f72405a;
        ClassDescriptor classDescriptor = this.f73921b;
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplP0 = SimpleFunctionDescriptorImpl.P0(classDescriptor, f72303f, kind, sourceElement);
        ReceiverParameterDescriptor receiverParameterDescriptorE0 = classDescriptor.E0();
        EmptyList emptyList = EmptyList.f71768b;
        simpleFunctionDescriptorImplP0.J0(null, receiverParameterDescriptorE0, emptyList, emptyList, emptyList, DescriptorUtilsKt.i(classDescriptor).g().e(), Modality.OPEN, DescriptorVisibilities.f72368c);
        return CollectionsKt.O(simpleFunctionDescriptorImplP0);
    }
}
