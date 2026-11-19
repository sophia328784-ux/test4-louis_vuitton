package com.vuitton.android.presentation.screen.repairs.detail.components;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen;", "", "BottomSheetInfo", "BottomSheetCancel", "BottomSheetRescheduleCalendar", "Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetCancel;", "Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetInfo;", "Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetRescheduleCalendar;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BottomSheetScreen {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetCancel;", "Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetCancel extends BottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetCancel f63785a = new BottomSheetCancel(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetCancel);
        }

        public final int hashCode() {
            return -456702466;
        }

        public final String toString() {
            return "BottomSheetCancel";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetInfo;", "Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetInfo extends BottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetInfo f63786a = new BottomSheetInfo(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetInfo);
        }

        public final int hashCode() {
            return 522620210;
        }

        public final String toString() {
            return "BottomSheetInfo";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetRescheduleCalendar;", "Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetRescheduleCalendar extends BottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetRescheduleCalendar f63787a = new BottomSheetRescheduleCalendar(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetRescheduleCalendar);
        }

        public final int hashCode() {
            return -851925844;
        }

        public final String toString() {
            return "BottomSheetRescheduleCalendar";
        }
    }

    public BottomSheetScreen(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
