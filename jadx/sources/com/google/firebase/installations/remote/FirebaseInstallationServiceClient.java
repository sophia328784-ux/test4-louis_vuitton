package com.google.firebase.installations.remote;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.JsonReader;
import com.dynatrace.android.callback.Callback;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import defpackage.az;
import defpackage.bm;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import lv.nfc.reader.utils.LVConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseInstallationServiceClient {
    public static final Pattern d = Pattern.compile("[0-9]+s");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f35206e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f35207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequestLimiter f35209c = new RequestLimiter();

    public FirebaseInstallationServiceClient(Context context, Provider<HeartBeatController> provider) {
        this.f35207a = context;
        this.f35208b = provider;
    }

    public static URL c(String str) throws FirebaseInstallationsException {
        try {
            return new URL("https://firebaseinstallations.googleapis.com/v1/".concat(str));
        } catch (MalformedURLException e2) {
            throw new FirebaseInstallationsException(e2.getMessage(), FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    public static void d(HttpURLConnection httpURLConnection, String str) {
        InputStream inputStreamD = Callback.d(httpURLConnection);
        String str2 = null;
        if (inputStreamD != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD, f35206e));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append('\n');
                }
                str2 = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(Callback.k(httpURLConnection)), Callback.l(httpURLConnection), sb);
            } catch (IOException unused) {
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                bufferedReader.close();
            } catch (IOException unused3) {
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        TextUtils.isEmpty(str);
    }

    public static long f(String str) {
        Preconditions.b(d.matcher(str).matches(), "Invalid Expiration Timestamp.");
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    public static InstallationResponse g(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStreamG = Callback.g(httpURLConnection);
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStreamG, f35206e));
        AutoValue_TokenResult.Builder builder = new AutoValue_TokenResult.Builder();
        builder.f35204b = 0L;
        builder.d = (byte) (builder.d | 1);
        AutoValue_InstallationResponse.Builder builder2 = new AutoValue_InstallationResponse.Builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals("name")) {
                builder2.f35197a = jsonReader.nextString();
            } else if (strNextName.equals("fid")) {
                builder2.f35198b = jsonReader.nextString();
            } else if (strNextName.equals("refreshToken")) {
                builder2.f35199c = jsonReader.nextString();
            } else if (strNextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if (strNextName2.equals("token")) {
                        builder.f35203a = jsonReader.nextString();
                    } else if (strNextName2.equals("expiresIn")) {
                        builder.f35204b = f(jsonReader.nextString());
                        builder.d = (byte) (builder.d | 1);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                builder2.d = builder.a();
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStreamG.close();
        return new AutoValue_InstallationResponse(builder2.f35197a, builder2.f35198b, builder2.f35199c, builder2.d, InstallationResponse.ResponseCode.OK);
    }

    public static TokenResult h(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStreamG = Callback.g(httpURLConnection);
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStreamG, f35206e));
        AutoValue_TokenResult.Builder builder = new AutoValue_TokenResult.Builder();
        builder.f35204b = 0L;
        builder.d = (byte) (builder.d | 1);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals("token")) {
                builder.f35203a = jsonReader.nextString();
            } else if (strNextName.equals("expiresIn")) {
                builder.f35204b = f(jsonReader.nextString());
                builder.d = (byte) (builder.d | 1);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStreamG.close();
        builder.f35205c = TokenResult.ResponseCode.OK;
        return builder.a();
    }

    public static void i(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:19.1.2");
            k(httpURLConnection, jSONObject.toString().getBytes("UTF-8"));
        } catch (JSONException e2) {
            bm.i(e2);
        }
    }

    public static void j(HttpURLConnection httpURLConnection) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:19.1.2");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            k(httpURLConnection, jSONObject2.toString().getBytes("UTF-8"));
        } catch (JSONException e2) {
            bm.i(e2);
        }
    }

    public static void k(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        OutputStream outputStreamI = Callback.i(httpURLConnection);
        if (outputStreamI == null) {
            az.o("Cannot send request to FIS servers. No OutputStream available.");
            return;
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStreamI);
        try {
            gZIPOutputStream.write(bArr);
        } finally {
            try {
                gZIPOutputStream.close();
                outputStreamI.close();
            } catch (IOException unused) {
            }
        }
    }

    public final InstallationResponse a(String str, String str2, String str3, String str4, String str5) {
        RequestLimiter requestLimiter = this.f35209c;
        if (!requestLimiter.a()) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        URL urlC = c("projects/" + str3 + "/installations");
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 > 1) {
                throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
            }
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection httpURLConnectionE = e(urlC, str);
            try {
                try {
                    httpURLConnectionE.setRequestMethod("POST");
                    httpURLConnectionE.setDoOutput(true);
                    if (str5 != null) {
                        httpURLConnectionE.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                    }
                    try {
                        i(httpURLConnectionE, str2, str4);
                        int iK = Callback.k(httpURLConnectionE);
                        requestLimiter.b(iK);
                        if (iK < 200 || iK >= 300) {
                            z = false;
                        }
                        if (z) {
                            InstallationResponse installationResponseG = g(httpURLConnectionE);
                            httpURLConnectionE.disconnect();
                            TrafficStats.clearThreadStatsTag();
                            return installationResponseG;
                        }
                        d(httpURLConnectionE, str4);
                        if (iK == 429) {
                            throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                        }
                        if (iK < 500 || iK >= 600) {
                            AutoValue_InstallationResponse.Builder builder = new AutoValue_InstallationResponse.Builder();
                            AutoValue_InstallationResponse autoValue_InstallationResponse = new AutoValue_InstallationResponse(builder.f35197a, builder.f35198b, builder.f35199c, builder.d, InstallationResponse.ResponseCode.BAD_CONFIG);
                            httpURLConnectionE.disconnect();
                            TrafficStats.clearThreadStatsTag();
                            return autoValue_InstallationResponse;
                        }
                        httpURLConnectionE.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        i2++;
                    } catch (IOException | AssertionError unused) {
                    }
                } catch (IOException | AssertionError unused2) {
                }
            } catch (Throwable th) {
                httpURLConnectionE.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th;
            }
        }
    }

    public final TokenResult b(String str, String str2, String str3, String str4) {
        TokenResult tokenResultH;
        RequestLimiter requestLimiter = this.f35209c;
        if (!requestLimiter.a()) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        URL urlC = c("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
        for (int i2 = 0; i2 <= 1; i2++) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection httpURLConnectionE = e(urlC, str);
            try {
                try {
                    httpURLConnectionE.setRequestMethod("POST");
                    httpURLConnectionE.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    httpURLConnectionE.setDoOutput(true);
                    j(httpURLConnectionE);
                    int iK = Callback.k(httpURLConnectionE);
                    requestLimiter.b(iK);
                    if (iK >= 200 && iK < 300) {
                        tokenResultH = h(httpURLConnectionE);
                    } else {
                        d(httpURLConnectionE, null);
                        if (iK == 401 || iK == 404) {
                            AutoValue_TokenResult.Builder builder = new AutoValue_TokenResult.Builder();
                            builder.f35204b = 0L;
                            builder.d = (byte) (1 | builder.d);
                            builder.f35205c = TokenResult.ResponseCode.AUTH_ERROR;
                            tokenResultH = builder.a();
                        } else {
                            if (iK == 429) {
                                throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                            }
                            if (iK < 500 || iK >= 600) {
                                AutoValue_TokenResult.Builder builder2 = new AutoValue_TokenResult.Builder();
                                builder2.f35204b = 0L;
                                builder2.d = (byte) (1 | builder2.d);
                                builder2.f35205c = TokenResult.ResponseCode.BAD_CONFIG;
                                tokenResultH = builder2.a();
                            }
                            httpURLConnectionE.disconnect();
                            TrafficStats.clearThreadStatsTag();
                        }
                    }
                    httpURLConnectionE.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    return tokenResultH;
                } catch (IOException | AssertionError unused) {
                }
            } catch (Throwable th) {
                httpURLConnectionE.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th;
            }
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0092  */
    public final HttpURLConnection e(URL url, String str) throws FirebaseInstallationsException {
        byte[] bArrDigest;
        MessageDigest messageDigest;
        try {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            Callback.C(uRLConnectionOpenConnection);
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", InitUrlConnection.CONTENT_TYPE_VALUE);
            httpURLConnection.addRequestProperty(LVConstants.LV_JSON_KEY, InitUrlConnection.CONTENT_TYPE_VALUE);
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            Context context = this.f35207a;
            httpURLConnection.addRequestProperty("X-Android-Package", context.getPackageName());
            HeartBeatController heartBeatController = (HeartBeatController) this.f35208b.get();
            if (heartBeatController != null) {
                try {
                    httpURLConnection.addRequestProperty("x-firebase-client", (String) Tasks.a(heartBeatController.a()));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                } catch (ExecutionException unused2) {
                }
            }
            String string = null;
            try {
                PackageInfo packageInfoB = Wrappers.a(context).b(64, context.getPackageName());
                Signature[] signatureArr = packageInfoB.signatures;
                if (signatureArr == null || signatureArr.length != 1) {
                    bArrDigest = null;
                } else {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= 2) {
                            messageDigest = null;
                            break;
                        }
                        try {
                            messageDigest = MessageDigest.getInstance("SHA1");
                            if (messageDigest != null) {
                                break;
                            }
                            i2++;
                        } catch (NoSuchAlgorithmException unused3) {
                        }
                    }
                    if (messageDigest == null) {
                        bArrDigest = null;
                    } else {
                        bArrDigest = messageDigest.digest(packageInfoB.signatures[0].toByteArray());
                    }
                }
                if (bArrDigest == null) {
                    context.getPackageName();
                } else {
                    int length = bArrDigest.length;
                    StringBuilder sb = new StringBuilder(length + length);
                    for (int i3 = 0; i3 < length; i3++) {
                        char[] cArr = Hex.f29340a;
                        sb.append(cArr[(bArrDigest[i3] & 240) >>> 4]);
                        sb.append(cArr[bArrDigest[i3] & 15]);
                    }
                    string = sb.toString();
                }
            } catch (PackageManager.NameNotFoundException unused4) {
                context.getPackageName();
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", string);
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused5) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }
}
