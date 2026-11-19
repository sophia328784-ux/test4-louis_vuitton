package kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* JADX INFO: loaded from: classes4.dex */
public class ImplicitClassReceiver implements ImplicitReceiver, ThisClassReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClassDescriptor f73956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClassDescriptor f73957b;

    public ImplicitClassReceiver(ClassDescriptor classDescriptor, ImplicitClassReceiver implicitClassReceiver) {
        classDescriptor.getClass();
        this.f73956a = classDescriptor;
        this.f73957b = classDescriptor;
    }

    public final boolean equals(Object obj) {
        ImplicitClassReceiver implicitClassReceiver = obj instanceof ImplicitClassReceiver ? (ImplicitClassReceiver) obj : null;
        return Intrinsics.c(this.f73956a, implicitClassReceiver != null ? implicitClassReceiver.f73956a : null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue
    public final KotlinType getType() {
        SimpleType simpleTypeO = this.f73956a.o();
        simpleTypeO.getClass();
        return simpleTypeO;
    }

    public final int hashCode() {
        return this.f73956a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ThisClassReceiver
    public final ClassDescriptor s() {
        return this.f73956a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Class{");
        SimpleType simpleTypeO = this.f73956a.o();
        simpleTypeO.getClass();
        sb.append(simpleTypeO);
        sb.append('}');
        return sb.toString();
    }
}
