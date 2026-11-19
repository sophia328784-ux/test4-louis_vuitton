package com.vuitton.android.data.dto.common.editorial.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDto;
import com.vuitton.android.data.dto.common.editorial.HeaderDto;
import com.vuitton.android.data.dto.common.editorial.TargetingDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.common.editorial.Header;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditorialSectionMapperKt {
    public static final EditorialModule a(EditorialSectionDto editorialSectionDto) {
        Object failure;
        Header header;
        Header header2;
        editorialSectionDto.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            EditorialModuleDto editorialModuleDto = editorialSectionDto.f45346c;
            String str = editorialSectionDto.f45344a;
            if (editorialModuleDto instanceof EditorialModuleDto.CardSectionDto) {
                failure = EditorialModuleMapperKt.b((EditorialModuleDto.CardSectionDto) editorialModuleDto, str);
            } else if (editorialModuleDto instanceof EditorialModuleDto.EventSectionDto) {
                failure = EditorialModuleMapperKt.f((EditorialModuleDto.EventSectionDto) editorialModuleDto, str);
            } else if (editorialModuleDto instanceof EditorialModuleDto.LiveSectionDto) {
                failure = EditorialModuleMapperKt.g((EditorialModuleDto.LiveSectionDto) editorialModuleDto, str);
            } else if (editorialModuleDto instanceof EditorialModuleDto.HighlightCardSectionDto) {
                EditorialModuleDto.HighlightCardSectionDto highlightCardSectionDto = (EditorialModuleDto.HighlightCardSectionDto) editorialModuleDto;
                str.getClass();
                String str2 = highlightCardSectionDto.f45305b;
                String str3 = highlightCardSectionDto.f45306c;
                AssetImageDto assetImageDto = highlightCardSectionDto.d;
                AssetImage assetImageB = assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null;
                TargetingDto targetingDto = highlightCardSectionDto.f45307e;
                failure = new EditorialModule.HighlightCard(str, str2, str3, assetImageB, targetingDto != null ? EditorialModuleMapperKt.m(targetingDto) : null);
            } else if (editorialModuleDto instanceof EditorialModuleDto.SlideShowSectionDto) {
                failure = EditorialModuleMapperKt.i((EditorialModuleDto.SlideShowSectionDto) editorialModuleDto, str);
            } else if (editorialModuleDto instanceof EditorialModuleDto.CarouselMediumSectionDto) {
                failure = EditorialModuleMapperKt.e((EditorialModuleDto.CarouselMediumSectionDto) editorialModuleDto, str);
            } else if (editorialModuleDto instanceof EditorialModuleDto.CarouselLargeMultipleSectionDto) {
                failure = EditorialModuleMapperKt.c((EditorialModuleDto.CarouselLargeMultipleSectionDto) editorialModuleDto, str);
            } else if (editorialModuleDto instanceof EditorialModuleDto.CarouselLargeSingleSectionDto) {
                failure = EditorialModuleMapperKt.d((EditorialModuleDto.CarouselLargeSingleSectionDto) editorialModuleDto, str);
            } else if (editorialModuleDto instanceof EditorialModuleDto.CarouselSmallSectionDto) {
                EditorialModuleDto.CarouselSmallSectionDto carouselSmallSectionDto = (EditorialModuleDto.CarouselSmallSectionDto) editorialModuleDto;
                str.getClass();
                HeaderDto headerDto = carouselSmallSectionDto.f45292b;
                if (headerDto != null) {
                    String str4 = headerDto.f45353a;
                    String str5 = headerDto.f45354b;
                    AssetImageDto assetImageDto2 = headerDto.f45355c;
                    header2 = new Header(str4, str5, assetImageDto2 != null ? AssetMapperKt.b(assetImageDto2) : null);
                } else {
                    header2 = null;
                }
                failure = new EditorialModule.CarouselSmall(str, header2, EditorialModuleMapperKt.a(carouselSmallSectionDto.f45293c), carouselSmallSectionDto.d);
            } else if (editorialModuleDto instanceof EditorialModuleDto.GridSmallSectionDto) {
                EditorialModuleDto.GridSmallSectionDto gridSmallSectionDto = (EditorialModuleDto.GridSmallSectionDto) editorialModuleDto;
                str.getClass();
                HeaderDto headerDto2 = gridSmallSectionDto.f45302b;
                if (headerDto2 != null) {
                    String str6 = headerDto2.f45353a;
                    String str7 = headerDto2.f45354b;
                    AssetImageDto assetImageDto3 = headerDto2.f45355c;
                    header = new Header(str6, str7, assetImageDto3 != null ? AssetMapperKt.b(assetImageDto3) : null);
                } else {
                    header = null;
                }
                failure = new EditorialModule.GridSmall(str, header, EditorialModuleMapperKt.a(gridSmallSectionDto.f45303c), gridSmallSectionDto.d);
            } else if (editorialModuleDto instanceof EditorialModuleDto.AuthenticationSectionDto) {
                EditorialModuleDto.AuthenticationSectionDto authenticationSectionDto = (EditorialModuleDto.AuthenticationSectionDto) editorialModuleDto;
                str.getClass();
                failure = new EditorialModule.Authentication(str, authenticationSectionDto.f45269b, authenticationSectionDto.f45270c, AssetMapperKt.b(authenticationSectionDto.d));
            } else if (editorialModuleDto instanceof EditorialModuleDto.PushCardSectionDto) {
                failure = EditorialModuleMapperKt.h((EditorialModuleDto.PushCardSectionDto) editorialModuleDto, str);
            } else if (editorialModuleDto instanceof EditorialModuleDto.ProductCarouselSectionDto) {
                str.getClass();
                failure = new EditorialModule.ProductCarousel(str, ((EditorialModuleDto.ProductCarouselSectionDto) editorialModuleDto).f45319b);
            } else if (editorialModuleDto instanceof EditorialModuleDto.NotificationSectionDto) {
                str.getClass();
                failure = new EditorialModule.Contactability(str, AssetMapperKt.b(((EditorialModuleDto.NotificationSectionDto) editorialModuleDto).f45316b));
            } else {
                if (!(editorialModuleDto instanceof EditorialModuleDto.UnknownSectionDto)) {
                    throw new NoWhenBranchMatchedException();
                }
                failure = null;
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return (EditorialModule) (failure instanceof Result.Failure ? null : failure);
    }
}
