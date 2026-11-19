package com.sensorsdata.analytics.android.sdk.visual;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.server.HttpServer;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.Base64Coder;
import com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager;
import com.sensorsdata.analytics.android.sdk.visual.snap.EditProtocol;
import com.sensorsdata.analytics.android.sdk.visual.snap.EditState;
import com.sensorsdata.analytics.android.sdk.visual.snap.ResourceReader;
import com.sensorsdata.analytics.android.sdk.visual.utils.AlertMessageUtils;
import com.sensorsdata.analytics.android.sdk.visual.utils.FlutterUtils;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractViewCrawler implements VTrack {
    private static final int MESSAGE_SEND_STATE_FOR_EDITING = 1;
    private static final String TAG = "SA.AbstractViewCrawler";
    public static final String TYPE_HEAT_MAP = "heat_map";
    public static final String TYPE_VISUAL = "visual";
    private String mAppVersion;
    private final Context mContext;
    private final EditState mEditState;
    private String mFeatureCode;
    private final LifecycleCallbacks mLifecycleCallbacks;
    private final Handler mMainThreadHandler;
    private final ViewCrawlerHandler mMessageThreadHandler;
    private String mPostUrl;
    private boolean mServiceRunning = false;
    private String mType;

    public class LifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
        private LifecycleCallbacks() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            AbstractViewCrawler.this.mEditState.remove(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            AbstractViewCrawler.this.mEditState.add(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    public class ViewCrawlerHandler extends Handler {
        private String mAppId;
        private StringBuilder mLastImageHash;
        private final EditProtocol mProtocol;
        private final String mSDKVersion;
        private ViewSnapshot mSnapshot;
        private boolean mUseGzip;

        private ViewCrawlerHandler(Context context, Looper looper, String str) {
            super(looper);
            this.mSnapshot = null;
            this.mProtocol = new EditProtocol(new ResourceReader.Ids(str, context));
            this.mLastImageHash = new StringBuilder();
            this.mUseGzip = true;
            this.mAppId = AppInfoUtils.getProcessName(context);
            this.mSDKVersion = SensorsDataAPI.sharedInstance().getSDKVersion();
        }

        private void onSnapFinished(SnapInfo snapInfo) {
            if (snapInfo != null && !NodesProcess.getInstance().getWebNodesManager().hasThirdView()) {
                NodesProcess.getInstance().getWebNodesManager().clear();
            }
            if (snapInfo == null || NodesProcess.getInstance().getFlutterNodesManager().hasThirdView()) {
                return;
            }
            NodesProcess.getInstance().getFlutterNodesManager().clear();
        }

        /* JADX WARN: Code duplicated, block: B:100:0x01a9  */
        /* JADX WARN: Code duplicated, block: B:126:0x0188 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:128:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:130:0x01b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:134:0x01ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:140:0x01ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:146:0x01c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:152:0x017e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:159:? A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:99:0x0197  */
        private void postSnapshot(ByteArrayOutputStream byteArrayOutputStream) throws Throwable {
            InputStream inputStream;
            OutputStream outputStreamI;
            boolean z;
            AbstractViewCrawler abstractViewCrawler;
            if (TextUtils.isEmpty(AbstractViewCrawler.this.mFeatureCode) || TextUtils.isEmpty(AbstractViewCrawler.this.mPostUrl)) {
                return;
            }
            BufferedOutputStream bufferedOutputStream = null;
            inputStreamD = null;
            InputStream inputStreamD = null;
            bufferedOutputStream = null;
            bufferedOutputStream = null;
            try {
                URLConnection uRLConnectionOpenConnection = new URL(AbstractViewCrawler.this.mPostUrl).openConnection();
                Callback.C(uRLConnectionOpenConnection);
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                SAConfigOptions configOptions = SensorsDataAPI.getConfigOptions();
                if (configOptions != null) {
                    if (configOptions.isDisableSDK()) {
                        AbstractViewCrawler.this.mMessageThreadHandler.sendMessageDelayed(AbstractViewCrawler.this.mMessageThreadHandler.obtainMessage(1), 1000L);
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                                return;
                            } catch (Exception e2) {
                                SALog.printStackTrace(e2);
                                return;
                            }
                        }
                        return;
                    }
                    if (configOptions.getSSLSocketFactory() != null && (httpURLConnection instanceof HttpsURLConnection)) {
                        ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(configOptions.getSSLSocketFactory());
                    }
                }
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-type", HttpServer.MIME_PLAINTEXT);
                outputStreamI = Callback.i(httpURLConnection);
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(outputStreamI);
                    try {
                        try {
                            bufferedOutputStream2.write(byteArrayOutputStream.toString().getBytes("UTF-8"));
                            bufferedOutputStream2.flush();
                            int iK = Callback.k(httpURLConnection);
                            try {
                                inputStreamD = Callback.g(httpURLConnection);
                            } catch (FileNotFoundException unused) {
                                inputStreamD = Callback.d(httpURLConnection);
                            }
                            String str = new String(slurp(inputStreamD), "UTF-8");
                            SALog.i(AbstractViewCrawler.TAG, "request url =" + AbstractViewCrawler.this.mPostUrl);
                            SALog.i(AbstractViewCrawler.TAG, "responseCode=" + iK);
                            SALog.i(AbstractViewCrawler.TAG, "response=".concat(str));
                            JSONObject jSONObject = new JSONObject(str);
                            if (iK == 200) {
                                z = jSONObject.getInt("delay") >= 0;
                                try {
                                    String strOptString = jSONObject.optString("visualized_sdk_config");
                                    boolean zOptBoolean = jSONObject.optBoolean("visualized_config_disabled");
                                    if ((!TextUtils.isEmpty(strOptString) || zOptBoolean) && SensorsDataAPI.getConfigOptions().isVisualizedPropertiesEnabled()) {
                                        VisualPropertiesManager.getInstance().save2Cache(strOptString);
                                    }
                                    VisualizedAutoTrackService.getInstance().setDebugModeEnabled(jSONObject.optBoolean("visualized_debug_mode_enabled"));
                                } catch (Exception e3) {
                                    e = e3;
                                    inputStream = inputStreamD;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    try {
                                        SALog.printStackTrace(e);
                                        if (bufferedOutputStream != null) {
                                            try {
                                                bufferedOutputStream.close();
                                            } catch (Exception e4) {
                                                SALog.printStackTrace(e4);
                                            }
                                        }
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (Exception e5) {
                                                SALog.printStackTrace(e5);
                                            }
                                        }
                                        if (outputStreamI != null) {
                                            try {
                                                outputStreamI.close();
                                            } catch (Exception e6) {
                                                SALog.printStackTrace(e6);
                                            }
                                        }
                                        if (byteArrayOutputStream != null) {
                                        }
                                        abstractViewCrawler = AbstractViewCrawler.this;
                                        if (z) {
                                            abstractViewCrawler.mMessageThreadHandler.sendMessageDelayed(AbstractViewCrawler.this.mMessageThreadHandler.obtainMessage(1), 1000L);
                                        } else {
                                            abstractViewCrawler.stopUpdates(true);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        if (bufferedOutputStream != null) {
                                            try {
                                                bufferedOutputStream.close();
                                            } catch (Exception e7) {
                                                SALog.printStackTrace(e7);
                                            }
                                        }
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (Exception e8) {
                                                SALog.printStackTrace(e8);
                                            }
                                        }
                                        if (outputStreamI != null) {
                                            try {
                                                outputStreamI.close();
                                            } catch (Exception e9) {
                                                SALog.printStackTrace(e9);
                                            }
                                        }
                                        if (byteArrayOutputStream != null) {
                                            throw th;
                                        }
                                        try {
                                            byteArrayOutputStream.close();
                                            throw th;
                                        } catch (Exception e10) {
                                            SALog.printStackTrace(e10);
                                            throw th;
                                        }
                                    }
                                }
                            } else {
                                z = true;
                            }
                            try {
                                bufferedOutputStream2.close();
                            } catch (Exception e11) {
                                SALog.printStackTrace(e11);
                            }
                            if (inputStreamD != null) {
                                try {
                                    inputStreamD.close();
                                } catch (Exception e12) {
                                    SALog.printStackTrace(e12);
                                }
                            }
                            if (outputStreamI != null) {
                                try {
                                    outputStreamI.close();
                                } catch (Exception e13) {
                                    SALog.printStackTrace(e13);
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = inputStreamD;
                            bufferedOutputStream = bufferedOutputStream2;
                            if (bufferedOutputStream != null) {
                                bufferedOutputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (outputStreamI != null) {
                                outputStreamI.close();
                            }
                            if (byteArrayOutputStream != null) {
                                throw th;
                            }
                            byteArrayOutputStream.close();
                            throw th;
                        }
                    } catch (Exception e14) {
                        e = e14;
                        inputStream = inputStreamD;
                        z = true;
                    }
                } catch (Exception e15) {
                    e = e15;
                    inputStream = null;
                    z = true;
                    SALog.printStackTrace(e);
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (outputStreamI != null) {
                        outputStreamI.close();
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    abstractViewCrawler = AbstractViewCrawler.this;
                    if (z) {
                        abstractViewCrawler.mMessageThreadHandler.sendMessageDelayed(AbstractViewCrawler.this.mMessageThreadHandler.obtainMessage(1), 1000L);
                    } else {
                        abstractViewCrawler.stopUpdates(true);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
            } catch (Exception e16) {
                e = e16;
                inputStream = null;
                outputStreamI = null;
            } catch (Throwable th4) {
                th = th4;
                inputStream = null;
                outputStreamI = null;
            }
            try {
                byteArrayOutputStream.close();
            } catch (Exception e17) {
                SALog.printStackTrace(e17);
            }
            abstractViewCrawler = AbstractViewCrawler.this;
            if (z) {
                abstractViewCrawler.mMessageThreadHandler.sendMessageDelayed(AbstractViewCrawler.this.mMessageThreadHandler.obtainMessage(1), 1000L);
            } else {
                abstractViewCrawler.stopUpdates(true);
            }
        }

        /* JADX WARN: Code duplicated, block: B:198:0x0526 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:200:0x0565 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:210:0x051c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:212:0x055b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:224:0x0512 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:228:0x0551 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:78:0x035c  */
        /* JADX WARN: Unreachable blocks removed: 2, instructions: 6 */
        private void sendSnapshot() throws Throwable {
            String str;
            GZIPOutputStream gZIPOutputStream;
            ByteArrayOutputStream byteArrayOutputStream;
            SnapInfo snapInfoSnapshots;
            Throwable th;
            IOException e2;
            ByteArrayOutputStream byteArrayOutputStream2;
            String fragmentScreenName;
            String str2 = "Can't close writer.";
            String str3 = "Can't close payload_out.";
            String str4 = "Can't close gos.";
            String str5 = "Can't close os.";
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                ViewSnapshot snapshotConfig = this.mProtocol.readSnapshotConfig(AbstractViewCrawler.this.mMainThreadHandler);
                this.mSnapshot = snapshotConfig;
                if (snapshotConfig == null) {
                    SALog.i(AbstractViewCrawler.TAG, "Snapshot should be initialize at first calling.");
                    return;
                }
                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream3);
                ByteArrayOutputStream byteArrayOutputStream4 = null;
                byteArrayOutputStream4 = null;
                byteArrayOutputStream4 = null;
                byteArrayOutputStream4 = null;
                String str6 = null;
                byteArrayOutputStream4 = null;
                byteArrayOutputStream4 = null;
                byteArrayOutputStream4 = null;
                byteArrayOutputStream4 = null;
                try {
                    try {
                        bufferedOutputStream.write("{".getBytes());
                        bufferedOutputStream.write("\"type\": \"snapshot_response\",".getBytes());
                        bufferedOutputStream.write(("\"feature_code\": \"" + AbstractViewCrawler.this.mFeatureCode + "\",").getBytes());
                        bufferedOutputStream.write(("\"app_version\": \"" + AbstractViewCrawler.this.mAppVersion + "\",").getBytes());
                        bufferedOutputStream.write(("\"lib_version\": \"" + this.mSDKVersion + "\",").getBytes());
                        bufferedOutputStream.write("\"os\": \"Android\",".getBytes());
                        bufferedOutputStream.write("\"lib\": \"Android\",".getBytes());
                        bufferedOutputStream.write(("\"app_id\": \"" + this.mAppId + "\",").getBytes());
                        bufferedOutputStream.write(("\"app_enablevisualizedproperties\": " + SensorsDataAPI.getConfigOptions().isVisualizedPropertiesEnabled() + ",").getBytes());
                        try {
                            try {
                                JSONArray jSONArray = new JSONArray();
                                if (!SensorsDataAPI.sharedInstance().isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_CLICK)) {
                                    jSONArray.put("$AppClick");
                                }
                                if (!SensorsDataAPI.sharedInstance().isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_VIEW_SCREEN)) {
                                    jSONArray.put("$AppViewScreen");
                                }
                                bufferedOutputStream.write(("\"app_autotrack\": " + jSONArray.toString() + ",").getBytes());
                            } catch (Throwable th2) {
                                th = th2;
                                gZIPOutputStream = null;
                                byteArrayOutputStream = null;
                                str = AbstractViewCrawler.TAG;
                                if (byteArrayOutputStream4 != null) {
                                    try {
                                        byteArrayOutputStream4.close();
                                    } catch (Exception e3) {
                                        SALog.i(str, str5, e3);
                                    }
                                }
                                if (gZIPOutputStream != null) {
                                    try {
                                        gZIPOutputStream.close();
                                    } catch (Exception e4) {
                                        SALog.i(str, str4, e4);
                                    }
                                }
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e5) {
                                        SALog.i(str, str3, e5);
                                    }
                                }
                                try {
                                    bufferedOutputStream.close();
                                    throw th;
                                } catch (IOException e6) {
                                    SALog.i(str, str2, e6);
                                    throw th;
                                }
                            }
                        } catch (Exception e7) {
                            SALog.printStackTrace(e7);
                        }
                        String visualConfigVersion = VisualPropertiesManager.getInstance().getVisualConfigVersion();
                        if (!TextUtils.isEmpty(visualConfigVersion)) {
                            try {
                                bufferedOutputStream.write(("\"config_version\": \"" + visualConfigVersion + "\",").getBytes());
                            } catch (IOException e8) {
                                e = e8;
                                gZIPOutputStream = null;
                                byteArrayOutputStream = null;
                                snapInfoSnapshots = null;
                                str = AbstractViewCrawler.TAG;
                                try {
                                    SALog.i(str, "Can't write snapshot request to server", e);
                                    if (byteArrayOutputStream4 != null) {
                                        try {
                                            byteArrayOutputStream4.close();
                                        } catch (Exception e9) {
                                            SALog.i(str, str5, e9);
                                        }
                                    }
                                    if (gZIPOutputStream != null) {
                                        try {
                                            gZIPOutputStream.close();
                                        } catch (Exception e10) {
                                            SALog.i(str, str4, e10);
                                        }
                                    }
                                    if (byteArrayOutputStream != null) {
                                        try {
                                            byteArrayOutputStream.close();
                                        } catch (Exception e11) {
                                            SALog.i(str, str3, e11);
                                        }
                                    }
                                    try {
                                        bufferedOutputStream.close();
                                    } catch (IOException e12) {
                                        e2 = e12;
                                        SALog.i(str, str2, e2);
                                    }
                                    SALog.i(str, "sendSnapshot = " + byteArrayOutputStream3);
                                    onSnapFinished(snapInfoSnapshots);
                                    postSnapshot(byteArrayOutputStream3);
                                } catch (Throwable th3) {
                                    th = th3;
                                    if (byteArrayOutputStream4 != null) {
                                        byteArrayOutputStream4.close();
                                    }
                                    if (gZIPOutputStream != null) {
                                        gZIPOutputStream.close();
                                    }
                                    if (byteArrayOutputStream != null) {
                                        byteArrayOutputStream.close();
                                    }
                                    bufferedOutputStream.close();
                                    throw th;
                                }
                            }
                        }
                        if (this.mUseGzip) {
                            byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                try {
                                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(byteArrayOutputStream);
                                    bufferedOutputStream2.write("{\"activities\":".getBytes());
                                    bufferedOutputStream2.flush();
                                    snapInfoSnapshots = this.mSnapshot.snapshots(byteArrayOutputStream, this.mLastImageHash);
                                    try {
                                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                                        bufferedOutputStream2.write(",\"snapshot_time_millis\": ".getBytes());
                                        bufferedOutputStream2.write(Long.toString(jCurrentTimeMillis2).getBytes());
                                        String debugInfo = VisualizedAutoTrackService.getInstance().getDebugInfo();
                                        if (!TextUtils.isEmpty(debugInfo)) {
                                            bufferedOutputStream2.write(",".getBytes());
                                            bufferedOutputStream2.write("\"event_debug\": ".getBytes());
                                            bufferedOutputStream2.write(debugInfo.getBytes());
                                        }
                                        String visualLogInfo = VisualizedAutoTrackService.getInstance().getVisualLogInfo();
                                        if (!TextUtils.isEmpty(visualLogInfo)) {
                                            bufferedOutputStream2.write(",".getBytes());
                                            bufferedOutputStream2.write("\"log_info\":".getBytes());
                                            bufferedOutputStream2.write(visualLogInfo.getBytes());
                                        }
                                        bufferedOutputStream2.write("}".getBytes());
                                        bufferedOutputStream2.flush();
                                        byteArrayOutputStream.close();
                                        byte[] bytes = byteArrayOutputStream.toString().getBytes();
                                        byteArrayOutputStream2 = new ByteArrayOutputStream(bytes.length);
                                        try {
                                            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                                            try {
                                                gZIPOutputStream.write(bytes);
                                                gZIPOutputStream.close();
                                                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                                                byteArrayOutputStream2.close();
                                                bufferedOutputStream.write(("\"gzip_payload\": \"" + new String(Base64Coder.encode(byteArray)) + "\"").getBytes());
                                            } catch (IOException e13) {
                                                e = e13;
                                                byteArrayOutputStream4 = byteArrayOutputStream2;
                                                str = AbstractViewCrawler.TAG;
                                                SALog.i(str, "Can't write snapshot request to server", e);
                                                if (byteArrayOutputStream4 != null) {
                                                    byteArrayOutputStream4.close();
                                                }
                                                if (gZIPOutputStream != null) {
                                                    gZIPOutputStream.close();
                                                }
                                                if (byteArrayOutputStream != null) {
                                                    byteArrayOutputStream.close();
                                                }
                                                bufferedOutputStream.close();
                                                SALog.i(str, "sendSnapshot = " + byteArrayOutputStream3);
                                                onSnapFinished(snapInfoSnapshots);
                                                postSnapshot(byteArrayOutputStream3);
                                            } catch (Throwable th4) {
                                                th = th4;
                                                byteArrayOutputStream4 = byteArrayOutputStream2;
                                                str = AbstractViewCrawler.TAG;
                                                if (byteArrayOutputStream4 != null) {
                                                    byteArrayOutputStream4.close();
                                                }
                                                if (gZIPOutputStream != null) {
                                                    gZIPOutputStream.close();
                                                }
                                                if (byteArrayOutputStream != null) {
                                                    byteArrayOutputStream.close();
                                                }
                                                bufferedOutputStream.close();
                                                throw th;
                                            }
                                        } catch (IOException e14) {
                                            e = e14;
                                            gZIPOutputStream = null;
                                            str = AbstractViewCrawler.TAG;
                                            byteArrayOutputStream4 = byteArrayOutputStream2;
                                            SALog.i(str, "Can't write snapshot request to server", e);
                                            if (byteArrayOutputStream4 != null) {
                                                byteArrayOutputStream4.close();
                                            }
                                            if (gZIPOutputStream != null) {
                                                gZIPOutputStream.close();
                                            }
                                            if (byteArrayOutputStream != null) {
                                                byteArrayOutputStream.close();
                                            }
                                            bufferedOutputStream.close();
                                            SALog.i(str, "sendSnapshot = " + byteArrayOutputStream3);
                                            onSnapFinished(snapInfoSnapshots);
                                            postSnapshot(byteArrayOutputStream3);
                                        } catch (Throwable th5) {
                                            th = th5;
                                            str2 = str2;
                                            str3 = str3;
                                            str4 = str4;
                                            str5 = str5;
                                            gZIPOutputStream = null;
                                            str = AbstractViewCrawler.TAG;
                                            byteArrayOutputStream4 = byteArrayOutputStream2;
                                            if (byteArrayOutputStream4 != null) {
                                                byteArrayOutputStream4.close();
                                            }
                                            if (gZIPOutputStream != null) {
                                                gZIPOutputStream.close();
                                            }
                                            if (byteArrayOutputStream != null) {
                                                byteArrayOutputStream.close();
                                            }
                                            bufferedOutputStream.close();
                                            throw th;
                                        }
                                    } catch (IOException e15) {
                                        e = e15;
                                        gZIPOutputStream = null;
                                        str = AbstractViewCrawler.TAG;
                                        SALog.i(str, "Can't write snapshot request to server", e);
                                        if (byteArrayOutputStream4 != null) {
                                            byteArrayOutputStream4.close();
                                        }
                                        if (gZIPOutputStream != null) {
                                            gZIPOutputStream.close();
                                        }
                                        if (byteArrayOutputStream != null) {
                                            byteArrayOutputStream.close();
                                        }
                                        bufferedOutputStream.close();
                                        SALog.i(str, "sendSnapshot = " + byteArrayOutputStream3);
                                        onSnapFinished(snapInfoSnapshots);
                                        postSnapshot(byteArrayOutputStream3);
                                    }
                                } catch (IOException e16) {
                                    e = e16;
                                    gZIPOutputStream = null;
                                    snapInfoSnapshots = null;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                gZIPOutputStream = null;
                                str = AbstractViewCrawler.TAG;
                                if (byteArrayOutputStream4 != null) {
                                    byteArrayOutputStream4.close();
                                }
                                if (gZIPOutputStream != null) {
                                    gZIPOutputStream.close();
                                }
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.close();
                                }
                                bufferedOutputStream.close();
                                throw th;
                            }
                        } else {
                            bufferedOutputStream.write("\"payload\": {".getBytes());
                            bufferedOutputStream.write("\"activities\":".getBytes());
                            bufferedOutputStream.flush();
                            snapInfoSnapshots = this.mSnapshot.snapshots(byteArrayOutputStream3, this.mLastImageHash);
                            try {
                                long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                                bufferedOutputStream.write(",\"snapshot_time_millis\": ".getBytes());
                                bufferedOutputStream.write(Long.toString(jCurrentTimeMillis3).getBytes());
                                bufferedOutputStream.write("}".getBytes());
                                byteArrayOutputStream2 = null;
                                gZIPOutputStream = null;
                                byteArrayOutputStream = null;
                            } catch (IOException e17) {
                                e = e17;
                                str2 = str2;
                                str3 = str3;
                                str4 = str4;
                                str5 = str5;
                                str = AbstractViewCrawler.TAG;
                                gZIPOutputStream = null;
                                byteArrayOutputStream = null;
                                SALog.i(str, "Can't write snapshot request to server", e);
                                if (byteArrayOutputStream4 != null) {
                                    byteArrayOutputStream4.close();
                                }
                                if (gZIPOutputStream != null) {
                                    gZIPOutputStream.close();
                                }
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.close();
                                }
                                bufferedOutputStream.close();
                                SALog.i(str, "sendSnapshot = " + byteArrayOutputStream3);
                                onSnapFinished(snapInfoSnapshots);
                                postSnapshot(byteArrayOutputStream3);
                            }
                        }
                        try {
                            if (!TextUtils.isEmpty(snapInfoSnapshots.screenName)) {
                                bufferedOutputStream.write((",\"screen_name\": \"" + snapInfoSnapshots.screenName + "\"").getBytes());
                                str6 = snapInfoSnapshots.screenName;
                            }
                            if (snapInfoSnapshots.hasFragment) {
                                fragmentScreenName = AppStateTools.getInstance().getFragmentScreenName();
                                if (TextUtils.isEmpty(fragmentScreenName)) {
                                    fragmentScreenName = str6;
                                }
                            } else {
                                fragmentScreenName = str6;
                            }
                            String str7 = "page_name： " + fragmentScreenName;
                            str = AbstractViewCrawler.TAG;
                            try {
                                SALog.i(str, str7);
                                if (!TextUtils.isEmpty(fragmentScreenName)) {
                                    try {
                                        bufferedOutputStream.write((",\"page_name\": \"" + fragmentScreenName + "\"").getBytes());
                                    } catch (IOException e18) {
                                        e = e18;
                                        byteArrayOutputStream4 = byteArrayOutputStream2;
                                        str2 = str2;
                                        str3 = str3;
                                        str4 = str4;
                                        str5 = str5;
                                        SALog.i(str, "Can't write snapshot request to server", e);
                                        if (byteArrayOutputStream4 != null) {
                                            byteArrayOutputStream4.close();
                                        }
                                        if (gZIPOutputStream != null) {
                                            gZIPOutputStream.close();
                                        }
                                        if (byteArrayOutputStream != null) {
                                            byteArrayOutputStream.close();
                                        }
                                        bufferedOutputStream.close();
                                    } catch (Throwable th7) {
                                        th = th7;
                                        byteArrayOutputStream4 = byteArrayOutputStream2;
                                        str2 = str2;
                                        str3 = str3;
                                        str4 = str4;
                                        str5 = str5;
                                        if (byteArrayOutputStream4 != null) {
                                            byteArrayOutputStream4.close();
                                        }
                                        if (gZIPOutputStream != null) {
                                            gZIPOutputStream.close();
                                        }
                                        if (byteArrayOutputStream != null) {
                                            byteArrayOutputStream.close();
                                        }
                                        bufferedOutputStream.close();
                                        throw th;
                                    }
                                }
                                if (!TextUtils.isEmpty(snapInfoSnapshots.activityTitle)) {
                                    bufferedOutputStream.write((",\"title\": \"" + snapInfoSnapshots.activityTitle + "\"").getBytes());
                                }
                                bufferedOutputStream.write((",\"is_webview\": " + snapInfoSnapshots.isWebView).getBytes());
                                if (!TextUtils.isEmpty(snapInfoSnapshots.webLibVersion)) {
                                    bufferedOutputStream.write((",\"web_lib_version\": \"" + snapInfoSnapshots.webLibVersion + "\"").getBytes());
                                }
                                if (snapInfoSnapshots.isWebView && !TextUtils.isEmpty(snapInfoSnapshots.webViewUrl)) {
                                    AlertMessageUtils.buildH5AlertInfo(bufferedOutputStream, AbstractViewCrawler.this.mType, snapInfoSnapshots, AbstractViewCrawler.this.mContext);
                                }
                                if (!TextUtils.isEmpty(snapInfoSnapshots.flutterLibVersion)) {
                                    bufferedOutputStream.write((",\"flutter_lib_version\": \"" + snapInfoSnapshots.flutterLibVersion + "\"").getBytes());
                                }
                                if (snapInfoSnapshots.isFlutter && !TextUtils.isEmpty(snapInfoSnapshots.activityName)) {
                                    AlertMessageUtils.buildFlutterAlertInfo(bufferedOutputStream, AbstractViewCrawler.this.mType, snapInfoSnapshots, AbstractViewCrawler.this.mContext);
                                }
                                bufferedOutputStream.write("}".getBytes());
                                bufferedOutputStream.flush();
                                if (byteArrayOutputStream2 != null) {
                                    try {
                                        byteArrayOutputStream2.close();
                                    } catch (Exception e19) {
                                        SALog.i(str, str5, e19);
                                    }
                                }
                                if (gZIPOutputStream != null) {
                                    try {
                                        gZIPOutputStream.close();
                                    } catch (Exception e20) {
                                        SALog.i(str, str4, e20);
                                    }
                                }
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e21) {
                                        SALog.i(str, str3, e21);
                                    }
                                }
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException e22) {
                                    e2 = e22;
                                    str2 = str2;
                                    SALog.i(str, str2, e2);
                                }
                            } catch (IOException e23) {
                                e = e23;
                                str2 = str2;
                                str3 = str3;
                                str4 = str4;
                                str5 = str5;
                                byteArrayOutputStream4 = byteArrayOutputStream2;
                                SALog.i(str, "Can't write snapshot request to server", e);
                                if (byteArrayOutputStream4 != null) {
                                    byteArrayOutputStream4.close();
                                }
                                if (gZIPOutputStream != null) {
                                    gZIPOutputStream.close();
                                }
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.close();
                                }
                                bufferedOutputStream.close();
                                SALog.i(str, "sendSnapshot = " + byteArrayOutputStream3);
                                onSnapFinished(snapInfoSnapshots);
                                postSnapshot(byteArrayOutputStream3);
                            } catch (Throwable th8) {
                                th = th8;
                                th = th;
                                byteArrayOutputStream4 = byteArrayOutputStream2;
                                if (byteArrayOutputStream4 != null) {
                                    byteArrayOutputStream4.close();
                                }
                                if (gZIPOutputStream != null) {
                                    gZIPOutputStream.close();
                                }
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.close();
                                }
                                bufferedOutputStream.close();
                                throw th;
                            }
                        } catch (IOException e24) {
                            e = e24;
                            str = AbstractViewCrawler.TAG;
                            byteArrayOutputStream4 = byteArrayOutputStream2;
                            SALog.i(str, "Can't write snapshot request to server", e);
                            if (byteArrayOutputStream4 != null) {
                                byteArrayOutputStream4.close();
                            }
                            if (gZIPOutputStream != null) {
                                gZIPOutputStream.close();
                            }
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.close();
                            }
                            bufferedOutputStream.close();
                            SALog.i(str, "sendSnapshot = " + byteArrayOutputStream3);
                            onSnapFinished(snapInfoSnapshots);
                            postSnapshot(byteArrayOutputStream3);
                        } catch (Throwable th9) {
                            th = th9;
                            str = AbstractViewCrawler.TAG;
                        }
                    } catch (Throwable th10) {
                        str2 = str2;
                        str3 = str3;
                        str4 = str4;
                        str5 = str5;
                        str = AbstractViewCrawler.TAG;
                        th = th10;
                        gZIPOutputStream = null;
                        byteArrayOutputStream = null;
                    }
                } catch (IOException e25) {
                    e = e25;
                    str2 = str2;
                    str3 = str3;
                    str4 = str4;
                    str5 = str5;
                    str = AbstractViewCrawler.TAG;
                    gZIPOutputStream = null;
                    byteArrayOutputStream = null;
                    snapInfoSnapshots = null;
                }
                SALog.i(str, "sendSnapshot = " + byteArrayOutputStream3);
                onSnapFinished(snapInfoSnapshots);
                postSnapshot(byteArrayOutputStream3);
            } catch (EditProtocol.BadInstructionsException e26) {
                SALog.i(AbstractViewCrawler.TAG, "VisualizedAutoTrack server sent malformed message with snapshot request", e26);
            }
        }

        private byte[] slurp(InputStream inputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int i2 = inputStream.read(bArr, 0, 8192);
                if (i2 == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            if (message.what != 1) {
                return;
            }
            sendSnapshot();
        }

        public void start() {
        }
    }

    public AbstractViewCrawler(Activity activity, String str, String str2, String str3, String str4) {
        this.mContext = activity.getApplicationContext();
        this.mFeatureCode = str2;
        EditState editState = new EditState();
        this.mEditState = editState;
        this.mType = str4;
        editState.add(activity);
        this.mLifecycleCallbacks = new LifecycleCallbacks();
        try {
            this.mPostUrl = URLDecoder.decode(str3, "UTF-8");
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        ((Application) this.mContext.getApplicationContext()).registerActivityLifecycleCallbacks(this.mLifecycleCallbacks);
        try {
            this.mAppVersion = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            this.mAppVersion = "";
        }
        HandlerThread handlerThread = new HandlerThread(VisualizedAutoTrackViewCrawler.class.getCanonicalName(), 10);
        handlerThread.start();
        this.mMessageThreadHandler = new ViewCrawlerHandler(this.mContext, handlerThread.getLooper(), str);
        this.mMainThreadHandler = new Handler(Looper.getMainLooper());
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.VTrack
    public boolean isServiceRunning() {
        return this.mServiceRunning;
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.VTrack
    public void startUpdates() {
        try {
            if (TextUtils.isEmpty(this.mFeatureCode) || TextUtils.isEmpty(this.mPostUrl)) {
                return;
            }
            ((Application) this.mContext.getApplicationContext()).registerActivityLifecycleCallbacks(this.mLifecycleCallbacks);
            this.mMessageThreadHandler.start();
            ViewCrawlerHandler viewCrawlerHandler = this.mMessageThreadHandler;
            viewCrawlerHandler.sendMessage(viewCrawlerHandler.obtainMessage(1));
            if (!this.mServiceRunning) {
                FlutterUtils.visualizedConnectionStatusChanged();
            }
            this.mServiceRunning = true;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.VTrack
    public void stopUpdates(boolean z) {
        if (z) {
            try {
                this.mFeatureCode = null;
                this.mPostUrl = null;
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
                return;
            }
        }
        this.mMessageThreadHandler.removeMessages(1);
        ((Application) this.mContext.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.mLifecycleCallbacks);
        if (this.mServiceRunning) {
            FlutterUtils.visualizedConnectionStatusChanged();
            this.mServiceRunning = false;
        }
    }
}
