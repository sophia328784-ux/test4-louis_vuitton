package com.vuitton.android.presentation.screen.services.models;

import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSharingUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelections;
import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B«\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0018\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0004¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isUserConnected", "isEligibleForPass", "", "userName", "Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;", "servicesUrls", "Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;", "servicesImmersiveArticlesKey", "Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;", "servicesFeatureFlags", "", "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;", "sharingList", "Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;", "personalSelections", "", "repairCounter", "ongoingAppointmentCounter", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "careServicePromotionKey", "hasSimplifiedNavigation", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;IILcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ServicesViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f64404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f64405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f64406c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f64407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ServicesUrls f64408f;
    public final ServicesImmersiveArticlesKey g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ServicesFeatureFlags f64409h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f64410i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PersonalSelections f64411j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f64412k;
    public final int l;
    public final ContactUsUiModel m;
    public final String n;
    public final boolean o;

    public ServicesViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, boolean z3, String str, ServicesUrls servicesUrls, ServicesImmersiveArticlesKey servicesImmersiveArticlesKey, ServicesFeatureFlags servicesFeatureFlags, List list, PersonalSelections personalSelections, int i2, int i3, ContactUsUiModel contactUsUiModel, String str2, boolean z4, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i4 & 2) != 0 ? false : z, (i4 & 4) != 0 ? false : z2, (i4 & 8) != 0 ? false : z3, (i4 & 16) != 0 ? null : str, (i4 & 32) != 0 ? null : servicesUrls, (i4 & 64) != 0 ? null : servicesImmersiveArticlesKey, (i4 & 128) != 0 ? new ServicesFeatureFlags(false, false, false, false, false, 31, null) : servicesFeatureFlags, (i4 & 256) != 0 ? EmptyList.f71768b : list, (i4 & 512) != 0 ? null : personalSelections, (i4 & 1024) != 0 ? 0 : i2, (i4 & 2048) != 0 ? 0 : i3, (i4 & 4096) != 0 ? new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null) : contactUsUiModel, (i4 & 8192) == 0 ? str2 : null, (i4 & 16384) != 0 ? false : z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServicesViewState)) {
            return false;
        }
        ServicesViewState servicesViewState = (ServicesViewState) obj;
        return Intrinsics.c(this.f64404a, servicesViewState.f64404a) && this.f64405b == servicesViewState.f64405b && this.f64406c == servicesViewState.f64406c && this.d == servicesViewState.d && Intrinsics.c(this.f64407e, servicesViewState.f64407e) && Intrinsics.c(this.f64408f, servicesViewState.f64408f) && Intrinsics.c(this.g, servicesViewState.g) && Intrinsics.c(this.f64409h, servicesViewState.f64409h) && Intrinsics.c(this.f64410i, servicesViewState.f64410i) && Intrinsics.c(this.f64411j, servicesViewState.f64411j) && this.f64412k == servicesViewState.f64412k && this.l == servicesViewState.l && Intrinsics.c(this.m, servicesViewState.m) && Intrinsics.c(this.n, servicesViewState.n) && this.o == servicesViewState.o;
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(o60.b(this.f64404a.hashCode() * 31, 31, this.f64405b), 31, this.f64406c), 31, this.d);
        String str = this.f64407e;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        ServicesUrls servicesUrls = this.f64408f;
        int iHashCode2 = (iHashCode + (servicesUrls == null ? 0 : servicesUrls.hashCode())) * 31;
        ServicesImmersiveArticlesKey servicesImmersiveArticlesKey = this.g;
        int iA = n00.a((this.f64409h.hashCode() + ((iHashCode2 + (servicesImmersiveArticlesKey == null ? 0 : servicesImmersiveArticlesKey.hashCode())) * 31)) * 31, 31, this.f64410i);
        PersonalSelections personalSelections = this.f64411j;
        int iHashCode3 = (this.m.hashCode() + tr.b(this.l, tr.b(this.f64412k, (iA + (personalSelections == null ? 0 : personalSelections.hashCode())) * 31, 31), 31)) * 31;
        String str2 = this.n;
        return Boolean.hashCode(this.o) + ((iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServicesViewState(inAppDispatch=");
        sb.append(this.f64404a);
        sb.append(", isLoading=");
        sb.append(this.f64405b);
        sb.append(", isUserConnected=");
        fc.y(sb, this.f64406c, ", isEligibleForPass=", this.d, ", userName=");
        sb.append(this.f64407e);
        sb.append(", servicesUrls=");
        sb.append(this.f64408f);
        sb.append(", servicesImmersiveArticlesKey=");
        sb.append(this.g);
        sb.append(", servicesFeatureFlags=");
        sb.append(this.f64409h);
        sb.append(", sharingList=");
        sb.append(this.f64410i);
        sb.append(", personalSelections=");
        sb.append(this.f64411j);
        sb.append(", repairCounter=");
        fc.x(this.f64412k, this.l, ", ongoingAppointmentCounter=", ", contactUsUiModel=", sb);
        sb.append(this.m);
        sb.append(", careServicePromotionKey=");
        sb.append(this.n);
        sb.append(", hasSimplifiedNavigation=");
        return a.p(sb, this.o, ")");
    }

    public ServicesViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, boolean z3, String str, ServicesUrls servicesUrls, ServicesImmersiveArticlesKey servicesImmersiveArticlesKey, ServicesFeatureFlags servicesFeatureFlags, List<PersonalSharingUiModel> list, PersonalSelections personalSelections, int i2, int i3, ContactUsUiModel contactUsUiModel, String str2, boolean z4) {
        inAppDispatch.getClass();
        servicesFeatureFlags.getClass();
        list.getClass();
        contactUsUiModel.getClass();
        this.f64404a = inAppDispatch;
        this.f64405b = z;
        this.f64406c = z2;
        this.d = z3;
        this.f64407e = str;
        this.f64408f = servicesUrls;
        this.g = servicesImmersiveArticlesKey;
        this.f64409h = servicesFeatureFlags;
        this.f64410i = list;
        this.f64411j = personalSelections;
        this.f64412k = i2;
        this.l = i3;
        this.m = contactUsUiModel;
        this.n = str2;
        this.o = z4;
    }
}
