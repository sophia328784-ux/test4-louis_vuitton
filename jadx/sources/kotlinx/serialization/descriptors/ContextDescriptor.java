package kotlinx.serialization.descriptors;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/serialization/descriptors/ContextDescriptor;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "original", "Lkotlin/reflect/KClass;", "kClass", "<init>", "(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/reflect/KClass;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ContextDescriptor implements SerialDescriptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerialDescriptor f75533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KClass f75534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f75535c;

    public ContextDescriptor(SerialDescriptor serialDescriptor, KClass<?> kClass) {
        serialDescriptor.getClass();
        kClass.getClass();
        this.f75533a = serialDescriptor;
        this.f75534b = kClass;
        this.f75535c = serialDescriptor.getF75535c() + '<' + kClass.B() + '>';
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean b() {
        return this.f75533a.b();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int c(String str) {
        str.getClass();
        return this.f75533a.c(str);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: d */
    public final int getF75549c() {
        return this.f75533a.getF75549c();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: e */
    public final SerialKind getF75548b() {
        return this.f75533a.getF75548b();
    }

    public final boolean equals(Object obj) {
        ContextDescriptor contextDescriptor = obj instanceof ContextDescriptor ? (ContextDescriptor) obj : null;
        return contextDescriptor != null && Intrinsics.c(this.f75533a, contextDescriptor.f75533a) && Intrinsics.c(contextDescriptor.f75534b, this.f75534b);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String f(int i2) {
        return this.f75533a.f(i2);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List g(int i2) {
        return this.f75533a.g(i2);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: getAnnotations */
    public final List getD() {
        return this.f75533a.getD();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor h(int i2) {
        return this.f75533a.h(i2);
    }

    public final int hashCode() {
        return this.f75535c.hashCode() + (this.f75534b.hashCode() * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getF75535c() {
        return this.f75535c;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: isInline */
    public final boolean getL() {
        return this.f75533a.getL();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean j(int i2) {
        return this.f75533a.j(i2);
    }

    public final String toString() {
        return "ContextDescriptor(kClass: " + this.f75534b + ", original: " + this.f75533a + ')';
    }
}
