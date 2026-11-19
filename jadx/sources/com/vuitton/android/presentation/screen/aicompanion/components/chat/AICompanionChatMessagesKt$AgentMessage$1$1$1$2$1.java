package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.ProductCarouselItemUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageSectionUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.analytics.ViewItemListTrackingValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1", f = "AICompanionChatMessages.kt", l = {}, m = "invokeSuspend", v = 2)
final class AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GA4Tracker f52809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChatMessageSectionUiModel.EditorialSection f52810c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1(GA4Tracker gA4Tracker, ChatMessageSectionUiModel.EditorialSection editorialSection, Continuation continuation) {
        super(2, continuation);
        this.f52809b = gA4Tracker;
        this.f52810c = editorialSection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1(this.f52809b, this.f52810c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object next;
        ProductShortPriceUiModel productShortPriceUiModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        EditorialModuleUiModel editorialModuleUiModel = this.f52810c.f52901a;
        Iterator it = ((EditorialModuleUiModel.ProductCarouselUiModel) editorialModuleUiModel).f50845b.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((ProductCarouselItemUiModel) next).f50870e == null);
        ProductCarouselItemUiModel productCarouselItemUiModel = (ProductCarouselItemUiModel) next;
        String str = (productCarouselItemUiModel == null || (productShortPriceUiModel = productCarouselItemUiModel.f50870e) == null) ? null : productShortPriceUiModel.d;
        List list = ((EditorialModuleUiModel.ProductCarouselUiModel) editorialModuleUiModel).f50845b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        int i2 = 0;
        for (Object obj2 : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            ProductCarouselItemUiModel productCarouselItemUiModel2 = (ProductCarouselItemUiModel) obj2;
            productCarouselItemUiModel2.getClass();
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            String str2 = productCarouselItemUiModel2.f50867a;
            companion.getClass();
            SkuIdUiModel.Companion.b(str2);
            String str3 = productCarouselItemUiModel2.f50868b;
            ProductShortPriceUiModel productShortPriceUiModel2 = productCarouselItemUiModel2.f50870e;
            arrayList.add(new ViewItemListTrackingValue("my_companion_results", "My companion results", str2, str3, productShortPriceUiModel2 != null ? productShortPriceUiModel2.f62983c : null, productShortPriceUiModel2 != null ? productShortPriceUiModel2.d : null, i2, null));
            i2 = i3;
        }
        this.f52809b.f65811a.a(GA4TrackingUiModelKt.a(new GA4TrackingUiModel.ViewItemListLoaded("my_companion", str, "my_companion_results", "My companion results", arrayList)));
        return Unit.f71739a;
    }
}
