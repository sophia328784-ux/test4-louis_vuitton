package com.vuitton.android.presentation.screen.booking.summary.models;

import defpackage.a;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;", "", "Loading", "Success", "Error", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Error;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Loading;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PreBookViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Error;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements PreBookViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f54827a = new Error();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return -210580158;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Loading;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements PreBookViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f54828a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 1311569398;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;", "Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;", "prebookSummary", "", "isOverlayLoading", "deleteLoading", "<init>", "(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success implements PreBookViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PreBookSummaryUiModel f54829a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f54830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f54831c;

        public /* synthetic */ Success(PreBookSummaryUiModel preBookSummaryUiModel, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(preBookSummaryUiModel, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2);
        }

        public static Success a(Success success, boolean z, int i2) {
            PreBookSummaryUiModel preBookSummaryUiModel = success.f54829a;
            boolean z2 = (i2 & 2) != 0 ? success.f54830b : true;
            if ((i2 & 4) != 0) {
                z = success.f54831c;
            }
            preBookSummaryUiModel.getClass();
            return new Success(preBookSummaryUiModel, z2, z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.c(this.f54829a, success.f54829a) && this.f54830b == success.f54830b && this.f54831c == success.f54831c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f54831c) + o60.b(this.f54829a.hashCode() * 31, 31, this.f54830b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Success(prebookSummary=");
            sb.append(this.f54829a);
            sb.append(", isOverlayLoading=");
            sb.append(this.f54830b);
            sb.append(", deleteLoading=");
            return a.p(sb, this.f54831c, ")");
        }

        public Success(PreBookSummaryUiModel preBookSummaryUiModel, boolean z, boolean z2) {
            preBookSummaryUiModel.getClass();
            this.f54829a = preBookSummaryUiModel;
            this.f54830b = z;
            this.f54831c = z2;
        }
    }
}
