package com.vuitton.android.presentation.screen.filter.quickaccess.models;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u000e\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0082\u0001\u000e\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d¨\u0006\u001eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "", "QuickAccessFiltersScreen", "SortFiltersOverlayScreen", "BooleanFiltersOverlayScreen", "OpenFiltersEvent", "CloseFiltersEvent", "SwipeSimpleFiltersEvent", "OpenSortByPanelEvent", "OpenBooleansPanelEvent", "FiltersErrorEvent", "ClearFilterEvent", "ClearAllFiltersEvent", "HitOnSimpleFilterEvent", "HitOnBooleanFilterEvent", "HitOnSortFilterEvent", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$BooleanFiltersOverlayScreen;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearAllFiltersEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearFilterEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$CloseFiltersEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$FiltersErrorEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnSimpleFilterEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnSortFilterEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenBooleansPanelEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenFiltersEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenSortByPanelEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SortFiltersOverlayScreen;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface QuickAccessFiltersTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$BooleanFiltersOverlayScreen;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BooleanFiltersOverlayScreen implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final QafSource f58149a;

        public BooleanFiltersOverlayScreen(QafSource qafSource) {
            qafSource.getClass();
            this.f58149a = qafSource;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BooleanFiltersOverlayScreen) && this.f58149a == ((BooleanFiltersOverlayScreen) obj).f58149a;
        }

        public final int hashCode() {
            return this.f58149a.hashCode();
        }

        public final String toString() {
            return "BooleanFiltersOverlayScreen(source=" + this.f58149a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearAllFiltersEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClearAllFiltersEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final QafSource f58150a;

        public ClearAllFiltersEvent(QafSource qafSource) {
            qafSource.getClass();
            this.f58150a = qafSource;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ClearAllFiltersEvent) && this.f58150a == ((ClearAllFiltersEvent) obj).f58150a;
        }

        public final int hashCode() {
            return this.f58150a.hashCode();
        }

        public final String toString() {
            return "ClearAllFiltersEvent(source=" + this.f58150a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearFilterEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "", "filterId", "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClearFilterEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final QafSource f58151a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58152b;

        public ClearFilterEvent(QafSource qafSource, String str) {
            str.getClass();
            this.f58151a = qafSource;
            this.f58152b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClearFilterEvent)) {
                return false;
            }
            ClearFilterEvent clearFilterEvent = (ClearFilterEvent) obj;
            return this.f58151a == clearFilterEvent.f58151a && Intrinsics.c(this.f58152b, clearFilterEvent.f58152b);
        }

        public final int hashCode() {
            QafSource qafSource = this.f58151a;
            return this.f58152b.hashCode() + ((qafSource == null ? 0 : qafSource.hashCode()) * 31);
        }

        public final String toString() {
            return "ClearFilterEvent(source=" + this.f58151a + ", filterId=" + this.f58152b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$CloseFiltersEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseFiltersEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CloseFiltersEvent f58153a = new CloseFiltersEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CloseFiltersEvent);
        }

        public final int hashCode() {
            return -1055500179;
        }

        public final String toString() {
            return "CloseFiltersEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$FiltersErrorEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FiltersErrorEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final QafSource f58154a;

        public FiltersErrorEvent(QafSource qafSource) {
            qafSource.getClass();
            this.f58154a = qafSource;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FiltersErrorEvent) && this.f58154a == ((FiltersErrorEvent) obj).f58154a;
        }

        public final int hashCode() {
            return this.f58154a.hashCode();
        }

        public final String toString() {
            return "FiltersErrorEvent(source=" + this.f58154a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "", "isFromScreenOverlay", "wasSelected", "", "filterId", "<init>", "(ZZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HitOnBooleanFilterEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f58155a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f58156b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58157c;

        public HitOnBooleanFilterEvent(boolean z, boolean z2, String str) {
            str.getClass();
            this.f58155a = z;
            this.f58156b = z2;
            this.f58157c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HitOnBooleanFilterEvent)) {
                return false;
            }
            HitOnBooleanFilterEvent hitOnBooleanFilterEvent = (HitOnBooleanFilterEvent) obj;
            return this.f58155a == hitOnBooleanFilterEvent.f58155a && this.f58156b == hitOnBooleanFilterEvent.f58156b && Intrinsics.c(this.f58157c, hitOnBooleanFilterEvent.f58157c);
        }

        public final int hashCode() {
            return this.f58157c.hashCode() + o60.b(Boolean.hashCode(this.f58155a) * 31, 31, this.f58156b);
        }

        public final String toString() {
            return n00.r(this.f58157c, ")", cj.m("HitOnBooleanFilterEvent(isFromScreenOverlay=", ", wasSelected=", ", filterId=", this.f58155a, this.f58156b));
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnSimpleFilterEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "", "wasSelected", "isMultiselect", "", "filterId", "categoryId", "<init>", "(ZZLjava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HitOnSimpleFilterEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f58158a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f58159b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58160c;
        public final String d;

        public HitOnSimpleFilterEvent(boolean z, boolean z2, String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f58158a = z;
            this.f58159b = z2;
            this.f58160c = str;
            this.d = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HitOnSimpleFilterEvent)) {
                return false;
            }
            HitOnSimpleFilterEvent hitOnSimpleFilterEvent = (HitOnSimpleFilterEvent) obj;
            return this.f58158a == hitOnSimpleFilterEvent.f58158a && this.f58159b == hitOnSimpleFilterEvent.f58159b && Intrinsics.c(this.f58160c, hitOnSimpleFilterEvent.f58160c) && Intrinsics.c(this.d, hitOnSimpleFilterEvent.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(o60.b(Boolean.hashCode(this.f58158a) * 31, 31, this.f58159b), 31, this.f58160c);
        }

        public final String toString() {
            return tr.l(cj.m("HitOnSimpleFilterEvent(wasSelected=", ", isMultiselect=", ", filterId=", this.f58158a, this.f58159b), this.f58160c, ", categoryId=", this.d, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnSortFilterEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "", "filterId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HitOnSortFilterEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58161a;

        public HitOnSortFilterEvent(String str) {
            str.getClass();
            this.f58161a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HitOnSortFilterEvent) && Intrinsics.c(this.f58161a, ((HitOnSortFilterEvent) obj).f58161a);
        }

        public final int hashCode() {
            return this.f58161a.hashCode();
        }

        public final String toString() {
            return fc.h("HitOnSortFilterEvent(filterId=", this.f58161a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenBooleansPanelEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenBooleansPanelEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenBooleansPanelEvent f58162a = new OpenBooleansPanelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenBooleansPanelEvent);
        }

        public final int hashCode() {
            return 666469717;
        }

        public final String toString() {
            return "OpenBooleansPanelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenFiltersEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenFiltersEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final QafSource f58163a;

        public OpenFiltersEvent(QafSource qafSource) {
            qafSource.getClass();
            this.f58163a = qafSource;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenFiltersEvent) && this.f58163a == ((OpenFiltersEvent) obj).f58163a;
        }

        public final int hashCode() {
            return this.f58163a.hashCode();
        }

        public final String toString() {
            return "OpenFiltersEvent(source=" + this.f58163a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$OpenSortByPanelEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenSortByPanelEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OpenSortByPanelEvent f58164a = new OpenSortByPanelEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenSortByPanelEvent);
        }

        public final int hashCode() {
            return -244186337;
        }

        public final String toString() {
            return "OpenSortByPanelEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class QuickAccessFiltersScreen implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final QafSource f58165a;

        public QuickAccessFiltersScreen(QafSource qafSource) {
            qafSource.getClass();
            this.f58165a = qafSource;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof QuickAccessFiltersScreen) && this.f58165a == ((QuickAccessFiltersScreen) obj).f58165a;
        }

        public final int hashCode() {
            return this.f58165a.hashCode();
        }

        public final String toString() {
            return "QuickAccessFiltersScreen(source=" + this.f58165a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SortFiltersOverlayScreen;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SortFiltersOverlayScreen implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final QafSource f58166a;

        public SortFiltersOverlayScreen(QafSource qafSource) {
            qafSource.getClass();
            this.f58166a = qafSource;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SortFiltersOverlayScreen) && this.f58166a == ((SortFiltersOverlayScreen) obj).f58166a;
        }

        public final int hashCode() {
            return this.f58166a.hashCode();
        }

        public final String toString() {
            return "SortFiltersOverlayScreen(source=" + this.f58166a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;", "", "categoryId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SwipeSimpleFiltersEvent implements QuickAccessFiltersTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58167a;

        public SwipeSimpleFiltersEvent(String str) {
            str.getClass();
            this.f58167a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SwipeSimpleFiltersEvent) && Intrinsics.c(this.f58167a, ((SwipeSimpleFiltersEvent) obj).f58167a);
        }

        public final int hashCode() {
            return this.f58167a.hashCode();
        }

        public final String toString() {
            return fc.h("SwipeSimpleFiltersEvent(categoryId=", this.f58167a, ")");
        }
    }
}
