package com.vuitton.android.presentation.screen.livevideo.models;

import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class LiveVideoStatusUiModelKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f58966a;

    static {
        int[] iArr = new int[LiveVideoStatus.values().length];
        try {
            iArr[LiveVideoStatus.LIVE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[LiveVideoStatus.LIVE_UPCOMING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[LiveVideoStatus.LIVE_DONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[LiveVideoStatus.LIVE_REPLAY.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        f58966a = iArr;
    }
}
