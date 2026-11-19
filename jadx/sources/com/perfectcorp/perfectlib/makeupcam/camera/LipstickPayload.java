package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.perfectlib.jniproxy.UIShimmer;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class LipstickPayload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final YMKPrimitiveData.LipstickStyle f40698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f40699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UIShimmer f40700c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f40701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f40702f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f40703h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f40704i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LipstickShape f40705j;

    public LipstickPayload(YMKPrimitiveData.LipstickStyle lipstickStyle, int i2, UIShimmer uIShimmer, int i3, int i4, int i5, List<LipstickLayer> list, LipstickShape lipstickShape) {
        this.f40698a = lipstickStyle;
        this.f40699b = i2;
        this.f40700c = uIShimmer;
        this.d = i3;
        this.g = i4;
        this.f40703h = i5;
        this.f40704i = list;
        this.f40705j = lipstickShape;
    }
}
