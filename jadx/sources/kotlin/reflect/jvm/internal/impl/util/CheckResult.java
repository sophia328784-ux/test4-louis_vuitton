package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CheckResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f74331a;

    public static final class IllegalFunctionName extends CheckResult {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final IllegalFunctionName f74332b = new IllegalFunctionName(false, null);
    }

    public static final class IllegalSignature extends CheckResult {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IllegalSignature(String str) {
            super(false, null);
            str.getClass();
        }
    }

    public static final class SuccessCheck extends CheckResult {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final SuccessCheck f74333b = new SuccessCheck(true, null);
    }

    public CheckResult(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f74331a = z;
    }
}
