package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;

/* JADX INFO: loaded from: classes4.dex */
public final class ScopesHolderForClass<T extends MemberScope> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClassDescriptor f72401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f72402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KotlinTypeRefiner f72403c;
    public final NotNullLazyValue d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72400f = {Reflection.f71922a.h(new PropertyReference1Impl(ScopesHolderForClass.class, "scopeForOwnerModule", "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", 0))};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f72399e = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ScopesHolderForClass(ClassDescriptor classDescriptor, StorageManager storageManager, Function1 function1, KotlinTypeRefiner kotlinTypeRefiner, DefaultConstructorMarker defaultConstructorMarker) {
        this.f72401a = classDescriptor;
        this.f72402b = function1;
        this.f72403c = kotlinTypeRefiner;
        this.d = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ScopesHolderForClass f72404b;

            {
                this.f72404b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ScopesHolderForClass scopesHolderForClass = this.f72404b;
                return (MemberScope) scopesHolderForClass.f72402b.invoke(scopesHolderForClass.f72403c);
            }
        });
    }

    public final MemberScope a(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        kotlinTypeRefiner.c(DescriptorUtilsKt.i(this.f72401a));
        return (MemberScope) StorageKt.a(this.d, f72400f[0]);
    }
}
