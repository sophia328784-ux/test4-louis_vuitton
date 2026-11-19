package com.dynatrace.android.ragetap.detection;

import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public class RageTap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TapData f27696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TapData f27697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27698c;

    public RageTap(TapData tapData, TapData tapData2, int i2) {
        this.f27696a = tapData;
        this.f27697b = tapData2;
        this.f27698c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            RageTap rageTap = (RageTap) obj;
            if (this.f27698c == rageTap.f27698c && this.f27696a.equals(rageTap.f27696a) && this.f27697b.equals(rageTap.f27697b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f27697b.hashCode() + (this.f27696a.hashCode() * 31)) * 31) + this.f27698c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RageTap{firstTap=");
        sb.append(this.f27696a);
        sb.append(", lastTap=");
        sb.append(this.f27697b);
        sb.append(", numOfTaps=");
        return tr.k(sb, this.f27698c, '}');
    }
}
