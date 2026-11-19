package com.sensorsdata.analytics.android.sdk.network;

import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.FinalDataUtil;
import com.networkbench.agent.impl.performance.coulometry.a;
import com.sensorsdata.analytics.android.sdk.SALog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
class HttpUtils {
    private static final int HTTP_307 = 307;

    public static String getLocation(HttpURLConnection httpURLConnection, String str) throws MalformedURLException {
        if (httpURLConnection == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String strE = Callback.e(a.f37790a, httpURLConnection);
        if (TextUtils.isEmpty(strE)) {
            strE = Callback.e("location", httpURLConnection);
        }
        if (TextUtils.isEmpty(strE)) {
            return null;
        }
        if (strE.startsWith(FinalDataUtil.HTTP_HEAD) || strE.startsWith("https://")) {
            return strE;
        }
        URL url = new URL(str);
        return url.getProtocol() + "://" + url.getHost() + strE;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:? A[SYNTHETIC] */
    public static String getRetString(InputStream inputStream) throws Throwable {
        Throwable th;
        BufferedReader bufferedReader;
        Exception e2;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append("\n");
                    }
                    inputStream.close();
                    String string = sb.toString();
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        SALog.printStackTrace(e3);
                    }
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                        SALog.printStackTrace(e4);
                    }
                    return string;
                } catch (Exception e5) {
                    e2 = e5;
                    SALog.printStackTrace(e2);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e6) {
                            SALog.printStackTrace(e6);
                        }
                    }
                    if (inputStream == null) {
                        return "";
                    }
                    try {
                        inputStream.close();
                        return "";
                    } catch (IOException e7) {
                        SALog.printStackTrace(e7);
                        return "";
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e8) {
                        SALog.printStackTrace(e8);
                    }
                }
                if (inputStream != null) {
                    throw th;
                }
                try {
                    inputStream.close();
                    throw th;
                } catch (IOException e9) {
                    SALog.printStackTrace(e9);
                    throw th;
                }
            }
        } catch (Exception e10) {
            bufferedReader = null;
            e2 = e10;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                bufferedReader2.close();
            }
            if (inputStream != null) {
                throw th;
            }
            inputStream.close();
            throw th;
        }
    }

    public static boolean needRedirects(int i2) {
        return i2 == 301 || i2 == 302 || i2 == HTTP_307;
    }
}
