package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.DialogUpdateTrunkSpeakerBinding;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.r81;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "UpdateStatus", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class TrunkUpdateLoadingDialogFragment extends Hilt_TrunkUpdateLoadingDialogFragment {
    public static final Companion H = new Companion(null);
    public static final String I = "TrunkUpdateLoadingDialogFragment";
    public final AlphaAnimation F;
    public DialogUpdateTrunkSpeakerBinding G;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkUpdateLoadingDialogFragment$UpdateStatus;", "", "DOWNLOAD", "INSTALL", "REBOOT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class UpdateStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UpdateStatus[] $VALUES;
        public static final UpdateStatus DOWNLOAD;
        public static final UpdateStatus INSTALL;
        public static final UpdateStatus REBOOT;

        static {
            UpdateStatus updateStatus = new UpdateStatus("DOWNLOAD", 0);
            DOWNLOAD = updateStatus;
            UpdateStatus updateStatus2 = new UpdateStatus("INSTALL", 1);
            INSTALL = updateStatus2;
            UpdateStatus updateStatus3 = new UpdateStatus("REBOOT", 2);
            REBOOT = updateStatus3;
            UpdateStatus[] updateStatusArr = {updateStatus, updateStatus2, updateStatus3};
            $VALUES = updateStatusArr;
            $ENTRIES = EnumEntriesKt.a(updateStatusArr);
        }

        public static UpdateStatus valueOf(String str) {
            return (UpdateStatus) Enum.valueOf(UpdateStatus.class, str);
        }

        public static UpdateStatus[] values() {
            return (UpdateStatus[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56465a;

        static {
            int[] iArr = new int[UpdateStatus.values().length];
            try {
                iArr[UpdateStatus.DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UpdateStatus.INSTALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UpdateStatus.REBOOT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f56465a = iArr;
        }
    }

    public TrunkUpdateLoadingDialogFragment() {
        setCancelable(false);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        alphaAnimation.setInterpolator(new LinearInterpolator());
        alphaAnimation.setRepeatCount(-1);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setDuration(1000L);
        this.F = alphaAnimation;
    }

    public final void O(UpdateStatus updateStatus) {
        updateStatus.getClass();
        DialogUpdateTrunkSpeakerBinding dialogUpdateTrunkSpeakerBinding = this.G;
        if (dialogUpdateTrunkSpeakerBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        TextView textView = dialogUpdateTrunkSpeakerBinding.d;
        TextView textView2 = dialogUpdateTrunkSpeakerBinding.f51222c;
        TextView textView3 = dialogUpdateTrunkSpeakerBinding.f51221b;
        int i2 = WhenMappings.f56465a[updateStatus.ordinal()];
        AlphaAnimation alphaAnimation = this.F;
        if (i2 == 1) {
            if (textView3.getAnimation() == null) {
                textView3.startAnimation(alphaAnimation);
            }
            textView2.clearAnimation();
            textView.clearAnimation();
            return;
        }
        if (i2 == 2) {
            textView3.clearAnimation();
            if (textView2.getAnimation() == null) {
                textView2.startAnimation(alphaAnimation);
            }
            textView.clearAnimation();
            return;
        }
        if (i2 != 3) {
            v40.g();
            return;
        }
        textView3.clearAnimation();
        textView2.clearAnimation();
        if (textView.getAnimation() == null) {
            textView.startAnimation(alphaAnimation);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.FullScreenLoader);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(R.layout.dialog_update_trunk_speaker, (ViewGroup) null, false);
        int i2 = R.id.image_lv_logo;
        if (((ImageView) ViewBindings.a(R.id.image_lv_logo, viewInflate)) != null) {
            i2 = R.id.progress;
            if (((ProgressBar) ViewBindings.a(R.id.progress, viewInflate)) != null) {
                i2 = R.id.text_download;
                TextView textView = (TextView) ViewBindings.a(R.id.text_download, viewInflate);
                if (textView != null) {
                    i2 = R.id.text_install;
                    TextView textView2 = (TextView) ViewBindings.a(R.id.text_install, viewInflate);
                    if (textView2 != null) {
                        i2 = R.id.text_reboot;
                        TextView textView3 = (TextView) ViewBindings.a(R.id.text_reboot, viewInflate);
                        if (textView3 != null) {
                            i2 = R.id.text_update_subtitle;
                            if (((TextView) ViewBindings.a(R.id.text_update_subtitle, viewInflate)) != null) {
                                RelativeLayout relativeLayout = (RelativeLayout) viewInflate;
                                this.G = new DialogUpdateTrunkSpeakerBinding(relativeLayout, textView, textView2, textView3);
                                relativeLayout.getClass();
                                return relativeLayout;
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        DialogUpdateTrunkSpeakerBinding dialogUpdateTrunkSpeakerBinding = this.G;
        if (dialogUpdateTrunkSpeakerBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        dialogUpdateTrunkSpeakerBinding.f51221b.clearAnimation();
        dialogUpdateTrunkSpeakerBinding.f51222c.clearAnimation();
        dialogUpdateTrunkSpeakerBinding.d.clearAnimation();
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.Hilt_TrunkUpdateLoadingDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        DialogUpdateTrunkSpeakerBinding dialogUpdateTrunkSpeakerBinding = this.G;
        if (dialogUpdateTrunkSpeakerBinding != null) {
            dialogUpdateTrunkSpeakerBinding.f51221b.startAnimation(this.F);
        } else {
            Intrinsics.h("binding");
            throw null;
        }
    }
}
