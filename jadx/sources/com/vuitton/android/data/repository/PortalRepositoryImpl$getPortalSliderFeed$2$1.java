package com.vuitton.android.data.repository;

import com.vuitton.android.data.api.bff.publication.PortalApi;
import com.vuitton.android.data.dto.common.SoundDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.mapper.LinkTypeMapperKt;
import com.vuitton.android.data.dto.portal.ContentSlideDto;
import com.vuitton.android.data.dto.portal.PortalCtaDto;
import com.vuitton.android.data.dto.portal.PortalDataDto;
import com.vuitton.android.data.dto.portal.PortalDto;
import com.vuitton.android.data.dto.portal.PortalTeaserDto;
import com.vuitton.android.data.dto.portal.SlideDto;
import com.vuitton.android.data.dto.portal.UnknownSlideDto;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.Sound;
import com.vuitton.foundation.model.domain.model.portal.Portal;
import com.vuitton.foundation.model.domain.model.portal.PortalCta;
import com.vuitton.foundation.model.domain.model.portal.PortalData;
import com.vuitton.foundation.model.domain.model.portal.PortalSlideType;
import com.vuitton.foundation.model.domain.model.portal.PortalTeaser;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.md;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/portal/Portal;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PortalRepositoryImpl$getPortalSliderFeed$2$1", f = "PortalRepositoryImpl.kt", l = {15}, m = "invokeSuspend", v = 2)
final class PortalRepositoryImpl$getPortalSliderFeed$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Portal>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PortalRepositoryImpl f47903c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PortalRepositoryImpl$getPortalSliderFeed$2$1(PortalRepositoryImpl portalRepositoryImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f47903c = portalRepositoryImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PortalRepositoryImpl$getPortalSliderFeed$2$1(this.f47903c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PortalRepositoryImpl$getPortalSliderFeed$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object portal;
        Portal.Slide slide;
        PortalCta portalCta;
        PortalTeaser portalTeaser;
        PortalCta portalCta2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47902b;
        Sound sound = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            PortalApi portalApi = this.f47903c.f47899a;
            this.f47902b = 1;
            portal = portalApi.getPortal(this.d, this);
            if (portal == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            portal = obj;
        }
        PortalDto portalDto = (PortalDto) portal;
        portalDto.getClass();
        String str = portalDto.f46403a;
        String str2 = portalDto.f46404b;
        String str3 = portalDto.f46405c;
        Asset assetA = AssetMapperKt.a(portalDto.d);
        List list = portalDto.f46406e;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SlideDto slideDto = (SlideDto) it.next();
            if (slideDto instanceof ContentSlideDto) {
                ContentSlideDto contentSlideDto = (ContentSlideDto) slideDto;
                String str4 = contentSlideDto.f46390a;
                PortalSlideType portalSlideType = PortalSlideType.CONTENT;
                PortalDataDto portalDataDto = contentSlideDto.f46392c;
                String str5 = portalDataDto.f46397a;
                String str6 = portalDataDto.f46398b;
                String str7 = portalDataDto.f46399c;
                Asset assetA2 = AssetMapperKt.a(portalDataDto.d);
                PortalCtaDto portalCtaDto = portalDataDto.f46400e;
                if (portalCtaDto != null) {
                    String str8 = portalCtaDto.f46394a;
                    ContributionLinkLegacyDto contributionLinkLegacyDto = portalCtaDto.f46395b;
                    LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
                    String str9 = contributionLinkLegacyDto.f46031b;
                    if (str9 == null) {
                        str9 = "";
                    }
                    portalCta = new PortalCta(str8, LinkTypeMapperKt.a(linkTypeDto, str9, null));
                } else {
                    portalCta = null;
                }
                PortalTeaserDto portalTeaserDto = portalDataDto.f46401f;
                if (portalTeaserDto != null) {
                    Instant instantC = StringKtExtKt.c(portalTeaserDto.f46409a);
                    Asset assetA3 = AssetMapperKt.a(portalTeaserDto.f46410b);
                    String str10 = portalTeaserDto.f46411c;
                    String str11 = portalTeaserDto.d;
                    String str12 = portalTeaserDto.f46412e;
                    PortalCtaDto portalCtaDto2 = portalTeaserDto.f46413f;
                    if (portalCtaDto2 != null) {
                        String str13 = portalCtaDto2.f46394a;
                        ContributionLinkLegacyDto contributionLinkLegacyDto2 = portalCtaDto2.f46395b;
                        LinkTypeDto linkTypeDto2 = contributionLinkLegacyDto2.f46030a;
                        String str14 = contributionLinkLegacyDto2.f46031b;
                        if (str14 == null) {
                            str14 = "";
                        }
                        portalCta2 = new PortalCta(str13, LinkTypeMapperKt.a(linkTypeDto2, str14, null));
                    } else {
                        portalCta2 = null;
                    }
                    portalTeaser = new PortalTeaser(instantC, assetA3, str10, str11, str12, portalCta2);
                } else {
                    portalTeaser = null;
                }
                slide = new Portal.Slide(str4, portalSlideType, new PortalData(str5, str6, str7, assetA2, portalCta, portalTeaser));
            } else {
                str = str;
                str2 = str2;
                str3 = str3;
                if (!(slideDto instanceof UnknownSlideDto)) {
                    v40.g();
                    return null;
                }
                slide = null;
            }
            if (slide != null) {
                arrayList.add(slide);
            }
            it = it;
            str = str;
            str2 = str2;
            str3 = str3;
            sound = null;
        }
        Sound sound2 = sound;
        String str15 = str;
        String str16 = str2;
        String str17 = str3;
        SoundDto soundDto = portalDto.f46407f;
        return new Portal(str15, str16, str17, assetA, arrayList, soundDto != null ? new Sound(soundDto.f45264a, soundDto.f45265b, (long) soundDto.f45266c) : sound2);
    }
}
