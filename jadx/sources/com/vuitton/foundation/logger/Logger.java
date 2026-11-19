package com.vuitton.foundation.logger;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/logger/Logger;", "", "logger"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface Logger {
    void a(String str, Function0 function0);

    void b(String str, Function0 function0, Throwable th);

    void c(String str, String str2, Throwable th);

    void d(String str, String str2, Throwable th);
}
