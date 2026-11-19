package com.linecorp.linesdk.auth.internal;

import android.R;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.content.ContextCompat;
import com.batch.android.q0.b;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.Scope;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.internal.pkce.CodeChallengeMethod;
import com.linecorp.linesdk.internal.pkce.PKCECode;
import com.linecorp.linesdk.utils.StringUtils;
import com.linecorp.linesdk.utils.UriUtils;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import lv.nfc.reader.utils.LVConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class BrowserAuthenticationApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LineAuthenticationStatus f36138a;

    public static class AuthenticationIntentHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Intent f36139a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bundle f36140b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f36141c;

        public AuthenticationIntentHolder(Intent intent, Bundle bundle, boolean z) {
            this.f36139a = intent;
            this.f36140b = bundle;
            this.f36141c = z;
        }
    }

    public static class Request {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Intent f36142a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bundle f36143b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f36144c;
        public final boolean d;

        public Request(Intent intent, Bundle bundle, String str, boolean z) {
            this.f36142a = intent;
            this.f36143b = bundle;
            this.f36144c = str;
            this.d = z;
        }
    }

    public static class Result {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f36145a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Boolean f36146b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f36147c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f36148e;

        public Result(Boolean bool, String str, String str2, String str3, String str4) {
            this.f36145a = str;
            this.f36146b = bool;
            this.f36147c = str2;
            this.d = str3;
            this.f36148e = str4;
        }

        public final LineApiError a() {
            String str = this.f36148e;
            if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(this.f36145a)) {
                return new LineApiError(str);
            }
            try {
                return new LineApiError(new JSONObject().putOpt("error", this.f36147c).putOpt("error_description", this.d).toString());
            } catch (JSONException e2) {
                return new LineApiError(e2);
            }
        }
    }

    public BrowserAuthenticationApi(LineAuthenticationStatus lineAuthenticationStatus) {
        this.f36138a = lineAuthenticationStatus;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0161  */
    /* JADX WARN: Code duplicated, block: B:45:0x018c  */
    /* JADX WARN: Code duplicated, block: B:47:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:51:0x01b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:53:0x01be  */
    /* JADX WARN: Code duplicated, block: B:56:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:60:0x01a6 A[SYNTHETIC] */
    public final Request a(Context context, LineAuthenticationConfig lineAuthenticationConfig, PKCECode pKCECode, LineAuthenticationParams lineAuthenticationParams) {
        String str;
        Object obj;
        String strJoin;
        Bundle extras;
        ArrayList arrayList;
        int size;
        AuthenticationIntentHolder authenticationIntentHolder;
        Intent intent;
        String strA = StringUtils.a(16);
        LineAuthenticationStatus lineAuthenticationStatus = this.f36138a;
        lineAuthenticationStatus.d = strA;
        List list = lineAuthenticationParams.f36122b;
        String strA2 = lineAuthenticationParams.f36123c;
        if (list.contains(Scope.d)) {
            if (TextUtils.isEmpty(strA2)) {
                strA2 = StringUtils.a(16);
            }
            str = strA2;
        } else {
            str = null;
        }
        lineAuthenticationStatus.f36164e = str;
        String str2 = "intent://result#Intent;package=" + context.getPackageName() + ";scheme=lineauth;end";
        String str3 = lineAuthenticationConfig.f36114b;
        String str4 = pKCECode.f36247c;
        String strA3 = CodeChallengeMethod.S256.a();
        List list2 = lineAuthenticationParams.f36122b;
        if (list2 == null || list2.isEmpty()) {
            obj = null;
            strJoin = null;
        } else {
            strJoin = TextUtils.join(" ", Scope.a(list2));
            obj = null;
        }
        LinkedHashMap linkedHashMapB = UriUtils.b("response_type", m.v, LVConstants.LV_CLIENT_ID_KEY, str3, "state", strA, "code_challenge", str4, "code_challenge_method", strA3, "redirect_uri", str2, "sdk_ver", "5.11.1", "scope", strJoin);
        if (!TextUtils.isEmpty(str)) {
            linkedHashMapB.put("nonce", str);
        }
        LineAuthenticationParams.BotPrompt botPrompt = lineAuthenticationParams.d;
        if (botPrompt != null) {
            linkedHashMapB.put("bot_prompt", botPrompt.name().toLowerCase());
        }
        String str5 = lineAuthenticationParams.f36125f;
        if (str5 != null) {
            linkedHashMapB.put("prompt_bot_id", str5);
        }
        Uri.Builder builderBuildUpon = Uri.parse("/oauth2/v2.1/authorize/consent").buildUpon();
        UriUtils.a(builderBuildUpon, linkedHashMapB);
        LinkedHashMap linkedHashMapB2 = UriUtils.b("returnUri", builderBuildUpon.build().toString(), "loginChannelId", lineAuthenticationConfig.f36114b);
        Locale locale = lineAuthenticationParams.f36124e;
        if (locale != null) {
            linkedHashMapB2.put("ui_locales", locale.toString());
        }
        Uri uri = lineAuthenticationConfig.f36116e;
        Uri.Builder builderBuildUpon2 = uri.buildUpon();
        if (lineAuthenticationParams.g == LineAuthenticationParams.WebAuthenticationMethod.qrCode) {
            if (uri.getFragment() != null) {
                md.h("Multiple fragment is not yet supported. Require review or report to developer.");
                return null;
            }
            builderBuildUpon2.encodedFragment("/qr");
        }
        UriUtils.a(builderBuildUpon2, linkedHashMapB2);
        Uri uriBuild = builderBuildUpon2.build();
        boolean z = lineAuthenticationConfig.f36117f;
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
        builder.f1380b.f1374a = Integer.valueOf(ContextCompat.getColor(context, R.color.white) | b.v);
        CustomTabsIntent customTabsIntentA = builder.a();
        Intent data = customTabsIntentA.f1377a.setData(uriBuild);
        Bundle bundle = customTabsIntentA.f1378b;
        LineAppVersion lineAppVersionA = LineAppVersion.a(context);
        if (z || lineAppVersionA == null) {
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("https://")), 0);
            extras = data.getExtras();
            arrayList = new ArrayList(listQueryIntentActivities.size());
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                intent = new Intent("android.intent.action.VIEW");
                intent.setData(uriBuild);
                intent.setPackage(resolveInfo.activityInfo.packageName);
                if (extras != null) {
                    intent.putExtras(extras);
                }
                arrayList.add(intent);
            }
            size = arrayList.size();
            if (size != 0) {
                throw new ActivityNotFoundException(pq0.l(uriBuild, "Activity for LINE log-in is not found. uri="));
            }
            if (size == 1) {
                authenticationIntentHolder = new AuthenticationIntentHolder((Intent) arrayList.get(0), bundle, false);
            } else {
                Intent intentCreateChooser = Intent.createChooser((Intent) arrayList.remove(0), null);
                intentCreateChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
                authenticationIntentHolder = new AuthenticationIntentHolder(intentCreateChooser, bundle, false);
            }
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setData(uriBuild);
            intent2.setPackage("jp.naver.line.android");
            if (intent2.resolveActivity(context.getPackageManager()) != null) {
                authenticationIntentHolder = new AuthenticationIntentHolder(intent2, bundle, true);
            } else {
                List<ResolveInfo> listQueryIntentActivities2 = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("https://")), 0);
                extras = data.getExtras();
                arrayList = new ArrayList(listQueryIntentActivities2.size());
                while (r0.hasNext()) {
                    intent = new Intent("android.intent.action.VIEW");
                    intent.setData(uriBuild);
                    intent.setPackage(resolveInfo.activityInfo.packageName);
                    if (extras != null) {
                        intent.putExtras(extras);
                    }
                    arrayList.add(intent);
                }
                size = arrayList.size();
                if (size != 0) {
                    throw new ActivityNotFoundException(pq0.l(uriBuild, "Activity for LINE log-in is not found. uri="));
                }
                if (size == 1) {
                    authenticationIntentHolder = new AuthenticationIntentHolder((Intent) arrayList.get(0), bundle, false);
                } else {
                    Intent intentCreateChooser2 = Intent.createChooser((Intent) arrayList.remove(0), null);
                    intentCreateChooser2.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
                    authenticationIntentHolder = new AuthenticationIntentHolder(intentCreateChooser2, bundle, false);
                }
            }
        }
        return new Request(authenticationIntentHolder.f36139a, authenticationIntentHolder.f36140b, str2, authenticationIntentHolder.f36141c);
    }
}
