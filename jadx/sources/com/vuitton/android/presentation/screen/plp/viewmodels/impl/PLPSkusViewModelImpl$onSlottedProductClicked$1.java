package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSlotClickUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SlottedSku;
import defpackage.md;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl$onSlottedProductClicked$1", f = "PLPSkusViewModelImpl.kt", l = {240}, m = "invokeSuspend", v = 2)
final class PLPSkusViewModelImpl$onSlottedProductClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PLPSkusViewModelImpl f63097c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPSkusViewModelImpl$onSlottedProductClicked$1(PLPSkusViewModelImpl pLPSkusViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f63097c = pLPSkusViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPSkusViewModelImpl$onSlottedProductClicked$1(this.f63097c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPSkusViewModelImpl$onSlottedProductClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object next;
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63096b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PLPSkusViewModelImpl pLPSkusViewModelImpl = this.f63097c;
            pLPSkusViewModelImpl.getClass();
            Iterable iterable = (List) pLPSkusViewModelImpl.f63086c.a("nav_arg_plp_slotted_sku_list");
            if (iterable == null) {
                iterable = EmptyList.f71768b;
            }
            Iterator it = iterable.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                str = ((SlottedSku) next).f61765b;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            } while (!str.equals(this.d));
            SlottedSku slottedSku = (SlottedSku) next;
            String str2 = slottedSku != null ? slottedSku.f61766c : null;
            if (str2 != null) {
                ReportDYSlotClickUseCase reportDYSlotClickUseCase = pLPSkusViewModelImpl.f63088f;
                this.f63096b = 1;
                if (reportDYSlotClickUseCase.a(str2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
