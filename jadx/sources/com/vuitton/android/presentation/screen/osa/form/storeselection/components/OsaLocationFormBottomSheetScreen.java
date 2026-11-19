package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;", "", "OsaFormCalendarBottomSheet", "OsaModificationAbortBottomSheet", "OsaPreBookErrorBottomSheet", "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaFormCalendarBottomSheet;", "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaModificationAbortBottomSheet;", "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaPreBookErrorBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class OsaLocationFormBottomSheetScreen {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaFormCalendarBottomSheet;", "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OsaFormCalendarBottomSheet extends OsaLocationFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OsaFormCalendarBottomSheet f60803a = new OsaFormCalendarBottomSheet(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OsaFormCalendarBottomSheet);
        }

        public final int hashCode() {
            return 855103178;
        }

        public final String toString() {
            return "OsaFormCalendarBottomSheet";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaModificationAbortBottomSheet;", "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OsaModificationAbortBottomSheet extends OsaLocationFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OsaModificationAbortBottomSheet f60804a = new OsaModificationAbortBottomSheet(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OsaModificationAbortBottomSheet);
        }

        public final int hashCode() {
            return -6486264;
        }

        public final String toString() {
            return "OsaModificationAbortBottomSheet";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaPreBookErrorBottomSheet;", "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OsaPreBookErrorBottomSheet extends OsaLocationFormBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60805a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OsaPreBookErrorBottomSheet(String str) {
            super(null);
            str.getClass();
            this.f60805a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OsaPreBookErrorBottomSheet) && Intrinsics.c(this.f60805a, ((OsaPreBookErrorBottomSheet) obj).f60805a);
        }

        public final int hashCode() {
            return this.f60805a.hashCode();
        }

        public final String toString() {
            return fc.h("OsaPreBookErrorBottomSheet(message=", this.f60805a, ")");
        }
    }

    public OsaLocationFormBottomSheetScreen(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
