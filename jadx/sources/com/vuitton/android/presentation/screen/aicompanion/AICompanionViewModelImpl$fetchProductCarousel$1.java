package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.domain.usecase.products.GetProductShortListUseCase;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.ProductCarouselItemUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageSectionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatSessionUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductShortMapperKt;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatMessageSection;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$fetchProductCarousel$1", f = "AICompanionViewModelImpl.kt", l = {307}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$fetchProductCarousel$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f52754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f52755c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModelImpl f52756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f52757f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$fetchProductCarousel$1(List list, AICompanionViewModelImpl aICompanionViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = list;
        this.f52756e = aICompanionViewModelImpl;
        this.f52757f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$fetchProductCarousel$1(this.d, this.f52756e, this.f52757f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$fetchProductCarousel$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:74:0x01fc  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        Object obj2;
        Object obj3;
        AICompanionViewModelImpl aICompanionViewModelImpl;
        String str;
        Object next;
        List list;
        Object obj4;
        boolean z2;
        List list2;
        Object obj5;
        AICompanionViewModelImpl aICompanionViewModelImpl2;
        Object obj6;
        AICompanionViewState aICompanionViewState;
        ChatMessageUiModel chatMessageUiModel;
        String str2;
        int i2;
        boolean z3;
        ArrayList arrayList;
        Object obj7;
        AICompanionViewModelImpl$fetchProductCarousel$1 aICompanionViewModelImpl$fetchProductCarousel$1 = this;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionViewModelImpl$fetchProductCarousel$1.f52755c;
        AICompanionViewModelImpl aICompanionViewModelImpl3 = aICompanionViewModelImpl$fetchProductCarousel$1.f52756e;
        boolean z4 = true;
        Object obj8 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            List list3 = aICompanionViewModelImpl$fetchProductCarousel$1.d;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj9 : list3) {
                if (obj9 instanceof ChatMessageSection.EditorialSection) {
                    arrayList2.add(obj9);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj10 : arrayList2) {
                if (((ChatMessageSection.EditorialSection) obj10).f66365a instanceof EditorialModule.ProductCarousel) {
                    arrayList3.add(obj10);
                }
            }
            ArrayList arrayList4 = new ArrayList();
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                EditorialModule editorialModule = ((ChatMessageSection.EditorialSection) it.next()).f66365a;
                editorialModule.getClass();
                CollectionsKt.j(arrayList4, ((EditorialModule.ProductCarousel) editorialModule).f67196b);
            }
            boolean z5 = aICompanionViewModelImpl3.f52737k.a().a0.f67282a;
            GetProductShortListUseCase getProductShortListUseCase = aICompanionViewModelImpl3.f52735i;
            aICompanionViewModelImpl$fetchProductCarousel$1.f52754b = z5;
            aICompanionViewModelImpl$fetchProductCarousel$1.f52755c = 1;
            Object objA = getProductShortListUseCase.a(arrayList4, aICompanionViewModelImpl$fetchProductCarousel$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            z = z5;
            obj2 = objA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            boolean z6 = aICompanionViewModelImpl$fetchProductCarousel$1.f52754b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
            z = z6;
        }
        Result.Companion companion = Result.INSTANCE;
        if (obj2 instanceof Result.Failure) {
            obj3 = obj2;
            aICompanionViewModelImpl = aICompanionViewModelImpl3;
        } else {
            List list4 = (List) obj2;
            MutableStateFlow mutableStateFlow = aICompanionViewModelImpl3.t;
            while (true) {
                Object value = mutableStateFlow.getValue();
                AICompanionViewState aICompanionViewStateA = (AICompanionViewState) value;
                Iterator it2 = aICompanionViewStateA.d.f52909b.iterator();
                do {
                    boolean zHasNext = it2.hasNext();
                    str = aICompanionViewModelImpl$fetchProductCarousel$1.f52757f;
                    if (!zHasNext) {
                        next = obj8;
                        break;
                    }
                    next = it2.next();
                } while (!Intrinsics.c(((ChatMessageUiModel) next).f52903a, str));
                ChatMessageUiModel chatMessageUiModel2 = (ChatMessageUiModel) next;
                if (chatMessageUiModel2 == null) {
                    list = list4;
                    obj3 = obj2;
                    aICompanionViewModelImpl = aICompanionViewModelImpl3;
                    obj7 = value;
                    z2 = z4;
                } else {
                    List<Object> list5 = chatMessageUiModel2.d;
                    if ((list5 instanceof Collection) && list5.isEmpty()) {
                        list = list4;
                        obj3 = obj2;
                        aICompanionViewModelImpl = aICompanionViewModelImpl3;
                        obj4 = value;
                        z2 = z4;
                        aICompanionViewStateA = aICompanionViewStateA;
                    } else {
                        Iterator it3 = list5.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                ChatMessageSectionUiModel chatMessageSectionUiModel = (ChatMessageSectionUiModel) it3.next();
                                if ((chatMessageSectionUiModel instanceof ChatMessageSectionUiModel.EditorialSection) && (((ChatMessageSectionUiModel.EditorialSection) chatMessageSectionUiModel).f52901a instanceof EditorialModuleUiModel.ProductCarouselUiModel)) {
                                    int i4 = 10;
                                    ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list5, 10));
                                    for (Object editorialSection : list5) {
                                        if (editorialSection instanceof ChatMessageSectionUiModel.EditorialSection) {
                                            EditorialModuleUiModel editorialModuleUiModel = ((ChatMessageSectionUiModel.EditorialSection) editorialSection).f52901a;
                                            if (editorialModuleUiModel instanceof EditorialModuleUiModel.ProductCarouselUiModel) {
                                                EditorialModuleUiModel.ProductCarouselUiModel productCarouselUiModel = (EditorialModuleUiModel.ProductCarouselUiModel) editorialModuleUiModel;
                                                List list6 = list4;
                                                ArrayList arrayList6 = new ArrayList(CollectionsKt.t(list6, i4));
                                                Iterator it4 = list6.iterator();
                                                while (it4.hasNext()) {
                                                    ProductShort productShort = (ProductShort) it4.next();
                                                    productShort.getClass();
                                                    SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                                                    AICompanionViewState aICompanionViewState2 = aICompanionViewStateA;
                                                    String str3 = productShort.f68128e;
                                                    companion2.getClass();
                                                    ChatMessageUiModel chatMessageUiModel3 = chatMessageUiModel2;
                                                    String str4 = productShort.f68126b;
                                                    AssetImageUiModel assetImageUiModel = AssetMapperKt.b(productShort.f68127c).f51780b;
                                                    assetImageUiModel.getClass();
                                                    ProductShortPrice productShortPrice = productShort.o;
                                                    Object obj11 = value;
                                                    ArrayList arrayList7 = arrayList6;
                                                    arrayList7.add(new ProductCarouselItemUiModel(str3, str4, assetImageUiModel, ProductShortMapperKt.a(productShort.f68133k), productShortPrice != null ? ProductShortMapperKt.c(productShortPrice) : null, null, productShort.n != null, z, 32, null));
                                                    i4 = 10;
                                                    aICompanionViewStateA = aICompanionViewState2;
                                                    chatMessageUiModel2 = chatMessageUiModel3;
                                                    arrayList6 = arrayList7;
                                                    arrayList5 = arrayList5;
                                                    it4 = it4;
                                                    obj2 = obj2;
                                                    aICompanionViewModelImpl3 = aICompanionViewModelImpl3;
                                                    value = obj11;
                                                    str = str;
                                                    list4 = list4;
                                                }
                                                list2 = list4;
                                                obj5 = obj2;
                                                aICompanionViewModelImpl2 = aICompanionViewModelImpl3;
                                                obj6 = value;
                                                aICompanionViewState = aICompanionViewStateA;
                                                chatMessageUiModel = chatMessageUiModel2;
                                                str2 = str;
                                                arrayList = arrayList5;
                                                i2 = i4;
                                                z3 = true;
                                                editorialSection = new ChatMessageSectionUiModel.EditorialSection(EditorialModuleUiModel.ProductCarouselUiModel.b(productCarouselUiModel, arrayList6, 1));
                                            } else {
                                                list2 = list4;
                                                obj5 = obj2;
                                                aICompanionViewModelImpl2 = aICompanionViewModelImpl3;
                                                obj6 = value;
                                                aICompanionViewState = aICompanionViewStateA;
                                                chatMessageUiModel = chatMessageUiModel2;
                                                str2 = str;
                                                i2 = i4;
                                                z3 = z4;
                                                arrayList = arrayList5;
                                            }
                                        } else {
                                            list2 = list4;
                                            obj5 = obj2;
                                            aICompanionViewModelImpl2 = aICompanionViewModelImpl3;
                                            obj6 = value;
                                            aICompanionViewState = aICompanionViewStateA;
                                            chatMessageUiModel = chatMessageUiModel2;
                                            str2 = str;
                                            i2 = i4;
                                            z3 = z4;
                                            arrayList = arrayList5;
                                        }
                                        arrayList.add(editorialSection);
                                        i4 = i2;
                                        aICompanionViewStateA = aICompanionViewState;
                                        chatMessageUiModel2 = chatMessageUiModel;
                                        arrayList5 = arrayList;
                                        z4 = z3;
                                        obj2 = obj5;
                                        aICompanionViewModelImpl3 = aICompanionViewModelImpl2;
                                        value = obj6;
                                        str = str2;
                                        list4 = list2;
                                    }
                                    list = list4;
                                    obj3 = obj2;
                                    aICompanionViewModelImpl = aICompanionViewModelImpl3;
                                    obj4 = value;
                                    AICompanionViewState aICompanionViewState3 = aICompanionViewStateA;
                                    String str5 = str;
                                    z2 = z4;
                                    ChatMessageUiModel chatMessageUiModelA = ChatMessageUiModel.a(chatMessageUiModel2, arrayList5, 55);
                                    ChatSessionUiModel chatSessionUiModel = aICompanionViewState3.d;
                                    List<ChatMessageUiModel> list7 = chatSessionUiModel.f52909b;
                                    ArrayList arrayList8 = new ArrayList(CollectionsKt.t(list7, i4));
                                    for (ChatMessageUiModel chatMessageUiModel4 : list7) {
                                        String str6 = str5;
                                        if (Intrinsics.c(chatMessageUiModel4.f52903a, str6)) {
                                            chatMessageUiModel4 = chatMessageUiModelA;
                                        }
                                        arrayList8.add(chatMessageUiModel4);
                                        str5 = str6;
                                    }
                                    aICompanionViewStateA = AICompanionViewState.a(aICompanionViewState3, false, null, null, ChatSessionUiModel.a(chatSessionUiModel, arrayList8), null, null, false, false, null, 503);
                                } else {
                                    list4 = list4;
                                    z4 = z4;
                                    str = str;
                                    aICompanionViewStateA = aICompanionViewStateA;
                                    aICompanionViewModelImpl3 = aICompanionViewModelImpl3;
                                    value = value;
                                    chatMessageUiModel2 = chatMessageUiModel2;
                                    obj2 = obj2;
                                }
                            } else {
                                list = list4;
                                obj3 = obj2;
                                aICompanionViewModelImpl = aICompanionViewModelImpl3;
                                obj4 = value;
                                z2 = z4;
                                aICompanionViewStateA = aICompanionViewStateA;
                            }
                        }
                    }
                    obj7 = obj4;
                }
                if (mutableStateFlow.i(obj7, aICompanionViewStateA)) {
                    break;
                }
                aICompanionViewModelImpl$fetchProductCarousel$1 = this;
                list4 = list;
                z4 = z2;
                obj2 = obj3;
                aICompanionViewModelImpl3 = aICompanionViewModelImpl;
                obj8 = null;
            }
        }
        Throwable thA = Result.a(obj3);
        if (thA != null) {
            defpackage.a.y("Error fetching products for carousel: ", thA.getMessage(), aICompanionViewModelImpl.f52730b, AICompanionViewModelImpl.v, thA);
        }
        return Unit.f71739a;
    }
}
