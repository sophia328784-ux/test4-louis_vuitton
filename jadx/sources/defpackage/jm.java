package defpackage;

import android.widget.CompoundButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.MaterialCheckable;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jm implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71432c;

    public /* synthetic */ jm(Object obj, int i2) {
        this.f71431b = i2;
        this.f71432c = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i2 = this.f71431b;
        Object obj = this.f71432c;
        switch (i2) {
            case 0:
                Chip chip = (Chip) obj;
                MaterialCheckable.OnCheckedChangeListener onCheckedChangeListener = chip.f32490k;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.a(chip, z);
                }
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener2 = chip.f32489j;
                if (onCheckedChangeListener2 != null) {
                    onCheckedChangeListener2.onCheckedChanged(compoundButton, z);
                    return;
                }
                return;
            default:
                OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                OpenChatInfoViewModel openChatInfoViewModel = ((OpenChatInfoFragment) obj).B;
                if (openChatInfoViewModel == null) {
                    Intrinsics.h("viewModel");
                    throw null;
                }
                openChatInfoViewModel.g.setValue(Boolean.valueOf(z));
                SensorsDataAutoTrackHelper.trackViewOnClick(compoundButton);
                return;
        }
    }
}
