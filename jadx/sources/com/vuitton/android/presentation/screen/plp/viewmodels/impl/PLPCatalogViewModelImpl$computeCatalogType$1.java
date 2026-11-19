package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import com.vuitton.android.domain.usecase.catalog.GetCatalogUseCase;
import com.vuitton.android.presentation.screen.catalog.mappers.CatalogMapperKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModelKt;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PlpEntryType;
import com.vuitton.android.presentation.screen.catalog.models.SubcategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.DisplayedPLPType;
import com.vuitton.foundation.model.domain.model.catalog.Catalog;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$computeCatalogType$1", f = "PLPCatalogViewModelImpl.kt", l = {290}, m = "invokeSuspend", v = 2)
final class PLPCatalogViewModelImpl$computeCatalogType$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PLPCatalogViewModelImpl f63038c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPCatalogViewModelImpl$computeCatalogType$1(PLPCatalogViewModelImpl pLPCatalogViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f63038c = pLPCatalogViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPCatalogViewModelImpl$computeCatalogType$1(this.f63038c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPCatalogViewModelImpl$computeCatalogType$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0060  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        DisplayedPLPType thematicPlp;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63037b;
        PLPCatalogViewModelImpl pLPCatalogViewModelImpl = this.f63038c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetCatalogUseCase getCatalogUseCase = pLPCatalogViewModelImpl.f63021c;
            this.f63037b = 1;
            objA = getCatalogUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            CatalogUiModel catalogUiModelA = CatalogMapperKt.a((Catalog) objA);
            Triple tripleB = CatalogUiModelKt.b(catalogUiModelA, pLPCatalogViewModelImpl.f63026j);
            if (tripleB != null) {
                thematicPlp = ((PlpEntryType) tripleB.d) == PlpEntryType.Thematic ? new DisplayedPLPType.ThematicPlp(CatalogUiModelKt.d(catalogUiModelA, ((CategoryUiModel) tripleB.f71716b).f55363a, ((SubcategoryUiModel) tripleB.f71717c).f55382a)) : DisplayedPLPType.ClassicPlp.f62871a;
                if (thematicPlp == null) {
                    thematicPlp = DisplayedPLPType.ClassicPlp.f62871a;
                }
            } else {
                thematicPlp = DisplayedPLPType.ClassicPlp.f62871a;
            }
            thematicPlp.getClass();
            pLPCatalogViewModelImpl.f63025i = thematicPlp;
        }
        if (Result.a(objA) != null) {
            DisplayedPLPType.ClassicPlp classicPlp = DisplayedPLPType.ClassicPlp.f62871a;
            classicPlp.getClass();
            pLPCatalogViewModelImpl.f63025i = classicPlp;
        }
        return Unit.f71739a;
    }
}
