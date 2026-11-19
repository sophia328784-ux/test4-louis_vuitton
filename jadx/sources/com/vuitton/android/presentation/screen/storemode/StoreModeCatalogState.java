package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.presentation.screen.storemode.models.StoreModeCatalogUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;", "", "Nothing", "Loading", "Error", "StoreModeCatalogUIModel", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Error;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Loading;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Nothing;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface StoreModeCatalogState {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Error;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements StoreModeCatalogState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64769a;

        public Error(String str) {
            this.f64769a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && Intrinsics.c(this.f64769a, ((Error) obj).f64769a);
        }

        public final int hashCode() {
            String str = this.f64769a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Error(message=", this.f64769a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Loading;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements StoreModeCatalogState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f64770a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -780486079;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Nothing;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Nothing implements StoreModeCatalogState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Nothing f64771a = new Nothing();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Nothing);
        }

        public final int hashCode() {
            return 1012187346;
        }

        public final String toString() {
            return "Nothing";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;", "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;", "catalog", "<init>", "(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreModeCatalogUIModel implements StoreModeCatalogState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StoreModeCatalogUiModel f64772a;

        public StoreModeCatalogUIModel(StoreModeCatalogUiModel storeModeCatalogUiModel) {
            storeModeCatalogUiModel.getClass();
            this.f64772a = storeModeCatalogUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StoreModeCatalogUIModel) && Intrinsics.c(this.f64772a, ((StoreModeCatalogUIModel) obj).f64772a);
        }

        public final int hashCode() {
            return this.f64772a.hashCode();
        }

        public final String toString() {
            return "StoreModeCatalogUIModel(catalog=" + this.f64772a + ")";
        }
    }
}
