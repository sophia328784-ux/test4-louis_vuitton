package com.vuitton.android.presentation.screen.pdp;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet;", "", "SearchPlace", "LocationBottomSheet", "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet$LocationBottomSheet;", "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet$SearchPlace;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FindInStoreBottomSheet {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet$LocationBottomSheet;", "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LocationBottomSheet implements FindInStoreBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LocationBottomSheet f61011a = new LocationBottomSheet();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LocationBottomSheet);
        }

        public final int hashCode() {
            return 1762818675;
        }

        public final String toString() {
            return "LocationBottomSheet";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet$SearchPlace;", "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SearchPlace implements FindInStoreBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SearchPlace f61012a = new SearchPlace();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SearchPlace);
        }

        public final int hashCode() {
            return 1155002291;
        }

        public final String toString() {
            return "SearchPlace";
        }
    }
}
