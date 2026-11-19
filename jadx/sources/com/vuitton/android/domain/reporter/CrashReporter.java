package com.vuitton.android.domain.reporter;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/reporter/CrashReporter;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CrashReporter {
    void a(String str);

    void b(RuntimeException runtimeException);

    void c(int i2);

    void d(String str, String str2);

    void e();

    boolean isReady();
}
