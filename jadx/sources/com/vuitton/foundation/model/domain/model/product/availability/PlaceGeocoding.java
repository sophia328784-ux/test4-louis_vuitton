package com.vuitton.foundation.model.domain.model.product.availability;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;", "", "", "address", "", "centerLatitude", "centerLongitude", "northEastLatitude", "northEastLongitude", "southWestLatitude", "southWestLongitude", "<init>", "(Ljava/lang/String;DDDDDD)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PlaceGeocoding {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f67942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f67943c;
    public final double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f67944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f67945f;
    public final double g;

    public PlaceGeocoding(String str, double d, double d2, double d3, double d4, double d5, double d6) {
        str.getClass();
        this.f67941a = str;
        this.f67942b = d;
        this.f67943c = d2;
        this.d = d3;
        this.f67944e = d4;
        this.f67945f = d5;
        this.g = d6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceGeocoding)) {
            return false;
        }
        PlaceGeocoding placeGeocoding = (PlaceGeocoding) obj;
        return Intrinsics.c(this.f67941a, placeGeocoding.f67941a) && Double.compare(this.f67942b, placeGeocoding.f67942b) == 0 && Double.compare(this.f67943c, placeGeocoding.f67943c) == 0 && Double.compare(this.d, placeGeocoding.d) == 0 && Double.compare(this.f67944e, placeGeocoding.f67944e) == 0 && Double.compare(this.f67945f, placeGeocoding.f67945f) == 0 && Double.compare(this.g, placeGeocoding.g) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.g) + d21.a(this.f67945f, d21.a(this.f67944e, d21.a(this.d, d21.a(this.f67943c, d21.a(this.f67942b, this.f67941a.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "PlaceGeocoding(address=" + this.f67941a + ", centerLatitude=" + this.f67942b + ", centerLongitude=" + this.f67943c + ", northEastLatitude=" + this.d + ", northEastLongitude=" + this.f67944e + ", southWestLatitude=" + this.f67945f + ", southWestLongitude=" + this.g + ")";
    }
}
