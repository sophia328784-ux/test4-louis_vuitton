package com.vuitton.android.data.dto.plp.mapper;

import com.vuitton.android.data.dto.plp.ProductListSectionDataDto;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class ProductListMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f46388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f46389b;

    static {
        int[] iArr = new int[ProductListSectionDataDto.HalfEditoDto.AlignmentDto.values().length];
        try {
            iArr[ProductListSectionDataDto.HalfEditoDto.AlignmentDto.LEFT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[ProductListSectionDataDto.HalfEditoDto.AlignmentDto.CENTER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f46388a = iArr;
        int[] iArr2 = new int[ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto.values().length];
        try {
            iArr2[ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto.SMALL.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto.MEDIUM.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto.LARGE.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        f46389b = iArr2;
    }
}
