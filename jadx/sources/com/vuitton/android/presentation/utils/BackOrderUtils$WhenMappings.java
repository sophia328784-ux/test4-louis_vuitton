package com.vuitton.android.presentation.utils;

import com.vuitton.foundation.model.domain.model.product.availability.AvailabilityTimeFormat;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class BackOrderUtils$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f65831a;

    static {
        int[] iArr = new int[AvailabilityTimeFormat.values().length];
        try {
            iArr[AvailabilityTimeFormat.DAY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[AvailabilityTimeFormat.WEEK.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[AvailabilityTimeFormat.MONTH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        f65831a = iArr;
    }
}
