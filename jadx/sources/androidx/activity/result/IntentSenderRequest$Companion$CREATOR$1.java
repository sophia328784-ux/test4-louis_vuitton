package androidx.activity.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/activity/result/IntentSenderRequest$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Landroidx/activity/result/IntentSenderRequest;", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IntentSenderRequest$Companion$CREATOR$1 implements Parcelable.Creator<IntentSenderRequest> {
    @Override // android.os.Parcelable.Creator
    public final IntentSenderRequest createFromParcel(Parcel parcel) {
        parcel.getClass();
        return new IntentSenderRequest(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final IntentSenderRequest[] newArray(int i2) {
        return new IntentSenderRequest[i2];
    }
}
