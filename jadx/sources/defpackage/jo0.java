package defpackage;

import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SeekDirection;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.BottomSheetScreen;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jo0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f71441c;

    public /* synthetic */ jo0(Function1 function1, int i2) {
        this.f71440b = i2;
        this.f71441c = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71440b;
        Function1 function1 = this.f71441c;
        switch (i2) {
            case 0:
                String str = (String) obj;
                str.getClass();
                function1.invoke(str);
                return Unit.f71739a;
            case 1:
                SeekDirection seekDirection = (SeekDirection) obj;
                seekDirection.getClass();
                function1.invoke(new ImmersiveArticleTrackingUiModel.OnPlusOrLessButtonClickEvent(seekDirection));
                return Unit.f71739a;
            case 2:
                Float f2 = (Float) obj;
                f2.floatValue();
                float f3 = PodcastTrackSliderKt.f58900a;
                function1.invoke(f2);
                return Unit.f71739a;
            case 3:
                ((CareServiceDetailUiModel) obj).getClass();
                function1.invoke(BottomSheetScreen.BottomSheetRescheduleCalendar.f63787a);
                return Unit.f71739a;
            case 4:
                LVSwitchLegalState lVSwitchLegalState = (LVSwitchLegalState) obj;
                lVSwitchLegalState.getClass();
                function1.invoke(Boolean.valueOf(lVSwitchLegalState != LVSwitchLegalState.ACCEPTED));
                return Unit.f71739a;
            case 5:
                av0 av0Var = SnapshotKt.f8481a;
                Snapshot snapshot = (Snapshot) function1.invoke((SnapshotIdSet) obj);
                synchronized (SnapshotKt.f8483c) {
                    SnapshotKt.d = SnapshotKt.d.m(snapshot.getF8464b());
                }
                return snapshot;
            case 6:
                LPDevice lPDevice = (LPDevice) obj;
                SpeakerTrunkEqualizerFragment.Companion companion = SpeakerTrunkEqualizerFragment.M;
                lPDevice.getClass();
                function1.invoke(lPDevice);
                return Unit.f71739a;
            case 7:
                Long l = (Long) obj;
                l.getClass();
                return function1.invoke(l);
            default:
                return new SwipeToDismissBoxState((SwipeToDismissBoxValue) obj, function1);
        }
    }
}
