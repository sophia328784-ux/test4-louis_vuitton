package com.vuitton.android.presentation.screen.exclusivesales.models;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel;", "", "ExclusiveSalesListScreen", "ExclusiveSalesSelectionEvent", "Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesListScreen;", "Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesSelectionEvent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ExclusiveSalesTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesListScreen;", "Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel;", "", "dimId", "", "isEligible", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExclusiveSalesListScreen implements ExclusiveSalesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57568a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f57569b;

        public ExclusiveSalesListScreen(String str, boolean z) {
            str.getClass();
            this.f57568a = str;
            this.f57569b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExclusiveSalesListScreen)) {
                return false;
            }
            ExclusiveSalesListScreen exclusiveSalesListScreen = (ExclusiveSalesListScreen) obj;
            return Intrinsics.c(this.f57568a, exclusiveSalesListScreen.f57568a) && this.f57569b == exclusiveSalesListScreen.f57569b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f57569b) + (this.f57568a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("ExclusiveSalesListScreen(dimId=", this.f57568a, ", isEligible=", ")", this.f57569b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel$ExclusiveSalesSelectionEvent;", "Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesTrackingUiModel;", "", "dimId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExclusiveSalesSelectionEvent implements ExclusiveSalesTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57570a;

        public ExclusiveSalesSelectionEvent(String str) {
            str.getClass();
            this.f57570a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExclusiveSalesSelectionEvent) && Intrinsics.c(this.f57570a, ((ExclusiveSalesSelectionEvent) obj).f57570a);
        }

        public final int hashCode() {
            return this.f57570a.hashCode();
        }

        public final String toString() {
            return fc.h("ExclusiveSalesSelectionEvent(dimId=", this.f57570a, ")");
        }
    }
}
