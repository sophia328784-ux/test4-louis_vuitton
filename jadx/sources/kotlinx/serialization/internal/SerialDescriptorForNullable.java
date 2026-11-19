package kotlinx.serialization.internal;

import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/SerialDescriptorForNullable;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Lkotlinx/serialization/internal/CachedNames;", "original", "<init>", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SerialDescriptorForNullable implements SerialDescriptor, CachedNames {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerialDescriptor f75676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f75677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f75678c;

    public SerialDescriptorForNullable(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        this.f75676a = serialDescriptor;
        this.f75677b = serialDescriptor.getF75677b() + '?';
        this.f75678c = Platform_commonKt.a(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.CachedNames
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Set getF75678c() {
        return this.f75678c;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean b() {
        return true;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int c(String str) {
        str.getClass();
        return this.f75676a.c(str);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: d */
    public final int getF75549c() {
        return this.f75676a.getF75549c();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: e */
    public final SerialKind getF75548b() {
        return this.f75676a.getF75548b();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerialDescriptorForNullable) {
            return Intrinsics.c(this.f75676a, ((SerialDescriptorForNullable) obj).f75676a);
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String f(int i2) {
        return this.f75676a.f(i2);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List g(int i2) {
        return this.f75676a.g(i2);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: getAnnotations */
    public final List getD() {
        return this.f75676a.getD();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor h(int i2) {
        return this.f75676a.h(i2);
    }

    public final int hashCode() {
        return this.f75676a.hashCode() * 31;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getF75677b() {
        return this.f75677b;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: isInline */
    public final boolean getL() {
        return this.f75676a.getL();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean j(int i2) {
        return this.f75676a.j(i2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f75676a);
        sb.append('?');
        return sb.toString();
    }
}
