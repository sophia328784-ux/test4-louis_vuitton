package com.vuitton.android.presentation.screen.video.models;

import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/models/VideoViewState;", "", "", "videoUrl", "subtitlesUrl", "", "videoPlayPosition", "<init>", "(Ljava/lang/String;Ljava/lang/String;J)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VideoViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f65443c;

    public /* synthetic */ VideoViewState(String str, String str2, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? 0L : j2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoViewState)) {
            return false;
        }
        VideoViewState videoViewState = (VideoViewState) obj;
        return Intrinsics.c(this.f65441a, videoViewState.f65441a) && Intrinsics.c(this.f65442b, videoViewState.f65442b) && this.f65443c == videoViewState.f65443c;
    }

    public final int hashCode() {
        String str = this.f65441a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f65442b;
        return Long.hashCode(this.f65443c) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return o60.j(this.f65443c, ")", fc.s("VideoViewState(videoUrl=", this.f65441a, ", subtitlesUrl=", this.f65442b, ", videoPlayPosition="));
    }

    public VideoViewState(String str, String str2, long j2) {
        this.f65441a = str;
        this.f65442b = str2;
        this.f65443c = j2;
    }

    public VideoViewState() {
        this(null, null, 0L, 7, null);
    }
}
