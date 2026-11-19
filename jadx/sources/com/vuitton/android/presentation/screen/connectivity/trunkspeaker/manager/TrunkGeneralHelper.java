package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager;

import androidx.fragment.app.FragmentActivity;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceStatus;
import defpackage.fp;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;", "", "SpeakerTrunkType", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrunkGeneralHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TrunkGeneralHelper f56577a = new TrunkGeneralHelper();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Regex f56578b = new Regex("[\\\\:;,/%`]*");

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;", "", "PM", "GM", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SpeakerTrunkType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SpeakerTrunkType[] $VALUES;
        public static final SpeakerTrunkType GM;
        public static final SpeakerTrunkType PM;

        static {
            SpeakerTrunkType speakerTrunkType = new SpeakerTrunkType("PM", 0);
            PM = speakerTrunkType;
            SpeakerTrunkType speakerTrunkType2 = new SpeakerTrunkType("GM", 1);
            GM = speakerTrunkType2;
            SpeakerTrunkType[] speakerTrunkTypeArr = {speakerTrunkType, speakerTrunkType2};
            $VALUES = speakerTrunkTypeArr;
            $ENTRIES = EnumEntriesKt.a(speakerTrunkTypeArr);
        }

        public static SpeakerTrunkType valueOf(String str) {
            return (SpeakerTrunkType) Enum.valueOf(SpeakerTrunkType.class, str);
        }

        public static SpeakerTrunkType[] values() {
            return (SpeakerTrunkType[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56579a;

        static {
            int[] iArr = new int[SpeakerTrunkType.values().length];
            try {
                iArr[SpeakerTrunkType.PM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SpeakerTrunkType.GM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56579a = iArr;
        }
    }

    public static int a(SpeakerTrunkType speakerTrunkType) {
        int i2 = speakerTrunkType == null ? -1 : WhenMappings.f56579a[speakerTrunkType.ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? 2131231612 : 2131231640;
        }
        return 2131231642;
    }

    public static SpeakerTrunkType b(LPDevice lPDevice) {
        if (lPDevice == null) {
            return null;
        }
        String ssid = lPDevice.getDeviceStatus().getSSID();
        ssid.getClass();
        if (f(ssid)) {
            return SpeakerTrunkType.PM;
        }
        String ssid2 = lPDevice.getDeviceStatus().getSSID();
        ssid2.getClass();
        if (e(ssid2)) {
            return SpeakerTrunkType.GM;
        }
        return null;
    }

    public static /* synthetic */ void d(FragmentActivity fragmentActivity, LPDevice lPDevice, Function1 function1, Function0 function0, int i2) {
        if ((i2 & 8) != 0) {
            function0 = null;
        }
        f56577a.c(fragmentActivity, lPDevice, function1, function0, true);
    }

    public static boolean e(String str) {
        Locale locale = Locale.ENGLISH;
        locale.getClass();
        String lowerCase = str.toLowerCase(locale);
        lowerCase.getClass();
        String lowerCase2 = "Trunk speaker GM".toLowerCase(locale);
        lowerCase2.getClass();
        return StringsKt.P(lowerCase, lowerCase2, false);
    }

    public static boolean f(String str) {
        Locale locale = Locale.ENGLISH;
        locale.getClass();
        String lowerCase = str.toLowerCase(locale);
        lowerCase.getClass();
        String lowerCase2 = "Trunk speaker PM".toLowerCase(locale);
        lowerCase2.getClass();
        return StringsKt.P(lowerCase, lowerCase2, false);
    }

    public final synchronized void c(FragmentActivity fragmentActivity, LPDevice lPDevice, Function1 function1, Function0 function0, boolean z) {
        LPDeviceStatus deviceStatus;
        try {
            if (LPDeviceManager.getInstance().deviceForMac((lPDevice == null || (deviceStatus = lPDevice.getDeviceStatus()) == null) ? null : deviceStatus.getMAC()) != null) {
                lPDevice.getClass();
                function1.invoke(lPDevice);
            } else if (function0 != null) {
                function0.mo47invoke();
            } else if (z && fragmentActivity != null) {
                fragmentActivity.runOnUiThread(new fp(fragmentActivity, 5));
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
