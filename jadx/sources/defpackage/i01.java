package defpackage;

import android.R;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.content.ContextCompat;
import com.google.android.material.snackbar.Snackbar;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.status.LPPlayStatus;
import com.linkplay.core.utils.ToolsUtil;
import com.linkplay.mediainfo.LPMediaInfo;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerEqualizerBinding;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i01 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpeakerTrunkEqualizerFragment f69834c;

    public /* synthetic */ i01(int i2, SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment) {
        this.f69833b = i2;
        this.f69834c = speakerTrunkEqualizerFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LPMediaInfo mediaInfo;
        LPMediaInfo mediaInfo2;
        LPMediaInfo mediaInfo3;
        LPMediaInfo mediaInfo4;
        LPMediaInfo mediaInfo5;
        boolean zK;
        int i2 = this.f69833b;
        String album = null;
        SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f69834c;
        switch (i2) {
            case 0:
                SpeakerTrunkEqualizerFragment.Companion companion = SpeakerTrunkEqualizerFragment.M;
                LPDevice lPDeviceR = speakerTrunkEqualizerFragment.R();
                long totalTime = 0;
                long tickTime = (lPDeviceR == null || (mediaInfo2 = lPDeviceR.getMediaInfo()) == null) ? 0L : mediaInfo2.getTickTime();
                if (lPDeviceR != null && (mediaInfo = lPDeviceR.getMediaInfo()) != null) {
                    totalTime = mediaInfo.getTotalTime();
                }
                if (totalTime > 10000) {
                    totalTime /= 1000;
                }
                AppCompatSeekBar appCompatSeekBar = speakerTrunkEqualizerFragment.P().f51342f;
                appCompatSeekBar.setMax((int) totalTime);
                appCompatSeekBar.setProgress((int) tickTime);
                break;
            case 1:
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                LPDevice lPDeviceR2 = speakerTrunkEqualizerFragment.R();
                FragmentTrunkSpeakerEqualizerBinding fragmentTrunkSpeakerEqualizerBindingP = speakerTrunkEqualizerFragment.P();
                fragmentTrunkSpeakerEqualizerBindingP.n.setText((lPDeviceR2 == null || (mediaInfo5 = lPDeviceR2.getMediaInfo()) == null) ? null : mediaInfo5.getTitle());
                fragmentTrunkSpeakerEqualizerBindingP.m.setText((lPDeviceR2 == null || (mediaInfo4 = lPDeviceR2.getMediaInfo()) == null) ? null : mediaInfo4.getArtist());
                TextView textView = fragmentTrunkSpeakerEqualizerBindingP.l;
                if (lPDeviceR2 != null && (mediaInfo3 = lPDeviceR2.getMediaInfo()) != null) {
                    album = mediaInfo3.getAlbum();
                }
                textView.setText(album);
                break;
            case 2:
                SpeakerTrunkEqualizerFragment.Companion companion3 = SpeakerTrunkEqualizerFragment.M;
                LPDevice lPDeviceR3 = speakerTrunkEqualizerFragment.R();
                FragmentTrunkSpeakerEqualizerBinding fragmentTrunkSpeakerEqualizerBindingP2 = speakerTrunkEqualizerFragment.P();
                TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                if (lPDeviceR3 == null) {
                    zK = false;
                } else {
                    String playUri = lPDeviceR3.getMediaInfo().getPlayUri();
                    playUri.getClass();
                    zK = StringsKt.k(playUri, ":episode:", false);
                }
                if (zK) {
                    fragmentTrunkSpeakerEqualizerBindingP2.g.setVisibility(0);
                    fragmentTrunkSpeakerEqualizerBindingP2.f51343h.setVisibility(0);
                } else {
                    fragmentTrunkSpeakerEqualizerBindingP2.g.setVisibility(4);
                    fragmentTrunkSpeakerEqualizerBindingP2.f51343h.setVisibility(4);
                }
                if (!ToolsUtil.isSpotifyTrackSource(lPDeviceR3)) {
                    fragmentTrunkSpeakerEqualizerBindingP2.f51342f.setOnTouchListener(null);
                    fragmentTrunkSpeakerEqualizerBindingP2.f51346k.setVisibility(4);
                    fragmentTrunkSpeakerEqualizerBindingP2.f51344i.setVisibility(4);
                } else if (lPDeviceR3 == null || !Intrinsics.c(lPDeviceR3.getMediaInfo().getMediaType(), "SPOTIFY") || lPDeviceR3.getMediaInfo().getSkiplimit() == 0) {
                    ImageView imageView = fragmentTrunkSpeakerEqualizerBindingP2.f51346k;
                    AppCompatSeekBar appCompatSeekBar2 = fragmentTrunkSpeakerEqualizerBindingP2.f51342f;
                    imageView.setVisibility(0);
                    fragmentTrunkSpeakerEqualizerBindingP2.f51344i.setVisibility(0);
                    appCompatSeekBar2.setOnTouchListener(null);
                    appCompatSeekBar2.setThumb(ContextCompat.getDrawable(speakerTrunkEqualizerFragment.requireContext(), 2131231627));
                } else {
                    ImageView imageView2 = fragmentTrunkSpeakerEqualizerBindingP2.f51346k;
                    AppCompatSeekBar appCompatSeekBar3 = fragmentTrunkSpeakerEqualizerBindingP2.f51342f;
                    imageView2.setVisibility(4);
                    fragmentTrunkSpeakerEqualizerBindingP2.f51344i.setVisibility(4);
                    appCompatSeekBar3.setOnTouchListener(new wu0(1));
                    appCompatSeekBar3.setThumb(null);
                }
                break;
            case 3:
                SpeakerTrunkEqualizerFragment.Companion companion4 = SpeakerTrunkEqualizerFragment.M;
                Snackbar.g(speakerTrunkEqualizerFragment.requireActivity().findViewById(R.id.content), "No media present", -1).h();
                break;
            case 4:
                SpeakerTrunkEqualizerFragment.Companion companion5 = SpeakerTrunkEqualizerFragment.M;
                Snackbar.g(speakerTrunkEqualizerFragment.requireActivity().findViewById(R.id.content), speakerTrunkEqualizerFragment.getString(com.vuitton.android.R.string.error_generic), -1).h();
                break;
            case 5:
                SpeakerTrunkEqualizerFragment.Companion companion6 = SpeakerTrunkEqualizerFragment.M;
                Snackbar.g(speakerTrunkEqualizerFragment.requireActivity().findViewById(R.id.content), speakerTrunkEqualizerFragment.getString(com.vuitton.android.R.string.error_generic), -1).h();
                break;
            case 6:
                SpeakerTrunkEqualizerFragment.Companion companion7 = SpeakerTrunkEqualizerFragment.M;
                ImageView imageView3 = speakerTrunkEqualizerFragment.P().f51345j;
                TrunkGeneralHelper trunkGeneralHelper2 = TrunkGeneralHelper.f56577a;
                LPDevice lPDeviceR4 = speakerTrunkEqualizerFragment.R();
                imageView3.setImageResource((lPDeviceR4 != null && lPDeviceR4.getDeviceInfo().getPlayStatus() == LPPlayStatus.LP_PLAY_STATUS_PLAYING) ? 2131231618 : 2131231619);
                break;
            case 7:
                Snackbar.g(speakerTrunkEqualizerFragment.requireActivity().findViewById(R.id.content), speakerTrunkEqualizerFragment.getString(com.vuitton.android.R.string.error_generic), -1).h();
                break;
            default:
                Snackbar.g(speakerTrunkEqualizerFragment.requireActivity().findViewById(R.id.content), speakerTrunkEqualizerFragment.getString(com.vuitton.android.R.string.error_generic), -1).h();
                break;
        }
    }
}
