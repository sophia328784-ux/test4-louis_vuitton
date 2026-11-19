package com.vuitton.android.presentation.screen.feed.models;

import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.feed.FeedBottomSheet;
import com.vuitton.android.presentation.screen.feed.models.uimodels.AudioGuideBannerUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BÉ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\f\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\f\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001a\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\b\b\u0002\u0010\u001f\u001a\u00020\f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;", "", "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;", "theme", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;", "defaultSelectedTab", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;", "feedDiscover", "feedForYou", "", "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;", "hotContentList", "", "shouldAnimateHotContentWidget", "Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;", "featureFlags", "Lcom/vuitton/android/presentation/model/common/A11ySettings;", "a11ySettings", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "isEligibleForPass", "Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;", "currentBottomSheet", "Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;", "calendarEvent", "isUserConnected", "", "userName", "formattedDate", "Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;", "audioGuideBanner", "hasAITooltipBeenDisplayed", "mostExpensiveSku", "<init>", "(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FeedViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FeatureThemeUiModel f57923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FeedTab f57924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FeedTabState f57925c;
    public final FeedTabState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f57926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f57927f;
    public final FeedFeatureFlags g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final A11ySettings f57928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ContactUsUiModel f57929i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f57930j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FeedBottomSheet f57931k;
    public final CalendarEventUiModel l;
    public final boolean m;
    public final String n;
    public final String o;
    public final AudioGuideBannerUiModel p;
    public final boolean q;
    public final String r;

    public /* synthetic */ FeedViewState(FeatureThemeUiModel featureThemeUiModel, FeedTab feedTab, FeedTabState feedTabState, FeedTabState feedTabState2, List list, boolean z, FeedFeatureFlags feedFeatureFlags, A11ySettings a11ySettings, ContactUsUiModel contactUsUiModel, boolean z2, FeedBottomSheet feedBottomSheet, CalendarEventUiModel calendarEventUiModel, boolean z3, String str, String str2, AudioGuideBannerUiModel audioGuideBannerUiModel, boolean z4, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(featureThemeUiModel, (i2 & 2) != 0 ? null : feedTab, (i2 & 4) != 0 ? FeedTabState.Loading.f57921a : feedTabState, (i2 & 8) != 0 ? FeedTabState.Loading.f57921a : feedTabState2, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? new FeedFeatureFlags(false, false, false, false, false, false, false, false, false, 511, null) : feedFeatureFlags, (i2 & 128) != 0 ? new A11ySettings(false, false, false, 7, null) : a11ySettings, (i2 & 256) != 0 ? new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null) : contactUsUiModel, (i2 & 512) != 0 ? false : z2, (i2 & 1024) != 0 ? null : feedBottomSheet, calendarEventUiModel, (i2 & 4096) != 0 ? false : z3, (i2 & 8192) != 0 ? null : str, (i2 & 16384) != 0 ? new String() : str2, (32768 & i2) != 0 ? null : audioGuideBannerUiModel, (65536 & i2) != 0 ? false : z4, (i2 & 131072) != 0 ? null : str3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedViewState)) {
            return false;
        }
        FeedViewState feedViewState = (FeedViewState) obj;
        return this.f57923a == feedViewState.f57923a && this.f57924b == feedViewState.f57924b && Intrinsics.c(this.f57925c, feedViewState.f57925c) && Intrinsics.c(this.d, feedViewState.d) && Intrinsics.c(this.f57926e, feedViewState.f57926e) && this.f57927f == feedViewState.f57927f && Intrinsics.c(this.g, feedViewState.g) && Intrinsics.c(this.f57928h, feedViewState.f57928h) && Intrinsics.c(this.f57929i, feedViewState.f57929i) && this.f57930j == feedViewState.f57930j && Intrinsics.c(this.f57931k, feedViewState.f57931k) && Intrinsics.c(this.l, feedViewState.l) && this.m == feedViewState.m && Intrinsics.c(this.n, feedViewState.n) && Intrinsics.c(this.o, feedViewState.o) && Intrinsics.c(this.p, feedViewState.p) && this.q == feedViewState.q && Intrinsics.c(this.r, feedViewState.r);
    }

    public final int hashCode() {
        int iHashCode = this.f57923a.hashCode() * 31;
        FeedTab feedTab = this.f57924b;
        int iHashCode2 = (this.d.hashCode() + ((this.f57925c.hashCode() + ((iHashCode + (feedTab == null ? 0 : feedTab.hashCode())) * 31)) * 31)) * 31;
        List list = this.f57926e;
        int iB = o60.b((this.f57929i.hashCode() + ((this.f57928h.hashCode() + ((this.g.hashCode() + o60.b((iHashCode2 + (list == null ? 0 : list.hashCode())) * 31, 31, this.f57927f)) * 31)) * 31)) * 31, 31, this.f57930j);
        FeedBottomSheet feedBottomSheet = this.f57931k;
        int iB2 = o60.b((this.l.hashCode() + ((iB + (feedBottomSheet == null ? 0 : feedBottomSheet.hashCode())) * 31)) * 31, 31, this.m);
        String str = this.n;
        int iB3 = fc.b((iB2 + (str == null ? 0 : str.hashCode())) * 31, 31, this.o);
        AudioGuideBannerUiModel audioGuideBannerUiModel = this.p;
        int iB4 = o60.b((iB3 + (audioGuideBannerUiModel == null ? 0 : audioGuideBannerUiModel.hashCode())) * 31, 31, this.q);
        String str2 = this.r;
        return iB4 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FeedViewState(theme=");
        sb.append(this.f57923a);
        sb.append(", defaultSelectedTab=");
        sb.append(this.f57924b);
        sb.append(", feedDiscover=");
        sb.append(this.f57925c);
        sb.append(", feedForYou=");
        sb.append(this.d);
        sb.append(", hotContentList=");
        sb.append(this.f57926e);
        sb.append(", shouldAnimateHotContentWidget=");
        sb.append(this.f57927f);
        sb.append(", featureFlags=");
        sb.append(this.g);
        sb.append(", a11ySettings=");
        sb.append(this.f57928h);
        sb.append(", contactUsUiModel=");
        sb.append(this.f57929i);
        sb.append(", isEligibleForPass=");
        sb.append(this.f57930j);
        sb.append(", currentBottomSheet=");
        sb.append(this.f57931k);
        sb.append(", calendarEvent=");
        sb.append(this.l);
        sb.append(", isUserConnected=");
        cj.A(", userName=", this.n, ", formattedDate=", sb, this.m);
        sb.append(this.o);
        sb.append(", audioGuideBanner=");
        sb.append(this.p);
        sb.append(", hasAITooltipBeenDisplayed=");
        sb.append(this.q);
        sb.append(", mostExpensiveSku=");
        sb.append(this.r);
        sb.append(")");
        return sb.toString();
    }

    public FeedViewState(FeatureThemeUiModel featureThemeUiModel, FeedTab feedTab, FeedTabState feedTabState, FeedTabState feedTabState2, List<? extends HotContentItemUiModel> list, boolean z, FeedFeatureFlags feedFeatureFlags, A11ySettings a11ySettings, ContactUsUiModel contactUsUiModel, boolean z2, FeedBottomSheet feedBottomSheet, CalendarEventUiModel calendarEventUiModel, boolean z3, String str, String str2, AudioGuideBannerUiModel audioGuideBannerUiModel, boolean z4, String str3) {
        featureThemeUiModel.getClass();
        feedTabState.getClass();
        feedTabState2.getClass();
        feedFeatureFlags.getClass();
        a11ySettings.getClass();
        contactUsUiModel.getClass();
        calendarEventUiModel.getClass();
        str2.getClass();
        this.f57923a = featureThemeUiModel;
        this.f57924b = feedTab;
        this.f57925c = feedTabState;
        this.d = feedTabState2;
        this.f57926e = list;
        this.f57927f = z;
        this.g = feedFeatureFlags;
        this.f57928h = a11ySettings;
        this.f57929i = contactUsUiModel;
        this.f57930j = z2;
        this.f57931k = feedBottomSheet;
        this.l = calendarEventUiModel;
        this.m = z3;
        this.n = str;
        this.o = str2;
        this.p = audioGuideBannerUiModel;
        this.q = z4;
        this.r = str3;
    }
}
