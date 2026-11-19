package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzhu {
    public static String a(Context context) {
        try {
            return context.getResources().getResourcePackageName(R.string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }
}
