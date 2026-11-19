package defpackage;

import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.linkplay.core.device.ILPDevicePlayer;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.listener.LPDevicePlayerListener;
import com.linkplay.core.status.LPPlayStatus;
import com.linkplay.passthrough.LPPassthrough;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import defpackage.i01;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h01 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpeakerTrunkEqualizerFragment f69546c;

    public /* synthetic */ h01(int i2, SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment) {
        this.f69545b = i2;
        this.f69546c = speakerTrunkEqualizerFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FragmentManager supportFragmentManager;
        int i2 = this.f69545b;
        int i3 = 4;
        int i4 = 2;
        final SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f69546c;
        switch (i2) {
            case 0:
                SpeakerTrunkEqualizerFragment.Companion companion = SpeakerTrunkEqualizerFragment.M;
                ((View) obj).getClass();
                TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                TrunkGeneralHelper.d(speakerTrunkEqualizerFragment.getActivity(), speakerTrunkEqualizerFragment.R(), new h01(7, speakerTrunkEqualizerFragment), null, 24);
                return Unit.f71739a;
            case 1:
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                ((View) obj).getClass();
                TrunkGeneralHelper trunkGeneralHelper2 = TrunkGeneralHelper.f56577a;
                TrunkGeneralHelper.d(speakerTrunkEqualizerFragment.getActivity(), speakerTrunkEqualizerFragment.R(), new h01(i3, speakerTrunkEqualizerFragment), null, 24);
                return Unit.f71739a;
            case 2:
                SpeakerTrunkEqualizerFragment.Companion companion3 = SpeakerTrunkEqualizerFragment.M;
                ((View) obj).getClass();
                speakerTrunkEqualizerFragment.U(-15);
                return Unit.f71739a;
            case 3:
                SpeakerTrunkEqualizerFragment.Companion companion4 = SpeakerTrunkEqualizerFragment.M;
                ((View) obj).getClass();
                speakerTrunkEqualizerFragment.U(15);
                return Unit.f71739a;
            case 4:
                LPDevice lPDevice = (LPDevice) obj;
                SpeakerTrunkEqualizerFragment.Companion companion5 = SpeakerTrunkEqualizerFragment.M;
                lPDevice.getClass();
                ILPDevicePlayer player = lPDevice.getPlayer();
                if (player != null) {
                    player.previous(new LPDevicePlayerListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$playPreviousSong$1$1
                        @Override // com.linkplay.core.listener.LPDevicePlayerListener
                        public final void onFailure(Exception exc) {
                            exc.getClass();
                            SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment2 = speakerTrunkEqualizerFragment;
                            speakerTrunkEqualizerFragment2.requireActivity().runOnUiThread(new i01(8, speakerTrunkEqualizerFragment2));
                        }

                        @Override // com.linkplay.core.listener.LPDevicePlayerListener
                        public final void onSuccess(String str) {
                            str.getClass();
                            SpeakerTrunkEqualizerFragment.Companion companion6 = SpeakerTrunkEqualizerFragment.M;
                            SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment2 = speakerTrunkEqualizerFragment;
                            speakerTrunkEqualizerFragment2.S();
                            speakerTrunkEqualizerFragment2.T();
                        }
                    });
                }
                return Unit.f71739a;
            case 5:
                SpeakerTrunkEqualizerFragment.Companion companion6 = SpeakerTrunkEqualizerFragment.M;
                ((LPDevice) obj).getClass();
                if (speakerTrunkEqualizerFragment.getContext() != null) {
                    speakerTrunkEqualizerFragment.S();
                    synchronized (speakerTrunkEqualizerFragment) {
                        FragmentActivity activity = speakerTrunkEqualizerFragment.getActivity();
                        if (activity != null) {
                            activity.runOnUiThread(new i01(i4, speakerTrunkEqualizerFragment));
                        }
                        break;
                    }
                    speakerTrunkEqualizerFragment.T();
                }
                return Unit.f71739a;
            case 6:
                LPDevice lPDevice2 = (LPDevice) obj;
                SpeakerTrunkEqualizerFragment.Companion companion7 = SpeakerTrunkEqualizerFragment.M;
                lPDevice2.getClass();
                if (speakerTrunkEqualizerFragment.getContext() != null) {
                    TrunkGeneralHelper trunkGeneralHelper3 = TrunkGeneralHelper.f56577a;
                    int i5 = 3;
                    if (lPDevice2.getDeviceInfo().getPlayStatus() == LPPlayStatus.LP_PLAY_STATUS_NO_MEDIA_PRESENT) {
                        speakerTrunkEqualizerFragment.requireActivity().runOnUiThread(new i01(i5, speakerTrunkEqualizerFragment));
                    } else if (lPDevice2.getDeviceInfo().getPlayStatus() == LPPlayStatus.LP_PLAY_STATUS_PLAYING) {
                        final g01 g01Var = new g01(i4, speakerTrunkEqualizerFragment);
                        final g01 g01Var2 = new g01(i5, speakerTrunkEqualizerFragment);
                        ILPDevicePlayer player2 = lPDevice2.getPlayer();
                        if (player2 != null) {
                            player2.pause(new LPDevicePlayerListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkConfigHelper$pause$1
                                @Override // com.linkplay.core.listener.LPDevicePlayerListener
                                public final void onFailure(Exception exc) {
                                    exc.getClass();
                                    g01Var2.mo47invoke();
                                }

                                @Override // com.linkplay.core.listener.LPDevicePlayerListener
                                public final void onSuccess(String str) {
                                    str.getClass();
                                    g01Var.mo47invoke();
                                }
                            });
                        }
                    } else {
                        final g01 g01Var3 = new g01(i3, speakerTrunkEqualizerFragment);
                        final g01 g01Var4 = new g01(5, speakerTrunkEqualizerFragment);
                        ILPDevicePlayer player3 = lPDevice2.getPlayer();
                        if (player3 != null) {
                            player3.play(new LPDevicePlayerListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkConfigHelper$play$1
                                @Override // com.linkplay.core.listener.LPDevicePlayerListener
                                public final void onFailure(Exception exc) {
                                    exc.getClass();
                                    g01Var4.mo47invoke();
                                }

                                @Override // com.linkplay.core.listener.LPDevicePlayerListener
                                public final void onSuccess(String str) {
                                    str.getClass();
                                    g01Var3.mo47invoke();
                                }
                            });
                        }
                    }
                }
                return Unit.f71739a;
            case 7:
                LPDevice lPDevice3 = (LPDevice) obj;
                SpeakerTrunkEqualizerFragment.Companion companion8 = SpeakerTrunkEqualizerFragment.M;
                lPDevice3.getClass();
                ILPDevicePlayer player4 = lPDevice3.getPlayer();
                if (player4 != null) {
                    player4.next(new LPDevicePlayerListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$playNextSong$1$1
                        @Override // com.linkplay.core.listener.LPDevicePlayerListener
                        public final void onFailure(Exception exc) {
                            exc.getClass();
                            SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment2 = speakerTrunkEqualizerFragment;
                            speakerTrunkEqualizerFragment2.requireActivity().runOnUiThread(new i01(7, speakerTrunkEqualizerFragment2));
                        }

                        @Override // com.linkplay.core.listener.LPDevicePlayerListener
                        public final void onSuccess(String str) {
                            str.getClass();
                            SpeakerTrunkEqualizerFragment.Companion companion9 = SpeakerTrunkEqualizerFragment.M;
                            SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment2 = speakerTrunkEqualizerFragment;
                            speakerTrunkEqualizerFragment2.S();
                            speakerTrunkEqualizerFragment2.T();
                        }
                    });
                }
                return Unit.f71739a;
            case 8:
                SpeakerTrunkEqualizerFragment.Companion companion9 = SpeakerTrunkEqualizerFragment.M;
                ((View) obj).getClass();
                FragmentActivity activity2 = speakerTrunkEqualizerFragment.getActivity();
                if (activity2 != null && (supportFragmentManager = activity2.getSupportFragmentManager()) != null) {
                    supportFragmentManager.V();
                }
                return Unit.f71739a;
            case 9:
                LPDevice lPDevice4 = (LPDevice) obj;
                SpeakerTrunkEqualizerFragment.Companion companion10 = SpeakerTrunkEqualizerFragment.M;
                lPDevice4.getClass();
                speakerTrunkEqualizerFragment.P().d.setProgress(lPDevice4.getDeviceStatus().getCurrentVolume());
                return Unit.f71739a;
            case 10:
                SpeakerTrunkEqualizerFragment.Companion companion11 = SpeakerTrunkEqualizerFragment.M;
                ((LPDevice) obj).getClass();
                if (speakerTrunkEqualizerFragment.I == null) {
                    speakerTrunkEqualizerFragment.I = new LPPassthrough(speakerTrunkEqualizerFragment.Q(), speakerTrunkEqualizerFragment);
                }
                LPPassthrough lPPassthrough = speakerTrunkEqualizerFragment.I;
                if (lPPassthrough != null) {
                    lPPassthrough.connect();
                }
                return Unit.f71739a;
            default:
                SpeakerTrunkEqualizerFragment.Companion companion12 = SpeakerTrunkEqualizerFragment.M;
                ((View) obj).getClass();
                TrunkGeneralHelper trunkGeneralHelper4 = TrunkGeneralHelper.f56577a;
                TrunkGeneralHelper.d(speakerTrunkEqualizerFragment.getActivity(), speakerTrunkEqualizerFragment.R(), new h01(6, speakerTrunkEqualizerFragment), null, 24);
                return Unit.f71739a;
        }
    }
}
