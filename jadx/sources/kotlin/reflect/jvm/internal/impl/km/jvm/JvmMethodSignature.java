package kotlin.reflect.jvm.internal.impl.km.jvm;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmMethodSignature extends JvmMemberSignature {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f72800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f72801b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmMethodSignature(String str, String str2) {
        super(null);
        str.getClass();
        str2.getClass();
        this.f72800a = str;
        this.f72801b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JvmMethodSignature)) {
            return false;
        }
        JvmMethodSignature jvmMethodSignature = (JvmMethodSignature) obj;
        return Intrinsics.c(this.f72800a, jvmMethodSignature.f72800a) && Intrinsics.c(this.f72801b, jvmMethodSignature.f72801b);
    }

    public final int hashCode() {
        return this.f72801b.hashCode() + (this.f72800a.hashCode() * 31);
    }

    public final String toString() {
        return this.f72800a + this.f72801b;
    }
}
