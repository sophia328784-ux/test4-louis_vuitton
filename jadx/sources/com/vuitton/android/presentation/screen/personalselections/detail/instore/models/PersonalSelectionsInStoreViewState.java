package com.vuitton.android.presentation.screen.personalselections.detail.instore.models;

import androidx.paging.PagingData;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionStoreUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState;", "", "Loading", "Error", "Success", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Error;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Loading;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsInStoreViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Error;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends PersonalSelectionsInStoreViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f62555a = new Error(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return -1554242706;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Loading;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends PersonalSelectionsInStoreViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f62556a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -1457950430;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public PersonalSelectionsInStoreViewState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0014\b\u0002\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0010\u0012\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0015¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Success;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;", "selectionType", "", "title", "creationDate", "description", "shareURL", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;", Payload.TYPE_STORE, "Lkotlinx/coroutines/flow/Flow;", "Landroidx/paging/PagingData;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", Product.TYPE, "appointmentReasonId", "", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "", "totalCount", "", "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;", "sections", "isUserConnected", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "unavailableProductSkus", "<init>", "(Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;ZZILjava/util/List;ZLjava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends PersonalSelectionsInStoreViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SelectionTypeUiModel f62557a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62558b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f62559c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f62560e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SelectionStoreUiModel f62561f;
        public final Flow g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f62562h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f62563i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f62564j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f62565k;
        public final List l;
        public final boolean m;
        public final List n;

        public Success(SelectionTypeUiModel selectionTypeUiModel, String str, String str2, String str3, String str4, SelectionStoreUiModel selectionStoreUiModel, Flow flow, String str5, boolean z, boolean z2, int i2, List list, boolean z3, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(selectionTypeUiModel, str, str2, str3, str4, selectionStoreUiModel, (i3 & 64) != 0 ? FlowKt.o() : flow, (i3 & 128) != 0 ? null : str5, (i3 & 256) != 0 ? false : z, (i3 & 512) != 0 ? false : z2, i2, (i3 & 2048) != 0 ? EmptyList.f71768b : list, (i3 & 4096) != 0 ? false : z3, (i3 & 8192) != 0 ? EmptyList.f71768b : list2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return this.f62557a == success.f62557a && Intrinsics.c(this.f62558b, success.f62558b) && Intrinsics.c(this.f62559c, success.f62559c) && Intrinsics.c(this.d, success.d) && Intrinsics.c(this.f62560e, success.f62560e) && Intrinsics.c(this.f62561f, success.f62561f) && Intrinsics.c(this.g, success.g) && Intrinsics.c(this.f62562h, success.f62562h) && this.f62563i == success.f62563i && this.f62564j == success.f62564j && this.f62565k == success.f62565k && Intrinsics.c(this.l, success.l) && this.m == success.m && Intrinsics.c(this.n, success.n);
        }

        public final int hashCode() {
            int iHashCode = (this.g.hashCode() + ((this.f62561f.hashCode() + fc.b(fc.b(fc.b(fc.b(this.f62557a.hashCode() * 31, 31, this.f62558b), 31, this.f62559c), 31, this.d), 31, this.f62560e)) * 31)) * 31;
            String str = this.f62562h;
            return this.n.hashCode() + o60.b(n00.a(tr.b(this.f62565k, o60.b(o60.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f62563i), 31, this.f62564j), 31), 31, this.l), 31, this.m);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Success(selectionType=");
            sb.append(this.f62557a);
            sb.append(", title=");
            sb.append(this.f62558b);
            sb.append(", creationDate=");
            cj.C(sb, this.f62559c, ", description=", this.d, ", shareURL=");
            sb.append(this.f62560e);
            sb.append(", store=");
            sb.append(this.f62561f);
            sb.append(", products=");
            sb.append(this.g);
            sb.append(", appointmentReasonId=");
            sb.append(this.f62562h);
            sb.append(", isPlpV3GridViewEnabled=");
            fc.y(sb, this.f62563i, ", isAiCompanionEnabled=", this.f62564j, ", totalCount=");
            sb.append(this.f62565k);
            sb.append(", sections=");
            sb.append(this.l);
            sb.append(", isUserConnected=");
            sb.append(this.m);
            sb.append(", unavailableProductSkus=");
            sb.append(this.n);
            sb.append(")");
            return sb.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(SelectionTypeUiModel selectionTypeUiModel, String str, String str2, String str3, String str4, SelectionStoreUiModel selectionStoreUiModel, Flow<PagingData<PlpSectionUiModel>> flow, String str5, boolean z, boolean z2, int i2, List<? extends EditorialModuleUiModel> list, boolean z3, List<SkuIdUiModel> list2) {
            super(null);
            selectionTypeUiModel.getClass();
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            selectionStoreUiModel.getClass();
            flow.getClass();
            list.getClass();
            list2.getClass();
            this.f62557a = selectionTypeUiModel;
            this.f62558b = str;
            this.f62559c = str2;
            this.d = str3;
            this.f62560e = str4;
            this.f62561f = selectionStoreUiModel;
            this.g = flow;
            this.f62562h = str5;
            this.f62563i = z;
            this.f62564j = z2;
            this.f62565k = i2;
            this.l = list;
            this.m = z3;
            this.n = list2;
        }
    }
}
