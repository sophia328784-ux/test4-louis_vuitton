package com.batch.android;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.batch.android.e.r;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.n00;
import defpackage.pq0;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class BatchMessagingWebViewJavascriptBridge {
    private static final String d = "BatchWebviewJSInterface";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f22799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BatchMessage f22800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.batch.android.z.c f22801c;

    public interface b {
        String a() throws c;
    }

    public static class c extends Exception {
        public c(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return super.getMessage();
        }
    }

    public enum e {
        UNKNOWN,
        SSL,
        BAD_HTTP_STATUSCODE,
        TIMEOUT
    }

    public static class f extends Exception {
        private f() {
        }
    }

    public BatchMessagingWebViewJavascriptBridge(Context context, BatchMessage batchMessage, com.batch.android.z.c cVar) {
        this.f22799a = context.getApplicationContext();
        this.f22800b = batchMessage;
        this.f22801c = cVar;
    }

    private b a(String str, JSONObject jSONObject) throws c, f {
        String lowerCase = str.toLowerCase(Locale.US);
        lowerCase.getClass();
        final int i2 = 6;
        final int i3 = 5;
        final int i4 = 4;
        final int i5 = 3;
        final int i6 = 2;
        final int i7 = 1;
        final int i8 = 0;
        switch (lowerCase) {
            case "getcustomregion":
                return new b(this) { // from class: com.batch.android.q

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ BatchMessagingWebViewJavascriptBridge f23905b;

                    {
                        this.f23905b = this;
                    }

                    @Override // com.batch.android.BatchMessagingWebViewJavascriptBridge.b
                    public final String a() {
                        int i9 = i2;
                        BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge = this.f23905b;
                        switch (i9) {
                            case 0:
                                return batchMessagingWebViewJavascriptBridge.c();
                            case 1:
                                return batchMessagingWebViewJavascriptBridge.a();
                            case 2:
                                return batchMessagingWebViewJavascriptBridge.b();
                            case 3:
                                return batchMessagingWebViewJavascriptBridge.g();
                            case 4:
                                return batchMessagingWebViewJavascriptBridge.h();
                            case 5:
                                return batchMessagingWebViewJavascriptBridge.e();
                            default:
                                return batchMessagingWebViewJavascriptBridge.d();
                        }
                    }
                };
            case "getcustomuserid":
                return new b(this) { // from class: com.batch.android.q

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ BatchMessagingWebViewJavascriptBridge f23905b;

                    {
                        this.f23905b = this;
                    }

                    @Override // com.batch.android.BatchMessagingWebViewJavascriptBridge.b
                    public final String a() {
                        int i9 = i3;
                        BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge = this.f23905b;
                        switch (i9) {
                            case 0:
                                return batchMessagingWebViewJavascriptBridge.c();
                            case 1:
                                return batchMessagingWebViewJavascriptBridge.a();
                            case 2:
                                return batchMessagingWebViewJavascriptBridge.b();
                            case 3:
                                return batchMessagingWebViewJavascriptBridge.g();
                            case 4:
                                return batchMessagingWebViewJavascriptBridge.h();
                            case 5:
                                return batchMessagingWebViewJavascriptBridge.e();
                            default:
                                return batchMessagingWebViewJavascriptBridge.d();
                        }
                    }
                };
            case "opendeeplink":
                b(jSONObject);
                return f();
            case "gettrackingid":
                return new b(this) { // from class: com.batch.android.q

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ BatchMessagingWebViewJavascriptBridge f23905b;

                    {
                        this.f23905b = this;
                    }

                    @Override // com.batch.android.BatchMessagingWebViewJavascriptBridge.b
                    public final String a() {
                        int i9 = i4;
                        BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge = this.f23905b;
                        switch (i9) {
                            case 0:
                                return batchMessagingWebViewJavascriptBridge.c();
                            case 1:
                                return batchMessagingWebViewJavascriptBridge.a();
                            case 2:
                                return batchMessagingWebViewJavascriptBridge.b();
                            case 3:
                                return batchMessagingWebViewJavascriptBridge.g();
                            case 4:
                                return batchMessagingWebViewJavascriptBridge.h();
                            case 5:
                                return batchMessagingWebViewJavascriptBridge.e();
                            default:
                                return batchMessagingWebViewJavascriptBridge.d();
                        }
                    }
                };
            case "performaction":
                c(jSONObject);
                return f();
            case "getinstallationid":
                return new b(this) { // from class: com.batch.android.q

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ BatchMessagingWebViewJavascriptBridge f23905b;

                    {
                        this.f23905b = this;
                    }

                    @Override // com.batch.android.BatchMessagingWebViewJavascriptBridge.b
                    public final String a() {
                        int i9 = i5;
                        BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge = this.f23905b;
                        switch (i9) {
                            case 0:
                                return batchMessagingWebViewJavascriptBridge.c();
                            case 1:
                                return batchMessagingWebViewJavascriptBridge.a();
                            case 2:
                                return batchMessagingWebViewJavascriptBridge.b();
                            case 3:
                                return batchMessagingWebViewJavascriptBridge.g();
                            case 4:
                                return batchMessagingWebViewJavascriptBridge.h();
                            case 5:
                                return batchMessagingWebViewJavascriptBridge.e();
                            default:
                                return batchMessagingWebViewJavascriptBridge.d();
                        }
                    }
                };
            case "getcustomlanguage":
                return new b(this) { // from class: com.batch.android.q

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ BatchMessagingWebViewJavascriptBridge f23905b;

                    {
                        this.f23905b = this;
                    }

                    @Override // com.batch.android.BatchMessagingWebViewJavascriptBridge.b
                    public final String a() {
                        int i9 = i6;
                        BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge = this.f23905b;
                        switch (i9) {
                            case 0:
                                return batchMessagingWebViewJavascriptBridge.c();
                            case 1:
                                return batchMessagingWebViewJavascriptBridge.a();
                            case 2:
                                return batchMessagingWebViewJavascriptBridge.b();
                            case 3:
                                return batchMessagingWebViewJavascriptBridge.g();
                            case 4:
                                return batchMessagingWebViewJavascriptBridge.h();
                            case 5:
                                return batchMessagingWebViewJavascriptBridge.e();
                            default:
                                return batchMessagingWebViewJavascriptBridge.d();
                        }
                    }
                };
            case "getattributionid":
                return new b(this) { // from class: com.batch.android.q

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ BatchMessagingWebViewJavascriptBridge f23905b;

                    {
                        this.f23905b = this;
                    }

                    @Override // com.batch.android.BatchMessagingWebViewJavascriptBridge.b
                    public final String a() {
                        int i9 = i7;
                        BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge = this.f23905b;
                        switch (i9) {
                            case 0:
                                return batchMessagingWebViewJavascriptBridge.c();
                            case 1:
                                return batchMessagingWebViewJavascriptBridge.a();
                            case 2:
                                return batchMessagingWebViewJavascriptBridge.b();
                            case 3:
                                return batchMessagingWebViewJavascriptBridge.g();
                            case 4:
                                return batchMessagingWebViewJavascriptBridge.h();
                            case 5:
                                return batchMessagingWebViewJavascriptBridge.e();
                            default:
                                return batchMessagingWebViewJavascriptBridge.d();
                        }
                    }
                };
            case "getcustompayload":
                return new b(this) { // from class: com.batch.android.q

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ BatchMessagingWebViewJavascriptBridge f23905b;

                    {
                        this.f23905b = this;
                    }

                    @Override // com.batch.android.BatchMessagingWebViewJavascriptBridge.b
                    public final String a() {
                        int i9 = i8;
                        BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge = this.f23905b;
                        switch (i9) {
                            case 0:
                                return batchMessagingWebViewJavascriptBridge.c();
                            case 1:
                                return batchMessagingWebViewJavascriptBridge.a();
                            case 2:
                                return batchMessagingWebViewJavascriptBridge.b();
                            case 3:
                                return batchMessagingWebViewJavascriptBridge.g();
                            case 4:
                                return batchMessagingWebViewJavascriptBridge.h();
                            case 5:
                                return batchMessagingWebViewJavascriptBridge.e();
                            default:
                                return batchMessagingWebViewJavascriptBridge.d();
                        }
                    }
                };
            case "dismiss":
                a(jSONObject);
                return f();
            default:
                throw new f();
        }
    }

    private void b(JSONObject jSONObject) {
        String strReallyOptString = jSONObject.reallyOptString(ConfigurationName.DOWNLOAD_PLUGIN_URL, null);
        if (TextUtils.isEmpty(strReallyOptString)) {
            throw new d(-21, "Cannot perform action: empty URL");
        }
        Boolean boolReallyOptBoolean = jSONObject.reallyOptBoolean("openInApp", null);
        String strReallyOptString2 = jSONObject.reallyOptString("analyticsID", null);
        com.batch.android.z.c cVar = this.f22801c;
        if (cVar != null) {
            cVar.a(strReallyOptString, boolReallyOptBoolean, strReallyOptString2);
        }
    }

    private void c(JSONObject jSONObject) {
        String strReallyOptString = jSONObject.reallyOptString("name", null);
        if (TextUtils.isEmpty(strReallyOptString)) {
            throw new d(-21, "Cannot perform action: empty name");
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("args");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        String strReallyOptString2 = jSONObject.reallyOptString("analyticsID", null);
        com.batch.android.z.c cVar = this.f22801c;
        if (cVar != null) {
            cVar.a(strReallyOptString, jSONObjectOptJSONObject, strReallyOptString2);
        }
    }

    private b f() {
        return new p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String h() {
        JSONObject jSONObjectC = this.f22800b.c();
        if (jSONObjectC != null) {
            return jSONObjectC.reallyOptString("did", null);
        }
        throw new d(-20, "Could not get message JSON");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String i() throws c {
        return "ok";
    }

    public String d() {
        return Batch.User.getRegion(this.f22799a);
    }

    public String e() {
        return Batch.User.getIdentifier(this.f22799a);
    }

    public String g() {
        return Batch.User.getInstallationID();
    }

    @JavascriptInterface
    public String postMessage(String str, String str2) {
        if (str == null || TextUtils.isEmpty(str)) {
            return a("Internal SDK error (-10): Invalid method");
        }
        if (TextUtils.isEmpty(str2)) {
            return a("Internal SDK error (-11): Invalid arguments");
        }
        try {
            try {
                return a(a(str, new JSONObject(str2)));
            } catch (c e2) {
                StringBuilder sbR = pq0.r("In-App Webview Javascript SDK error (", str, "): ");
                sbR.append(e2.getMessage());
                t.a(com.batch.android.v0.g.f24103i, sbR.toString());
                return a(e2.getMessage());
            } catch (d e3) {
                t.c(d, "Internal bridge error: " + e3.getMessage(), e3);
                return a(defpackage.a.i(e3.a(), ")", new StringBuilder("Internal SDK error (")));
            } catch (f unused) {
                t.a(com.batch.android.v0.g.f24103i, "Unknown In-App Webview Javascript SDK method: '" + str + "'");
                return a(n00.r(str, "'. Is the native SDK too old?", new StringBuilder("Unimplemented native method '")));
            } catch (Exception e4) {
                t.c(d, "Unexpected bridge error", e4);
                return a("Internal SDK error (-3)");
            }
        } catch (JSONException e5) {
            t.c(d, "Could not deserialize postMessage arguments. Got: '" + str2 + "'.", e5);
            return a("Internal SDK error (-12): Invalid arguments");
        }
    }

    public static class d extends RuntimeException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f22802b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f22803c;

        public d(int i2, String str) {
            this.f22802b = i2;
            this.f22803c = str;
        }

        public int a() {
            return this.f22802b;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return this.f22803c;
        }

        public d(int i2, String str, Throwable th) {
            super(th);
            this.f22802b = i2;
            this.f22803c = str;
        }
    }

    public String b() {
        return Batch.User.getLanguage(this.f22799a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() {
        try {
            JSONObject jSONObject = new JSONObject(this.f22800b.b());
            jSONObject.remove(r.z);
            return jSONObject.toString();
        } catch (JSONException e2) {
            throw new d(-23, "Could not copy custom payload JSON", e2);
        }
    }

    private String a(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("error", str);
            return jSONObject.toString();
        } catch (JSONException e2) {
            t.c(d, "Could not serialize error JSON", e2);
            return "{'error':'unknown serialization error (-2)'}";
        }
    }

    private String a(b bVar) throws c {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", bVar.a());
            return jSONObject.toString();
        } catch (JSONException e2) {
            t.c(d, "Could not serialize success JSON", e2);
            return "{'error':'unknown serialization error (-1)'}";
        }
    }

    public String a() {
        t.e("Attribution identifier is not supported anymore");
        return null;
    }

    private void a(JSONObject jSONObject) {
        String strReallyOptString = jSONObject.reallyOptString("analyticsID", null);
        com.batch.android.z.c cVar = this.f22801c;
        if (cVar != null) {
            cVar.a(strReallyOptString);
        }
    }
}
