package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.deeplink.DeepLink;
import com.appsflyer.share.deeplink.DeepLinkListener;
import com.appsflyer.share.deeplink.DeepLinkResult;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFa1qSDK {
    public String AFLogger;
    public Map<String, String> d;
    public String[] force;
    public DeepLinkListener unregisterClient;
    private final AFc1bSDK v;
    public List<List<String>> registerClient = new ArrayList();
    public long AFKeystoreWrapper = HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD;
    public final List<String> w = new ArrayList();

    public AFa1qSDK(AFc1bSDK aFc1bSDK) {
        this.v = aFc1bSDK;
    }

    private Uri d_(Object obj, Iterator<String> it) {
        while (obj != JSONObject.NULL) {
            if (!it.hasNext()) {
                Uri uri = Uri.parse(obj.toString());
                if (uri == null || uri.getScheme() == null || uri.getHost() == null) {
                    return null;
                }
                return uri;
            }
            try {
                obj = new JSONObject(obj.toString()).get(it.next());
            } catch (JSONException e2) {
                AFLogger.INSTANCE.e(LogTag.DDL, "Failed to parse deeplink from recursive JSON search", e2, false, false);
                return null;
            }
        }
        return null;
    }

    private static String registerClient(String str) {
        if (str == null) {
            return null;
        }
        if (!str.matches("fb\\d*?://authorize.*") || !str.contains("access_token")) {
            return str;
        }
        int iIndexOf = str.indexOf(63);
        String strSubstring = iIndexOf == -1 ? "" : str.substring(iIndexOf);
        if (strSubstring.length() == 0) {
            return str;
        }
        ArrayList arrayList = new ArrayList();
        if (strSubstring.contains("&")) {
            arrayList = new ArrayList(Arrays.asList(strSubstring.split("&")));
        } else {
            arrayList.add(strSubstring);
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (str2.contains("access_token")) {
                it.remove();
            } else {
                if (sb.length() != 0) {
                    sb.append("&");
                } else if (!str2.startsWith("?")) {
                    sb.append("?");
                }
                sb.append(str2);
            }
        }
        return str.replace(strSubstring, sb.toString());
    }

    public final void AFLogger(Map<String, String> map) {
        DeepLinkResult deepLinkResult;
        if (this.unregisterClient != null) {
            try {
                try {
                    deepLinkResult = new DeepLinkResult(DeepLink.parseFromOaoa(map).setDeferred(false), null);
                } catch (JSONException e2) {
                    AFLogger.INSTANCE.e(LogTag.DDL, "Error occurred", e2, true);
                    deepLinkResult = new DeepLinkResult(null, DeepLinkResult.Error.UNEXPECTED);
                }
                d(deepLinkResult);
            } catch (Throwable th) {
                d(new DeepLinkResult(null, null));
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006b  */
    /* JADX WARN: Code duplicated, block: B:55:0x011f  */
    public final void b_(AFa1kSDK aFa1kSDK, Intent intent, Context context) {
        boolean z;
        String string;
        Uri uriD_;
        AFc1aSDK aFc1aSDK = (AFc1aSDK) this.v;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        if (intent == null) {
            AFLogger.INSTANCE.d(LogTag.DDL, "Intent is null, skipping deeplink processing");
        } else {
            if (!new AFj1sSDK(intent).AFLogger("af_consumed")) {
                Uri uri = null;
                Uri data = "android.intent.action.VIEW".equals(intent.getAction()) ? intent.getData() : null;
                Bundle extras = intent.getExtras();
                if (!this.registerClient.isEmpty() && extras != null) {
                    for (List<String> list : this.registerClient) {
                        if (list == null) {
                            uriD_ = null;
                        } else {
                            Iterator<String> it = list.iterator();
                            if (it.hasNext() && (string = extras.getString(it.next())) != null) {
                                uriD_ = d_(string, it);
                            } else {
                                uriD_ = null;
                            }
                        }
                        if (uriD_ != null) {
                            AFLogger.INSTANCE.d(LogTag.DDL, "Deeplink extracted from push notification payload at path: ".concat(String.valueOf(list)));
                            AFj1iSDK.AFLogger(aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String).put("payloadKey", this.registerClient);
                            AFa1lSDK aFa1lSDK = aFa1kSDK.AFKeystoreWrapper;
                            if (aFa1lSDK != null) {
                                aFa1lSDK.d(aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String);
                            }
                            uri = uriD_;
                            break;
                        }
                    }
                }
                Iterator it2 = Arrays.asList(data, uri).iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Uri uri2 = (Uri) it2.next();
                        if (uri2 != null) {
                            new AFj1sSDK(intent).T_("af_consumed", System.currentTimeMillis());
                            c_(aFa1kSDK, uri2);
                            z = true;
                            break;
                        }
                    } else {
                        AFLogger.INSTANCE.d(LogTag.DDL, "No deep link detected");
                    }
                }
                if (!z && this.unregisterClient != null && this.v.AFLogger().AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) == 0 && !this.v.AFKeystoreWrapper().AFKeystoreWrapper("ddl_sent")) {
                    this.v.afWarnLog().d(new AFe1fSDK(this.v));
                }
                if (!z) {
                    AFLogger();
                }
                this.v.AFKeystoreWrapper().registerClient("ddl_sent", true);
            }
            AFLogger.INSTANCE.d(LogTag.DDL, "skipping re-use of previously consumed deeplink w/af_consumed");
        }
        z = false;
        if (!z) {
            this.v.afWarnLog().d(new AFe1fSDK(this.v));
        }
        if (!z) {
            AFLogger();
        }
        this.v.AFKeystoreWrapper().registerClient("ddl_sent", true);
    }

    public final void c_(AFa1kSDK aFa1kSDK, Uri uri) {
        if (this.v.valueOf().d != null) {
            if (this.w.isEmpty()) {
                f_(aFa1kSDK, uri, null);
            } else {
                this.v.afWarnLog().d(new AFf1zSDK(this, aFa1kSDK, uri, this.w));
            }
        }
    }

    public final void d(DeepLinkResult deepLinkResult) {
        if (this.unregisterClient == null) {
            AFLogger.INSTANCE.d(LogTag.DDL, "skipping, no callback registered");
            return;
        }
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.DDL;
        StringBuilder sb = new StringBuilder("Calling onDeepLinking with:\n");
        sb.append(deepLinkResult.toString());
        aFLogger.d(logTag, sb.toString());
        try {
            this.unregisterClient.onDeepLinking(deepLinkResult);
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(LogTag.DDL, th.getLocalizedMessage() != null ? th.getLocalizedMessage() : "Error in onDeepLinking callback execution", th);
        }
    }

    public final boolean e_(Intent intent) {
        if (intent == null) {
            return false;
        }
        return ("android.intent.action.VIEW".equals(intent.getAction()) && intent.getData() != null) || !this.registerClient.isEmpty();
    }

    public final void f_(AFa1kSDK aFa1kSDK, Uri uri, Uri uri2) {
        if (!aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String.containsKey("af_deeplink")) {
            String strRegisterClient = registerClient(uri.toString());
            String str = this.AFLogger;
            if (str != null && this.d != null && strRegisterClient.contains(str)) {
                Uri.Builder builderBuildUpon = Uri.parse(strRegisterClient).buildUpon();
                Uri.Builder builderBuildUpon2 = Uri.EMPTY.buildUpon();
                for (Map.Entry<String, String> entry : this.d.entrySet()) {
                    builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                    builderBuildUpon2.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                strRegisterClient = builderBuildUpon.build().toString();
                aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String.put("appended_query_params", builderBuildUpon2.build().getEncodedQuery());
                AFa1lSDK aFa1lSDK = aFa1kSDK.AFKeystoreWrapper;
                if (aFa1lSDK != null) {
                    aFa1lSDK.d(aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String);
                }
            }
            aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String.put("af_deeplink", strRegisterClient);
            AFa1lSDK aFa1lSDK2 = aFa1kSDK.AFKeystoreWrapper;
            if (aFa1lSDK2 != null) {
                aFa1lSDK2.d(aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String);
            }
        }
        AFLogger();
        final HashMap map = new HashMap();
        map.put("link", uri.toString());
        if (uri2 != null) {
            map.put("original_link", uri2.toString());
        }
        AFj1qSDK.W_(this.v.AFLogger().r_(), map, uri);
        AFe1aSDK aFe1aSDK = new AFe1aSDK(this.v, UUID.randomUUID(), uri);
        if (aFe1aSDK.v) {
            aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String.put("isBrandedDomain", Boolean.TRUE);
            AFa1lSDK aFa1lSDK3 = aFa1kSDK.AFKeystoreWrapper;
            if (aFa1lSDK3 != null) {
                aFa1lSDK3.d(aFa1kSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String);
            }
        }
        if (!aFe1aSDK.values()) {
            AFLogger(map);
        } else {
            aFe1aSDK.force = new AFe1aSDK.AFa1ySDK() { // from class: com.appsflyer.internal.AFa1qSDK.5
                @Override // com.appsflyer.internal.AFe1aSDK.AFa1ySDK
                public final void d(String str2) {
                    AFa1qSDK.this.d(str2, DeepLinkResult.Error.NETWORK);
                }

                @Override // com.appsflyer.internal.AFe1aSDK.AFa1ySDK
                public final void unregisterClient(Map<String, String> map2) {
                    for (String str2 : map2.keySet()) {
                        map.put(str2, map2.get(str2));
                    }
                    AFa1qSDK.this.AFLogger(map);
                }
            };
            this.v.afWarnLog().d(aFe1aSDK);
        }
    }

    private void AFLogger() {
        try {
            this.v.setAppInviteOneLink().d();
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.DDL;
            StringBuilder sb = new StringBuilder("Could not notify deeplink extraction finished: ");
            sb.append(th.getMessage());
            aFLogger.d(logTag, sb.toString());
        }
    }

    public final void d(String str, DeepLinkResult.Error error) {
        if (this.unregisterClient != null) {
            AFLogger.INSTANCE.d(LogTag.DDL, "Error occurred: ".concat(String.valueOf(str)));
            d(new DeepLinkResult(null, error));
        }
    }
}
