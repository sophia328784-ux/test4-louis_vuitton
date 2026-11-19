package com.kakao.sdk.network;

import com.kakao.sdk.common.util.SdkLog;
import okhttp3.logging.HttpLoggingInterceptor;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements HttpLoggingInterceptor.Logger {
    @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
    public final void a(String str) {
        ApiFactory$loggingInterceptor$2 apiFactory$loggingInterceptor$2 = ApiFactory$loggingInterceptor$2.f35905c;
        SdkLog.d.getClass();
        SdkLog.Companion.b(str);
    }
}
