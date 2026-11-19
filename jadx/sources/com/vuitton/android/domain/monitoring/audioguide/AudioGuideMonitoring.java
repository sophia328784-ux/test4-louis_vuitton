package com.vuitton.android.domain.monitoring.audioguide;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AudioGuideMonitoring {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenTableOfContent", "OpenTrackDetail", "Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action$OpenTableOfContent;", "Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action$OpenTrackDetail;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action$OpenTableOfContent;", "Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenTableOfContent implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenTableOfContent f48820a = new OpenTableOfContent();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Table of Contents";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenTableOfContent);
            }

            public final int hashCode() {
                return -1848090543;
            }

            public final String toString() {
                return "OpenTableOfContent";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action$OpenTrackDetail;", "Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenTrackDetail implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenTrackDetail f48821a = new OpenTrackDetail();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Track Page Details";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenTrackDetail);
            }

            public final int hashCode() {
                return -517840705;
            }

            public final String toString() {
                return "OpenTrackDetail";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenTableOfContentError", "OpenTrackDetailError", "Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error$OpenTableOfContentError;", "Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error$OpenTrackDetailError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error$OpenTableOfContentError;", "Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenTableOfContentError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48822a;

            public OpenTableOfContentError(Throwable th) {
                th.getClass();
                this.f48822a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48825a() {
                return this.f48822a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenTableOfContentError) && Intrinsics.c(this.f48822a, ((OpenTableOfContentError) obj).f48822a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "open_table_of_contents_error";
            }

            public final int hashCode() {
                return this.f48822a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenTableOfContentError(error=", ")", this.f48822a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error$OpenTrackDetailError;", "Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenTrackDetailError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48823a;

            public OpenTrackDetailError(Throwable th) {
                th.getClass();
                this.f48823a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48825a() {
                return this.f48823a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenTrackDetailError) && Intrinsics.c(this.f48823a, ((OpenTrackDetailError) obj).f48823a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            public final String getName() {
                return "open_track_page_details_error";
            }

            public final int hashCode() {
                return this.f48823a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenTrackDetailError(error=", ")", this.f48823a);
            }
        }
    }
}
