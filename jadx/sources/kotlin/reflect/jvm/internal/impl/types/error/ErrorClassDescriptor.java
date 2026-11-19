package kotlin.reflect.jvm.internal.impl.types.error;

import kotlin.collections.EmptyList;
import kotlin.collections.SetsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;

/* JADX INFO: loaded from: classes4.dex */
public final class ErrorClassDescriptor extends ClassDescriptorImpl {
    /* JADX WARN: Illegal instructions before constructor call */
    public ErrorClassDescriptor(Name name) {
        name.getClass();
        ErrorModuleDescriptor errorModuleDescriptor = ErrorUtils.f74310a;
        ErrorModuleDescriptor errorModuleDescriptor2 = ErrorUtils.f74310a;
        Modality modality = Modality.OPEN;
        ClassKind classKind = ClassKind.CLASS;
        EmptyList emptyList = EmptyList.f71768b;
        StorageManager storageManager = LockBasedStorageManager.f74137e;
        SourceElement sourceElement = SourceElement.f72405a;
        super(errorModuleDescriptor2, name, modality, classKind, emptyList, sourceElement, false, storageManager);
        ClassConstructorDescriptorImpl classConstructorDescriptorImpl = new ClassConstructorDescriptorImpl(this, null, Annotations.Companion.f72432a, true, CallableMemberDescriptor.Kind.DECLARATION, sourceElement);
        classConstructorDescriptorImpl.R0(emptyList, DescriptorVisibilities.f72369e);
        ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ERROR_CLASS;
        String str = classConstructorDescriptorImpl.getName().f73687b;
        str.getClass();
        ErrorScope errorScopeB = ErrorUtils.b(errorScopeKind, str, "");
        ErrorTypeKind errorTypeKind = ErrorTypeKind.ERROR_CLASS;
        classConstructorDescriptorImpl.f72493h = new ErrorType(ErrorUtils.d(errorTypeKind, new String[0]), errorScopeB, errorTypeKind, null, false, new String[0], 24, null);
        F0(errorScopeB, SetsKt.h(classConstructorDescriptorImpl), classConstructorDescriptorImpl);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor
    /* JADX INFO: renamed from: B0 */
    public final ClassDescriptor b(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope Z(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ERROR_CLASS;
        String str = getName().f73687b;
        str.getClass();
        return ErrorUtils.b(errorScopeKind, str, typeSubstitution.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final DeclarationDescriptorNonRoot b(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl
    public final String toString() {
        String strB = getName().b();
        strB.getClass();
        return strB;
    }
}
