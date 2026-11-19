package com.sightcall.pratik.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.provider.Settings;
import java.lang.reflect.Field;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"getDeviceSerialNumber", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "PRODUCT_NAME_T1", "PRODUCT_NAME_T2", "selectBuildInEarpiece", "", "device", "Landroid/media/AudioDeviceInfo;", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RealWearUtilsKt {
    public static final String PRODUCT_NAME_T1 = "T1200G";
    public static final String PRODUCT_NAME_T2 = "T1100G";

    public static final String getDeviceSerialNumber(Context context) {
        context.getClass();
        try {
            Field declaredField = Settings.Global.class.getDeclaredField("KIRK_SN");
            ContentResolver contentResolver = context.getContentResolver();
            Object obj = declaredField.get(null);
            String string = Settings.Global.getString(contentResolver, obj != null ? obj.toString() : null);
            return string == null ? "" : string;
        } catch (IllegalAccessException | NoSuchFieldException | SecurityException | Exception unused) {
            return "";
        }
    }

    public static final boolean selectBuildInEarpiece(AudioDeviceInfo audioDeviceInfo) {
        audioDeviceInfo.getClass();
        String string = audioDeviceInfo.getProductName().toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string.toLowerCase(locale);
        lowerCase.getClass();
        String lowerCase2 = PRODUCT_NAME_T1.toLowerCase(locale);
        lowerCase2.getClass();
        if (!Intrinsics.c(lowerCase, lowerCase2)) {
            String lowerCase3 = audioDeviceInfo.getProductName().toString().toLowerCase(locale);
            lowerCase3.getClass();
            String lowerCase4 = PRODUCT_NAME_T2.toLowerCase(locale);
            lowerCase4.getClass();
            if (!Intrinsics.c(lowerCase3, lowerCase4)) {
                return false;
            }
        }
        return audioDeviceInfo.getType() == 1;
    }
}
