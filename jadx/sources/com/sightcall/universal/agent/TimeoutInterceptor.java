package com.sightcall.universal.agent;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import retrofit2.Invocation;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/agent/TimeoutInterceptor;", "Lokhttp3/Interceptor;", "<init>", "()V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TimeoutInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        chain.getClass();
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
