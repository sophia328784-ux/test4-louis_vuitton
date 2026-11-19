package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models;

import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.a;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState;", "", "Success", "Loading", "Error", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Error;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Loading;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorLookViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Error;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends PersonalSelectionsCurationAdvisorLookViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f62495a = new Error(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return 1332575983;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Loading;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends PersonalSelectionsCurationAdvisorLookViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f62496a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -1774063517;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public PersonalSelectionsCurationAdvisorLookViewState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Success;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;", "lookAsset", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", Product.TYPE, "", "displayLikes", "<init>", "(Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends PersonalSelectionsCurationAdvisorLookViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SelectionAssetUiModel f62497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f62498b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f62499c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(SelectionAssetUiModel selectionAssetUiModel, List<PlpProductUiModel> list, boolean z) {
            super(null);
            selectionAssetUiModel.getClass();
            list.getClass();
            this.f62497a = selectionAssetUiModel;
            this.f62498b = list;
            this.f62499c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.c(this.f62497a, success.f62497a) && Intrinsics.c(this.f62498b, success.f62498b) && this.f62499c == success.f62499c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f62499c) + n00.a(this.f62497a.hashCode() * 31, 31, this.f62498b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Success(lookAsset=");
            sb.append(this.f62497a);
            sb.append(", products=");
            sb.append(this.f62498b);
            sb.append(", displayLikes=");
            return a.p(sb, this.f62499c, ")");
        }

        public Success(SelectionAssetUiModel selectionAssetUiModel, List list, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(selectionAssetUiModel, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? false : z);
        }
    }
}
