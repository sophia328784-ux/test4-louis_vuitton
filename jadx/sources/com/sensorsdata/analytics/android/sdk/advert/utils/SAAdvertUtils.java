package com.sensorsdata.analytics.android.sdk.advert.utils;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.exceptions.ConnectErrorException;
import com.sensorsdata.analytics.android.sdk.exceptions.ResponseErrorException;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SAAdvertUtils {
    private static final String TAG = "SA.SAAdvert";

    public static String getIdentifier(Context context) {
        return SensorsDataUtils.getIdentifier(context);
    }

    public static String getInstallSource(Context context) {
        return "imei=##imei_old=##imei_slot1=##imei_slot2=##imei_meid=";
    }

    public static boolean isFirstTrackInstallation(boolean z) {
        return z ? PersistentLoader.getInstance().getFirstInstallationWithCallbackPst().get().booleanValue() : PersistentLoader.getInstance().getFirstInstallationPst().get().booleanValue();
    }

    public static boolean isInstallationTracked() {
        return SAStoreManager.getInstance().isExists(DbParams.PersistentName.FIRST_INSTALL) || SAStoreManager.getInstance().isExists(DbParams.PersistentName.FIRST_INSTALL_CALLBACK);
    }

    public static void sendData(Context context, String str, JSONObject jSONObject, String str2) throws Throwable {
        String str3;
        if (!SensorsDataAPI.sharedInstance().isNetworkRequestEnable()) {
            SALog.i(TAG, "NetworkRequest is disabled");
            return;
        }
        if (NetworkUtils.isNetworkAvailable(context) && jSONObject != null && jSONObject.length() > 0) {
            try {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                String string = jSONArray.toString();
                if (jSONObject.has("ekey")) {
                    str3 = DbParams.GZIP_DATA_ENCRYPT;
                } else {
                    string = SADataHelper.gzipData(string);
                    str3 = "1";
                }
                jSONObject.put("_flush_time", System.currentTimeMillis());
                sendHttpRequest(str, String.valueOf(string.hashCode()), str3, string, str2);
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    private static synchronized void sendHttpRequest(String str, String str2, String str3, String str4, String str5) throws ResponseErrorException, ConnectErrorException {
        HttpURLConnection httpURLConnection;
        OutputStream outputStreamI;
        BufferedOutputStream bufferedOutputStream;
        ?? D;
        ?? r3;
        HttpURLConnection httpURLConnection2 = null;
        bufferedOutputStream = null;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                URL url = new URL(str);
                URLConnection uRLConnectionOpenConnection = url.openConnection();
                Callback.C(uRLConnectionOpenConnection);
                httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                try {
                    if (httpURLConnection == null) {
                        SALog.i(TAG, "can not connect " + url + ", it shouldn't happen");
                        SADataHelper.closeStream(null, null, null, httpURLConnection);
                        return;
                    }
                    httpURLConnection.setInstanceFollowRedirects(false);
                    Uri.Builder builder = new Uri.Builder();
                    if (!TextUtils.isEmpty(str2)) {
                        builder.appendQueryParameter("crc", str2);
                    }
                    builder.appendQueryParameter("gzip", str3);
                    builder.appendQueryParameter("data_list", str4);
                    builder.appendQueryParameter("sink_name", "mirror");
                    String encodedQuery = builder.build().getEncodedQuery();
                    if (TextUtils.isEmpty(encodedQuery)) {
                        SADataHelper.closeStream(null, null, null, httpURLConnection);
                        return;
                    }
                    httpURLConnection.setFixedLengthStreamingMode(encodedQuery.getBytes("UTF-8").length);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setConnectTimeout(NBSApplicationStateMonitor.ALTERNATEPERIOD);
                    httpURLConnection.setReadTimeout(NBSApplicationStateMonitor.ALTERNATEPERIOD);
                    outputStreamI = Callback.i(httpURLConnection);
                    try {
                        bufferedOutputStream = new BufferedOutputStream(outputStreamI);
                        try {
                            bufferedOutputStream.write(encodedQuery.getBytes("UTF-8"));
                            bufferedOutputStream.flush();
                            int iK = Callback.k(httpURLConnection);
                            SALog.i(TAG, "responseCode: " + iK);
                            try {
                                D = Callback.g(httpURLConnection);
                            } catch (FileNotFoundException unused) {
                                D = Callback.d(httpURLConnection);
                            }
                            try {
                                byte[] bArrSlurp = SADataHelper.slurp(D);
                                D.close();
                                String str6 = new String(bArrSlurp, "UTF-8");
                                if (SALog.isLogEnabled()) {
                                    String json = JSONUtils.formatJson(str5);
                                    if (iK < 200 || iK >= 300) {
                                        SALog.i(TAG, "sat invalid message: \n" + json);
                                        SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "ret_code: %d", Integer.valueOf(iK)));
                                        SALog.i(TAG, "ret_content: ".concat(str6));
                                    } else {
                                        SALog.i(TAG, "sat valid message: \n" + json);
                                    }
                                }
                                SADataHelper.closeStream(bufferedOutputStream, outputStreamI, null, httpURLConnection);
                            } catch (IOException e2) {
                                e = e2;
                                httpURLConnection2 = httpURLConnection;
                                D = D;
                                try {
                                    throw new ConnectErrorException(e);
                                } catch (Throwable th) {
                                    th = th;
                                    httpURLConnection = httpURLConnection2;
                                    bufferedOutputStream2 = bufferedOutputStream;
                                    r3 = D;
                                    SADataHelper.closeStream(bufferedOutputStream2, outputStreamI, r3, httpURLConnection);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedOutputStream2 = bufferedOutputStream;
                                r3 = D;
                                SADataHelper.closeStream(bufferedOutputStream2, outputStreamI, r3, httpURLConnection);
                                throw th;
                            }
                        } catch (IOException e3) {
                            e = e3;
                            D = 0;
                        } catch (Throwable th3) {
                            th = th3;
                            D = 0;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        bufferedOutputStream = null;
                        D = bufferedOutputStream;
                        httpURLConnection2 = httpURLConnection;
                        D = D;
                        throw new ConnectErrorException(e);
                    } catch (Throwable th4) {
                        th = th4;
                        r3 = 0;
                        SADataHelper.closeStream(bufferedOutputStream2, outputStreamI, r3, httpURLConnection);
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                    outputStreamI = null;
                    bufferedOutputStream = null;
                } catch (Throwable th5) {
                    th = th5;
                    outputStreamI = null;
                    r3 = outputStreamI;
                    SADataHelper.closeStream(bufferedOutputStream2, outputStreamI, r3, httpURLConnection);
                    throw th;
                }
            } catch (Throwable th6) {
                throw th6;
            }
        } catch (IOException e6) {
            e = e6;
            outputStreamI = null;
            bufferedOutputStream = null;
            D = 0;
        } catch (Throwable th7) {
            th = th7;
            httpURLConnection = null;
            outputStreamI = null;
        }
    }

    public static void setTrackInstallation(boolean z) {
        if (z) {
            PersistentLoader.getInstance().getFirstInstallationWithCallbackPst().commit(Boolean.FALSE);
        }
        PersistentLoader.getInstance().getFirstInstallationPst().commit(Boolean.FALSE);
    }
}
