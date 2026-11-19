package com.vuitton.android.data.exception;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.exception.NetworkException;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function2;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NetworkExceptionMapperKt {
    public static final Object a(Object obj, Function2 function2) {
        Throwable noNetwork;
        Object failure;
        Throwable thA = Result.a(obj);
        if (thA == null) {
            return obj;
        }
        if (thA instanceof NetworkException) {
            noNetwork = (NetworkException) thA;
        } else {
            if (thA instanceof HttpException) {
                HttpException httpException = (HttpException) thA;
                String str = httpException.f79347c;
                int i2 = httpException.f79346b;
                if (i2 == 401) {
                    noNetwork = new NetworkException.Unauthorized(str);
                } else if (i2 == 404) {
                    noNetwork = new NetworkException.NotFound(str);
                } else if (i2 == 429) {
                    noNetwork = new NetworkException.TooManyRequest(str);
                } else if (i2 != 503) {
                    Response response = httpException.d;
                    ResponseBody responseBody = response != null ? response.f79451c : null;
                    if (responseBody == null || function2 == null) {
                        noNetwork = new NetworkException.Unknown(str);
                    } else {
                        try {
                            HttpStatusCode httpStatusCode = new HttpStatusCode(((HttpException) thA).f79346b);
                            String strString = responseBody.string();
                            strString.getClass();
                            failure = new Result((NetworkException.CustomException) function2.invoke(httpStatusCode, new HttpResponseBody(strString)));
                        } catch (Throwable th) {
                            Result.Companion companion = Result.INSTANCE;
                            failure = new Result.Failure(th);
                        }
                        Throwable thA2 = Result.a(failure);
                        if (thA2 != null) {
                            if (thA2 instanceof CancellationException) {
                                throw thA2;
                            }
                            failure = new Result(new Result.Failure(thA2));
                        }
                        Object unknown = new NetworkException.Unknown(str);
                        Object obj2 = ((Result) failure).f71708b;
                        if (!(obj2 instanceof Result.Failure)) {
                            unknown = obj2;
                        }
                        noNetwork = (NetworkException) unknown;
                    }
                } else {
                    noNetwork = new NetworkException.InMaintenance(str);
                }
            } else {
                noNetwork = thA instanceof IOException ? new NetworkException.NoNetwork(null, 1, null) : new NetworkException.Unknown(thA.getMessage());
            }
        }
        return ResultKt.a(noNetwork);
    }
}
