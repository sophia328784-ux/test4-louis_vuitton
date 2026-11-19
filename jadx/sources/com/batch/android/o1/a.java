package com.batch.android.o1;

import android.content.Context;
import com.batch.android.FailReason;
import com.batch.android.e.a0;
import com.batch.android.n.f0;
import com.batch.android.n.w;
import com.batch.android.n.x;
import com.batch.android.n.z;

/* JADX INFO: loaded from: classes2.dex */
public class a implements com.batch.android.n1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f23875a = 15000;

    /* JADX INFO: renamed from: com.batch.android.o1.a$a, reason: collision with other inner class name */
    public static /* synthetic */ class C0066a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23876a;

        static {
            int[] iArr = new int[com.batch.android.g1.a.EnumC0053a.values().length];
            f23876a = iArr;
            try {
                iArr[com.batch.android.g1.a.EnumC0053a.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23876a[com.batch.android.g1.a.EnumC0053a.RESEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23876a[com.batch.android.g1.a.EnumC0053a.RECHECK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23876a[com.batch.android.g1.a.EnumC0053a.BUMP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23876a[com.batch.android.g1.a.EnumC0053a.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.batch.android.n1.a
    public void a(com.batch.android.g1.a aVar) {
        Long l = 0L;
        int i2 = C0066a.f23876a[aVar.c().ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                Long l2 = aVar.f23407e;
                if (l2 != null && l2.longValue() >= 0) {
                    l = l2;
                }
                f0.a().d(l.longValue());
            } else if (i2 == 3) {
                Long lValueOf = aVar.f23407e;
                if (lValueOf == null) {
                    lValueOf = Long.valueOf(f23875a);
                }
                f0.a().c((lValueOf.longValue() >= 0 ? lValueOf : 0L).longValue());
            } else if (i2 == 4 && aVar.d > 0) {
                f0.a().a(aVar.d);
            } else {
                f0.a().c(f23875a);
            }
        }
        Context contextC = z.a().c();
        String strD = aVar.d();
        if (strD == null || contextC == null) {
            return;
        }
        a0 a0VarA = w.a(contextC);
        String strA = a0VarA.a(com.batch.android.e.z.X0);
        if (strD.equals(strA)) {
            return;
        }
        a0VarA.a(com.batch.android.e.z.X0, strD, true);
        x.a().a(strA, strD);
    }

    @Override // com.batch.android.n1.a
    public void a(FailReason failReason) {
        f0.a().c(f23875a);
    }
}
