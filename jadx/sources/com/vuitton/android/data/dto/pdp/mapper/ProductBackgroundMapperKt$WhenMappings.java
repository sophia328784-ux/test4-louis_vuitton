package com.vuitton.android.data.dto.pdp.mapper;

import com.vuitton.android.data.dto.pdp.ProductBackgroundDto;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class ProductBackgroundMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f46304a;

    static {
        int[] iArr = new int[ProductBackgroundDto.values().length];
        try {
            iArr[ProductBackgroundDto.DEFAULT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[ProductBackgroundDto.FLOOR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f46304a = iArr;
    }
}
