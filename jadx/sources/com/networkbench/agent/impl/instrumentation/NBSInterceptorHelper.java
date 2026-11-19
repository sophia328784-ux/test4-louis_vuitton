package com.networkbench.agent.impl.instrumentation;

import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.alipay.mobile.common.rpc.RpcInvokeContext;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.a.a.b;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.d.b.a;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.k.d;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import defpackage.o60;
import defpackage.tr;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class NBSInterceptorHelper {
    private static final e log = f.a();
    private static Map<Integer, NBSTransactionState> mpaasAction = new ConcurrentHashMap();
    private static final String operationTypeValueTag = "(value=";

    public static String a(String str, Object[] objArr) {
        String mpaasOperationTypeValue = parseMpaasOperationTypeValue(str);
        try {
            if (ab.c(mpaasOperationTypeValue) || mpaasOperationTypeValue.equalsIgnoreCase("alipay.client.executerpc")) {
                if (objArr != null && objArr.length > 0) {
                    Object obj = objArr[0];
                    if (obj instanceof String) {
                        mpaasOperationTypeValue = (String) obj;
                    }
                }
            }
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("error getOperationTypeForUrl:"), log);
        }
        return mpaasOperationTypeValue == null ? "" : mpaasOperationTypeValue;
    }

    private static int chekSize(int i2) {
        return i2 < 10 ? i2 : r.f38391c;
    }

    private static String combineUrl(Class<?> cls, Method method) {
        if (cls == null || method == null) {
            log.e("className is null || method is null, please check");
            return "";
        }
        return "https://" + cls.getName() + "-" + method.getName();
    }

    private static void configUrlAndDns(NBSTransactionState nBSTransactionState, String str, Class<?> cls, Method method, RpcInvokeContext rpcInvokeContext) {
        String metaData = getMetaData();
        if (!ab.c(str)) {
            metaData = tr.h(metaData, "/", str);
        }
        nBSTransactionState.setUrl(metaData);
        try {
            String host = new URL(metaData).getHost();
            if (rpcInvokeContext != null) {
                setApmsHeader(rpcInvokeContext, nBSTransactionState, host);
            }
            setDnsInfo(host, nBSTransactionState);
        } catch (Exception e2) {
            log.a("configUrlAndDns setDnsInfo error", e2);
        }
    }

    public static void exceptionHandle(Annotation annotation, int i2, Object[] objArr, Class<?> cls, Method method) {
        try {
            if (r.u().V()) {
                String strA = a(annotation.toString(), objArr);
                int currentThreadId = (int) getCurrentThreadId();
                NBSTransactionState nBSTransactionState = new NBSTransactionState();
                e eVar = log;
                eVar.a("exceptionHandler threadId:" + currentThreadId);
                if (mpaasAction.containsKey(Integer.valueOf(currentThreadId))) {
                    eVar.a("exceptionHandler reset transactionState:");
                    nBSTransactionState = mpaasAction.get(Integer.valueOf(currentThreadId));
                }
                nBSTransactionState.setHttpLibType(HttpLibType.HttpClient);
                configUrlAndDns(nBSTransactionState, strA, cls, method, null);
                nBSTransactionState.setErrorCode(i2, "");
                nBSTransactionState.setStatusCode(i2);
                nBSTransactionState.setErrorDataInfo("", new HashMap(), "");
                nBSTransactionState.end();
                ai.a(new c(nBSTransactionState));
            }
        } catch (Throwable th) {
            log.a("error in exceptionHandle", th);
        }
    }

    public static String getAvaliableIpAddress(String str) {
        String[] strArrSplit;
        return (!str.contains("/") || (strArrSplit = str.split("/")) == null || strArrSplit.length < 2) ? str : strArrSplit[strArrSplit.length - 1];
    }

    private static long getCurrentThreadId() {
        return Thread.currentThread().getId();
    }

    private static String getMetaData() {
        try {
            return r.u().J().getPackageManager().getApplicationInfo(r.u().J().getPackageName(), 128).metaData.getString("mobilegw.url");
        } catch (PackageManager.NameNotFoundException e2) {
            log.a("getMetaData NameNotFoundException" + e2.getMessage());
            return "";
        } catch (NullPointerException e3) {
            log.a("getMetaData NullPointerException" + e3.getMessage());
            return "";
        }
    }

    public static String parseMpaasOperationTypeValue(String str) {
        if (!str.contains("OperationType") || !str.contains(operationTypeValueTag)) {
            return "";
        }
        String strG = o60.g(1, str.indexOf(operationTypeValueTag) + 7, str);
        log.a("parse annotation value:".concat(strG));
        return strG;
    }

    public static void postHandle(Annotation annotation, RpcInvokeContext rpcInvokeContext) {
        try {
            if (r.u().V()) {
                int currentThreadId = (int) getCurrentThreadId();
                if (mpaasAction.containsKey(Integer.valueOf(currentThreadId))) {
                    NBSTransactionState nBSTransactionState = mpaasAction.get(Integer.valueOf(currentThreadId));
                    nBSTransactionState.setStatusCode(200);
                    if (rpcInvokeContext != null) {
                        e eVar = log;
                        eVar.a("postHandle context != null");
                        String str = (String) rpcInvokeContext.getResponseHeaders().get(r.w);
                        String str2 = (String) rpcInvokeContext.getResponseHeaders().get(r.t);
                        eVar.a("header is " + str);
                        if (str == null) {
                            str = "";
                        }
                        nBSTransactionState.setAppDataNew(str);
                        if (str2 == null) {
                            str2 = "";
                        }
                        nBSTransactionState.setAppData(str2);
                        if (rpcInvokeContext.getResponseHeaders() != null) {
                            nBSTransactionState.responseHeaderParam.putAll(rpcInvokeContext.getResponseHeaders());
                        }
                    }
                    b bVarEnd = nBSTransactionState.end();
                    log.a("add nbsActionData in postHandle:" + bVarEnd.toString());
                    v.a(new a(bVarEnd));
                }
                mpaasAction.remove(Integer.valueOf(currentThreadId));
            }
        } catch (Throwable th) {
            log.a("error in postHandle", th);
        }
    }

    public static void preHandle(Annotation annotation, RpcInvokeContext rpcInvokeContext, Object[] objArr, Class<?> cls, Method method) {
        try {
            if (!r.u().V() || annotation == null) {
                return;
            }
            String strA = a(annotation.toString(), objArr);
            NBSTransactionState nBSTransactionState = new NBSTransactionState();
            nBSTransactionState.setHttpLibType(HttpLibType.HttpClient);
            configUrlAndDns(nBSTransactionState, strA, cls, method, rpcInvokeContext);
            mpaasAction.put(Integer.valueOf((int) getCurrentThreadId()), nBSTransactionState);
        } catch (Throwable th) {
            log.a("error in preHandle", th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void setApmsHeader(RpcInvokeContext rpcInvokeContext, NBSTransactionState nBSTransactionState, String str) {
        try {
            String strAm = r.u().am();
            if (!TextUtils.isEmpty(strAm) && r.u().aj()) {
                rpcInvokeContext.addRequestHeader(r.u, r.a(strAm, r.ar()));
            }
            if (r.u().aj()) {
                nBSTransactionState.setRequestHeaderIdValue((String) rpcInvokeContext.getRequestHeaders().get(r.u().f38396h));
            }
            Map requestHeaders = rpcInvokeContext.getRequestHeaders();
            if (r.u().aH().c() && nBSTransactionState.getSeriesData() != null && requestHeaders.get("sw8") == null) {
                rpcInvokeContext.addRequestHeader("sw8", d.a(NBSAgent.getApplicationInformation().getAppName(), NBSAgent.getApplicationInformation().getAppVersion(), nBSTransactionState.getSeriesData().d, str));
            }
            if (r.u().aH().b() && nBSTransactionState.getSeriesData() != null) {
                com.networkbench.agent.impl.k.b seriesData = nBSTransactionState.getSeriesData();
                if (requestHeaders.get("traceparent") == null) {
                    String str2 = (String) requestHeaders.get("tracestate");
                    String strA = d.a();
                    String strA2 = d.a(str2, seriesData);
                    rpcInvokeContext.addRequestHeader("traceparent", strA);
                    rpcInvokeContext.addRequestHeader("tracestate", strA2);
                }
            }
            if (r.u().aH().a()) {
                rpcInvokeContext.addRequestHeader(r.v, r.u().an());
            }
            log.a("isApms is:" + r.u().b());
            if (r.u().b()) {
                String strAt = r.u().at();
                g.o("HttpRequest setCrossProcessHeader uuid :" + strAt);
                JSONArray jSONArray = new JSONArray(r.u().a().toString());
                for (int i2 = 0; i2 < chekSize(jSONArray.length()); i2++) {
                    String string = jSONArray.getString(i2);
                    g.o("RpcInvokeContext setCrossProcessHeader apms  :" + string);
                    Map requestHeaders2 = rpcInvokeContext.getRequestHeaders();
                    if (requestHeaders2 != null && !requestHeaders2.containsKey(string)) {
                        log.a("RpcInvokeContext add headerValue:" + string + ", uuid:" + strAt);
                        rpcInvokeContext.addRequestHeader(string, strAt);
                        nBSTransactionState.setUUid(strAt);
                    } else if (requestHeaders2 != null) {
                        nBSTransactionState.getApmsList().put(string, requestHeaders2.get(string));
                        g.o("RpcInvokeContext setCrossProcessHeader  apmsList  :" + string);
                    }
                }
            }
        } catch (Throwable th) {
            log.a("RpcInvokeContext error ", th);
        }
    }

    private static void setDnsInfo(String str, NBSTransactionState nBSTransactionState) {
        try {
            if (!com.networkbench.agent.impl.socket.r.b(str)) {
                com.networkbench.agent.impl.socket.r.b(str, v.a(str));
            }
            int iC = com.networkbench.agent.impl.socket.r.c(str);
            e eVar = log;
            eVar.a("mpass get dns time:" + iC);
            if (v.b(iC)) {
                eVar.a("mpass set dns time into transactionState");
                nBSTransactionState.setDnsElapse(iC);
            }
        } catch (Throwable th) {
            log.a("setDnsInfo error", th);
        }
    }

    public static void preHandle(Annotation annotation, RpcInvokeContext rpcInvokeContext) {
        preHandle(annotation, rpcInvokeContext, null, null, null);
    }

    public static void exceptionHandle(Annotation annotation, int i2) {
        exceptionHandle(annotation, i2, null, null, null);
    }
}
