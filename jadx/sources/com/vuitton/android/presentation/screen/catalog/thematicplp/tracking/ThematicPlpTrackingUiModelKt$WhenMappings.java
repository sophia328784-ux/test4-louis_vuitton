package com.vuitton.android.presentation.screen.catalog.thematicplp.tracking;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class ThematicPlpTrackingUiModelKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f55529a;

    static {
        int[] iArr = new int[TrackingClickType.values().length];
        try {
            iArr[TrackingClickType.SIMPLE_CLICK.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[TrackingClickType.DOUBLE_CLICK.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f55529a = iArr;
    }
}
