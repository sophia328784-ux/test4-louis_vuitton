package kotlin.reflect.jvm.internal.impl.types.error;

import defpackage.fc;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes4.dex */
public class ErrorScope implements MemberScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f74302b;

    public ErrorScope(ErrorScopeKind errorScopeKind, String... strArr) {
        errorScopeKind.getClass();
        strArr.getClass();
        String strA = errorScopeKind.a();
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length);
        this.f74302b = String.format(strA, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set a() {
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set d() {
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set e() {
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return new ErrorClassDescriptor(Name.g(String.format(ErrorEntity.ERROR_CLASS.a(), Arrays.copyOf(new Object[]{name}, 1))));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Set b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        ErrorModuleDescriptor errorModuleDescriptor = ErrorUtils.f74310a;
        return SetsKt.h(new ErrorFunctionDescriptor(ErrorUtils.f74311b));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public Set c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        ErrorModuleDescriptor errorModuleDescriptor = ErrorUtils.f74310a;
        return ErrorUtils.f74313e;
    }

    public String toString() {
        return fc.l(new StringBuilder("ErrorScope{"), this.f74302b, '}');
    }
}
