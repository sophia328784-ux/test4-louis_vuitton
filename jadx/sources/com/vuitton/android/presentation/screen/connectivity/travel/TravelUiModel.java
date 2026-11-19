package com.vuitton.android.presentation.screen.connectivity.travel;

import android.os.Parcelable;
import com.vuitton.foundation.model.domain.model.connectivity.travel.TravelType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TravelUiModel implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56351b;

    public TravelUiModel(String str, TravelType travelType, DefaultConstructorMarker defaultConstructorMarker) {
        this.f56351b = str;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public String getF56351b() {
        return this.f56351b;
    }
}
