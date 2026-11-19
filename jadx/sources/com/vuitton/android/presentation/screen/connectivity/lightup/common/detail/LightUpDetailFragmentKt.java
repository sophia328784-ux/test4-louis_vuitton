package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import android.content.Context;
import com.lightup.sdk.device.enums.DeviceMode;
import com.vuitton.android.R;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LightUpDetailFragmentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f56130b;

        static {
            int[] iArr = new int[LVLightUpPowerMode.values().length];
            try {
                iArr[LVLightUpPowerMode.ECO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVLightUpPowerMode.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LVLightUpPowerMode.STANDBY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LVLightUpPowerMode.ALWAYS_ON.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LVLightUpPowerMode.WALKING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LVLightUpPowerMode.DISCREET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f56129a = iArr;
            int[] iArr2 = new int[DeviceMode.values().length];
            try {
                iArr2[DeviceMode.STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[DeviceMode.ECO.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[DeviceMode.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[DeviceMode.ALWAYS_ON.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[DeviceMode.WALKING.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[DeviceMode.MERCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[DeviceMode.DISCREET.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            f56130b = iArr2;
        }
    }

    public static final String a(LVLightUpPowerMode lVLightUpPowerMode, Context context) {
        String string;
        lVLightUpPowerMode.getClass();
        context.getClass();
        switch (WhenMappings.f56129a[lVLightUpPowerMode.ordinal()]) {
            case 1:
                string = context.getString(R.string.power_mode_low);
                break;
            case 2:
                string = context.getString(R.string.power_mode_normal);
                break;
            case 3:
                string = context.getString(R.string.power_mode_standby);
                break;
            case 4:
                string = context.getString(R.string.power_mode_always_on);
                break;
            case 5:
                string = context.getString(R.string.power_mode_walking);
                break;
            case 6:
                string = context.getString(R.string.power_mode_discreet);
                break;
            default:
                v40.g();
                return null;
        }
        string.getClass();
        return string;
    }
}
