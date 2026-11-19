package com.vuitton.android.presentation.screen.storemode.filters.model;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;", "", "OnFiltersOpenedEvent", "FiltersAppliedEvent", "SearchFiltersAppliedEvent", "ClearAllFiltersEvent", "SelectFilterEvent", "LeaveFiltersEvent", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$ClearAllFiltersEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$FiltersAppliedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$LeaveFiltersEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SearchFiltersAppliedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SelectFilterEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ProductFilterTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$ClearAllFiltersEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClearAllFiltersEvent implements ProductFilterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ClearAllFiltersEvent f65014a = new ClearAllFiltersEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ClearAllFiltersEvent);
        }

        public final int hashCode() {
            return 965640169;
        }

        public final String toString() {
            return "ClearAllFiltersEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$FiltersAppliedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;", "", "pageName", "filterName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FiltersAppliedEvent implements ProductFilterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65015a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65016b;

        public FiltersAppliedEvent(String str, String str2) {
            this.f65015a = str;
            this.f65016b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FiltersAppliedEvent)) {
                return false;
            }
            FiltersAppliedEvent filtersAppliedEvent = (FiltersAppliedEvent) obj;
            return Intrinsics.c(this.f65015a, filtersAppliedEvent.f65015a) && Intrinsics.c(this.f65016b, filtersAppliedEvent.f65016b);
        }

        public final int hashCode() {
            String str = this.f65015a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65016b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("FiltersAppliedEvent(pageName=", this.f65015a, ", filterName=", this.f65016b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$LeaveFiltersEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LeaveFiltersEvent implements ProductFilterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LeaveFiltersEvent f65017a = new LeaveFiltersEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LeaveFiltersEvent);
        }

        public final int hashCode() {
            return 1106346272;
        }

        public final String toString() {
            return "LeaveFiltersEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;", "", "pageName", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnFiltersOpenedEvent implements ProductFilterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65018a;

        public OnFiltersOpenedEvent(String str) {
            this.f65018a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnFiltersOpenedEvent) && Intrinsics.c(this.f65018a, ((OnFiltersOpenedEvent) obj).f65018a);
        }

        public final int hashCode() {
            String str = this.f65018a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("OnFiltersOpenedEvent(pageName=", this.f65018a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SearchFiltersAppliedEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SearchFiltersAppliedEvent implements ProductFilterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SearchFiltersAppliedEvent f65019a = new SearchFiltersAppliedEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SearchFiltersAppliedEvent);
        }

        public final int hashCode() {
            return -535827366;
        }

        public final String toString() {
            return "SearchFiltersAppliedEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$SelectFilterEvent;", "Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;", "", "categoryName", "filterName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectFilterEvent implements ProductFilterTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65020a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65021b;

        public SelectFilterEvent(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f65020a = str;
            this.f65021b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectFilterEvent)) {
                return false;
            }
            SelectFilterEvent selectFilterEvent = (SelectFilterEvent) obj;
            return Intrinsics.c(this.f65020a, selectFilterEvent.f65020a) && Intrinsics.c(this.f65021b, selectFilterEvent.f65021b);
        }

        public final int hashCode() {
            return this.f65021b.hashCode() + (this.f65020a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("SelectFilterEvent(categoryName=", this.f65020a, ", filterName=", this.f65021b, ")");
        }
    }
}
