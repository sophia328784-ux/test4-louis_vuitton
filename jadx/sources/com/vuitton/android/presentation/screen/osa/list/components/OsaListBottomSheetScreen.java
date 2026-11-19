package com.vuitton.android.presentation.screen.osa.list.components;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen;", "", "BottomSheetPrepare", "BottomSheetCancel", "Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen$BottomSheetCancel;", "Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen$BottomSheetPrepare;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class OsaListBottomSheetScreen {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen$BottomSheetCancel;", "Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetCancel extends OsaListBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetCancel f60883a = new BottomSheetCancel(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetCancel);
        }

        public final int hashCode() {
            return 322622717;
        }

        public final String toString() {
            return "BottomSheetCancel";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen$BottomSheetPrepare;", "Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomSheetPrepare extends OsaListBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BottomSheetPrepare f60884a = new BottomSheetPrepare(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BottomSheetPrepare);
        }

        public final int hashCode() {
            return 542783204;
        }

        public final String toString() {
            return "BottomSheetPrepare";
        }
    }

    public OsaListBottomSheetScreen(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
