package com.vuitton.android.presentation.screen.audioguide.models;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;", "", "BeforeStart", "CardText", "Credits", "TrackDetail", "Leaving", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$BeforeStart;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Credits;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Leaving;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$TrackDetail;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AudioGuideBottomSheet {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$BeforeStart;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BeforeStart implements AudioGuideBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BeforeStart f53153a = new BeforeStart();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BeforeStart);
        }

        public final int hashCode() {
            return -572731736;
        }

        public final String toString() {
            return "BeforeStart";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;", "", "description", "highlightedText", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CardText implements AudioGuideBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53154a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53155b;

        public CardText(String str, String str2) {
            str.getClass();
            this.f53154a = str;
            this.f53155b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CardText)) {
                return false;
            }
            CardText cardText = (CardText) obj;
            return Intrinsics.c(this.f53154a, cardText.f53154a) && Intrinsics.c(this.f53155b, cardText.f53155b);
        }

        public final int hashCode() {
            int iHashCode = this.f53154a.hashCode() * 31;
            String str = this.f53155b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return d21.l("CardText(description=", this.f53154a, ", highlightedText=", this.f53155b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Credits;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;", "", "description", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Credits implements AudioGuideBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53156a;

        public Credits(String str) {
            str.getClass();
            this.f53156a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Credits) && Intrinsics.c(this.f53156a, ((Credits) obj).f53156a);
        }

        public final int hashCode() {
            return this.f53156a.hashCode();
        }

        public final String toString() {
            return fc.h("Credits(description=", this.f53156a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Leaving;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Leaving implements AudioGuideBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Leaving f53157a = new Leaving();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Leaving);
        }

        public final int hashCode() {
            return -494336327;
        }

        public final String toString() {
            return "Leaving";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$TrackDetail;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TrackDetail implements AudioGuideBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TrackDetail f53158a = new TrackDetail();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TrackDetail);
        }

        public final int hashCode() {
            return 1344926721;
        }

        public final String toString() {
            return "TrackDetail";
        }
    }
}
