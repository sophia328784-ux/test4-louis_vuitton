package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JvmMemberSignature {

    public static final class Field extends JvmMemberSignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f73664a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f73665b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Field(String str, String str2) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f73664a = str;
            this.f73665b = str2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature
        public final String a() {
            return this.f73664a + ':' + this.f73665b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Field)) {
                return false;
            }
            Field field = (Field) obj;
            return Intrinsics.c(this.f73664a, field.f73664a) && Intrinsics.c(this.f73665b, field.f73665b);
        }

        public final int hashCode() {
            return this.f73665b.hashCode() + (this.f73664a.hashCode() * 31);
        }
    }

    public static final class Method extends JvmMemberSignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f73666a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f73667b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Method(String str, String str2) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f73666a = str;
            this.f73667b = str2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature
        public final String a() {
            return this.f73666a + this.f73667b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Method)) {
                return false;
            }
            Method method = (Method) obj;
            return Intrinsics.c(this.f73666a, method.f73666a) && Intrinsics.c(this.f73667b, method.f73667b);
        }

        public final int hashCode() {
            return this.f73667b.hashCode() + (this.f73666a.hashCode() * 31);
        }
    }

    public JvmMemberSignature(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract String a();

    public final String toString() {
        return a();
    }
}
