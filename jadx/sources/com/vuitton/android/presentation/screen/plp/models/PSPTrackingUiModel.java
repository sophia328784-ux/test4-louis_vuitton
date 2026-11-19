package com.vuitton.android.presentation.screen.plp.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;", "", "ResultScreen", "RequestSearch", "SearchDone", "FilterClick", "Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$FilterClick;", "Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;", "Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$ResultScreen;", "Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$SearchDone;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PSPTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$FilterClick;", "Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FilterClick implements PSPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FilterClick f62909a = new FilterClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FilterClick);
        }

        public final int hashCode() {
            return -1519481634;
        }

        public final String toString() {
            return "FilterClick";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;", "Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;", "", "query", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RequestSearch implements PSPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62910a;

        public RequestSearch(String str) {
            str.getClass();
            this.f62910a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RequestSearch) && Intrinsics.c(this.f62910a, ((RequestSearch) obj).f62910a);
        }

        public final int hashCode() {
            return this.f62910a.hashCode();
        }

        public final String toString() {
            return fc.h("RequestSearch(query=", this.f62910a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$ResultScreen;", "Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;", "", "query", "", "resultCount", "<init>", "(Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ResultScreen implements PSPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62911a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f62912b;

        public ResultScreen(String str, int i2) {
            str.getClass();
            this.f62911a = str;
            this.f62912b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResultScreen)) {
                return false;
            }
            ResultScreen resultScreen = (ResultScreen) obj;
            return Intrinsics.c(this.f62911a, resultScreen.f62911a) && this.f62912b == resultScreen.f62912b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f62912b) + (this.f62911a.hashCode() * 31);
        }

        public final String toString() {
            return "ResultScreen(query=" + this.f62911a + ", resultCount=" + this.f62912b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$SearchDone;", "Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;", "", "query", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SearchDone implements PSPTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62913a;

        public SearchDone(String str) {
            str.getClass();
            this.f62913a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SearchDone) && Intrinsics.c(this.f62913a, ((SearchDone) obj).f62913a);
        }

        public final int hashCode() {
            return this.f62913a.hashCode();
        }

        public final String toString() {
            return fc.h("SearchDone(query=", this.f62913a, ")");
        }
    }
}
