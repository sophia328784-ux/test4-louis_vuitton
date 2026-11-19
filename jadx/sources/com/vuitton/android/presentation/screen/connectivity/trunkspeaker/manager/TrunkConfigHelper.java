package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager;

import android.content.Context;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.device.LPDeviceSettings;
import com.linkplay.core.device.LPDeviceSettingsListener;
import com.linkplay.core.status.LPPlayChannel;
import com.vuitton.android.R;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TrunkConfigHelper {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56567a;

        static {
            int[] iArr = new int[LPPlayChannel.values().length];
            try {
                iArr[LPPlayChannel.LP_CHANNEL_STEREO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LPPlayChannel.LP_CHANNEL_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LPPlayChannel.LP_CHANNEL_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f56567a = iArr;
        }
    }

    public static String a(Context context, LPPlayChannel lPPlayChannel) {
        String string;
        context.getClass();
        lPPlayChannel.getClass();
        int i2 = WhenMappings.f56567a[lPPlayChannel.ordinal()];
        if (i2 == 1) {
            string = context.getString(R.string.trunk_speaker_channel_stereo);
        } else if (i2 == 2) {
            string = context.getString(R.string.trunk_speaker_channel_left);
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            string = context.getString(R.string.trunk_speaker_channel_right);
        }
        string.getClass();
        return string;
    }

    public static void b(LPDevice lPDevice, String str, final Function0 function0, final Function0 function1) {
        lPDevice.getClass();
        str.getClass();
        LPDeviceSettings deviceSettings = lPDevice.getDeviceSettings();
        if (deviceSettings != null) {
            deviceSettings.setDeviceName(str, new LPDeviceSettingsListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkConfigHelper$setDeviceName$1
                @Override // com.linkplay.core.device.LPDeviceSettingsListener
                public final void failure(Exception exc) {
                    exc.getClass();
                    Function0 function2 = function1;
                    if (function2 != null) {
                        function2.mo47invoke();
                    }
                }

                @Override // com.linkplay.core.device.LPDeviceSettingsListener
                public final void success(String str2) {
                    str2.getClass();
                    Function0 function2 = function0;
                    if (function2 != null) {
                        function2.mo47invoke();
                    }
                }
            });
        }
    }
}
