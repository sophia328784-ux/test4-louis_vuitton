package com.vuitton.android.presentation.screen.portal.models.mapper;

import com.vuitton.foundation.model.domain.model.portal.PortalSlideType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class PortalMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f63338a;

    static {
        int[] iArr = new int[PortalSlideType.values().length];
        try {
            iArr[PortalSlideType.CONTENT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        f63338a = iArr;
    }
}
