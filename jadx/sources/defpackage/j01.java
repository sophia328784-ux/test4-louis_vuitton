package defpackage;

import android.os.Handler;
import com.linkplay.core.device.LPDevice;
import com.linkplay.lpmdpkit.observer.LPNotification;
import com.linkplay.lpmdpkit.observer.LPNotificationType;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j01 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LPNotification f71251c;
    public final /* synthetic */ SpeakerTrunkEqualizerFragment d;

    public /* synthetic */ j01(LPNotification lPNotification, SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment, int i2) {
        this.f71250b = i2;
        this.f71251c = lPNotification;
        this.d = speakerTrunkEqualizerFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Handler handler;
        Handler handler2;
        int i2 = this.f71250b;
        SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.d;
        LPNotification lPNotification = this.f71251c;
        LPDevice lPDevice = (LPDevice) obj;
        switch (i2) {
            case 0:
                SpeakerTrunkEqualizerFragment.Companion companion = SpeakerTrunkEqualizerFragment.M;
                lPDevice.getClass();
                if (Intrinsics.c(lPNotification.getUuid(), lPDevice.getUpnpUUID())) {
                    LPNotificationType type = lPNotification.getType();
                    int i3 = type != null ? SpeakerTrunkEqualizerFragment.WhenMappings.f56479a[type.ordinal()] : -1;
                    if (i3 == 1) {
                        Handler handler3 = speakerTrunkEqualizerFragment.J;
                        if (handler3 != null) {
                            handler3.sendEmptyMessage(1);
                        }
                    } else if (i3 == 2 && (handler = speakerTrunkEqualizerFragment.J) != null) {
                        handler.sendEmptyMessage(2);
                    }
                }
                break;
            default:
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                lPDevice.getClass();
                if (Intrinsics.c(lPNotification.getUuid(), lPDevice.getUpnpUUID())) {
                    LPNotificationType type2 = lPNotification.getType();
                    if ((type2 != null ? SpeakerTrunkEqualizerFragment.WhenMappings.f56479a[type2.ordinal()] : -1) == 1 && (handler2 = speakerTrunkEqualizerFragment.J) != null) {
                        handler2.sendEmptyMessage(1);
                    }
                }
                break;
        }
        return Unit.f71739a;
    }
}
