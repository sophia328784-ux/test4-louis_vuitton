package com.dynatrace.android.ragetap.detection;

/* JADX INFO: loaded from: classes2.dex */
public class TapData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TapEventData f27709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TapEventData f27710b;

    public TapData(TapEventData tapEventData, TapEventData tapEventData2) {
        this.f27709a = tapEventData;
        this.f27710b = tapEventData2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TapData tapData = (TapData) obj;
            if (this.f27709a.equals(tapData.f27709a) && this.f27710b.equals(tapData.f27710b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f27710b.hashCode() + (this.f27709a.hashCode() * 31);
    }

    public final String toString() {
        return "TapData{tapDown=" + this.f27709a + ", tapUp=" + this.f27710b + '}';
    }
}
