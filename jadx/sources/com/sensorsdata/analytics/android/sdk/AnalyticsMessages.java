package com.sensorsdata.analytics.android.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.exceptions.ConnectErrorException;
import com.sensorsdata.analytics.android.sdk.exceptions.InvalidDataException;
import com.sensorsdata.analytics.android.sdk.exceptions.ResponseErrorException;
import com.sensorsdata.analytics.android.sdk.internal.beans.InternalConfigOptions;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import lv.nfc.reader.utils.LVConstants;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes3.dex */
public class AnalyticsMessages {
    private static final int DELETE_ALL = 4;
    private static final int FLUSH_INSTANT_EVENT = 7;
    private static final int FLUSH_QUEUE = 3;
    private static final int FLUSH_SCHEDULE = 5;
    private static final Map<Context, AnalyticsMessages> S_INSTANCES = new HashMap();
    private static final String TAG = "SA.AnalyticsMessages";
    private final Context mContext;
    private final InternalConfigOptions mInternalConfigs;
    private final SensorsDataAPI mSensorsDataAPI;
    private final DbAdapter mDbAdapter = DbAdapter.getInstance();
    private final Worker mWorker = new Worker();

    public class Worker {
        private final Handler mHandler;
        private final Object mHandlerLock = new Object();

        public class AnalyticsMessageHandler extends Handler {
            public AnalyticsMessageHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) throws Throwable {
                try {
                    int i2 = message.what;
                    if (i2 == 3) {
                        AnalyticsMessages.this.sendData(true);
                        AnalyticsMessages.this.sendData(false);
                    } else if (i2 == 4) {
                        try {
                            AnalyticsMessages.this.mDbAdapter.deleteAllEvents();
                        } catch (Exception e2) {
                            SALog.printStackTrace(e2);
                        }
                    } else if (i2 == 5) {
                        AnalyticsMessages.this.flushScheduled();
                        AnalyticsMessages.this.sendData(false);
                    } else if (i2 == 7) {
                        AnalyticsMessages.this.sendData(true);
                    } else {
                        SALog.i(AnalyticsMessages.TAG, "Unexpected message received by SensorsData worker: " + message);
                    }
                } catch (RuntimeException e3) {
                    SALog.i(AnalyticsMessages.TAG, "Worker threw an unhandled exception", e3);
                }
            }
        }

        public Worker() {
            HandlerThread handlerThread = new HandlerThread("com.sensorsdata.analytics.android.sdk.AnalyticsMessages.Worker", 1);
            handlerThread.start();
            this.mHandler = new AnalyticsMessageHandler(handlerThread.getLooper());
        }

        public void runMessage(Message message) {
            synchronized (this.mHandlerLock) {
                try {
                    Handler handler = this.mHandler;
                    if (handler == null) {
                        SALog.i(AnalyticsMessages.TAG, "Dead worker dropping a message: " + message.what);
                    } else {
                        handler.sendMessage(message);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void runMessageOnce(Message message, long j2) {
            synchronized (this.mHandlerLock) {
                try {
                    Handler handler = this.mHandler;
                    if (handler == null) {
                        SALog.i(AnalyticsMessages.TAG, "Dead worker dropping a message: " + message.what);
                    } else if (!handler.hasMessages(message.what)) {
                        this.mHandler.sendMessageDelayed(message, j2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private AnalyticsMessages(Context context, SensorsDataAPI sensorsDataAPI, InternalConfigOptions internalConfigOptions) {
        this.mContext = context;
        this.mSensorsDataAPI = sensorsDataAPI;
        this.mInternalConfigs = internalConfigOptions;
    }

    public static AnalyticsMessages getInstance(Context context, SensorsDataAPI sensorsDataAPI, InternalConfigOptions internalConfigOptions) {
        AnalyticsMessages analyticsMessages;
        Map<Context, AnalyticsMessages> map = S_INSTANCES;
        synchronized (map) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (map.containsKey(applicationContext)) {
                    analyticsMessages = map.get(applicationContext);
                } else {
                    analyticsMessages = new AnalyticsMessages(applicationContext, sensorsDataAPI, internalConfigOptions);
                    map.put(applicationContext, analyticsMessages);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return analyticsMessages;
    }

    private boolean isDeleteEventsByCode(int i2) {
        if (i2 == 404 || i2 == 403) {
            return false;
        }
        return i2 < 500 || i2 >= 600;
    }

    private boolean sendCheck() {
        try {
            if (!this.mSensorsDataAPI.isNetworkRequestEnable()) {
                SALog.i(TAG, "NetworkRequest is disabled");
                return false;
            }
            if (TextUtils.isEmpty(this.mSensorsDataAPI.getServerUrl())) {
                SALog.i(TAG, "Server url is null or empty.");
                return false;
            }
            if (!NetworkUtils.isNetworkAvailable(this.mContext)) {
                return false;
            }
            String strNetworkType = NetworkUtils.networkType(this.mContext);
            if (!NetworkUtils.isShouldFlush(strNetworkType, this.mSensorsDataAPI.getSAContextManager().getInternalConfigs().saConfigOptions.mNetworkTypePolicy)) {
                SALog.i(TAG, "Invalid NetworkType = " + strNetworkType);
                return false;
            }
            if (this.mInternalConfigs.saConfigOptions.isMultiProcessFlush()) {
                if (DbAdapter.getInstance().isSubProcessFlushing()) {
                    return false;
                }
                DbAdapter.getInstance().commitSubProcessFlushState(true);
            } else if (!this.mInternalConfigs.isMainProcess) {
                return false;
            }
            return true;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:148:0x02a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:157:0x02c7 A[ADDED_TO_REGION] */
    public void sendData(boolean z) throws Throwable {
        String[] strArrGenerateDataString;
        AnalyticsMessages analyticsMessages;
        boolean z2;
        String str;
        String str2;
        Throwable th;
        String str3;
        String str4;
        boolean zIsDebugMode;
        if (!sendCheck()) {
            return;
        }
        int iCleanupEvents = 100;
        while (true) {
            boolean z3 = false;
            i = 0;
            i = 0;
            int i2 = 0;
            if (iCleanupEvents <= 0) {
                if (this.mInternalConfigs.saConfigOptions.isMultiProcessFlush()) {
                    DbAdapter.getInstance().commitSubProcessFlushState(false);
                    return;
                }
                return;
            }
            synchronized (this.mDbAdapter) {
                try {
                    boolean zIsDebugMode2 = this.mSensorsDataAPI.isDebugMode();
                    DbAdapter dbAdapter = this.mDbAdapter;
                    strArrGenerateDataString = zIsDebugMode2 ? dbAdapter.generateDataString(DbParams.TABLE_EVENTS, 1, z) : dbAdapter.generateDataString(DbParams.TABLE_EVENTS, 50, z);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (strArrGenerateDataString == null) {
                DbAdapter.getInstance().commitSubProcessFlushState(false);
                return;
            }
            String str5 = strArrGenerateDataString[0];
            String str6 = strArrGenerateDataString[1];
            String str7 = strArrGenerateDataString[2];
            try {
                String strGzipData = "1".equals(str7) ? SADataHelper.gzipData(str6) : str6;
                if (TextUtils.isEmpty(strGzipData)) {
                    analyticsMessages = this;
                    z2 = z;
                } else {
                    analyticsMessages = this;
                    z2 = z;
                    try {
                        try {
                            analyticsMessages.sendHttpRequest(this.mSensorsDataAPI.getServerUrl(), strGzipData, str7, str6, false, z2);
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            z3 = true;
                            zIsDebugMode = analyticsMessages.mSensorsDataAPI.isDebugMode();
                            if (!TextUtils.isEmpty(null)) {
                                SALog.i(TAG, (String) null);
                                if (zIsDebugMode) {
                                    SensorsDataDialogUtils.showHttpErrorDialog(AppStateTools.getInstance().getForegroundActivity(), null);
                                }
                            }
                            if (z3) {
                            }
                            try {
                                iCleanupEvents = analyticsMessages.mDbAdapter.cleanupEvents(new JSONArray(str5), z2);
                            } catch (Exception e2) {
                                SALog.printStackTrace(e2);
                            }
                            SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "Events flushed. [left = %d]", Integer.valueOf(iCleanupEvents)));
                            throw th;
                        }
                    } catch (ConnectErrorException e3) {
                        e = e3;
                        String str8 = "Connection error: " + e.getMessage();
                        boolean zIsDebugMode3 = analyticsMessages.mSensorsDataAPI.isDebugMode();
                        if (!TextUtils.isEmpty(str8) && (zIsDebugMode3 || SALog.isLogEnabled())) {
                            SALog.i(TAG, str8);
                            if (zIsDebugMode3 && analyticsMessages.mInternalConfigs.isShowDebugView) {
                                SensorsDataDialogUtils.showHttpErrorDialog(AppStateTools.getInstance().getForegroundActivity(), str8);
                            }
                        }
                        if (zIsDebugMode3) {
                            try {
                                iCleanupEvents = analyticsMessages.mDbAdapter.cleanupEvents(new JSONArray(str5), z2);
                            } catch (Exception e4) {
                                SALog.printStackTrace(e4);
                            }
                            str = TAG;
                            str2 = String.format(TimeUtils.SDK_LOCALE, "Events flushed. [left = %d]", Integer.valueOf(iCleanupEvents));
                            SALog.i(str, str2);
                            i2 = iCleanupEvents;
                        }
                        iCleanupEvents = i2;
                        this = analyticsMessages;
                        z = z2;
                    } catch (InvalidDataException e5) {
                        e = e5;
                        String str9 = "Invalid data: " + e.getMessage();
                        boolean zIsDebugMode4 = analyticsMessages.mSensorsDataAPI.isDebugMode();
                        if (!TextUtils.isEmpty(str9) && (zIsDebugMode4 || SALog.isLogEnabled())) {
                            SALog.i(TAG, str9);
                            if (zIsDebugMode4 && analyticsMessages.mInternalConfigs.isShowDebugView) {
                                SensorsDataDialogUtils.showHttpErrorDialog(AppStateTools.getInstance().getForegroundActivity(), str9);
                            }
                        }
                        try {
                            iCleanupEvents = analyticsMessages.mDbAdapter.cleanupEvents(new JSONArray(str5), z2);
                        } catch (Exception e6) {
                            SALog.printStackTrace(e6);
                        }
                        str3 = TAG;
                        str4 = String.format(TimeUtils.SDK_LOCALE, "Events flushed. [left = %d]", Integer.valueOf(iCleanupEvents));
                    } catch (ResponseErrorException e7) {
                        e = e7;
                        boolean zIsDeleteEventsByCode = analyticsMessages.isDeleteEventsByCode(e.getHttpCode());
                        try {
                            String str10 = "ResponseErrorException: " + e.getMessage();
                            boolean zIsDebugMode5 = analyticsMessages.mSensorsDataAPI.isDebugMode();
                            if (!TextUtils.isEmpty(str10) && (zIsDebugMode5 || SALog.isLogEnabled())) {
                                SALog.i(TAG, str10);
                                if (zIsDebugMode5 && analyticsMessages.mInternalConfigs.isShowDebugView) {
                                    SensorsDataDialogUtils.showHttpErrorDialog(AppStateTools.getInstance().getForegroundActivity(), str10);
                                }
                            }
                            if (zIsDeleteEventsByCode || zIsDebugMode5) {
                                try {
                                    iCleanupEvents = analyticsMessages.mDbAdapter.cleanupEvents(new JSONArray(str5), z2);
                                } catch (Exception e8) {
                                    SALog.printStackTrace(e8);
                                }
                                str = TAG;
                                str2 = String.format(TimeUtils.SDK_LOCALE, "Events flushed. [left = %d]", Integer.valueOf(iCleanupEvents));
                                SALog.i(str, str2);
                                i2 = iCleanupEvents;
                            }
                            iCleanupEvents = i2;
                            this = analyticsMessages;
                            z = z2;
                        } catch (Throwable th4) {
                            th = th4;
                            z3 = zIsDeleteEventsByCode;
                            th = th;
                            zIsDebugMode = analyticsMessages.mSensorsDataAPI.isDebugMode();
                            if (!TextUtils.isEmpty(null) && (zIsDebugMode || SALog.isLogEnabled())) {
                                SALog.i(TAG, (String) null);
                                if (zIsDebugMode && analyticsMessages.mInternalConfigs.isShowDebugView) {
                                    SensorsDataDialogUtils.showHttpErrorDialog(AppStateTools.getInstance().getForegroundActivity(), null);
                                }
                            }
                            if (z3 && !zIsDebugMode) {
                                throw th;
                            }
                            iCleanupEvents = analyticsMessages.mDbAdapter.cleanupEvents(new JSONArray(str5), z2);
                            SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "Events flushed. [left = %d]", Integer.valueOf(iCleanupEvents)));
                            throw th;
                        }
                    } catch (Exception e9) {
                        e = e9;
                        try {
                            String str11 = "Exception: " + e.getMessage();
                            boolean zIsDebugMode6 = analyticsMessages.mSensorsDataAPI.isDebugMode();
                            if (!TextUtils.isEmpty(str11) && (zIsDebugMode6 || SALog.isLogEnabled())) {
                                SALog.i(TAG, str11);
                                if (zIsDebugMode6 && analyticsMessages.mInternalConfigs.isShowDebugView) {
                                    SensorsDataDialogUtils.showHttpErrorDialog(AppStateTools.getInstance().getForegroundActivity(), str11);
                                }
                            }
                            if (zIsDebugMode6) {
                                try {
                                    iCleanupEvents = analyticsMessages.mDbAdapter.cleanupEvents(new JSONArray(str5), z2);
                                } catch (Exception e10) {
                                    SALog.printStackTrace(e10);
                                }
                                str = TAG;
                                str2 = String.format(TimeUtils.SDK_LOCALE, "Events flushed. [left = %d]", Integer.valueOf(iCleanupEvents));
                                SALog.i(str, str2);
                                i2 = iCleanupEvents;
                            }
                            iCleanupEvents = i2;
                            this = analyticsMessages;
                            z = z2;
                        } catch (Throwable th5) {
                            th = th5;
                            th = th;
                            zIsDebugMode = analyticsMessages.mSensorsDataAPI.isDebugMode();
                            if (!TextUtils.isEmpty(null)) {
                                SALog.i(TAG, (String) null);
                                if (zIsDebugMode) {
                                    SensorsDataDialogUtils.showHttpErrorDialog(AppStateTools.getInstance().getForegroundActivity(), null);
                                }
                            }
                            if (z3) {
                            }
                            iCleanupEvents = analyticsMessages.mDbAdapter.cleanupEvents(new JSONArray(str5), z2);
                            SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "Events flushed. [left = %d]", Integer.valueOf(iCleanupEvents)));
                            throw th;
                        }
                    }
                }
                boolean zIsDebugMode7 = analyticsMessages.mSensorsDataAPI.isDebugMode();
                if (!TextUtils.isEmpty(null) && (zIsDebugMode7 || SALog.isLogEnabled())) {
                    SALog.i(TAG, (String) null);
                    if (zIsDebugMode7 && analyticsMessages.mInternalConfigs.isShowDebugView) {
                        SensorsDataDialogUtils.showHttpErrorDialog(AppStateTools.getInstance().getForegroundActivity(), null);
                    }
                }
                try {
                    iCleanupEvents = analyticsMessages.mDbAdapter.cleanupEvents(new JSONArray(str5), z2);
                } catch (Exception e11) {
                    SALog.printStackTrace(e11);
                }
                str3 = TAG;
                str4 = String.format(TimeUtils.SDK_LOCALE, "Events flushed. [left = %d]", Integer.valueOf(iCleanupEvents));
            } catch (ConnectErrorException e12) {
                e = e12;
                analyticsMessages = this;
                z2 = z;
            } catch (InvalidDataException e13) {
                e = e13;
                analyticsMessages = this;
                z2 = z;
            } catch (ResponseErrorException e14) {
                e = e14;
                analyticsMessages = this;
                z2 = z;
            } catch (Exception e15) {
                e = e15;
                analyticsMessages = this;
                z2 = z;
            } catch (Throwable th6) {
                th = th6;
                analyticsMessages = this;
                z2 = z;
            }
            SALog.i(str3, str4);
            this = analyticsMessages;
            z = z2;
        }
    }

    private void sendHttpRequest(String str, String str2, String str3, String str4, boolean z, boolean z2) throws Throwable {
        InputStream inputStream;
        OutputStream outputStreamI;
        HttpURLConnection httpURLConnection;
        BufferedOutputStream bufferedOutputStream;
        InputStream inputStreamD;
        SSLSocketFactory sSLSocketFactory;
        BufferedOutputStream bufferedOutputStream2 = null;
        bufferedOutputStream2 = null;
        bufferedOutputStream2 = null;
        HttpURLConnection httpURLConnection2 = null;
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
                int i2 = SensorsDataAPI.VTRACK_SUPPORTED_MIN_API;
                SAConfigOptions configOptions = AbstractSensorsDataAPI.getConfigOptions();
                if (configOptions != null && (sSLSocketFactory = configOptions.mSSLSocketFactory) != null && (httpURLConnection instanceof HttpsURLConnection)) {
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
                }
                httpURLConnection.setInstanceFollowRedirects(false);
                if (this.mSensorsDataAPI.getDebugMode() == SensorsDataAPI.DebugMode.DEBUG_ONLY) {
                    httpURLConnection.addRequestProperty("Dry-Run", "true");
                }
                String cookie = this.mSensorsDataAPI.getCookie(false);
                if (!TextUtils.isEmpty(cookie)) {
                    httpURLConnection.setRequestProperty(LVConstants.COOKIE_HEADER, cookie);
                }
                Uri.Builder builder = new Uri.Builder();
                if (!TextUtils.isEmpty(str2)) {
                    builder.appendQueryParameter("crc", String.valueOf(str2.hashCode()));
                }
                builder.appendQueryParameter("gzip", str3);
                builder.appendQueryParameter("data_list", str2);
                if (z2) {
                    builder.appendQueryParameter("instant_event", "true");
                }
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
                        if (!z && NetworkUtils.needRedirects(iK)) {
                            String location = NetworkUtils.getLocation(httpURLConnection, str);
                            if (!TextUtils.isEmpty(location)) {
                                SADataHelper.closeStream(bufferedOutputStream, outputStreamI, null, httpURLConnection);
                                sendHttpRequest(location, str2, str3, str4, true, z2);
                                SADataHelper.closeStream(bufferedOutputStream, outputStreamI, null, httpURLConnection);
                                return;
                            }
                        }
                        try {
                            inputStreamD = Callback.g(httpURLConnection);
                        } catch (FileNotFoundException unused) {
                            inputStreamD = Callback.d(httpURLConnection);
                        }
                        inputStream = inputStreamD;
                        try {
                            byte[] bArrSlurp = SADataHelper.slurp(inputStream);
                            inputStream.close();
                            String str5 = new String(bArrSlurp, "UTF-8");
                            if (SALog.isLogEnabled()) {
                                String json = JSONUtils.formatJson(str4);
                                if (iK < 200 || iK >= 300) {
                                    SALog.i(TAG, "invalid message: \n" + json);
                                    SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "ret_code: %d", Integer.valueOf(iK)));
                                    SALog.i(TAG, "ret_content: ".concat(str5));
                                } else {
                                    SALog.i(TAG, "valid message: \n" + json);
                                }
                            }
                            if (iK < 200 || iK >= 300) {
                                throw new ResponseErrorException(String.format("flush failure with response '%s', the response code is '%d'", str5, Integer.valueOf(iK)), iK);
                            }
                            SADataHelper.closeStream(bufferedOutputStream, outputStreamI, null, httpURLConnection);
                        } catch (IOException e2) {
                            e = e2;
                            httpURLConnection2 = httpURLConnection;
                            try {
                                throw new ConnectErrorException(e);
                            } catch (Throwable th) {
                                th = th;
                                httpURLConnection = httpURLConnection2;
                                bufferedOutputStream2 = bufferedOutputStream;
                                SADataHelper.closeStream(bufferedOutputStream2, outputStreamI, inputStream, httpURLConnection);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream2 = bufferedOutputStream;
                            SADataHelper.closeStream(bufferedOutputStream2, outputStreamI, inputStream, httpURLConnection);
                            throw th;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        inputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = null;
                    }
                } catch (IOException e4) {
                    e = e4;
                    inputStream = null;
                    bufferedOutputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = null;
                    SADataHelper.closeStream(bufferedOutputStream2, outputStreamI, inputStream, httpURLConnection);
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
                inputStream = null;
                outputStreamI = null;
                bufferedOutputStream = null;
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
                outputStreamI = null;
            }
        } catch (IOException e6) {
            e = e6;
            inputStream = null;
            outputStreamI = null;
            bufferedOutputStream = null;
        } catch (Throwable th6) {
            th = th6;
            inputStream = null;
            outputStreamI = null;
            httpURLConnection = null;
        }
    }

    public void deleteAll() {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 4;
            this.mWorker.runMessage(messageObtain);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public void flush() {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            this.mWorker.runMessage(messageObtain);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public void flushEventMessage(boolean z) {
        try {
            synchronized (this.mDbAdapter) {
                try {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 3;
                    Worker worker = this.mWorker;
                    if (z) {
                        worker.runMessage(messageObtain);
                    } else {
                        worker.runMessageOnce(messageObtain, this.mSensorsDataAPI.getFlushInterval());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            SALog.i(TAG, "enqueueEventMessage error:" + e2);
        }
    }

    public void flushInstanceEvent() {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 7;
            this.mWorker.runMessage(messageObtain);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public void flushScheduled() {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 5;
            this.mWorker.runMessageOnce(messageObtain, this.mSensorsDataAPI.getFlushInterval());
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static AnalyticsMessages getInstance(Context context) {
        return S_INSTANCES.get(context);
    }
}
