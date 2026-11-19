package com.appsflyer.internal;

import android.text.TextUtils;
import android.util.Base64;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import defpackage.tr;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1oSDK extends AFe1ySDK<AFf1pSDK> {
    private final AFc1iSDK AFLoggerLogLevel;
    private final AFc1eSDK AppsFlyerLib;
    private final AFf1jSDK afDebugLog;
    private final AFd1sSDK afErrorLog;
    private final AFf1fSDK afInfoLog;
    private final AFf1kSDK afWarnLog;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AFh1bSDK f22639e;
    public final AFf1mSDK force;
    private final String getLevel;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AFf1pSDK f22640i;
    private final AFf1nSDK v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1oSDK(AFf1nSDK aFf1nSDK, AFc1iSDK aFc1iSDK, AFf1fSDK aFf1fSDK, AFf1jSDK aFf1jSDK, AFd1sSDK aFd1sSDK, AFf1kSDK aFf1kSDK, AFc1eSDK aFc1eSDK, String str, AFf1mSDK aFf1mSDK) {
        super(AFd1bSDK.RC_CDN, new AFe1zSDK[0], "UpdateRemoteConfiguration");
        aFf1nSDK.getClass();
        aFc1iSDK.getClass();
        aFf1fSDK.getClass();
        aFf1jSDK.getClass();
        aFd1sSDK.getClass();
        aFf1kSDK.getClass();
        aFc1eSDK.getClass();
        str.getClass();
        this.v = aFf1nSDK;
        this.AFLoggerLogLevel = aFc1iSDK;
        this.afInfoLog = aFf1fSDK;
        this.afDebugLog = aFf1jSDK;
        this.afErrorLog = aFd1sSDK;
        this.afWarnLog = aFf1kSDK;
        this.AppsFlyerLib = aFc1eSDK;
        this.getLevel = str;
        this.force = aFf1mSDK;
    }

    private final void AFKeystoreWrapper(AFf1xSDK aFf1xSDK) {
        long j2;
        int statusCode;
        Throwable cause;
        long j3;
        AFd1fSDK<?> aFd1fSDK = aFf1xSDK.d;
        if (aFd1fSDK != null) {
            j2 = aFd1fSDK.AFKeystoreWrapper.registerClient;
            statusCode = aFd1fSDK.getStatusCode();
        } else {
            j2 = 0;
            statusCode = 0;
        }
        int i2 = statusCode;
        Throwable th = aFf1xSDK.v;
        if (th instanceof HttpException) {
            HttpException httpException = (HttpException) th;
            cause = httpException.getCause();
            j3 = httpException.getMetrics().registerClient;
        } else {
            cause = th;
            j3 = j2;
        }
        AFh1aSDK aFh1aSDK = aFf1xSDK.unregisterClient;
        this.f22639e = new AFh1bSDK(aFh1aSDK != null ? aFh1aSDK.AFKeystoreWrapper : null, aFf1xSDK.AFLogger, j3, System.currentTimeMillis() - aFf1xSDK.registerClient, i2, aFf1xSDK.AFKeystoreWrapper, aFf1xSDK.f22641e, cause);
    }

    private final void d(String str, long j2, IOException iOException, AFd1fSDK<?> aFd1fSDK) {
        AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, tr.g("failed to fetch remote config: ", iOException.getMessage()), iOException, true, false, false, false, 64, null);
        AFKeystoreWrapper(new AFf1xSDK(str, j2, aFd1fSDK, null, null, null, iOException));
    }

    /* JADX WARN: Code duplicated, block: B:119:0x02b7 A[Catch: all -> 0x0287, IOException -> 0x028b, ParsingException -> 0x0290, TRY_LEAVE, TryCatch #15 {ParsingException -> 0x0290, IOException -> 0x028b, all -> 0x0287, blocks: (B:97:0x0277, B:117:0x02ac, B:119:0x02b7, B:122:0x02cc), top: B:141:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:126:0x031a  */
    /* JADX WARN: Code duplicated, block: B:127:0x031d  */
    /* JADX WARN: Code duplicated, block: B:130:0x032b  */
    /* JADX WARN: Code duplicated, block: B:131:0x032e  */
    /* JADX WARN: Code duplicated, block: B:134:0x0341  */
    /* JADX WARN: Code duplicated, block: B:136:0x0344  */
    /* JADX WARN: Code duplicated, block: B:58:0x015f A[Catch: all -> 0x02a0, IOException -> 0x02a4, ParsingException -> 0x02a8, TRY_LEAVE, TryCatch #13 {ParsingException -> 0x02a8, IOException -> 0x02a4, all -> 0x02a0, blocks: (B:56:0x012f, B:58:0x015f, B:66:0x0190, B:68:0x01a8, B:71:0x01b2, B:65:0x0188, B:43:0x00fc), top: B:144:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0188 A[Catch: all -> 0x02a0, IOException -> 0x02a4, ParsingException -> 0x02a8, TRY_ENTER, TryCatch #13 {ParsingException -> 0x02a8, IOException -> 0x02a4, all -> 0x02a0, blocks: (B:56:0x012f, B:58:0x015f, B:66:0x0190, B:68:0x01a8, B:71:0x01b2, B:65:0x0188, B:43:0x00fc), top: B:144:0x00fc }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0, types: [com.appsflyer.internal.AFf1oSDK] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [long] */
    /* JADX WARN: Type inference failed for: r3v5, types: [long] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v4, types: [long] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    private final AFf1pSDK e() throws Throwable {
        Throwable th;
        ?? r3;
        Throwable cause;
        ?? r7;
        IOException iOException;
        String str;
        Throwable cause2;
        ?? r8;
        ?? r9;
        ParsingException parsingException;
        String str2;
        Throwable cause3;
        ?? r10;
        long j2;
        AFh1cSDK aFh1cSDK;
        IOException e2;
        ParsingException e3;
        AFLogger aFLogger;
        LogTag logTag;
        AFd1fSDK aFd1fSDKAFKeystoreWrapper;
        String strAFKeystoreWrapper;
        String str3;
        ?? r4 = "Config successfully updated, timeToLive: ";
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str4 = this.getLevel;
        AFf1fSDK aFf1fSDK = this.afInfoLog;
        String str5 = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDK}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDK));
        String strD = null;
        if (str5 == null || StringsKt.w(str5)) {
            AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "Dev key is not set, SDK is not started.", false, 4, null);
        } else if (str4 == null) {
            AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "Can't create CDN token, domain or version is not provided.", false, 4, null);
        } else {
            strD = AFj1nSDK.d(TextUtils.join("\u2063", new String[]{"appsflyersdk.com", str4, this.AFLoggerLogLevel.d.d.getPackageName()}), str5);
        }
        String str6 = strD;
        if (str6 == null) {
            AFLoggerBase.v$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "can't create CDN token, skipping fetch config", false, 4, null);
            return AFf1pSDK.FAILURE;
        }
        try {
            try {
                try {
                    Boolean bool = (Boolean) this.afWarnLog.AFKeystoreWrapper.getF71699b();
                    bool.booleanValue();
                    Boolean bool2 = (Boolean) this.afWarnLog.registerClient.getF71699b();
                    bool2.booleanValue();
                    AFf1kSDK aFf1kSDK = this.afWarnLog;
                    try {
                        try {
                            try {
                                if (aFf1kSDK.unregisterClient.getOutOfStore == null) {
                                    AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "Cold start detected - fetching config from CDN", false, 4, null);
                                } else {
                                    AFh1aSDK aFh1aSDK = aFf1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String.AFLogger;
                                    if (aFh1aSDK != null) {
                                        AFh1gSDK aFh1gSDK = aFh1aSDK.registerClient;
                                        boolean z = false;
                                        TimeUnit timeUnit = TimeUnit.SECONDS;
                                        if (aFh1gSDK != null && (aFh1cSDK = aFh1gSDK.unregisterClient) != null && timeUnit.toMillis(aFh1cSDK.AFLogger) > AFh1cSDK.registerClient()) {
                                            z = true;
                                        }
                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                        AFf1jSDK aFf1jSDK = aFf1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String;
                                        j2 = jCurrentTimeMillis;
                                        try {
                                            long j3 = jCurrentTimeMillis2 - aFf1jSDK.registerClient;
                                            long millis = timeUnit.toMillis(aFf1jSDK.unregisterClient);
                                            j2 = j2;
                                            if (!z && j3 <= millis) {
                                                j2 = j2;
                                                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "Using cached config (warm start, config valid)", false, 4, null);
                                                return AFf1pSDK.USE_CACHED;
                                            }
                                            j2 = j2;
                                            aFLogger = AFLogger.INSTANCE;
                                            logTag = LogTag.REMOTE_CONTROL;
                                            AFLoggerBase.d$default(aFLogger, logTag, "Fetching config (cold start or stale)...", false, 4, null);
                                            aFd1fSDKAFKeystoreWrapper = ((AFd1pSDK) AFd1sSDK.d(new Object[]{this.afErrorLog, bool, bool2, str6, 1500}, 1895390539, -1895390537, 1500)).AFKeystoreWrapper();
                                            if (aFd1fSDKAFKeystoreWrapper.isSuccessful()) {
                                                AFKeystoreWrapper(new AFf1xSDK(str6, j2, aFd1fSDKAFKeystoreWrapper, (AFh1aSDK) aFd1fSDKAFKeystoreWrapper.getBody(), null, null, null));
                                                AFLoggerBase.w$default(aFLogger, logTag, "failed to fetch remote config from CDN with status code: " + aFd1fSDKAFKeystoreWrapper.getStatusCode(), false, 4, null);
                                                return AFf1pSDK.FAILURE;
                                            }
                                            Object body = aFd1fSDKAFKeystoreWrapper.getBody();
                                            body.getClass();
                                            AFh1aSDK aFh1aSDK2 = (AFh1aSDK) body;
                                            String strAFKeystoreWrapper2 = aFd1fSDKAFKeystoreWrapper.AFKeystoreWrapper("x-amz-meta-af-auth-v1");
                                            String strAFKeystoreWrapper3 = aFd1fSDKAFKeystoreWrapper.AFKeystoreWrapper("CF-Cache-Status");
                                            strAFKeystoreWrapper = aFd1fSDKAFKeystoreWrapper.AFKeystoreWrapper("af-net-tkn");
                                            if (strAFKeystoreWrapper != null || strAFKeystoreWrapper.length() == 0) {
                                                AFLoggerBase.d$default(aFLogger, logTag, "Network token header not present in the response", false, 4, null);
                                            } else {
                                                this.AppsFlyerLib.getOutOfStore = strAFKeystoreWrapper;
                                            }
                                            AFf1fSDK aFf1fSDK2 = this.afInfoLog;
                                            str3 = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDK2}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDK2));
                                            if (str3 != null || StringsKt.w(str3)) {
                                                AFLoggerBase.w$default(aFLogger, logTag, "Dev key is not set, SDK is not started.", false, 4, null);
                                                return AFf1pSDK.FAILURE;
                                            }
                                            AFi1uSDK aFi1uSDKAFKeystoreWrapper = this.v.AFKeystoreWrapper(aFh1aSDK2, strAFKeystoreWrapper2, str6, str3);
                                            aFi1uSDKAFKeystoreWrapper.getClass();
                                            if (!aFi1uSDKAFKeystoreWrapper.AFKeystoreWrapper) {
                                                AFKeystoreWrapper(new AFf1xSDK(str6, j2, aFd1fSDKAFKeystoreWrapper, (AFh1aSDK) aFd1fSDKAFKeystoreWrapper.getBody(), aFi1uSDKAFKeystoreWrapper.AFLogger, strAFKeystoreWrapper3, null));
                                                AFLoggerBase.w$default(aFLogger, logTag, "fetched config is not valid (MITM?) refuse to use it.", false, 4, null);
                                                return AFf1pSDK.FAILURE;
                                            }
                                            try {
                                                long jAFKeystoreWrapper = this.afWarnLog.AFKeystoreWrapper();
                                                AFLoggerBase.v$default(aFLogger, logTag, "using max-age fallback: " + jAFKeystoreWrapper + " seconds", false, 4, null);
                                                long jCurrentTimeMillis3 = System.currentTimeMillis();
                                                AFf1jSDK aFf1jSDK2 = this.afDebugLog;
                                                try {
                                                    aFf1jSDK2.AFKeystoreWrapper.d("af_remote_config", Base64.encodeToString(aFh1aSDK2.d.getBytes(Charset.defaultCharset()), 2));
                                                    aFf1jSDK2.d = aFf1jSDK2.AFLogger;
                                                    aFf1jSDK2.AFKeystoreWrapper.AFLogger("af_rc_timestamp", jCurrentTimeMillis3);
                                                    aFf1jSDK2.AFKeystoreWrapper.AFLogger("af_rc_max_age", jAFKeystoreWrapper);
                                                    aFf1jSDK2.AFLogger = aFh1aSDK2;
                                                    aFf1jSDK2.registerClient = jCurrentTimeMillis3;
                                                    aFf1jSDK2.unregisterClient = jAFKeystoreWrapper;
                                                    AFLoggerBase.d$default(aFLogger, logTag, "Config successfully updated, timeToLive: " + jAFKeystoreWrapper + " seconds", false, 4, null);
                                                    str6 = str6;
                                                    jCurrentTimeMillis = j2;
                                                    AFKeystoreWrapper(new AFf1xSDK(str6, jCurrentTimeMillis, aFd1fSDKAFKeystoreWrapper, (AFh1aSDK) aFd1fSDKAFKeystoreWrapper.getBody(), aFi1uSDKAFKeystoreWrapper.AFLogger, strAFKeystoreWrapper3, null));
                                                    return AFf1pSDK.SUCCESS;
                                                } catch (ParsingException e4) {
                                                    e = e4;
                                                    str6 = str6;
                                                    jCurrentTimeMillis = j2;
                                                    parsingException = e;
                                                    r10 = jCurrentTimeMillis;
                                                    str2 = str6;
                                                    r9 = r10;
                                                    d(str2, r9, parsingException, parsingException.getRawResponse());
                                                    cause3 = parsingException.getCause();
                                                    if (cause3 instanceof InterruptedIOException) {
                                                        throw cause3;
                                                    }
                                                    return AFf1pSDK.FAILURE;
                                                } catch (IOException e5) {
                                                    e = e5;
                                                    str6 = str6;
                                                    jCurrentTimeMillis = j2;
                                                    iOException = e;
                                                    r8 = jCurrentTimeMillis;
                                                    str = str6;
                                                    r7 = r8;
                                                    d(str, r7, iOException, null);
                                                    cause2 = iOException.getCause();
                                                    if (cause2 instanceof InterruptedIOException) {
                                                        throw cause2;
                                                    }
                                                    return AFf1pSDK.FAILURE;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    str6 = str6;
                                                    jCurrentTimeMillis = j2;
                                                    th = th;
                                                    r3 = jCurrentTimeMillis;
                                                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, tr.g("failed to update remote config: ", th.getMessage()), th, true, false, false, false, 64, null);
                                                    Throwable th3 = th;
                                                    AFKeystoreWrapper(new AFf1xSDK(str6, r3, null, null, null, null, th3));
                                                    cause = th3.getCause();
                                                    if (cause instanceof InterruptedException) {
                                                        throw cause;
                                                    }
                                                    return AFf1pSDK.FAILURE;
                                                }
                                            } catch (ParsingException e6) {
                                                e = e6;
                                            } catch (IOException e7) {
                                                e = e7;
                                            } catch (Throwable th4) {
                                                th = th4;
                                            }
                                        } catch (ParsingException e8) {
                                            e3 = e8;
                                            r4 = j2;
                                            parsingException = e3;
                                            r10 = r4;
                                            str2 = str6;
                                            r9 = r10;
                                            d(str2, r9, parsingException, parsingException.getRawResponse());
                                            cause3 = parsingException.getCause();
                                            if (cause3 instanceof InterruptedIOException) {
                                                return AFf1pSDK.FAILURE;
                                            }
                                            throw cause3;
                                        } catch (IOException e9) {
                                            e2 = e9;
                                            r4 = j2;
                                            iOException = e2;
                                            r8 = r4;
                                            str = str6;
                                            r7 = r8;
                                            d(str, r7, iOException, null);
                                            cause2 = iOException.getCause();
                                            if (cause2 instanceof InterruptedIOException) {
                                                return AFf1pSDK.FAILURE;
                                            }
                                            throw cause2;
                                        } catch (Throwable th5) {
                                            th = th5;
                                            r4 = j2;
                                            th = th;
                                            r3 = r4;
                                            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, tr.g("failed to update remote config: ", th.getMessage()), th, true, false, false, false, 64, null);
                                            Throwable th6 = th;
                                            AFKeystoreWrapper(new AFf1xSDK(str6, r3, null, null, null, null, th6));
                                            cause = th6.getCause();
                                            if (cause instanceof InterruptedException) {
                                                return AFf1pSDK.FAILURE;
                                            }
                                            throw cause;
                                        }
                                        th = th;
                                        r3 = jCurrentTimeMillis;
                                        AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, tr.g("failed to update remote config: ", th.getMessage()), th, true, false, false, false, 64, null);
                                        Throwable th7 = th;
                                        AFKeystoreWrapper(new AFf1xSDK(str6, r3, null, null, null, null, th7));
                                        cause = th7.getCause();
                                        if (cause instanceof InterruptedException) {
                                            return AFf1pSDK.FAILURE;
                                        }
                                        throw cause;
                                    }
                                    AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "active config is missing - fetching from CDN", false, 4, null);
                                }
                                if (aFd1fSDKAFKeystoreWrapper.isSuccessful()) {
                                    AFKeystoreWrapper(new AFf1xSDK(str6, j2, aFd1fSDKAFKeystoreWrapper, (AFh1aSDK) aFd1fSDKAFKeystoreWrapper.getBody(), null, null, null));
                                    AFLoggerBase.w$default(aFLogger, logTag, "failed to fetch remote config from CDN with status code: " + aFd1fSDKAFKeystoreWrapper.getStatusCode(), false, 4, null);
                                    return AFf1pSDK.FAILURE;
                                }
                                Object body2 = aFd1fSDKAFKeystoreWrapper.getBody();
                                body2.getClass();
                                AFh1aSDK aFh1aSDK3 = (AFh1aSDK) body2;
                                String strAFKeystoreWrapper4 = aFd1fSDKAFKeystoreWrapper.AFKeystoreWrapper("x-amz-meta-af-auth-v1");
                                String strAFKeystoreWrapper5 = aFd1fSDKAFKeystoreWrapper.AFKeystoreWrapper("CF-Cache-Status");
                                strAFKeystoreWrapper = aFd1fSDKAFKeystoreWrapper.AFKeystoreWrapper("af-net-tkn");
                                if (strAFKeystoreWrapper != null) {
                                    AFLoggerBase.d$default(aFLogger, logTag, "Network token header not present in the response", false, 4, null);
                                } else {
                                    AFLoggerBase.d$default(aFLogger, logTag, "Network token header not present in the response", false, 4, null);
                                }
                                AFf1fSDK aFf1fSDK3 = this.afInfoLog;
                                str3 = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDK3}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDK3));
                                if (str3 != null) {
                                }
                                AFLoggerBase.w$default(aFLogger, logTag, "Dev key is not set, SDK is not started.", false, 4, null);
                                return AFf1pSDK.FAILURE;
                            } catch (ParsingException e10) {
                                e3 = e10;
                                parsingException = e3;
                                r10 = r4;
                                str2 = str6;
                                r9 = r10;
                                d(str2, r9, parsingException, parsingException.getRawResponse());
                                cause3 = parsingException.getCause();
                                if (cause3 instanceof InterruptedIOException) {
                                    return AFf1pSDK.FAILURE;
                                }
                                throw cause3;
                            } catch (IOException e11) {
                                e2 = e11;
                                iOException = e2;
                                r8 = r4;
                                str = str6;
                                r7 = r8;
                                d(str, r7, iOException, null);
                                cause2 = iOException.getCause();
                                if (cause2 instanceof InterruptedIOException) {
                                    return AFf1pSDK.FAILURE;
                                }
                                throw cause2;
                            } catch (Throwable th8) {
                                th = th8;
                                th = th;
                                r3 = r4;
                                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, tr.g("failed to update remote config: ", th.getMessage()), th, true, false, false, false, 64, null);
                                Throwable th9 = th;
                                AFKeystoreWrapper(new AFf1xSDK(str6, r3, null, null, null, null, th9));
                                cause = th9.getCause();
                                if (cause instanceof InterruptedException) {
                                    return AFf1pSDK.FAILURE;
                                }
                                throw cause;
                            }
                            j2 = jCurrentTimeMillis;
                            j2 = j2;
                            aFLogger = AFLogger.INSTANCE;
                            logTag = LogTag.REMOTE_CONTROL;
                            AFLoggerBase.d$default(aFLogger, logTag, "Fetching config (cold start or stale)...", false, 4, null);
                            aFd1fSDKAFKeystoreWrapper = ((AFd1pSDK) AFd1sSDK.d(new Object[]{this.afErrorLog, bool, bool2, str6, 1500}, 1895390539, -1895390537, 1500)).AFKeystoreWrapper();
                        } catch (Throwable th10) {
                            th = th10;
                        }
                    } catch (ParsingException e12) {
                        parsingException = e12;
                        str2 = str6;
                        r9 = 0;
                        d(str2, r9, parsingException, parsingException.getRawResponse());
                        cause3 = parsingException.getCause();
                        if (cause3 instanceof InterruptedIOException) {
                            return AFf1pSDK.FAILURE;
                        }
                        throw cause3;
                    } catch (IOException e13) {
                        iOException = e13;
                        str = str6;
                        r7 = 0;
                        d(str, r7, iOException, null);
                        cause2 = iOException.getCause();
                        if (cause2 instanceof InterruptedIOException) {
                            return AFf1pSDK.FAILURE;
                        }
                        throw cause2;
                    } catch (Throwable th11) {
                        th = th11;
                        r3 = 0;
                    }
                    th = th;
                    r3 = jCurrentTimeMillis;
                } catch (ParsingException e14) {
                    e = e14;
                } catch (IOException e15) {
                    e = e15;
                }
            } catch (Throwable th12) {
                th = th12;
                r4 = jCurrentTimeMillis;
            }
        } catch (ParsingException e16) {
            e = e16;
        } catch (IOException e17) {
            e = e17;
        }
        AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, tr.g("failed to update remote config: ", th.getMessage()), th, true, false, false, false, 64, null);
        Throwable th13 = th;
        AFKeystoreWrapper(new AFf1xSDK(str6, r3, null, null, null, null, th13));
        cause = th13.getCause();
        if (cause instanceof InterruptedException) {
            return AFf1pSDK.FAILURE;
        }
        throw cause;
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final boolean AFLogger() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final AFd1cSDK registerClient() throws Exception {
        try {
            AFf1pSDK aFf1pSDKE = e();
            this.f22640i = aFf1pSDKE;
            return aFf1pSDKE == AFf1pSDK.FAILURE ? AFd1cSDK.FAILURE : AFd1cSDK.SUCCESS;
        } catch (InterruptedIOException e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "RC update config failed", e2, false, false, false, false, 64, null);
            this.f22640i = AFf1pSDK.FAILURE;
            return AFd1cSDK.TIMEOUT;
        } catch (InterruptedException e3) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "RC update config failed", e3, false, false, false, false, 64, null);
            this.f22640i = AFf1pSDK.FAILURE;
            return AFd1cSDK.TIMEOUT;
        } catch (SocketTimeoutException unused) {
            this.f22640i = AFf1pSDK.FAILURE;
            return AFd1cSDK.TIMEOUT;
        }
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final long d() {
        return 1500L;
    }
}
