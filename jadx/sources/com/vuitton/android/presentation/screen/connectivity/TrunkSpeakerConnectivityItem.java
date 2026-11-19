package com.vuitton.android.presentation.screen.connectivity;

import com.linkplay.core.device.LPDevice;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;", "Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;", "Ljava/util/ArrayList;", "Lcom/linkplay/core/device/LPDevice;", "Lkotlin/collections/ArrayList;", "deviceList", "<init>", "(Ljava/util/ArrayList;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TrunkSpeakerConnectivityItem extends ConnectedObjectUiModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f55967b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrunkSpeakerConnectivityItem(ArrayList<LPDevice> arrayList) {
        super(null);
        arrayList.getClass();
        this.f55967b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TrunkSpeakerConnectivityItem) && Intrinsics.c(this.f55967b, ((TrunkSpeakerConnectivityItem) obj).f55967b);
    }

    public final int hashCode() {
        return this.f55967b.hashCode();
    }

    public final String toString() {
        return "TrunkSpeakerConnectivityItem(deviceList=" + this.f55967b + ")";
    }
}
