package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassLiteralValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClassId f73867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f73868b;

    public ClassLiteralValue(ClassId classId, int i2) {
        classId.getClass();
        this.f73867a = classId;
        this.f73868b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClassLiteralValue)) {
            return false;
        }
        ClassLiteralValue classLiteralValue = (ClassLiteralValue) obj;
        return Intrinsics.c(this.f73867a, classLiteralValue.f73867a) && this.f73868b == classLiteralValue.f73868b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f73868b) + (this.f73867a.hashCode() * 31);
    }

    public final String toString() {
        int i2;
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (true) {
            i2 = this.f73868b;
            if (i3 >= i2) {
                break;
            }
            sb.append("kotlin/Array<");
            i3++;
        }
        sb.append(this.f73867a);
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append(">");
        }
        return sb.toString();
    }
}
