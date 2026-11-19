package defpackage;

import com.linkplay.core.device.ILPDevicePlayer;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.listener.LPDevicePlayerListener;
import com.linkplay.lpmdpkit.observer.LPDeviceObserverManager;
import com.linkplay.medialib.ContentTree;
import com.linkplay.passthrough.LPPassthrough;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k01 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpeakerTrunkEqualizerFragment f71513c;
    public final /* synthetic */ int d;

    public /* synthetic */ k01(int i2, SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment) {
        this.f71512b = 2;
        this.d = i2;
        this.f71513c = speakerTrunkEqualizerFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2;
        int i3;
        String strK;
        String str;
        int i4 = this.f71512b;
        int i5 = 0;
        int i6 = this.d;
        final SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f71513c;
        LPDevice lPDevice = (LPDevice) obj;
        switch (i4) {
            case 0:
                lPDevice.getClass();
                LPPassthrough lPPassthrough = speakerTrunkEqualizerFragment.I;
                if (lPPassthrough != null) {
                    while (true) {
                        if (i5 >= 11) {
                            i2 = 206;
                        } else if (i6 == i5) {
                            i2 = i5 + 201;
                        } else {
                            i5++;
                        }
                    }
                    lPPassthrough.write("MCU+PAS+" + i2 + "&");
                }
                break;
            case 1:
                lPDevice.getClass();
                LPPassthrough lPPassthrough2 = speakerTrunkEqualizerFragment.I;
                if (lPPassthrough2 != null) {
                    while (true) {
                        if (i5 >= 11) {
                            i3 = 106;
                        } else if (i6 == i5) {
                            i3 = i5 + 101;
                        } else {
                            i5++;
                        }
                    }
                    lPPassthrough2.write("MCU+PAS+" + i3 + "&");
                }
                break;
            case 2:
                lPDevice.getClass();
                ILPDevicePlayer player = lPDevice.getPlayer();
                if (player != null) {
                    player.setProgress(i6, new LPDevicePlayerListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$setupPlayProgress$1$onStopTrackingTouch$1$1
                        @Override // com.linkplay.core.listener.LPDevicePlayerListener
                        public final void onFailure(Exception exc) {
                            exc.getClass();
                            LPDeviceObserverManager.getInstance().register(speakerTrunkEqualizerFragment);
                        }

                        @Override // com.linkplay.core.listener.LPDevicePlayerListener
                        public final void onSuccess(String str2) {
                            str2.getClass();
                        }
                    });
                }
                break;
            default:
                lPDevice.getClass();
                LPPassthrough lPPassthrough3 = speakerTrunkEqualizerFragment.I;
                if (lPPassthrough3 != null) {
                    if (i6 < 10) {
                        str = "00";
                    } else {
                        if (10 > i6 || i6 >= 100) {
                            strK = "100";
                        } else {
                            str = ContentTree.ROOT_ID;
                        }
                        lPPassthrough3.write("MCU+VOL+" + strK + "&");
                    }
                    strK = pq0.k(i6, str);
                    lPPassthrough3.write("MCU+VOL+" + strK + "&");
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ k01(SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment, int i2, int i3) {
        this.f71512b = i3;
        this.f71513c = speakerTrunkEqualizerFragment;
        this.d = i2;
    }
}
