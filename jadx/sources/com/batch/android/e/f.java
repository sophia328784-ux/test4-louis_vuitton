package com.batch.android.e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.linkplay.network.SecurityConstants;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static Intent a(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage == null) {
            return null;
        }
        launchIntentForPackage.setAction("batch_" + Long.toString(System.currentTimeMillis()));
        return launchIntentForPackage;
    }

    public static Intent b(Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        Bundle bundle = new Bundle();
        bundle.putBinder("android.support.customtabs.extra.SESSION", null);
        bundle.putBoolean("android.support.customtabs.extra.SHARE_MENU_ITEM", true);
        bundle.putInt("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
        intent.putExtras(bundle);
        intent.setData(uri);
        return intent;
    }

    public static Intent a(String str, boolean z, boolean z2) {
        Uri uriNormalizeScheme = Uri.parse(str).normalizeScheme();
        if (z && a(uriNormalizeScheme)) {
            return b(uriNormalizeScheme);
        }
        Intent intent = new Intent("android.intent.action.VIEW", uriNormalizeScheme);
        if (z2) {
            intent.addFlags(268435456);
        }
        return intent;
    }

    public static boolean a(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme == null) {
            return false;
        }
        String lowerCase = scheme.toLowerCase(Locale.US);
        return SecurityConstants.SECURITY_NONE.equals(lowerCase) || SecurityConstants.SECURITY_HTTPS.equals(lowerCase);
    }
}
