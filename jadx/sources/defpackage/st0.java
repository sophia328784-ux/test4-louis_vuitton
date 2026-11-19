package defpackage;

import com.linkplay.core.device.LPDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class st0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RoomDetailFragment f79877c;

    public /* synthetic */ st0(RoomDetailFragment roomDetailFragment, int i2) {
        this.f79876b = i2;
        this.f79877c = roomDetailFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79876b;
        RoomDetailFragment roomDetailFragment = this.f79877c;
        LPDevice lPDevice = (LPDevice) obj;
        List list = (List) obj2;
        switch (i2) {
            case 0:
                RoomDetailFragment.O(roomDetailFragment, lPDevice, list);
                break;
            default:
                RoomDetailFragment.O(roomDetailFragment, lPDevice, list);
                break;
        }
        return Unit.f71739a;
    }
}
