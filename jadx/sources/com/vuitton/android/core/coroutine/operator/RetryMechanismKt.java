package com.vuitton.android.core.coroutine.operator;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RetryMechanismKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f43485a;

        static {
            int[] iArr = new int[RetryMechanism.values().length];
            try {
                iArr[RetryMechanism.FIXED_DELAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RetryMechanism.LINEAR_BACKOFF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RetryMechanism.EXPONENTIAL_BACKOFF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f43485a = iArr;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:63|71|25|(9:28|29|30|34|(2:37|(1:39)(1:66))|40|(1:42)(1:43)|(0)|65)|60) */
    /* JADX WARN: Code duplicated, block: B:28:0x0094  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00de  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x013c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00aa, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ab, code lost:
    
        r14 = r13;
        r13 = r4;
        r4 = r12;
        r12 = r10;
        r9 = r8;
        r8 = r14;
        r14 = r2;
        r2 = r11;
        r11 = r1;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0123 -> B:62:0x012a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(int r16, long r17, com.vuitton.android.core.coroutine.operator.RetryMechanism r19, kotlin.jvm.functions.Function1 r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.core.coroutine.operator.RetryMechanismKt.a(int, long, com.vuitton.android.core.coroutine.operator.RetryMechanism, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
