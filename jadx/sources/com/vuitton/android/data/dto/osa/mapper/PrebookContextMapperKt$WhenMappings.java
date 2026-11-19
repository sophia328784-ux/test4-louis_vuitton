package com.vuitton.android.data.dto.osa.mapper;

import com.vuitton.android.data.dto.distantrepairs.PrebookContextDto;
import com.vuitton.foundation.model.domain.model.appointment.PrebookContext;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class PrebookContextMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f46135a;

    static {
        int[] iArr = new int[PrebookContextDto.values().length];
        try {
            iArr[PrebookContextDto.ONLINE_STORE_APPOINTMENT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[PrebookContextDto.CARE_SERVICE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        int[] iArr2 = new int[PrebookContext.values().length];
        try {
            iArr2[PrebookContext.ONLINE_STORE_APPOINTMENT.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[PrebookContext.CARE_SERVICE.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        f46135a = iArr2;
    }
}
