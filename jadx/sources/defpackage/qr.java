package defpackage;

import android.os.Handler;
import android.os.Message;
import androidx.fragment.app.FragmentActivity;
import com.kakao.sdk.auth.CustomTabLauncherActivity;
import com.kakao.sdk.common.model.ClientError;
import com.kakao.sdk.common.model.ClientErrorCause;
import com.kakao.sdk.common.util.SdkLog;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qr implements Handler.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79144c;

    public /* synthetic */ qr(Object obj, int i2) {
        this.f79143b = i2;
        this.f79144c = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = this.f79143b;
        int i3 = 2;
        Object obj = this.f79144c;
        switch (i2) {
            case 0:
                int i4 = CustomTabLauncherActivity.n;
                message.getClass();
                SdkLog.d.getClass();
                SdkLog.Companion.b("handle delay message");
                ((CustomTabLauncherActivity) obj).w(new ClientError(ClientErrorCause.Cancelled, null, i3, 0 == true ? 1 : 0));
                return true;
            default:
                SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = (SpeakerTrunkEqualizerFragment) obj;
                SpeakerTrunkEqualizerFragment.Companion companion = SpeakerTrunkEqualizerFragment.M;
                message.getClass();
                int i5 = message.what;
                int i6 = 0;
                if (i5 == 1) {
                    speakerTrunkEqualizerFragment.S();
                    synchronized (speakerTrunkEqualizerFragment) {
                        FragmentActivity activity = speakerTrunkEqualizerFragment.getActivity();
                        if (activity != null) {
                            activity.runOnUiThread(new i01(i3, speakerTrunkEqualizerFragment));
                        }
                        break;
                    }
                } else if (i5 == 2) {
                    synchronized (speakerTrunkEqualizerFragment) {
                        FragmentActivity activity2 = speakerTrunkEqualizerFragment.getActivity();
                        if (activity2 != null) {
                            activity2.runOnUiThread(new i01(i6, speakerTrunkEqualizerFragment));
                        }
                        break;
                    }
                    speakerTrunkEqualizerFragment.T();
                }
                return false;
        }
    }
}
