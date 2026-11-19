package com.vuitton.android.presentation.screen.spotlight.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0087\b\u0018\u00002\u00020\u0001Bu\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;", "", "", "shouldShowSkuList", "shouldShowStepper", "shouldShowExitButton", "shouldShowBackButton", "shouldShowVideos", "shouldShowBackground", "shouldShowIntroPlayer", "shouldShowFocusPlayer", "shouldShowOutroPlayer", "shouldShowWhiteScreen", "canDisplayHotspot", "<init>", "(ZZZZZZZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightContainerStateUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f64632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f64633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f64634c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f64635e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f64636f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f64637h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f64638i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f64639j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f64640k;

    public /* synthetic */ SpotlightContainerStateUiModel(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? true : z2, (i2 & 4) != 0 ? true : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5, (i2 & 32) != 0 ? true : z6, (i2 & 64) != 0 ? true : z7, (i2 & 128) != 0 ? false : z8, (i2 & 256) != 0 ? false : z9, (i2 & 512) != 0 ? false : z10, (i2 & 1024) != 0 ? true : z11);
    }

    public static SpotlightContainerStateUiModel a(SpotlightContainerStateUiModel spotlightContainerStateUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, int i2) {
        if ((i2 & 1) != 0) {
            z = spotlightContainerStateUiModel.f64632a;
        }
        boolean z12 = z;
        if ((i2 & 2) != 0) {
            z2 = spotlightContainerStateUiModel.f64633b;
        }
        boolean z13 = z2;
        if ((i2 & 4) != 0) {
            z3 = spotlightContainerStateUiModel.f64634c;
        }
        boolean z14 = z3;
        boolean z15 = (i2 & 8) != 0 ? spotlightContainerStateUiModel.d : z4;
        boolean z16 = (i2 & 16) != 0 ? spotlightContainerStateUiModel.f64635e : z5;
        boolean z17 = (i2 & 32) != 0 ? spotlightContainerStateUiModel.f64636f : z6;
        boolean z18 = (i2 & 64) != 0 ? spotlightContainerStateUiModel.g : z7;
        boolean z19 = (i2 & 128) != 0 ? spotlightContainerStateUiModel.f64637h : z8;
        boolean z20 = (i2 & 256) != 0 ? spotlightContainerStateUiModel.f64638i : z9;
        boolean z21 = (i2 & 512) != 0 ? spotlightContainerStateUiModel.f64639j : z10;
        boolean z22 = (i2 & 1024) != 0 ? spotlightContainerStateUiModel.f64640k : z11;
        spotlightContainerStateUiModel.getClass();
        return new SpotlightContainerStateUiModel(z12, z13, z14, z15, z16, z17, z18, z19, z20, z21, z22);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightContainerStateUiModel)) {
            return false;
        }
        SpotlightContainerStateUiModel spotlightContainerStateUiModel = (SpotlightContainerStateUiModel) obj;
        return this.f64632a == spotlightContainerStateUiModel.f64632a && this.f64633b == spotlightContainerStateUiModel.f64633b && this.f64634c == spotlightContainerStateUiModel.f64634c && this.d == spotlightContainerStateUiModel.d && this.f64635e == spotlightContainerStateUiModel.f64635e && this.f64636f == spotlightContainerStateUiModel.f64636f && this.g == spotlightContainerStateUiModel.g && this.f64637h == spotlightContainerStateUiModel.f64637h && this.f64638i == spotlightContainerStateUiModel.f64638i && this.f64639j == spotlightContainerStateUiModel.f64639j && this.f64640k == spotlightContainerStateUiModel.f64640k;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f64640k) + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(Boolean.hashCode(this.f64632a) * 31, 31, this.f64633b), 31, this.f64634c), 31, this.d), 31, this.f64635e), 31, this.f64636f), 31, this.g), 31, this.f64637h), 31, this.f64638i), 31, this.f64639j);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("SpotlightContainerStateUiModel(shouldShowSkuList=", ", shouldShowStepper=", ", shouldShowExitButton=", this.f64632a, this.f64633b);
        fc.y(sbM, this.f64634c, ", shouldShowBackButton=", this.d, ", shouldShowVideos=");
        fc.y(sbM, this.f64635e, ", shouldShowBackground=", this.f64636f, ", shouldShowIntroPlayer=");
        fc.y(sbM, this.g, ", shouldShowFocusPlayer=", this.f64637h, ", shouldShowOutroPlayer=");
        fc.y(sbM, this.f64638i, ", shouldShowWhiteScreen=", this.f64639j, ", canDisplayHotspot=");
        return a.p(sbM, this.f64640k, ")");
    }

    public SpotlightContainerStateUiModel(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11) {
        this.f64632a = z;
        this.f64633b = z2;
        this.f64634c = z3;
        this.d = z4;
        this.f64635e = z5;
        this.f64636f = z6;
        this.g = z7;
        this.f64637h = z8;
        this.f64638i = z9;
        this.f64639j = z10;
        this.f64640k = z11;
    }

    public SpotlightContainerStateUiModel() {
        this(false, false, false, false, false, false, false, false, false, false, false, 2047, null);
    }
}
