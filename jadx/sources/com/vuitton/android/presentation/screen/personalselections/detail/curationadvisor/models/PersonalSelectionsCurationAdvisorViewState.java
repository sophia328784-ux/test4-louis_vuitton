package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models;

import com.vuitton.android.presentation.screen.personalselections.detail.models.PersonalSelectionsDetailUiModel;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;", "", "Success", "Loading", "Error", "Expired", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Error;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Expired;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Loading;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Error;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends PersonalSelectionsCurationAdvisorViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f62504a = new Error(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return 1021596558;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Expired;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Expired extends PersonalSelectionsCurationAdvisorViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Expired f62505a = new Expired(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Expired);
        }

        public final int hashCode() {
            return -1623466197;
        }

        public final String toString() {
            return "Expired";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Loading;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends PersonalSelectionsCurationAdvisorViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f62506a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 22419778;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public PersonalSelectionsCurationAdvisorViewState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;", "selection", "", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "isUserConnected", "isArAvailable", "<init>", "(Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;ZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends PersonalSelectionsCurationAdvisorViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PersonalSelectionsDetailUiModel f62507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f62508b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f62509c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f62510e;

        public /* synthetic */ Success(PersonalSelectionsDetailUiModel personalSelectionsDetailUiModel, boolean z, boolean z2, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(personalSelectionsDetailUiModel, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? false : z4);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.c(this.f62507a, success.f62507a) && this.f62508b == success.f62508b && this.f62509c == success.f62509c && this.d == success.d && this.f62510e == success.f62510e;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f62510e) + o60.b(o60.b(o60.b(this.f62507a.hashCode() * 31, 31, this.f62508b), 31, this.f62509c), 31, this.d);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Success(selection=");
            sb.append(this.f62507a);
            sb.append(", isPlpV3GridViewEnabled=");
            sb.append(this.f62508b);
            sb.append(", isAiCompanionEnabled=");
            fc.y(sb, this.f62509c, ", isUserConnected=", this.d, ", isArAvailable=");
            return a.p(sb, this.f62510e, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(PersonalSelectionsDetailUiModel personalSelectionsDetailUiModel, boolean z, boolean z2, boolean z3, boolean z4) {
            super(null);
            personalSelectionsDetailUiModel.getClass();
            this.f62507a = personalSelectionsDetailUiModel;
            this.f62508b = z;
            this.f62509c = z2;
            this.d = z3;
            this.f62510e = z4;
        }
    }
}
