package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;", "", "Loading", "Success", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Loading;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Loading;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends TutorialState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f62199a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -1188483199;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;", "tutorial", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends TutorialState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TutorialUiModel f62200a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(TutorialUiModel tutorialUiModel) {
            super(null);
            tutorialUiModel.getClass();
            this.f62200a = tutorialUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f62200a, ((Success) obj).f62200a);
        }

        public final int hashCode() {
            return this.f62200a.hashCode();
        }

        public final String toString() {
            return "Success(tutorial=" + this.f62200a + ")";
        }
    }

    public TutorialState(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
