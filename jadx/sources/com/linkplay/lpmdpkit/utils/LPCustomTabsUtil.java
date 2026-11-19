package com.linkplay.lpmdpkit.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.content.ContextCompat;
import com.linkplay.lpmdpkit.LPCustomTabsCallbackProtocol;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes2.dex */
public class LPCustomTabsUtil {
    public static final String LPMS_OPEN_WEB_URL = "lpms_open_web_url";
    private static List<LPCustomTabsCallbackProtocol> protocols = new ArrayList();
    private static Class<?> mSrcActivityClass = null;

    public static void addStreamServiceProtocol(LPCustomTabsCallbackProtocol lPCustomTabsCallbackProtocol) {
        if (protocols.contains(lPCustomTabsCallbackProtocol)) {
            return;
        }
        protocols.add(lPCustomTabsCallbackProtocol);
    }

    public static void handlerCallback(Activity activity, Uri uri) {
        String string = uri.toString();
        if (!TextUtils.isEmpty(string)) {
            for (LPCustomTabsCallbackProtocol lPCustomTabsCallbackProtocol : protocols) {
                if (string.contains("service=tunein") && "newTuneIn".equals(lPCustomTabsCallbackProtocol.getSource())) {
                    lPCustomTabsCallbackProtocol.handlerCallback(uri);
                    break;
                }
            }
        }
        if (mSrcActivityClass == null || activity == null) {
            return;
        }
        Intent intent = new Intent(activity, mSrcActivityClass);
        intent.addFlags(67108864);
        intent.addFlags(PKIFailureInfo.duplicateCertReq);
        activity.startActivity(intent);
        activity.overridePendingTransition(0, 0);
    }

    public static boolean isChromeSupported(Context context) {
        if (context == null) {
            return false;
        }
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        intent.setPackage("com.android.chrome");
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        return (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) ? false : true;
    }

    public static void openWebPage(Activity activity, String str) {
        if (activity == null || TextUtils.isEmpty(str)) {
            return;
        }
        mSrcActivityClass = activity.getClass();
        CustomTabsIntent customTabsIntentA = new CustomTabsIntent.Builder().a();
        Uri uri = Uri.parse(Uri.decode(str));
        Intent intent = customTabsIntentA.f1377a;
        intent.setData(uri);
        ContextCompat.startActivity(activity, intent, customTabsIntentA.f1378b);
    }
}
