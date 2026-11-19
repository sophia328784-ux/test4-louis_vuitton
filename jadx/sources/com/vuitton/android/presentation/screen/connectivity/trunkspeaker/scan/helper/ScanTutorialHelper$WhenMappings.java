package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.helper;

import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerConnectionTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerTypeEnum;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class ScanTutorialHelper$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f56616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f56617b;

    static {
        int[] iArr = new int[TrunkSpeakerTypeEnum.values().length];
        try {
            iArr[TrunkSpeakerTypeEnum.GM.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[TrunkSpeakerTypeEnum.PM.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f56616a = iArr;
        int[] iArr2 = new int[TrunkSpeakerConnectionTypeEnum.values().length];
        try {
            iArr2[TrunkSpeakerConnectionTypeEnum.BLUETOOTH.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[TrunkSpeakerConnectionTypeEnum.WIFI.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        f56617b = iArr2;
    }
}
