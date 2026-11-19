package com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager;

import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.perfectcorp.common.utility.HttpRequest;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.LocaleCodeNotSetException;
import com.perfectcorp.perfectlib.ymk.a;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.net.URI;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NetworkManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f41984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile String f41985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f41986c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ResponseStatus {
        public static final ResponseStatus ERROR;
        public static final ResponseStatus EXCEEDLIMITATION;
        public static final ResponseStatus EXPIRED;
        public static final ResponseStatus NOTALLOWED;
        public static final ResponseStatus NOTFOUND;
        public static final ResponseStatus OK;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ ResponseStatus[] f41987a;

        static {
            ResponseStatus responseStatus = new ResponseStatus(Payload.RESPONSE_OK, 0);
            OK = responseStatus;
            ResponseStatus responseStatus2 = new ResponseStatus("ERROR", 1);
            ERROR = responseStatus2;
            ResponseStatus responseStatus3 = new ResponseStatus("NOTFOUND", 2);
            NOTFOUND = responseStatus3;
            ResponseStatus responseStatus4 = new ResponseStatus("EXPIRED", 3);
            EXPIRED = responseStatus4;
            ResponseStatus responseStatus5 = new ResponseStatus("EXCEEDLIMITATION", 4);
            EXCEEDLIMITATION = responseStatus5;
            ResponseStatus responseStatus6 = new ResponseStatus("NOTALLOWED", 5);
            NOTALLOWED = responseStatus6;
            f41987a = new ResponseStatus[]{responseStatus, responseStatus2, responseStatus3, responseStatus4, responseStatus5, responseStatus6};
        }

        public static ResponseStatus valueOf(String str) {
            return (ResponseStatus) Enum.valueOf(ResponseStatus.class, str);
        }

        public static ResponseStatus[] values() {
            return (ResponseStatus[]) f41987a.clone();
        }
    }

    public static final class StatusErrorException extends RuntimeException {
    }

    public static final class Uris {
        public static String a() {
            return n00.r(NetworkManager.f41984a, "/service/V2/get-app-setting", new StringBuilder());
        }
    }

    public static void a(HttpRequest httpRequest) {
        b(httpRequest);
        String strB = QuickLaunchPreferenceHelper.b();
        if (TextUtils.isEmpty(strB)) {
            throw new LocaleCodeNotSetException();
        }
        httpRequest.a(strB, "lang");
    }

    public static void b(HttpRequest httpRequest) {
        httpRequest.a(a.f41935a.d, "platform");
        httpRequest.a(a.f41935a.f41939e, "product");
        httpRequest.a(a.f41935a.f41940f, "version");
        httpRequest.a(a.f41935a.g, "versiontype");
        httpRequest.a(com.perfectcorp.perfectlib.ymk.widgetpool.aboutPage.a.a(), "packagename");
    }

    public static String c(String str) {
        String string = null;
        try {
            string = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getString("HE_SERVER_DOMAIN", null);
            Preconditions.i(!TextUtils.isEmpty(string));
            return str.replace("${DOMAIN}", string).replace("${domain}", string);
        } catch (Throwable th) {
            Log.e("NetworkManager", fc.i("getHeDomainString failed. domain=", string, ", url=", str), th);
            return str.replace("${DOMAIN}", "").replace("${domain}", "");
        }
    }

    public static URI d(String str) {
        try {
            String str2 = f41985b;
            return URI.create(str.replace("${DOMAIN}", str2).replace("${domain}", str2));
        } catch (Throwable th) {
            Log.e("NetworkManager", "getHeDomainUri", th);
            return URI.create("");
        }
    }

    public static void e(InitResponse initResponse) {
        String str = initResponse.f41996e;
        String str2 = initResponse.d;
        f41985b = initResponse.f41997f;
        String str3 = initResponse.g;
        String str4 = initResponse.f41998h;
        StringBuilder sbS = fc.s("Update domain from response, production=", str, ", testbed=", str2, ", heServerDomain=");
        cj.C(sbS, f41985b, ", aiProductionDomain=", str3, ", aiTestbedDomain=");
        sbS.append(str4);
        Log.g(3, "NetworkManager", sbS.toString());
        boolean z = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getBoolean("ENABLE_PREVIEW_MODE", false);
        if (z) {
            str = str2;
        }
        f41984a = str;
        if (z) {
            str3 = str4;
        }
        f41986c = str3;
        StringBuilder sb = new StringBuilder("Update domain from response, sUriDomain=");
        sb.append(f41984a);
        sb.append(", aiApiDomain=");
        defpackage.a.A(sb, f41986c, 3, "NetworkManager");
    }
}
