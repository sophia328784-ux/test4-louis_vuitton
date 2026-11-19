package com.vuitton.android.presentation.screen.catalog.thematicplp.viewstate;

import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import defpackage.a;
import defpackage.d21;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;", "", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "currentGridMode", "", "resetGridPosition", "", "currentPlpId", "", "Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;", "allPlpItems", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;", "currentTheme", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;", "allThemes", "isLoadingThemes", "<init>", "(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLjava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ThematicPlpViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GridModes f55585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f55586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55587c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CurrentThemeUiModel f55588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f55589f;
    public final boolean g;

    public ThematicPlpViewState(GridModes gridModes, boolean z, String str, List list, CurrentThemeUiModel currentThemeUiModel, List list2, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? GridModes.Full.f55430b : gridModes, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? new String() : str, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? null : currentThemeUiModel, (i2 & 32) != 0 ? EmptyList.f71768b : list2, (i2 & 64) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThematicPlpViewState)) {
            return false;
        }
        ThematicPlpViewState thematicPlpViewState = (ThematicPlpViewState) obj;
        return Intrinsics.c(this.f55585a, thematicPlpViewState.f55585a) && this.f55586b == thematicPlpViewState.f55586b && Intrinsics.c(this.f55587c, thematicPlpViewState.f55587c) && Intrinsics.c(this.d, thematicPlpViewState.d) && Intrinsics.c(this.f55588e, thematicPlpViewState.f55588e) && Intrinsics.c(this.f55589f, thematicPlpViewState.f55589f) && this.g == thematicPlpViewState.g;
    }

    public final int hashCode() {
        int iB = o60.b(this.f55585a.hashCode() * 31, 31, this.f55586b);
        String str = this.f55587c;
        int iA = n00.a((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        CurrentThemeUiModel currentThemeUiModel = this.f55588e;
        return Boolean.hashCode(this.g) + n00.a((iA + (currentThemeUiModel != null ? currentThemeUiModel.hashCode() : 0)) * 31, 31, this.f55589f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ThematicPlpViewState(currentGridMode=");
        sb.append(this.f55585a);
        sb.append(", resetGridPosition=");
        sb.append(this.f55586b);
        sb.append(", currentPlpId=");
        d21.z(this.f55587c, ", allPlpItems=", ", currentTheme=", sb, this.d);
        sb.append(this.f55588e);
        sb.append(", allThemes=");
        sb.append(this.f55589f);
        sb.append(", isLoadingThemes=");
        return a.p(sb, this.g, ")");
    }

    public ThematicPlpViewState(GridModes gridModes, boolean z, String str, List<PLPEntryUiModel> list, CurrentThemeUiModel currentThemeUiModel, List<ThemeUiModel> list2, boolean z2) {
        gridModes.getClass();
        list.getClass();
        list2.getClass();
        this.f55585a = gridModes;
        this.f55586b = z;
        this.f55587c = str;
        this.d = list;
        this.f55588e = currentThemeUiModel;
        this.f55589f = list2;
        this.g = z2;
    }

    public ThematicPlpViewState() {
        this(null, false, null, null, null, null, false, CertificateBody.profileType, null);
    }
}
