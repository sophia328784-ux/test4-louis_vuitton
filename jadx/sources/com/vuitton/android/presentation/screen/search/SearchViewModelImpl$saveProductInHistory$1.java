package com.vuitton.android.presentation.screen.search;

import com.vuitton.android.domain.usecase.search.AddSearchHistoryProductUseCase;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModelKt;
import com.vuitton.foundation.model.domain.model.search.HistoryItem;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$saveProductInHistory$1", f = "SearchViewModelImpl.kt", l = {325}, m = "invokeSuspend", v = 2)
final class SearchViewModelImpl$saveProductInHistory$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchViewModelImpl f64148c;
    public final /* synthetic */ HistoryItemUiModel.HistoryProductUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModelImpl$saveProductInHistory$1(SearchViewModelImpl searchViewModelImpl, HistoryItemUiModel.HistoryProductUiModel historyProductUiModel, Continuation continuation) {
        super(2, continuation);
        this.f64148c = searchViewModelImpl;
        this.d = historyProductUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchViewModelImpl$saveProductInHistory$1(this.f64148c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchViewModelImpl$saveProductInHistory$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64147b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                SearchViewModelImpl searchViewModelImpl = this.f64148c;
                HistoryItemUiModel.HistoryProductUiModel historyProductUiModel = this.d;
                Result.Companion companion = Result.INSTANCE;
                AddSearchHistoryProductUseCase addSearchHistoryProductUseCase = searchViewModelImpl.f64120k;
                HistoryItem.HistoryProduct historyProduct = (HistoryItem.HistoryProduct) HistoryUiModelKt.a(historyProductUiModel);
                this.f64147b = 1;
                if (addSearchHistoryProductUseCase.a(historyProduct, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return Unit.f71739a;
    }
}
