package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2 extends DFS.AbstractNodeHandler<ClassDescriptor, Unit> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ClassDescriptor f73066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LinkedHashSet f73067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f73068c;

    public LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2(ClassDescriptor classDescriptor, LinkedHashSet linkedHashSet, Function1 function1) {
        this.f73066a = classDescriptor;
        this.f73067b = linkedHashSet;
        this.f73068c = function1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
    public final /* bridge */ /* synthetic */ Object a() {
        return Unit.f71739a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.AbstractNodeHandler, kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
    public final boolean c(Object obj) {
        ClassDescriptor classDescriptor = (ClassDescriptor) obj;
        classDescriptor.getClass();
        if (classDescriptor == this.f73066a) {
            return true;
        }
        MemberScope memberScopeE0 = classDescriptor.e0();
        memberScopeE0.getClass();
        if (!(memberScopeE0 instanceof LazyJavaStaticScope)) {
            return true;
        }
        this.f73067b.addAll((Collection) this.f73068c.invoke(memberScopeE0));
        return false;
    }
}
