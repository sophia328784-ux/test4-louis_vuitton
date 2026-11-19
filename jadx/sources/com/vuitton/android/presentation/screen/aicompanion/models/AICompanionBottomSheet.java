package com.vuitton.android.presentation.screen.aicompanion.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet;", "", "LegalMention", "Exit", "Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet$Exit;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet$LegalMention;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AICompanionBottomSheet {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet$Exit;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Exit implements AICompanionBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Exit f52887a = new Exit();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Exit);
        }

        public final int hashCode() {
            return 2004020001;
        }

        public final String toString() {
            return "Exit";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet$LegalMention;", "Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LegalMention implements AICompanionBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LegalMention f52888a = new LegalMention();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LegalMention);
        }

        public final int hashCode() {
            return -2109603852;
        }

        public final String toString() {
            return "LegalMention";
        }
    }
}
