package androidx.camera.core.impl;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import androidx.arch.core.util.Function;
import androidx.camera.core.Logger;
import com.sightcall.uvc.Camera;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class QuirkSettingsLoader implements Function<Context, QuirkSettings> {

    public static class MetadataHolderService extends Service {
    }

    public static QuirkSettings a(Context context, Bundle bundle) {
        boolean z = bundle.getBoolean("androidx.camera.core.quirks.DEFAULT_QUIRK_ENABLED", true);
        String[] strArrB = b(context, "androidx.camera.core.quirks.FORCE_ENABLED", bundle);
        String[] strArrB2 = b(context, "androidx.camera.core.quirks.FORCE_DISABLED", bundle);
        Logger.c(3, "QuirkSettingsLoader");
        Logger.c(3, "QuirkSettingsLoader");
        Arrays.toString(strArrB);
        Logger.c(3, "QuirkSettingsLoader");
        Arrays.toString(strArrB2);
        Logger.c(3, "QuirkSettingsLoader");
        QuirkSettings.Builder builder = new QuirkSettings.Builder();
        builder.f2316a = z;
        builder.f2317b = new HashSet(c(strArrB));
        HashSet hashSet = new HashSet(c(strArrB2));
        builder.f2318c = hashSet;
        return new QuirkSettings(builder.f2316a, builder.f2317b, hashSet);
    }

    public static String[] b(Context context, String str, Bundle bundle) {
        if (!bundle.containsKey(str)) {
            return new String[0];
        }
        int i2 = bundle.getInt(str, -1);
        if (i2 == -1) {
            Logger.c(5, "QuirkSettingsLoader");
            return new String[0];
        }
        try {
            return context.getResources().getStringArray(i2);
        } catch (Resources.NotFoundException unused) {
            Logger.c(5, "QuirkSettingsLoader");
            return new String[0];
        }
    }

    public static HashSet c(String[] strArr) {
        Class<?> cls;
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            try {
                cls = Class.forName(str);
                if (!Quirk.class.isAssignableFrom(cls)) {
                    Logger.c(5, "QuirkSettingsLoader");
                    cls = null;
                }
            } catch (ClassNotFoundException unused) {
                Logger.c(5, "QuirkSettingsLoader");
            }
            if (cls != null) {
                hashSet.add(cls);
            }
        }
        return hashSet;
    }

    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply */
    public final Object mo0apply(Object obj) {
        Context context = (Context) obj;
        try {
            Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) MetadataHolderService.class), Camera.DEFAULT_PREVIEW_WIDTH).metaData;
            if (bundle != null) {
                return a(context, bundle);
            }
            Logger.c(5, "QuirkSettingsLoader");
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            Logger.c(3, "QuirkSettingsLoader");
            return null;
        }
    }
}
