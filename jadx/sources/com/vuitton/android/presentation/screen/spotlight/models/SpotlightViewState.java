package com.vuitton.android.presentation.screen.spotlight.models;

import defpackage.a;
import defpackage.o60;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001By\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;", "", "", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;", "spotlights", "", "isLoading", "isError", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;", "containerState", "", "", "hotspotAlreadyAnimated", "showOnboarding", "introOutroAlreadyDownloaded", "focusAlreadyDownloaded", "shouldDisplayVat", "<init>", "(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f64679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f64680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f64681c;
    public final SpotlightContainerStateUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Set f64682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f64683f;
    public final Set g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Set f64684h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f64685i;

    public SpotlightViewState(List list, boolean z, boolean z2, SpotlightContainerStateUiModel spotlightContainerStateUiModel, Set set, boolean z3, Set set2, Set set3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? EmptyList.f71768b : list, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? new SpotlightContainerStateUiModel(false, false, false, false, false, false, false, false, false, false, false, 2047, null) : spotlightContainerStateUiModel, (i2 & 16) != 0 ? EmptySet.f71770b : set, (i2 & 32) != 0 ? false : z3, (i2 & 64) != 0 ? EmptySet.f71770b : set2, (i2 & 128) != 0 ? EmptySet.f71770b : set3, (i2 & 256) != 0 ? false : z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightViewState)) {
            return false;
        }
        SpotlightViewState spotlightViewState = (SpotlightViewState) obj;
        return Intrinsics.c(this.f64679a, spotlightViewState.f64679a) && this.f64680b == spotlightViewState.f64680b && this.f64681c == spotlightViewState.f64681c && Intrinsics.c(this.d, spotlightViewState.d) && Intrinsics.c(this.f64682e, spotlightViewState.f64682e) && this.f64683f == spotlightViewState.f64683f && Intrinsics.c(this.g, spotlightViewState.g) && Intrinsics.c(this.f64684h, spotlightViewState.f64684h) && this.f64685i == spotlightViewState.f64685i;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f64685i) + ((this.f64684h.hashCode() + ((this.g.hashCode() + o60.b((this.f64682e.hashCode() + ((this.d.hashCode() + o60.b(o60.b(this.f64679a.hashCode() * 31, 31, this.f64680b), 31, this.f64681c)) * 31)) * 31, 31, this.f64683f)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpotlightViewState(spotlights=");
        sb.append(this.f64679a);
        sb.append(", isLoading=");
        sb.append(this.f64680b);
        sb.append(", isError=");
        sb.append(this.f64681c);
        sb.append(", containerState=");
        sb.append(this.d);
        sb.append(", hotspotAlreadyAnimated=");
        sb.append(this.f64682e);
        sb.append(", showOnboarding=");
        sb.append(this.f64683f);
        sb.append(", introOutroAlreadyDownloaded=");
        sb.append(this.g);
        sb.append(", focusAlreadyDownloaded=");
        sb.append(this.f64684h);
        sb.append(", shouldDisplayVat=");
        return a.p(sb, this.f64685i, ")");
    }

    public SpotlightViewState(List<SpotlightSlideUiModel> list, boolean z, boolean z2, SpotlightContainerStateUiModel spotlightContainerStateUiModel, Set<String> set, boolean z3, Set<String> set2, Set<String> set3, boolean z4) {
        list.getClass();
        spotlightContainerStateUiModel.getClass();
        set.getClass();
        set2.getClass();
        set3.getClass();
        this.f64679a = list;
        this.f64680b = z;
        this.f64681c = z2;
        this.d = spotlightContainerStateUiModel;
        this.f64682e = set;
        this.f64683f = z3;
        this.g = set2;
        this.f64684h = set3;
        this.f64685i = z4;
    }

    public SpotlightViewState() {
        this(null, false, false, null, null, false, null, null, false, 511, null);
    }
}
