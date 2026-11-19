package com.vuitton.android.domain.monitoring;

import com.batch.android.v0.a;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/StoryMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface StoryMonitoring {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenStory", "Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Action$OpenStory;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Action$OpenStory;", "Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenStory implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenStory f48806a = new OpenStory();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Story";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenStory);
            }

            public final int hashCode() {
                return -1069642191;
            }

            public final String toString() {
                return "OpenStory";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenStoryError", "Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Error$OpenStoryError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Error$OpenStoryError;", "Lcom/vuitton/android/domain/monitoring/StoryMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenStoryError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48807a;

            public OpenStoryError(Throwable th) {
                th.getClass();
                this.f48807a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48807a() {
                return this.f48807a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenStoryError) && Intrinsics.c(this.f48807a, ((OpenStoryError) obj).f48807a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "open_story_error";
            }

            public final int hashCode() {
                return this.f48807a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenStoryError(error=", ")", this.f48807a);
            }
        }
    }
}
