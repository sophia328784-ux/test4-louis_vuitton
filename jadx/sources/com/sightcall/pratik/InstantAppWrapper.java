package com.sightcall.pratik;

import android.content.Context;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0004"}, d2 = {"isInstalledApp", "", "Landroid/content/Context;", "isInstantApp", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class InstantAppWrapper {
    public static final boolean isInstalledApp(Context context) {
        context.getClass();
        return !isInstantApp(context);
    }

    public static final boolean isInstantApp(Context context) {
        context.getClass();
        return context.getResources().getBoolean(R.bool.universal_isInstantApp);
    }
}
