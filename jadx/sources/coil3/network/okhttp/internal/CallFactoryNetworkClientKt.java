package coil3.network.okhttp.internal;

import coil3.network.NetworkClientKt;
import coil3.network.NetworkHeaders;
import coil3.network.NetworkRequest;
import coil3.network.NetworkRequestBody;
import coil3.network.NetworkResponse;
import defpackage.md;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-network-okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class CallFactoryNetworkClientKt {
    public static final NetworkResponse a(Response response) {
        BufferedSource f77180h;
        int i2 = response.f76986e;
        long j2 = response.m;
        long j3 = response.n;
        Headers headers = response.g;
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder();
        for (Pair<? extends String, ? extends String> pair : headers) {
            builder.a((String) pair.f71705b, (String) pair.f71706c);
        }
        NetworkHeaders networkHeadersB = builder.b();
        ResponseBody responseBody = response.f76988h;
        return new NetworkResponse(i2, j2, j3, networkHeadersB, (responseBody == null || (f77180h = responseBody.getF77005h()) == null) ? null : NetworkClientKt.a(f77180h), response);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0 A[LOOP:1: B:30:0x00aa->B:32:0x00b0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object b(NetworkRequest networkRequest, ContinuationImpl continuationImpl) {
        CallFactoryNetworkClientKt$toRequest$1 callFactoryNetworkClientKt$toRequest$1;
        Request.Builder builder;
        String str;
        Request.Builder builder2;
        Request.Builder builder3;
        NetworkRequest networkRequest2;
        String str2;
        Headers.Builder builder4;
        String str3;
        Iterator it;
        if (continuationImpl instanceof CallFactoryNetworkClientKt$toRequest$1) {
            callFactoryNetworkClientKt$toRequest$1 = (CallFactoryNetworkClientKt$toRequest$1) continuationImpl;
            int i2 = callFactoryNetworkClientKt$toRequest$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                callFactoryNetworkClientKt$toRequest$1.g = i2 - Integer.MIN_VALUE;
            } else {
                callFactoryNetworkClientKt$toRequest$1 = new CallFactoryNetworkClientKt$toRequest$1(continuationImpl);
            }
        } else {
            callFactoryNetworkClientKt$toRequest$1 = new CallFactoryNetworkClientKt$toRequest$1(continuationImpl);
        }
        Object obj = callFactoryNetworkClientKt$toRequest$1.f21601f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = callFactoryNetworkClientKt$toRequest$1.g;
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            builder = new Request.Builder();
            builder.e(networkRequest.f21575a);
            String str4 = networkRequest.f21576b;
            NetworkRequestBody networkRequestBody = networkRequest.d;
            if (networkRequestBody != null) {
                callFactoryNetworkClientKt$toRequest$1.f21598b = networkRequest;
                callFactoryNetworkClientKt$toRequest$1.f21599c = builder;
                callFactoryNetworkClientKt$toRequest$1.d = builder;
                callFactoryNetworkClientKt$toRequest$1.f21600e = str4;
                callFactoryNetworkClientKt$toRequest$1.g = 1;
                Object objC = c(networkRequestBody, callFactoryNetworkClientKt$toRequest$1);
                if (objC == coroutineSingletons) {
                    return coroutineSingletons;
                }
                builder3 = builder;
                obj = objC;
                networkRequest2 = networkRequest;
                str2 = str4;
                builder2 = builder3;
            } else {
                str = str4;
                builder2 = builder;
            }
            String str5 = str;
            networkRequest2 = networkRequest;
            str2 = str5;
            builder3 = builder;
            builder3.c(str2, requestBody$Companion$toRequestBody$1);
            NetworkHeaders networkHeaders = networkRequest2.f21577c;
            builder4 = new Headers.Builder();
            for (Map.Entry entry : networkHeaders.f21573a.entrySet()) {
                str3 = (String) entry.getKey();
                it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    builder4.c(str3, (String) it.next());
                }
            }
            Headers headersD = builder4.d();
            builder2.getClass();
            builder2.f76976c = headersD.h();
            return new Request(builder2);
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        str2 = callFactoryNetworkClientKt$toRequest$1.f21600e;
        builder3 = callFactoryNetworkClientKt$toRequest$1.d;
        builder2 = callFactoryNetworkClientKt$toRequest$1.f21599c;
        networkRequest2 = callFactoryNetworkClientKt$toRequest$1.f21598b;
        ResultKt.b(obj);
        ByteString byteString = (ByteString) obj;
        if (byteString != null) {
            RequestBody.f76978a.getClass();
            requestBody$Companion$toRequestBody$1 = new RequestBody$Companion$toRequestBody$1(null, byteString);
        } else {
            NetworkRequest networkRequest3 = networkRequest2;
            str = str2;
            networkRequest = networkRequest3;
            builder = builder3;
            String str6 = str;
            networkRequest2 = networkRequest;
            str2 = str6;
            builder3 = builder;
        }
        builder3.c(str2, requestBody$Companion$toRequestBody$1);
        NetworkHeaders networkHeaders2 = networkRequest2.f21577c;
        builder4 = new Headers.Builder();
        while (r6.hasNext()) {
            str3 = (String) entry.getKey();
            it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                builder4.c(str3, (String) it.next());
            }
        }
        Headers headersD2 = builder4.d();
        builder2.getClass();
        builder2.f76976c = headersD2.h();
        return new Request(builder2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(NetworkRequestBody networkRequestBody, ContinuationImpl continuationImpl) {
        CallFactoryNetworkClientKt$readByteString$1 callFactoryNetworkClientKt$readByteString$1;
        Buffer buffer;
        if (continuationImpl instanceof CallFactoryNetworkClientKt$readByteString$1) {
            callFactoryNetworkClientKt$readByteString$1 = (CallFactoryNetworkClientKt$readByteString$1) continuationImpl;
            int i2 = callFactoryNetworkClientKt$readByteString$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                callFactoryNetworkClientKt$readByteString$1.d = i2 - Integer.MIN_VALUE;
            } else {
                callFactoryNetworkClientKt$readByteString$1 = new CallFactoryNetworkClientKt$readByteString$1(continuationImpl);
            }
        } else {
            callFactoryNetworkClientKt$readByteString$1 = new CallFactoryNetworkClientKt$readByteString$1(continuationImpl);
        }
        Object obj = callFactoryNetworkClientKt$readByteString$1.f21597c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = callFactoryNetworkClientKt$readByteString$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Buffer buffer2 = new Buffer();
            callFactoryNetworkClientKt$readByteString$1.f21596b = buffer2;
            callFactoryNetworkClientKt$readByteString$1.d = 1;
            if (networkRequestBody.a() == coroutineSingletons) {
                return coroutineSingletons;
            }
            buffer = buffer2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            buffer = callFactoryNetworkClientKt$readByteString$1.f21596b;
            ResultKt.b(obj);
        }
        return buffer.N0(buffer.f77390c);
    }
}
