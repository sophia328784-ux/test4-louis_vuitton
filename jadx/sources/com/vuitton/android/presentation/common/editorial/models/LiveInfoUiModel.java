package com.vuitton.android.presentation.common.editorial.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;", "", "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;", "status", "Ljava/time/Instant;", "countdownTimestamp", "", "streamUrl", "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;", "format", "replayVideo", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LiveInfoUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LiveVideoStatusUiModel f50863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Instant f50864c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LiveFormatUiModel f50865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f50866f;

    public /* synthetic */ LiveInfoUiModel(String str, LiveVideoStatusUiModel liveVideoStatusUiModel, Instant instant, String str2, LiveFormatUiModel liveFormatUiModel, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, liveVideoStatusUiModel, (i2 & 4) != 0 ? null : instant, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : liveFormatUiModel, (i2 & 32) != 0 ? null : str3, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LiveInfoUiModel)) {
            return false;
        }
        LiveInfoUiModel liveInfoUiModel = (LiveInfoUiModel) obj;
        String str = liveInfoUiModel.f50862a;
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        return Intrinsics.c(this.f50862a, str) && this.f50863b == liveInfoUiModel.f50863b && Intrinsics.c(this.f50864c, liveInfoUiModel.f50864c) && Intrinsics.c(this.d, liveInfoUiModel.d) && this.f50865e == liveInfoUiModel.f50865e && Intrinsics.c(this.f50866f, liveInfoUiModel.f50866f);
    }

    public final int hashCode() {
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        int iHashCode = (this.f50863b.hashCode() + (this.f50862a.hashCode() * 31)) * 31;
        Instant instant = this.f50864c;
        int iHashCode2 = (iHashCode + (instant == null ? 0 : instant.hashCode())) * 31;
        String str = this.d;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        LiveFormatUiModel liveFormatUiModel = this.f50865e;
        int iHashCode4 = (iHashCode3 + (liveFormatUiModel == null ? 0 : liveFormatUiModel.hashCode())) * 31;
        String str2 = this.f50866f;
        return iHashCode4 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        return "LiveInfoUiModel(id=" + this.f50862a + ", status=" + this.f50863b + ", countdownTimestamp=" + this.f50864c + ", streamUrl=" + this.d + ", format=" + this.f50865e + ", replayVideo=" + this.f50866f + ")";
    }

    public LiveInfoUiModel(String str, LiveVideoStatusUiModel liveVideoStatusUiModel, Instant instant, String str2, LiveFormatUiModel liveFormatUiModel, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        liveVideoStatusUiModel.getClass();
        this.f50862a = str;
        this.f50863b = liveVideoStatusUiModel;
        this.f50864c = instant;
        this.d = str2;
        this.f50865e = liveFormatUiModel;
        this.f50866f = str3;
    }
}
