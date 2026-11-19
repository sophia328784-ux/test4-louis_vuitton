package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;", "", "BottomSheetLegal", "BottomSheetCalendar", "BottomSheetDeletion", "BottomSheetTutorial", "BottomSheetPrepare", "BottomSheetExcludedRegion", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetCalendar;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetDeletion;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetExcludedRegion;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetLegal;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetPrepare;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetTutorial;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairFormBottomSheetScreen {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetCalendar;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetCalendar extends DistantRepairFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetCalendar f57243a = new BottomSheetCalendar(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetCalendar);
        }

        public final int hashCode() {
            return -1805913174;
        }

        public final String toString() {
            return "BottomSheetCalendar";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetDeletion;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;", "", "photoPosition", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetDeletion extends DistantRepairFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f57244a;

        public BottomSheetDeletion(int i2) {
            super(null);
            this.f57244a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BottomSheetDeletion) && this.f57244a == ((BottomSheetDeletion) obj).f57244a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f57244a);
        }

        public final String toString() {
            return n00.m(this.f57244a, "BottomSheetDeletion(photoPosition=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetExcludedRegion;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetExcludedRegion extends DistantRepairFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetExcludedRegion f57245a = new BottomSheetExcludedRegion(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetExcludedRegion);
        }

        public final int hashCode() {
            return 1214048458;
        }

        public final String toString() {
            return "BottomSheetExcludedRegion";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetLegal;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetLegal extends DistantRepairFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetLegal f57246a = new BottomSheetLegal(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetLegal);
        }

        public final int hashCode() {
            return -1717493299;
        }

        public final String toString() {
            return "BottomSheetLegal";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetPrepare;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetPrepare extends DistantRepairFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetPrepare f57247a = new BottomSheetPrepare(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetPrepare);
        }

        public final int hashCode() {
            return -1617799397;
        }

        public final String toString() {
            return "BottomSheetPrepare";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetTutorial;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetTutorial extends DistantRepairFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetTutorial f57248a = new BottomSheetTutorial(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetTutorial);
        }

        public final int hashCode() {
            return -1434311734;
        }

        public final String toString() {
            return "BottomSheetTutorial";
        }
    }

    public DistantRepairFormBottomSheetScreen(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
