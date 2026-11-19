package com.vuitton.android.presentation.screen.catalog;

import com.vuitton.android.domain.usecase.catalog.GetCatalogUseCase;
import com.vuitton.android.presentation.screen.catalog.mappers.CatalogMapperKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SectionUiModel;
import com.vuitton.foundation.model.domain.model.catalog.Catalog;
import defpackage.md;
import java.util.ArrayList;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl$getCatalog$1", f = "CatalogViewModelImpl.kt", l = {EACTags.ANSWER_TO_RESET}, m = "invokeSuspend", v = 2)
final class CatalogViewModelImpl$getCatalog$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogViewModelImpl f55244c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogViewModelImpl$getCatalog$1(CatalogViewModelImpl catalogViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f55244c = catalogViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogViewModelImpl$getCatalog$1(this.f55244c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogViewModelImpl$getCatalog$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CatalogViewModelImpl catalogViewModelImpl = this.f55244c;
        MutableStateFlow mutableStateFlow = catalogViewModelImpl.f55237f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55243b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetCatalogUseCase getCatalogUseCase = catalogViewModelImpl.f55234b;
            this.f55243b = 1;
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
            catalogViewModelImpl.d.setValue(catalogUiModelA);
            MutableStateFlow mutableStateFlow2 = catalogViewModelImpl.f55236e;
            List list = catalogUiModelA.f55353b;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CollectionsKt.j(arrayList, ((SectionUiModel) it.next()).f55376b);
            }
            mutableStateFlow2.setValue(arrayList);
        }
        if (Result.a(objA) != null) {
            catalogViewModelImpl.g.setValue(Boolean.TRUE);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
