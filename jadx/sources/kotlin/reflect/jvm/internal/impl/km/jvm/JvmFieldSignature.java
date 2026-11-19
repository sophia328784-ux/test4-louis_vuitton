package kotlin.reflect.jvm.internal.impl.km.jvm;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmFieldSignature extends JvmMemberSignature {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f72796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f72797b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmFieldSignature(String str, String str2) {
        super(null);
        str.getClass();
        str2.getClass();
        this.f72796a = str;
        this.f72797b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JvmFieldSignature)) {
            return false;
        }
        JvmFieldSignature jvmFieldSignature = (JvmFieldSignature) obj;
        return Intrinsics.c(this.f72796a, jvmFieldSignature.f72796a) && Intrinsics.c(this.f72797b, jvmFieldSignature.f72797b);
    }

    public final int hashCode() {
        return this.f72797b.hashCode() + (this.f72796a.hashCode() * 31);
    }

    public final String toString() {
        return this.f72796a + ':' + this.f72797b;
    }
}
