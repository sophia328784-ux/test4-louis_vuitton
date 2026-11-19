package com.vuitton.android.presentation.screen.story.components;

import com.vuitton.android.presentation.screen.story.StoryNavigationType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel;", "", "StoryScreen", "NavigationInStoryEvent", "OnHitCTAStoryEvent", "OnCloseStoryEvent", "Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$NavigationInStoryEvent;", "Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$OnCloseStoryEvent;", "Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$OnHitCTAStoryEvent;", "Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$StoryScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StoryTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$NavigationInStoryEvent;", "Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/story/StoryNavigationType;", "action", "<init>", "(Lcom/vuitton/android/presentation/screen/story/StoryNavigationType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NavigationInStoryEvent extends StoryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StoryNavigationType f65149a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigationInStoryEvent(StoryNavigationType storyNavigationType) {
            super(null);
            storyNavigationType.getClass();
            this.f65149a = storyNavigationType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NavigationInStoryEvent) && this.f65149a == ((NavigationInStoryEvent) obj).f65149a;
        }

        public final int hashCode() {
            return this.f65149a.hashCode();
        }

        public final String toString() {
            return "NavigationInStoryEvent(action=" + this.f65149a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$OnCloseStoryEvent;", "Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCloseStoryEvent extends StoryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnCloseStoryEvent f65150a = new OnCloseStoryEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnCloseStoryEvent);
        }

        public final int hashCode() {
            return 1803825977;
        }

        public final String toString() {
            return "OnCloseStoryEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$OnHitCTAStoryEvent;", "Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitCTAStoryEvent extends StoryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final OnHitCTAStoryEvent f65151a = new OnHitCTAStoryEvent(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnHitCTAStoryEvent);
        }

        public final int hashCode() {
            return 690814726;
        }

        public final String toString() {
            return "OnHitCTAStoryEvent";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel$StoryScreen;", "Lcom/vuitton/android/presentation/screen/story/components/StoryTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoryScreen extends StoryTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final StoryScreen f65152a = new StoryScreen(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof StoryScreen);
        }

        public final int hashCode() {
            return 192994908;
        }

        public final String toString() {
            return "StoryScreen";
        }
    }

    public StoryTrackingUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
