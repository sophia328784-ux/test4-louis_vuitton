package com.linecorp.linesdk.api.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.linecorp.linesdk.LineAccessToken;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponse;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.api.LineApiClient;
import com.linecorp.linesdk.internal.AccessTokenCache;
import com.linecorp.linesdk.internal.InternalAccessToken;
import com.linecorp.linesdk.internal.RefreshTokenResult;
import com.linecorp.linesdk.internal.nwclient.LineAuthenticationApiClient;
import com.linecorp.linesdk.internal.nwclient.core.ChannelServiceHttpClient;
import com.linecorp.linesdk.utils.UriUtils;
import defpackage.fc;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AutoRefreshLineApiClientProxy {

    public static class TokenAutoRefreshInvocationHandler implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LineApiClientImpl f36105a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConcurrentHashMap f36106b = new ConcurrentHashMap(0);

        public TokenAutoRefreshInvocationHandler(LineApiClientImpl lineApiClientImpl) {
            this.f36105a = lineApiClientImpl;
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00f2  */
        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            boolean zBooleanValue;
            LineApiResponse lineApiResponseA;
            LineApiClientImpl lineApiClientImpl = this.f36105a;
            try {
                Object objInvoke = method.invoke(lineApiClientImpl, objArr);
                ConcurrentHashMap concurrentHashMap = this.f36106b;
                Boolean bool = (Boolean) concurrentHashMap.get(method);
                if (bool == null) {
                    String name = method.getName();
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    Class<?> superclass = lineApiClientImpl.getClass();
                    while (true) {
                        if (superclass == null) {
                            concurrentHashMap.put(method, Boolean.FALSE);
                            zBooleanValue = false;
                            break;
                        }
                        try {
                            if (((TokenAutoRefresh) superclass.getDeclaredMethod(name, parameterTypes).getAnnotation(TokenAutoRefresh.class)) != null) {
                                concurrentHashMap.put(method, Boolean.TRUE);
                                zBooleanValue = true;
                                break;
                            }
                            continue;
                        } catch (NoSuchMethodException unused) {
                        }
                        superclass = superclass.getSuperclass();
                    }
                } else {
                    zBooleanValue = bool.booleanValue();
                }
                if (!zBooleanValue || !(objInvoke instanceof LineApiResponse) || ((LineApiResponse) objInvoke).f36064c.f36060b != 401) {
                    return objInvoke;
                }
                AccessTokenCache accessTokenCache = lineApiClientImpl.d;
                try {
                    InternalAccessToken internalAccessTokenA = accessTokenCache.a();
                    if (internalAccessTokenA != null) {
                        String str = internalAccessTokenA.d;
                        if (TextUtils.isEmpty(str)) {
                            lineApiResponseA = LineApiResponse.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError("access token or refresh token is not found."));
                        } else {
                            LineAuthenticationApiClient lineAuthenticationApiClient = lineApiClientImpl.f36109b;
                            String str2 = lineApiClientImpl.f36108a;
                            Uri uriC = UriUtils.c(lineAuthenticationApiClient.f36221a, "oauth2/v2.1", "token");
                            LinkedHashMap linkedHashMapB = UriUtils.b("grant_type", "refresh_token", "refresh_token", internalAccessTokenA.d, LVConstants.LV_CLIENT_ID_KEY, str2);
                            ChannelServiceHttpClient channelServiceHttpClient = lineAuthenticationApiClient.f36222b;
                            Map map = Collections.EMPTY_MAP;
                            LineApiResponse lineApiResponseG = channelServiceHttpClient.g(uriC, linkedHashMapB, LineAuthenticationApiClient.g);
                            if (lineApiResponseG.d()) {
                                RefreshTokenResult refreshTokenResult = (RefreshTokenResult) lineApiResponseG.c();
                                if (!TextUtils.isEmpty(refreshTokenResult.f36207c)) {
                                    str = refreshTokenResult.f36207c;
                                }
                                InternalAccessToken internalAccessToken = new InternalAccessToken(refreshTokenResult.f36205a, refreshTokenResult.f36206b, System.currentTimeMillis(), str);
                                try {
                                    accessTokenCache.b(internalAccessToken);
                                    lineApiResponseA = LineApiResponse.b(new LineAccessToken(internalAccessToken.f36176a, internalAccessToken.f36177b, internalAccessToken.f36178c));
                                } catch (Exception e2) {
                                    lineApiResponseA = LineApiResponse.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError(fc.g(e2, new StringBuilder("save access token fail:"))));
                                }
                            } else {
                                lineApiResponseA = LineApiResponse.a(lineApiResponseG.f36062a, lineApiResponseG.f36064c);
                            }
                        }
                    } else {
                        lineApiResponseA = LineApiResponse.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError("access token or refresh token is not found."));
                    }
                } catch (Exception e3) {
                    lineApiResponseA = LineApiResponse.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError(fc.g(e3, new StringBuilder("get access token fail:"))));
                }
                if (!lineApiResponseA.d()) {
                    return lineApiResponseA.f36062a == LineApiResponseCode.NETWORK_ERROR ? lineApiResponseA : objInvoke;
                }
                try {
                    return method.invoke(lineApiClientImpl, objArr);
                } catch (InvocationTargetException e4) {
                    throw e4.getTargetException();
                }
            } catch (InvocationTargetException e5) {
                throw e5.getTargetException();
            }
        }
    }

    public static LineApiClient a(LineApiClientImpl lineApiClientImpl) {
        return (LineApiClient) Proxy.newProxyInstance(lineApiClientImpl.getClass().getClassLoader(), new Class[]{LineApiClient.class}, new TokenAutoRefreshInvocationHandler(lineApiClientImpl));
    }
}
