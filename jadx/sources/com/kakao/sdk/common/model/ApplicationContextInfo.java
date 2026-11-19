package com.kakao.sdk.common.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import com.google.gson.JsonObject;
import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.util.Utility;
import defpackage.n00;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B/\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u000fR\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/kakao/sdk/common/model/ApplicationContextInfo;", "Lcom/kakao/sdk/common/model/ApplicationInfo;", "Lcom/kakao/sdk/common/model/ContextInfo;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "appKey", "customScheme", "Lcom/kakao/sdk/common/KakaoSdk$Type;", "sdkType", "Lcom/kakao/sdk/common/model/SdkIdentifier;", "sdkIdentifier", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/common/KakaoSdk$Type;Lcom/kakao/sdk/common/model/SdkIdentifier;)V", "mClientId", "Ljava/lang/String;", "mCustomScheme", "mKaHeader", "mKeyHash", "Lcom/google/gson/JsonObject;", "mExtras", "Lcom/google/gson/JsonObject;", "Landroid/content/SharedPreferences;", "mSharedPreferences", "Landroid/content/SharedPreferences;", "mAppVer", "", "mSalt", "[B", "mApplicationContext", "Landroid/content/Context;", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ApplicationContextInfo implements ApplicationInfo, ContextInfo {
    private final String mAppVer;
    private final Context mApplicationContext;
    private final String mClientId;
    private final String mCustomScheme;
    private final JsonObject mExtras;
    private final String mKaHeader;
    private final String mKeyHash;
    private final byte[] mSalt;
    private final SharedPreferences mSharedPreferences;

    public ApplicationContextInfo(Context context, String str, String str2, KakaoSdk.Type type, SdkIdentifier sdkIdentifier) {
        String str3;
        byte[] bytes;
        context.getClass();
        str.getClass();
        str2.getClass();
        type.getClass();
        sdkIdentifier.getClass();
        this.mClientId = str;
        this.mCustomScheme = str2;
        this.mKaHeader = Utility.a(context, type, sdkIdentifier);
        this.mKeyHash = Utility.b(context);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("appPkg", context.getPackageName());
        jsonObject.addProperty("keyHash", Utility.b(context));
        jsonObject.addProperty("KA", Utility.a(context, type, null));
        this.mExtras = jsonObject;
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        sharedPreferences.getClass();
        this.mSharedPreferences = sharedPreferences;
        if (Build.VERSION.SDK_INT >= 33) {
            str3 = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L)).versionName;
            str3.getClass();
        } else {
            str3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            str3.getClass();
        }
        this.mAppVer = str3;
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            string.getClass();
            String strReplace = new Regex("[0\\s]").replace(string, "");
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.reset();
            byte[] bytes2 = ("SDK-" + strReplace).getBytes(Charsets.UTF_8);
            bytes2.getClass();
            messageDigest.update(bytes2);
            bytes = messageDigest.digest();
            bytes.getClass();
        } catch (Exception unused) {
            bytes = n00.r(Build.PRODUCT, "a23456789012345bcdefg", new StringBuilder("xxxx")).getBytes(Charsets.UTF_8);
            bytes.getClass();
        }
        this.mSalt = bytes;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        this.mApplicationContext = applicationContext;
    }

    @Override // com.kakao.sdk.common.model.ApplicationInfo
    public final String a() {
        return n00.r(this.mCustomScheme, "://oauth", new StringBuilder());
    }

    @Override // com.kakao.sdk.common.model.ContextInfo
    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getMKeyHash() {
        return this.mKeyHash;
    }

    @Override // com.kakao.sdk.common.model.ContextInfo
    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getMKaHeader() {
        return this.mKaHeader;
    }

    @Override // com.kakao.sdk.common.model.ApplicationInfo
    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getMClientId() {
        return this.mClientId;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final Context getMApplicationContext() {
        return this.mApplicationContext;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final SharedPreferences getMSharedPreferences() {
        return this.mSharedPreferences;
    }

    @Override // com.kakao.sdk.common.model.ContextInfo
    /* JADX INFO: renamed from: getSalt, reason: from getter */
    public final byte[] getMSalt() {
        return this.mSalt;
    }
}
