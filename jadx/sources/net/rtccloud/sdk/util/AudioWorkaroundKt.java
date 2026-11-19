package net.rtccloud.sdk.util;

import android.media.AudioManager;
import android.os.Build;
import com.sightcall.pratik.utils.SdkUtilsKt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"SAMSUNG", "", "isSamsung", "", "setModeInCommunication", "", "audioManager", "Landroid/media/AudioManager;", "isEchoCancelerEnabled", "()Z", "rtcc_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class AudioWorkaroundKt {
    public static final String SAMSUNG = "samsung";
    private static final boolean isEchoCancelerEnabled;

    static {
        String lowerCase;
        String str = Build.MANUFACTURER;
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = null;
        }
        isEchoCancelerEnabled = Intrinsics.c(lowerCase, "samsung");
    }

    public static final boolean isEchoCancelerEnabled() {
        return isEchoCancelerEnabled;
    }

    public static final boolean isSamsung() {
        String lowerCase;
        String str = Build.MANUFACTURER;
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = null;
        }
        return Intrinsics.c(lowerCase, "samsung");
    }

    public static final void setModeInCommunication(AudioManager audioManager) {
        audioManager.getClass();
        if ((isSamsung() || SdkUtilsKt.isAtLeastSdk33()) && audioManager.getMode() != 3) {
            audioManager.setMode(3);
        }
    }
}
