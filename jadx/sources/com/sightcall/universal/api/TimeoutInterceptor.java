package com.sightcall.universal.api;

import java.io.IOException;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Reflection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import retrofit2.Invocation;

/* JADX INFO: loaded from: classes3.dex */
class TimeoutInterceptor implements Interceptor {
    private static final String TAG = "TimeoutInterceptor";

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request f77173e = chain.getF77173e();
        f77173e.getClass();
        Invocation invocation = (Invocation) f77173e.a(Reflection.f71922a.b(Invocation.class));
        Method method = invocation != null ? invocation.f79354c : null;
        Timeout timeout = method != null ? (Timeout) method.getAnnotation(Timeout.class) : null;
        Timeout.Connect connect = method != null ? (Timeout.Connect) method.getAnnotation(Timeout.Connect.class) : null;
        if (connect != null) {
            chain = chain.a(connect.value(), connect.unit());
        } else if (timeout != null && timeout.connect() >= 0) {
            chain = chain.a(timeout.connect(), timeout.unit());
        }
        Timeout.Write write = method != null ? (Timeout.Write) method.getAnnotation(Timeout.Write.class) : null;
        if (write != null) {
            chain = chain.c(write.value(), write.unit());
        } else if (timeout != null && timeout.write() >= 0) {
            chain = chain.c(timeout.write(), timeout.unit());
        }
        Timeout.Read read = method != null ? (Timeout.Read) method.getAnnotation(Timeout.Read.class) : null;
        if (read != null) {
            chain = chain.e(read.value(), read.unit());
        } else if (timeout != null && timeout.read() >= 0) {
            chain = chain.e(timeout.read(), timeout.unit());
        }
        return chain.b(f77173e);
    }
}
