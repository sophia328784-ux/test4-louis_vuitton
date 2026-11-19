package com.vuitton.android.core.extensions;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"core"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NumberExtKt {
    public static final String a(long j2) {
        return String.format(Locale.ENGLISH, "%02d", Arrays.copyOf(new Object[]{Long.valueOf(j2)}, 1));
    }

    public static final String b(double d) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = String.valueOf(new BigDecimal(d).intValueExact());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) != null) {
            failure = String.valueOf(d);
        }
        return (String) failure;
    }
}
