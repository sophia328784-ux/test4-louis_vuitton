package defpackage;

import android.R;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.snackbar.Snackbar;
import com.lightup.sdk.animation.CreatorProject;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpPresetAdapter;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v90 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LightUpDetailFragment f80538c;

    public /* synthetic */ v90(LightUpDetailFragment lightUpDetailFragment, int i2) {
        this.f80537b = i2;
        this.f80538c = lightUpDetailFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LightUpPresetAdapter lightUpPresetAdapterH0;
        int i2 = this.f80537b;
        LightUpDetailFragment lightUpDetailFragment = this.f80538c;
        switch (i2) {
            case 0:
                LightUpDetailFragment.Companion companion = LightUpDetailFragment.INSTANCE;
                Snackbar.g(lightUpDetailFragment.requireActivity().findViewById(R.id.content), lightUpDetailFragment.getString(com.vuitton.android.R.string.light_up_presets_not_available_message), 0).h();
                break;
            case 1:
                LightUpDetailFragment.Companion companion2 = LightUpDetailFragment.INSTANCE;
                Snackbar.g(lightUpDetailFragment.requireActivity().findViewById(R.id.content), lightUpDetailFragment.getString(com.vuitton.android.R.string.light_up_update_animation_required_notification), 0).h();
                break;
            case 2:
                LightUpDetailFragment.R(lightUpDetailFragment);
                break;
            case 3:
                LightUpDetailFragment.Companion companion3 = LightUpDetailFragment.INSTANCE;
                Snackbar.g(lightUpDetailFragment.requireActivity().findViewById(R.id.content), lightUpDetailFragment.getString(com.vuitton.android.R.string.error_unpairing_light_up), -1).h();
                break;
            case 4:
                LightUpDetailFragment.Companion companion4 = LightUpDetailFragment.INSTANCE;
                CreatorProject creatorProjectB = LVLightUpHelper.b();
                if (creatorProjectB != null && (lightUpPresetAdapterH0 = lightUpDetailFragment.h0()) != null) {
                    String id = creatorProjectB.getId();
                    id.getClass();
                    int iA = lightUpPresetAdapterH0.a(id);
                    FragmentActivity activity = lightUpDetailFragment.getActivity();
                    if (activity != null) {
                        activity.runOnUiThread(new q6(lightUpDetailFragment, creatorProjectB, iA, 7));
                    }
                    break;
                }
                break;
            case 5:
                LightUpDetailFragment.Companion companion5 = LightUpDetailFragment.INSTANCE;
                lightUpDetailFragment.k0();
                lightUpDetailFragment.e0().f51279k.f(33);
                break;
            case 6:
                LightUpDetailFragment.Companion companion6 = LightUpDetailFragment.INSTANCE;
                Snackbar.g(lightUpDetailFragment.requireActivity().findViewById(R.id.content), lightUpDetailFragment.getString(com.vuitton.android.R.string.error_unpairing_light_up), -1).h();
                break;
            case 7:
                Snackbar.g(lightUpDetailFragment.requireActivity().findViewById(R.id.content), lightUpDetailFragment.getString(com.vuitton.android.R.string.error_animation_cannot_play), -1).h();
                break;
            case 8:
                Snackbar.g(lightUpDetailFragment.requireActivity().findViewById(R.id.content), lightUpDetailFragment.getString(com.vuitton.android.R.string.error_unpairing_light_up), -1).h();
                break;
            default:
                Snackbar.g(lightUpDetailFragment.requireActivity().findViewById(R.id.content), lightUpDetailFragment.getString(com.vuitton.android.R.string.error_light_up_device_update), -1).h();
                break;
        }
    }
}
