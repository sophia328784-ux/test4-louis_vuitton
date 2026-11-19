package com.vuitton.android.presentation.tracking;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.ViewItemListTrackingValue;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;", "", "SelectItemClicked", "ViewItemListLoaded", "Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;", "Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface GA4TrackingUiModel {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;", "Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;", "", "pageType", "currency", "itemListId", "itemListName", "", "Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;", "items", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewItemListLoaded implements GA4TrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65821a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f65823c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f65824e;

        public ViewItemListLoaded(String str, String str2, String str3, String str4, List<ViewItemListTrackingValue> list) {
            str.getClass();
            str3.getClass();
            str4.getClass();
            list.getClass();
            this.f65821a = str;
            this.f65822b = str2;
            this.f65823c = str3;
            this.d = str4;
            this.f65824e = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ViewItemListLoaded)) {
                return false;
            }
            ViewItemListLoaded viewItemListLoaded = (ViewItemListLoaded) obj;
            return Intrinsics.c(this.f65821a, viewItemListLoaded.f65821a) && Intrinsics.c(this.f65822b, viewItemListLoaded.f65822b) && Intrinsics.c(this.f65823c, viewItemListLoaded.f65823c) && Intrinsics.c(this.d, viewItemListLoaded.d) && Intrinsics.c(this.f65824e, viewItemListLoaded.f65824e);
        }

        public final int hashCode() {
            int iHashCode = this.f65821a.hashCode() * 31;
            String str = this.f65822b;
            return this.f65824e.hashCode() + fc.b(fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f65823c), 31, this.d);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("ViewItemListLoaded(pageType=", this.f65821a, ", currency=", this.f65822b, ", itemListId=");
            cj.C(sbS, this.f65823c, ", itemListName=", this.d, ", items=");
            return a.o(sbS, this.f65824e, ")");
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;", "Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;", "", "pageType", "currency", "itemListId", "itemListName", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "itemId", "itemName", "", "price", "", "index", "productItemListId", "productItemListName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectItemClicked implements GA4TrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65813a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65814b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f65815c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f65816e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f65817f;
        public final Double g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f65818h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f65819i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f65820j;

        public SelectItemClicked(String str, String str2, String str3, String str4, String str5, String str6, Double d, int i2, String str7, String str8, DefaultConstructorMarker defaultConstructorMarker) {
            pq0.z(str, str3, str4, str5, str6);
            str7.getClass();
            str8.getClass();
            this.f65813a = str;
            this.f65814b = str2;
            this.f65815c = str3;
            this.d = str4;
            this.f65816e = str5;
            this.f65817f = str6;
            this.g = d;
            this.f65818h = i2;
            this.f65819i = str7;
            this.f65820j = str8;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectItemClicked)) {
                return false;
            }
            SelectItemClicked selectItemClicked = (SelectItemClicked) obj;
            if (!Intrinsics.c(this.f65813a, selectItemClicked.f65813a) || !Intrinsics.c(this.f65814b, selectItemClicked.f65814b) || !Intrinsics.c(this.f65815c, selectItemClicked.f65815c) || !Intrinsics.c(this.d, selectItemClicked.d)) {
                return false;
            }
            String str = selectItemClicked.f65816e;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f65816e, str) && Intrinsics.c(this.f65817f, selectItemClicked.f65817f) && Intrinsics.c(this.g, selectItemClicked.g) && this.f65818h == selectItemClicked.f65818h && Intrinsics.c(this.f65819i, selectItemClicked.f65819i) && Intrinsics.c(this.f65820j, selectItemClicked.f65820j);
        }

        public final int hashCode() {
            int iHashCode = this.f65813a.hashCode() * 31;
            String str = this.f65814b;
            int iB = fc.b(fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f65815c), 31, this.d);
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iB2 = fc.b(fc.b(iB, 31, this.f65816e), 31, this.f65817f);
            Double d = this.g;
            return this.f65820j.hashCode() + fc.b(tr.b(this.f65818h, (iB2 + (d != null ? d.hashCode() : 0)) * 31, 31), 31, this.f65819i);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sbS = fc.s("SelectItemClicked(pageType=", this.f65813a, ", currency=", this.f65814b, ", itemListId=");
            cj.C(sbS, this.f65815c, ", itemListName=", this.d, ", itemId=");
            cj.C(sbS, this.f65816e, ", itemName=", this.f65817f, ", price=");
            sbS.append(this.g);
            sbS.append(", index=");
            sbS.append(this.f65818h);
            sbS.append(", productItemListId=");
            return tr.l(sbS, this.f65819i, ", productItemListName=", this.f65820j, ")");
        }

        public /* synthetic */ SelectItemClicked(String str, String str2, String str3, String str4, String str5, String str6, Double d, int i2, String str7, String str8, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, str4, str5, str6, d, i2, (i3 & 256) != 0 ? str3 : str7, (i3 & 512) != 0 ? str4 : str8, null);
        }
    }
}
