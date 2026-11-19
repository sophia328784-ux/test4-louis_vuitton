package com.appsflyer.internal;

import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.r81;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFe1cSDK {
    private final AFd1uSDK registerClient;

    public AFe1cSDK(AFd1uSDK aFd1uSDK) {
        aFd1uSDK.getClass();
        this.registerClient = aFd1uSDK;
    }

    private static String AFLogger(String str) {
        if (str != null) {
            return AFe1bSDK.AFKeystoreWrapper.replace(str, "*Non-printing character*");
        }
        r81.d("JSON toString of eventParams map returns null");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    /* JADX WARN: Code duplicated, block: B:28:0x007a A[Catch: all -> 0x00c3, TryCatch #3 {all -> 0x00c3, blocks: (B:25:0x006d, B:29:0x00a5, B:28:0x007a), top: B:73:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:55:0x010e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0115  */
    /* JADX WARN: Code duplicated, block: B:63:0x013b  */
    /* JADX WARN: Code duplicated, block: B:66:0x0154  */
    public final void registerClient(String str, AFd1pSDK<String> aFd1pSDK, Map<String, ? extends Object> map) {
        Map<String, ? extends Object> map2;
        Throwable th;
        JSONObject jSONObject;
        String str2;
        NullPointerException nullPointerException;
        JSONObject jSONObject2;
        String str3;
        String string;
        String str4;
        Throwable th2;
        Exception exc;
        NullPointerException nullPointerException2;
        Map map3;
        Object method;
        String strAFLogger;
        String str5;
        AFd1oSDK aFd1oSDK;
        str.getClass();
        map.getClass();
        String str6 = null;
        try {
            try {
                map2 = map;
                try {
                    jSONObject2 = new JSONObject(map2);
                    try {
                        string = jSONObject2.toString();
                        try {
                            strAFLogger = AFLogger(string);
                        } catch (NullPointerException e2) {
                            nullPointerException = e2;
                            str3 = string;
                            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "JSONObject return null String object. Trying to create AFJsonObject.", nullPointerException, false, false, false, false, 120, null);
                            try {
                                Object[] objArr = {map2};
                                map3 = AFa1bSDK.getInstance;
                                method = map3.get(493299047);
                                if (method != null) {
                                    method = ((Class) AFa1bSDK.AFLogger((char) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), ExpandableListView.getPackedPositionGroup(0L) + 198, View.getDefaultSize(0, 0) + 35)).getMethod(NBSSpanMetricUnit.Day, Map.class);
                                    map3.put(493299047, method);
                                }
                                string = (String) ((Method) method).invoke(null, objArr);
                                try {
                                    strAFLogger = AFLogger(string);
                                } catch (NullPointerException e3) {
                                    nullPointerException2 = e3;
                                    str3 = string;
                                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "AFJsonObject return null String object.", nullPointerException2, false, false, false, false, 120, null);
                                    str4 = "";
                                    string = str3;
                                } catch (Exception e4) {
                                    exc = e4;
                                    str3 = string;
                                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "AFFinalizer: reflection init failed.", exc, false, false, false, false, 96, null);
                                    str4 = "";
                                    string = str3;
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    str3 = string;
                                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "Unexpected error", th2, false, false, false, false, 120, null);
                                    str4 = "";
                                    string = str3;
                                }
                            } catch (Throwable th4) {
                                try {
                                    Throwable cause = th4.getCause();
                                    if (cause == null) {
                                        throw th4;
                                    }
                                    throw cause;
                                } catch (NullPointerException e5) {
                                    nullPointerException2 = e5;
                                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "AFJsonObject return null String object.", nullPointerException2, false, false, false, false, 120, null);
                                    str4 = "";
                                    string = str3;
                                    str5 = string != null ? string : "";
                                    if (Intrinsics.c(str4, str5)) {
                                        str4 = str5;
                                    } else {
                                        AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Payload contains non-printing characters", false, 4, null);
                                        try {
                                            jSONObject2 = new JSONObject(str4);
                                        } catch (JSONException e6) {
                                            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "Couldn't parse the payload to a json object", e6, false, false, false, false, 120, null);
                                        }
                                    }
                                    AFg1bSDK.registerClient(str + ": preparing data: ", jSONObject2);
                                    if (aFd1pSDK != null) {
                                        str6 = aFd1oSDK.d;
                                    }
                                    this.registerClient.AFKeystoreWrapper(str6, str4);
                                } catch (Exception e7) {
                                    exc = e7;
                                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "AFFinalizer: reflection init failed.", exc, false, false, false, false, 96, null);
                                    str4 = "";
                                    string = str3;
                                    if (string != null) {
                                    }
                                    if (Intrinsics.c(str4, str5)) {
                                        AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Payload contains non-printing characters", false, 4, null);
                                        jSONObject2 = new JSONObject(str4);
                                    } else {
                                        str4 = str5;
                                    }
                                    AFg1bSDK.registerClient(str + ": preparing data: ", jSONObject2);
                                    if (aFd1pSDK != null) {
                                        str6 = aFd1oSDK.d;
                                    }
                                    this.registerClient.AFKeystoreWrapper(str6, str4);
                                } catch (Throwable th5) {
                                    th2 = th5;
                                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "Unexpected error", th2, false, false, false, false, 120, null);
                                    str4 = "";
                                    string = str3;
                                    if (string != null) {
                                    }
                                    if (Intrinsics.c(str4, str5)) {
                                        AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Payload contains non-printing characters", false, 4, null);
                                        jSONObject2 = new JSONObject(str4);
                                    } else {
                                        str4 = str5;
                                    }
                                    AFg1bSDK.registerClient(str + ": preparing data: ", jSONObject2);
                                    if (aFd1pSDK != null) {
                                        str6 = aFd1oSDK.d;
                                    }
                                    this.registerClient.AFKeystoreWrapper(str6, str4);
                                }
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            jSONObject = jSONObject2;
                            str2 = string;
                            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "Unexpected error", th, false, false, false, false, 120, null);
                            jSONObject2 = jSONObject;
                            string = str2;
                            str4 = "";
                            if (string != null) {
                            }
                            if (Intrinsics.c(str4, str5)) {
                                AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Payload contains non-printing characters", false, 4, null);
                                jSONObject2 = new JSONObject(str4);
                            } else {
                                str4 = str5;
                            }
                            AFg1bSDK.registerClient(str + ": preparing data: ", jSONObject2);
                            if (aFd1pSDK != null) {
                                str6 = aFd1oSDK.d;
                            }
                            this.registerClient.AFKeystoreWrapper(str6, str4);
                        }
                    } catch (NullPointerException e8) {
                        nullPointerException = e8;
                        str3 = null;
                    } catch (Throwable th7) {
                        th = th7;
                        str2 = null;
                        jSONObject = jSONObject2;
                    }
                } catch (NullPointerException e9) {
                    e = e9;
                    nullPointerException = e;
                    jSONObject2 = null;
                    str3 = null;
                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "JSONObject return null String object. Trying to create AFJsonObject.", nullPointerException, false, false, false, false, 120, null);
                    Object[] objArr2 = {map2};
                    map3 = AFa1bSDK.getInstance;
                    method = map3.get(493299047);
                    if (method != null) {
                        method = ((Class) AFa1bSDK.AFLogger((char) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), ExpandableListView.getPackedPositionGroup(0L) + 198, View.getDefaultSize(0, 0) + 35)).getMethod(NBSSpanMetricUnit.Day, Map.class);
                        map3.put(493299047, method);
                    }
                    string = (String) ((Method) method).invoke(null, objArr2);
                    strAFLogger = AFLogger(string);
                    str4 = strAFLogger;
                    if (string != null) {
                    }
                    if (Intrinsics.c(str4, str5)) {
                        AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Payload contains non-printing characters", false, 4, null);
                        jSONObject2 = new JSONObject(str4);
                    } else {
                        str4 = str5;
                    }
                    AFg1bSDK.registerClient(str + ": preparing data: ", jSONObject2);
                    if (aFd1pSDK != null) {
                        str6 = aFd1oSDK.d;
                    }
                    this.registerClient.AFKeystoreWrapper(str6, str4);
                }
            } catch (Throwable th8) {
                th = th8;
                jSONObject = null;
                str2 = null;
            }
        } catch (NullPointerException e10) {
            e = e10;
            map2 = map;
        }
        str4 = strAFLogger;
        if (string != null) {
        }
        if (Intrinsics.c(str4, str5)) {
            AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Payload contains non-printing characters", false, 4, null);
            jSONObject2 = new JSONObject(str4);
        } else {
            str4 = str5;
        }
        AFg1bSDK.registerClient(str + ": preparing data: ", jSONObject2);
        if (aFd1pSDK != null && (aFd1oSDK = aFd1pSDK.unregisterClient) != null) {
            str6 = aFd1oSDK.d;
        }
        this.registerClient.AFKeystoreWrapper(str6, str4);
    }
}
