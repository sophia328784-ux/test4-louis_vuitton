package com.vuitton.android.data.dto.careservices.mapper;

import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class RepairTypeMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f44959a;

    static {
        int[] iArr = new int[RepairTypeDto.values().length];
        try {
            iArr[RepairTypeDto.DISTANT_CARE_SERVICE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[RepairTypeDto.STORE_CARE_SERVICE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f44959a = iArr;
        int[] iArr2 = new int[RepairType.values().length];
        try {
            iArr2[RepairType.DISTANT_CARE_SERVICE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[RepairType.STORE_CARE_SERVICE.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
