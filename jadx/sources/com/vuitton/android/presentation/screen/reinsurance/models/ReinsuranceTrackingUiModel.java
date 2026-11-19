package com.vuitton.android.presentation.screen.reinsurance.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel;", "", "OpenReinsurance", "CloseReinsurance", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ReinsuranceTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;", "item", "<init>", "(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseReinsurance implements ReinsuranceTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ReinsuranceUiModel f63434a;

        public CloseReinsurance(ReinsuranceUiModel reinsuranceUiModel) {
            this.f63434a = reinsuranceUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CloseReinsurance) && Intrinsics.c(this.f63434a, ((CloseReinsurance) obj).f63434a);
        }

        public final int hashCode() {
            ReinsuranceUiModel reinsuranceUiModel = this.f63434a;
            if (reinsuranceUiModel == null) {
                return 0;
            }
            return reinsuranceUiModel.hashCode();
        }

        public final String toString() {
            return "CloseReinsurance(item=" + this.f63434a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;", "item", "<init>", "(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenReinsurance implements ReinsuranceTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ReinsuranceUiModel f63435a;

        public OpenReinsurance(ReinsuranceUiModel reinsuranceUiModel) {
            this.f63435a = reinsuranceUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenReinsurance) && Intrinsics.c(this.f63435a, ((OpenReinsurance) obj).f63435a);
        }

        public final int hashCode() {
            ReinsuranceUiModel reinsuranceUiModel = this.f63435a;
            if (reinsuranceUiModel == null) {
                return 0;
            }
            return reinsuranceUiModel.hashCode();
        }

        public final String toString() {
            return "OpenReinsurance(item=" + this.f63435a + ")";
        }
    }
}
