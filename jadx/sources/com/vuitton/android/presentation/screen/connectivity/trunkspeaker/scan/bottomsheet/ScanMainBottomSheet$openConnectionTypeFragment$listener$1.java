package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet;

import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkSpeakerTypeEnum;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectionTypeFragment;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openConnectionTypeFragment$listener$1", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectionTypeFragment$Listener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScanMainBottomSheet$openConnectionTypeFragment$listener$1 implements ConnectionTypeFragment.Listener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TrunkSpeakerTypeEnum f56599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ScanMainBottomSheet f56600b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56601a;

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
            f56601a = iArr;
        }
    }

    public ScanMainBottomSheet$openConnectionTypeFragment$listener$1(TrunkSpeakerTypeEnum trunkSpeakerTypeEnum, ScanMainBottomSheet scanMainBottomSheet) {
        this.f56599a = trunkSpeakerTypeEnum;
        this.f56600b = scanMainBottomSheet;
    }
}
