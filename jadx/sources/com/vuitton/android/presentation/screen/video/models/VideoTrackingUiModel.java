package com.vuitton.android.presentation.screen.video.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel;", "", "VideoStarted", "VideoCompleted", "MilestonePassed", "Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$MilestonePassed;", "Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$VideoCompleted;", "Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$VideoStarted;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface VideoTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$MilestonePassed;", "Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel;", "", "milestone", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MilestonePassed implements VideoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65438a;

        public MilestonePassed(String str) {
            str.getClass();
            this.f65438a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MilestonePassed) && Intrinsics.c(this.f65438a, ((MilestonePassed) obj).f65438a);
        }

        public final int hashCode() {
            return this.f65438a.hashCode();
        }

        public final String toString() {
            return fc.h("MilestonePassed(milestone=", this.f65438a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$VideoCompleted;", "Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VideoCompleted implements VideoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final VideoCompleted f65439a = new VideoCompleted();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof VideoCompleted);
        }

        public final int hashCode() {
            return -457645911;
        }

        public final String toString() {
            return "VideoCompleted";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel$VideoStarted;", "Lcom/vuitton/android/presentation/screen/video/models/VideoTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VideoStarted implements VideoTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final VideoStarted f65440a = new VideoStarted();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof VideoStarted);
        }

        public final int hashCode() {
            return -162125217;
        }

        public final String toString() {
            return "VideoStarted";
        }
    }
}
