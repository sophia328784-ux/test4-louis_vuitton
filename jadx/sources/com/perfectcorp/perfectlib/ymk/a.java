package com.perfectcorp.perfectlib.ymk;

import android.text.TextUtils;
import android.util.Base64;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import defpackage.a8;
import defpackage.g8;
import defpackage.xp;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile C0195a f41935a = new C0195a();

    public static C0195a a(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        try {
            StringBuilder sb = new StringBuilder();
            char[] cArr = new char[2048];
            while (true) {
                int i2 = inputStreamReader.read(cArr);
                if (i2 == -1) {
                    C0195a c0195a = new C0195a(new JSONObject(new String(Base64.decode(sb.toString(), 2), StandardCharsets.UTF_8)));
                    inputStreamReader.close();
                    return c0195a;
                }
                sb.append(cArr, 0, i2);
            }
        } catch (Throwable th) {
            try {
                inputStreamReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static C0195a b(String str, Callable callable) throws IOException {
        Throwable th = null;
        for (int i2 = 0; i2 < 3; i2++) {
            try {
                InputStream inputStream = (InputStream) callable.call();
                try {
                    C0195a c0195aA = a(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return c0195aA;
                } catch (Throwable th2) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                th = th4;
                Log.i("SdkConfig", "Parse configuration file failed.", th);
                if (i2 < 2) {
                    try {
                        TimeUnit.MILLISECONDS.sleep(500L);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        throw new IOException(str, th);
    }

    public static C0195a c(String str, boolean z) throws IOException {
        C0195a c0195aB;
        String str2;
        g8 g8Var;
        StringBuilder sb;
        File file = new File(PfCommons.b().getExternalFilesDir(null), "config.json");
        int i2 = 3;
        if (file.exists()) {
            c0195aB = b("load test config.json from '" + file + "' failed", new xp(file, 1));
            str2 = "use the test config.json from '" + file + "'";
        } else {
            if (!TextUtils.isEmpty(str)) {
                if (z) {
                    g8Var = new g8(str, i2);
                    sb = new StringBuilder("load specified asset config.json from '");
                } else {
                    g8Var = new g8(str, 4);
                    sb = new StringBuilder("load specified file config.json from '");
                }
                sb.append(str);
                sb.append("' failed");
                C0195a c0195aB2 = b(sb.toString(), g8Var);
                Log.g(3, "SdkConfig", "use the specified file config.json from '" + str + "'");
                return c0195aB2;
            }
            c0195aB = b("load 'perfectlib/config.json' from asset failed", new a8(18));
            str2 = "use the 'perfectlib/config.json' from asset";
        }
        Log.g(3, "SdkConfig", str2);
        return c0195aB;
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ymk.a$a, reason: collision with other inner class name */
    public static final class C0195a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41937b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f41938c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f41939e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f41940f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List f41941h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final C0196a f41942i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f41943j;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ymk.a$a$a, reason: collision with other inner class name */
        public static final class C0196a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f41944a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f41945b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f41946c;

            public C0196a(String str, String str2, String str3) {
                this.f41944a = str;
                this.f41945b = str2;
                this.f41946c = str3;
            }
        }

        public C0195a(JSONObject jSONObject) {
            List listUnmodifiableList;
            String str;
            Object objOpt = jSONObject.opt("COUNTLY_ID");
            C0196a c0196a = null;
            this.f41936a = objOpt != null ? objOpt.toString() : null;
            Object objOpt2 = jSONObject.opt("COUNTLY_DOMAIN");
            this.f41937b = objOpt2 != null ? objOpt2.toString() : null;
            Object objOpt3 = jSONObject.opt("API_KEY");
            this.f41938c = objOpt3 != null ? objOpt3.toString() : null;
            Object objOpt4 = jSONObject.opt("PARAMETER_PLATFORM");
            this.d = objOpt4 != null ? objOpt4.toString() : null;
            Object objOpt5 = jSONObject.opt("PARAMETER_PRODUCT");
            this.f41939e = objOpt5 != null ? objOpt5.toString() : null;
            Object objOpt6 = jSONObject.opt("PARAMETER_VERSION");
            this.f41940f = objOpt6 != null ? objOpt6.toString() : null;
            Object objOpt7 = jSONObject.opt("PARAMETER_VERSION_TYPE");
            this.g = objOpt7 != null ? objOpt7.toString() : null;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("DOMAINS");
            if (jSONArrayOptJSONArray == null) {
                listUnmodifiableList = null;
            } else {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2, null);
                    if (!TextUtils.isEmpty(strOptString)) {
                        arrayList.add(strOptString);
                    }
                }
                listUnmodifiableList = Collections.unmodifiableList(arrayList);
            }
            this.f41941h = listUnmodifiableList;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("HAIR_STYLE_LICENSE");
            if (jSONObjectOptJSONObject == null) {
                str = "no HAIR_STYLE_LICENSE in config.json";
            } else {
                Object objOpt8 = jSONObjectOptJSONObject.opt("END_POINT");
                String string = objOpt8 != null ? objOpt8.toString() : null;
                if (TextUtils.isEmpty(string)) {
                    str = "no END_POINT under HAIR_STYLE_LICENSE in config.json";
                } else {
                    Object objOpt9 = jSONObjectOptJSONObject.opt("CLIENT_ID");
                    String string2 = objOpt9 != null ? objOpt9.toString() : null;
                    if (!TextUtils.isEmpty(string2)) {
                        Object objOpt10 = jSONObjectOptJSONObject.opt("SECRET_KEY");
                        String string3 = objOpt10 != null ? objOpt10.toString() : null;
                        if (TextUtils.isEmpty(string3)) {
                            str = "no SECRET_KEY under HAIR_STYLE_LICENSE in config.json";
                        } else {
                            c0196a = new C0196a(string, string2, string3);
                        }
                        this.f41942i = c0196a;
                        this.f41943j = true;
                    }
                    str = "no CLIENT_ID under HAIR_STYLE_LICENSE in config.json";
                }
            }
            Log.g(3, "SdkConfig", str);
            this.f41942i = c0196a;
            this.f41943j = true;
        }

        public final String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper(C0195a.class.getSimpleName());
            toStringHelper.b("COUNTLY_ID", this.f41936a);
            toStringHelper.b("COUNTLY_DOMAIN", this.f41937b);
            toStringHelper.b("API_KEY", this.f41938c);
            toStringHelper.b("PARAMETER_PLATFORM", this.d);
            toStringHelper.b("PARAMETER_PRODUCT", this.f41939e);
            toStringHelper.b("PARAMETER_VERSION", this.f41940f);
            toStringHelper.b("PARAMETER_VERSION_TYPE", this.g);
            toStringHelper.b("DOMAINS", this.f41941h);
            return toStringHelper.toString();
        }

        public C0195a() {
            this.f41936a = null;
            this.f41937b = null;
            this.f41938c = null;
            this.d = null;
            this.f41939e = null;
            this.f41940f = null;
            this.g = null;
            this.f41941h = null;
            this.f41942i = null;
            this.f41943j = false;
        }
    }
}
