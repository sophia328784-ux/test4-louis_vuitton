package com.vuitton.android.data.dto.careservices.mapper;

import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceContactMethod;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class CareServiceCreationMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f44957a;

    static {
        int[] iArr = new int[CareServiceContactMethod.values().length];
        try {
            iArr[CareServiceContactMethod.EMAIL.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[CareServiceContactMethod.PHONE_CALL.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[CareServiceContactMethod.VIDEO_CALL.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        f44957a = iArr;
    }
}
