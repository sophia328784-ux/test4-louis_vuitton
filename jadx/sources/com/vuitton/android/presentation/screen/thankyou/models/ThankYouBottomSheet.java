package com.vuitton.android.presentation.screen.thankyou.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet;", "", "Feedback", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet$Feedback;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ThankYouBottomSheet {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet$Feedback;", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Feedback implements ThankYouBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Feedback f65281a = new Feedback();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Feedback);
        }

        public final int hashCode() {
            return -1090544450;
        }

        public final String toString() {
            return "Feedback";
        }
    }
}
