package com.kakao.sdk.auth;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/auth/IntentFactory;", "", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class IntentFactory {
    public static Intent a(Context context, Uri uri, String str, SingleResultReceiver$Companion$create$1 singleResultReceiver$Companion$create$1) {
        context.getClass();
        str.getClass();
        Intent intent = new Intent(context, (Class<?>) AuthCodeHandlerActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("key.result.receiver", singleResultReceiver$Companion$create$1);
        bundle.putParcelable("key.full_authorize_uri", uri);
        bundle.putString("key.redirect_uri", str);
        Intent intentAddFlags = intent.putExtra("key.bundle", bundle).addFlags(268435456);
        intentAddFlags.getClass();
        return intentAddFlags;
    }

    public static Intent b(Context context, String str, String str2, String str3, Bundle bundle, SingleResultReceiver$Companion$create$1 singleResultReceiver$Companion$create$1) {
        context.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        Intent intent = new Intent(context, (Class<?>) TalkAuthCodeActivity.class);
        Intent intentAddCategory = new Intent("com.kakao.talk.intent.action.CAPRI_LOGGED_IN_ACTIVITY").addCategory("android.intent.category.DEFAULT");
        intentAddCategory.getClass();
        Intent intentPutExtra = intent.putExtra("key.login.intent", intentAddCategory.putExtra("com.kakao.sdk.talk.appKey", str).putExtra("com.kakao.sdk.talk.redirectUri", str2).putExtra("com.kakao.sdk.talk.kaHeader", str3).putExtra("com.kakao.sdk.talk.extraparams", bundle)).putExtra("key.request.code", 10012);
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("key.result.receiver", singleResultReceiver$Companion$create$1);
        Intent intentAddFlags = intentPutExtra.putExtra("key.bundle", bundle2).addFlags(603979776);
        intentAddFlags.getClass();
        return intentAddFlags;
    }
}
