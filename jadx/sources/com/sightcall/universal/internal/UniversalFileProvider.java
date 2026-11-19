package com.sightcall.universal.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.core.content.FileProvider;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalFileProvider extends FileProvider {
    public static String getAuthority(Context context) {
        return context.getPackageName() + ".universalfileprovider";
    }

    public static void grantReadWritePermission(Context context, Intent intent, Uri uri) {
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent, 65536).iterator();
        while (it.hasNext()) {
            context.grantUriPermission(it.next().activityInfo.packageName, uri, 3);
        }
    }

    public static void revokeReadWritePermission(Context context, Uri uri) {
        if (uri != null) {
            context.revokeUriPermission(uri, 3);
        }
    }
}
