package com.vuitton.android.presentation.screen.audioguide.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u001e\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u0082\u0001\u001e !\"#$%&'()*+,-./0123456789:;<=¨\u0006>À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "AudioGuideScreen", "TrackDetailScreen", "StartBottomSheetScreen", "LeaveBottomSheetScreen", "OnHitStartEvent", "OnHitLeaveEvent", "OnHitContinueEvent", "OnHitExitEvent", "OnHitLanguageSelectorEvent", "OnLanguageSelectedEvent", "OnHitNarratorCardEvent", "OnHitTrackListItemEvent", "OnHitPlayMiniPlayerMainScreenEvent", "OnHitPauseMiniPlayerMainScreenEvent", "OnHitNextMiniPlayerMainScreenEvent", "OnHitNextCoverEvent", "OnHitPreviousCoverEvent", "OnHitPlayEvent", "OnHitPauseEvent", "OnHitPlus15sEvent", "OnHitMinus15sEvent", "OnHitTranscriptEvent", "OnHitListeningQueueEvent", "OnHitSpeedEvent", "OnHitCarouselCardEvent", "OnSwipeCarouselEvent", "OnHitNextContentEvent", "OnHitPlayMiniPlayerTrackDetailEvent", "OnHitPauseMiniPlayerTrackDetailEvent", "OnHitNextMiniPlayerTrackDetailEvent", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$AudioGuideScreen;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$LeaveBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitCarouselCardEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitContinueEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitExitEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLanguageSelectorEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLeaveEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitListeningQueueEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitMinus15sEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNarratorCardEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextContentEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextCoverEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextMiniPlayerMainScreenEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextMiniPlayerTrackDetailEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerMainScreenEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerTrackDetailEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerMainScreenEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerTrackDetailEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlus15sEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPreviousCoverEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitSpeedEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitStartEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTrackListItemEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTranscriptEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnLanguageSelectedEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnSwipeCarouselEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$StartBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$TrackDetailScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AudioGuideTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$AudioGuideScreen;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AudioGuideScreen implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AudioGuideScreen f53162a = new AudioGuideScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AudioGuideScreen);
        }

        public final int hashCode() {
            return -727789085;
        }

        public final String toString() {
            return "AudioGuideScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$LeaveBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LeaveBottomSheetScreen implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LeaveBottomSheetScreen f53163a = new LeaveBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LeaveBottomSheetScreen);
        }

        public final int hashCode() {
            return 2116029914;
        }

        public final String toString() {
            return "LeaveBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitCarouselCardEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", ConfigurationName.KEY, "", "position", "<init>", "(Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitCarouselCardEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53164a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f53165b;

        public OnHitCarouselCardEvent(String str, int i2) {
            str.getClass();
            this.f53164a = str;
            this.f53165b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitCarouselCardEvent)) {
                return false;
            }
            OnHitCarouselCardEvent onHitCarouselCardEvent = (OnHitCarouselCardEvent) obj;
            return Intrinsics.c(this.f53164a, onHitCarouselCardEvent.f53164a) && this.f53165b == onHitCarouselCardEvent.f53165b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f53165b) + (this.f53164a.hashCode() * 31);
        }

        public final String toString() {
            return "OnHitCarouselCardEvent(key=" + this.f53164a + ", position=" + this.f53165b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitContinueEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitContinueEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitContinueEvent f53166a = new OnHitContinueEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitContinueEvent);
        }

        public final int hashCode() {
            return -1680356816;
        }

        public final String toString() {
            return "OnHitContinueEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitExitEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitExitEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitExitEvent f53167a = new OnHitExitEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitExitEvent);
        }

        public final int hashCode() {
            return -1117456743;
        }

        public final String toString() {
            return "OnHitExitEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLanguageSelectorEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitLanguageSelectorEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitLanguageSelectorEvent f53168a = new OnHitLanguageSelectorEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitLanguageSelectorEvent);
        }

        public final int hashCode() {
            return -908704640;
        }

        public final String toString() {
            return "OnHitLanguageSelectorEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitLeaveEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitLeaveEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitLeaveEvent f53169a = new OnHitLeaveEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitLeaveEvent);
        }

        public final int hashCode() {
            return -86314170;
        }

        public final String toString() {
            return "OnHitLeaveEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitListeningQueueEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "trackTitle", "", "isEnabled", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitListeningQueueEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53170a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f53171b;

        public OnHitListeningQueueEvent(String str, boolean z) {
            str.getClass();
            this.f53170a = str;
            this.f53171b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitListeningQueueEvent)) {
                return false;
            }
            OnHitListeningQueueEvent onHitListeningQueueEvent = (OnHitListeningQueueEvent) obj;
            return Intrinsics.c(this.f53170a, onHitListeningQueueEvent.f53170a) && this.f53171b == onHitListeningQueueEvent.f53171b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f53171b) + (this.f53170a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("OnHitListeningQueueEvent(trackTitle=", this.f53170a, ", isEnabled=", ")", this.f53171b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitMinus15sEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "trackTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitMinus15sEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53172a;

        public OnHitMinus15sEvent(String str) {
            str.getClass();
            this.f53172a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitMinus15sEvent) && Intrinsics.c(this.f53172a, ((OnHitMinus15sEvent) obj).f53172a);
        }

        public final int hashCode() {
            return this.f53172a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitMinus15sEvent(trackTitle=", this.f53172a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNarratorCardEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitNarratorCardEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitNarratorCardEvent f53173a = new OnHitNarratorCardEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitNarratorCardEvent);
        }

        public final int hashCode() {
            return 1362871774;
        }

        public final String toString() {
            return "OnHitNarratorCardEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextContentEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitNextContentEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitNextContentEvent f53174a = new OnHitNextContentEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitNextContentEvent);
        }

        public final int hashCode() {
            return 2095168279;
        }

        public final String toString() {
            return "OnHitNextContentEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextCoverEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitNextCoverEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitNextCoverEvent f53175a = new OnHitNextCoverEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitNextCoverEvent);
        }

        public final int hashCode() {
            return -1831249895;
        }

        public final String toString() {
            return "OnHitNextCoverEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextMiniPlayerMainScreenEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitNextMiniPlayerMainScreenEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitNextMiniPlayerMainScreenEvent f53176a = new OnHitNextMiniPlayerMainScreenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitNextMiniPlayerMainScreenEvent);
        }

        public final int hashCode() {
            return 337258279;
        }

        public final String toString() {
            return "OnHitNextMiniPlayerMainScreenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitNextMiniPlayerTrackDetailEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitNextMiniPlayerTrackDetailEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitNextMiniPlayerTrackDetailEvent f53177a = new OnHitNextMiniPlayerTrackDetailEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitNextMiniPlayerTrackDetailEvent);
        }

        public final int hashCode() {
            return -733600852;
        }

        public final String toString() {
            return "OnHitNextMiniPlayerTrackDetailEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "trackTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitPauseEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53178a;

        public OnHitPauseEvent(String str) {
            str.getClass();
            this.f53178a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitPauseEvent) && Intrinsics.c(this.f53178a, ((OnHitPauseEvent) obj).f53178a);
        }

        public final int hashCode() {
            return this.f53178a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitPauseEvent(trackTitle=", this.f53178a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerMainScreenEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitPauseMiniPlayerMainScreenEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitPauseMiniPlayerMainScreenEvent f53179a = new OnHitPauseMiniPlayerMainScreenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitPauseMiniPlayerMainScreenEvent);
        }

        public final int hashCode() {
            return -1411313366;
        }

        public final String toString() {
            return "OnHitPauseMiniPlayerMainScreenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseMiniPlayerTrackDetailEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitPauseMiniPlayerTrackDetailEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitPauseMiniPlayerTrackDetailEvent f53180a = new OnHitPauseMiniPlayerTrackDetailEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitPauseMiniPlayerTrackDetailEvent);
        }

        public final int hashCode() {
            return 895253001;
        }

        public final String toString() {
            return "OnHitPauseMiniPlayerTrackDetailEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "trackTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitPlayEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53181a;

        public OnHitPlayEvent(String str) {
            str.getClass();
            this.f53181a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitPlayEvent) && Intrinsics.c(this.f53181a, ((OnHitPlayEvent) obj).f53181a);
        }

        public final int hashCode() {
            return this.f53181a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitPlayEvent(trackTitle=", this.f53181a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerMainScreenEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitPlayMiniPlayerMainScreenEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitPlayMiniPlayerMainScreenEvent f53182a = new OnHitPlayMiniPlayerMainScreenEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitPlayMiniPlayerMainScreenEvent);
        }

        public final int hashCode() {
            return -546881018;
        }

        public final String toString() {
            return "OnHitPlayMiniPlayerMainScreenEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayMiniPlayerTrackDetailEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitPlayMiniPlayerTrackDetailEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitPlayMiniPlayerTrackDetailEvent f53183a = new OnHitPlayMiniPlayerTrackDetailEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitPlayMiniPlayerTrackDetailEvent);
        }

        public final int hashCode() {
            return 1922852013;
        }

        public final String toString() {
            return "OnHitPlayMiniPlayerTrackDetailEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlus15sEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "trackTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitPlus15sEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53184a;

        public OnHitPlus15sEvent(String str) {
            str.getClass();
            this.f53184a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitPlus15sEvent) && Intrinsics.c(this.f53184a, ((OnHitPlus15sEvent) obj).f53184a);
        }

        public final int hashCode() {
            return this.f53184a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitPlus15sEvent(trackTitle=", this.f53184a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPreviousCoverEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitPreviousCoverEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitPreviousCoverEvent f53185a = new OnHitPreviousCoverEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitPreviousCoverEvent);
        }

        public final int hashCode() {
            return 291752349;
        }

        public final String toString() {
            return "OnHitPreviousCoverEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitSpeedEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "speedValue", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitSpeedEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53186a;

        public OnHitSpeedEvent(String str) {
            str.getClass();
            this.f53186a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitSpeedEvent) && Intrinsics.c(this.f53186a, ((OnHitSpeedEvent) obj).f53186a);
        }

        public final int hashCode() {
            return this.f53186a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitSpeedEvent(speedValue=", this.f53186a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitStartEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitStartEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitStartEvent f53187a = new OnHitStartEvent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitStartEvent);
        }

        public final int hashCode() {
            return -1629532037;
        }

        public final String toString() {
            return "OnHitStartEvent";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTrackListItemEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "trackTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitTrackListItemEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53188a;

        public OnHitTrackListItemEvent(String str) {
            str.getClass();
            this.f53188a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnHitTrackListItemEvent) && Intrinsics.c(this.f53188a, ((OnHitTrackListItemEvent) obj).f53188a);
        }

        public final int hashCode() {
            return this.f53188a.hashCode();
        }

        public final String toString() {
            return fc.h("OnHitTrackListItemEvent(trackTitle=", this.f53188a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitTranscriptEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "trackTitle", "", "isEnabled", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitTranscriptEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f53190b;

        public OnHitTranscriptEvent(String str, boolean z) {
            str.getClass();
            this.f53189a = str;
            this.f53190b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitTranscriptEvent)) {
                return false;
            }
            OnHitTranscriptEvent onHitTranscriptEvent = (OnHitTranscriptEvent) obj;
            return Intrinsics.c(this.f53189a, onHitTranscriptEvent.f53189a) && this.f53190b == onHitTranscriptEvent.f53190b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f53190b) + (this.f53189a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("OnHitTranscriptEvent(trackTitle=", this.f53189a, ", isEnabled=", ")", this.f53190b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnLanguageSelectedEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", "languageId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnLanguageSelectedEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53191a;

        public OnLanguageSelectedEvent(String str) {
            str.getClass();
            this.f53191a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnLanguageSelectedEvent) && Intrinsics.c(this.f53191a, ((OnLanguageSelectedEvent) obj).f53191a);
        }

        public final int hashCode() {
            return this.f53191a.hashCode();
        }

        public final String toString() {
            return fc.h("OnLanguageSelectedEvent(languageId=", this.f53191a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnSwipeCarouselEvent;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "", ConfigurationName.KEY, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSwipeCarouselEvent implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53192a;

        public OnSwipeCarouselEvent(String str) {
            str.getClass();
            this.f53192a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnSwipeCarouselEvent) && Intrinsics.c(this.f53192a, ((OnSwipeCarouselEvent) obj).f53192a);
        }

        public final int hashCode() {
            return this.f53192a.hashCode();
        }

        public final String toString() {
            return fc.h("OnSwipeCarouselEvent(key=", this.f53192a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$StartBottomSheetScreen;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StartBottomSheetScreen implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final StartBottomSheetScreen f53193a = new StartBottomSheetScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof StartBottomSheetScreen);
        }

        public final int hashCode() {
            return 916538255;
        }

        public final String toString() {
            return "StartBottomSheetScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$TrackDetailScreen;", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TrackDetailScreen implements AudioGuideTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TrackDetailScreen f53194a = new TrackDetailScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TrackDetailScreen);
        }

        public final int hashCode() {
            return 254813719;
        }

        public final String toString() {
            return "TrackDetailScreen";
        }
    }
}
