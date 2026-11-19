package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MemberKindCheck implements Check {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f74343a;

    public static final class Member extends MemberKindCheck {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Member f74344b = new Member("must be a member function", null);

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public final boolean a(JavaMethodDescriptor javaMethodDescriptor) {
            return javaMethodDescriptor.f72496k != null;
        }
    }

    public static final class MemberOrExtension extends MemberKindCheck {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final MemberOrExtension f74345b = new MemberOrExtension("must be a member or an extension function", null);

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public final boolean a(JavaMethodDescriptor javaMethodDescriptor) {
            return (javaMethodDescriptor.f72496k == null && javaMethodDescriptor.f72495j == null) ? false : true;
        }
    }

    public MemberKindCheck(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f74343a = str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final /* bridge */ String b(JavaMethodDescriptor javaMethodDescriptor) {
        return Check.DefaultImpls.a(this, javaMethodDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String getDescription() {
        return this.f74343a;
    }
}
