package kotlin.reflect.jvm.internal.impl.load.kotlin;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.fc;
import defpackage.v40;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;

/* JADX INFO: loaded from: classes4.dex */
public final class MemberSignature {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f73259b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f73260a;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static MemberSignature a(String str, String str2) {
            str.getClass();
            str2.getClass();
            return new MemberSignature(str + '#' + str2, null);
        }

        public static MemberSignature b(JvmMemberSignature jvmMemberSignature) {
            if (jvmMemberSignature instanceof JvmMemberSignature.Method) {
                JvmMemberSignature.Method method = (JvmMemberSignature.Method) jvmMemberSignature;
                return d(method.f73666a, method.f73667b);
            }
            if (jvmMemberSignature instanceof JvmMemberSignature.Field) {
                JvmMemberSignature.Field field = (JvmMemberSignature.Field) jvmMemberSignature;
                return a(field.f73664a, field.f73665b);
            }
            v40.g();
            return null;
        }

        public static MemberSignature c(NameResolver nameResolver, JvmProtoBuf.JvmMethodSignature jvmMethodSignature) {
            nameResolver.getClass();
            jvmMethodSignature.getClass();
            return d(nameResolver.getString(jvmMethodSignature.d), nameResolver.getString(jvmMethodSignature.f73624e));
        }

        public static MemberSignature d(String str, String str2) {
            str.getClass();
            str2.getClass();
            return new MemberSignature(str.concat(str2), null);
        }

        public static MemberSignature e(MemberSignature memberSignature, int i2) {
            memberSignature.getClass();
            return new MemberSignature(memberSignature.f73260a + AnnotationParser.AnnotationInstruction + i2, null);
        }
    }

    public MemberSignature(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f73260a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MemberSignature) && Intrinsics.c(this.f73260a, ((MemberSignature) obj).f73260a);
    }

    public final int hashCode() {
        return this.f73260a.hashCode();
    }

    public final String toString() {
        return fc.l(new StringBuilder("MemberSignature(signature="), this.f73260a, ')');
    }
}
