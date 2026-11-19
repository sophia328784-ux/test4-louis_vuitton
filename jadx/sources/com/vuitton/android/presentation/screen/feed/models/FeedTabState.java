package com.vuitton.android.presentation.screen.feed.models;

import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;", "", "Loading", "Error", "Success", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class FeedTabState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends FeedTabState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Error f57920a = new Error(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Error);
        }

        public final int hashCode() {
            return -1539113465;
        }

        public final String toString() {
            return "Error";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading extends FeedTabState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f57921a = new Loading(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 196348283;
        }

        public final String toString() {
            return "Loading";
        }
    }

    public FeedTabState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;", "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;", "Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;", "feed", "<init>", "(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends FeedTabState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FeedUiModel f57922a;

        public /* synthetic */ Success(FeedUiModel feedUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? new FeedUiModel(null, 1, null) : feedUiModel);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f57922a, ((Success) obj).f57922a);
        }

        public final int hashCode() {
            return this.f57922a.f57983a.hashCode();
        }

        public final String toString() {
            return "Success(feed=" + this.f57922a + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(FeedUiModel feedUiModel) {
            super(null);
            feedUiModel.getClass();
            this.f57922a = feedUiModel;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Success() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }
}
