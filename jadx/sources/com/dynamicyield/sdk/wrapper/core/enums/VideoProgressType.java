package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;", "", "VIDEO_STARTED", "PREROLL_FINISHED", "VIDEO_FINISHED", "VIDEO_PROGRESS", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoProgressType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VideoProgressType[] $VALUES;
    public static final VideoProgressType PREROLL_FINISHED;
    public static final VideoProgressType VIDEO_FINISHED;
    public static final VideoProgressType VIDEO_PROGRESS;
    public static final VideoProgressType VIDEO_STARTED;

    static {
        VideoProgressType videoProgressType = new VideoProgressType("VIDEO_STARTED", 0);
        VIDEO_STARTED = videoProgressType;
        VideoProgressType videoProgressType2 = new VideoProgressType("PREROLL_FINISHED", 1);
        PREROLL_FINISHED = videoProgressType2;
        VideoProgressType videoProgressType3 = new VideoProgressType("VIDEO_FINISHED", 2);
        VIDEO_FINISHED = videoProgressType3;
        VideoProgressType videoProgressType4 = new VideoProgressType("VIDEO_PROGRESS", 3);
        VIDEO_PROGRESS = videoProgressType4;
        VideoProgressType[] videoProgressTypeArr = {videoProgressType, videoProgressType2, videoProgressType3, videoProgressType4};
        $VALUES = videoProgressTypeArr;
        $ENTRIES = EnumEntriesKt.a(videoProgressTypeArr);
    }

    public static VideoProgressType valueOf(String str) {
        return (VideoProgressType) Enum.valueOf(VideoProgressType.class, str);
    }

    public static VideoProgressType[] values() {
        return (VideoProgressType[]) $VALUES.clone();
    }
}
