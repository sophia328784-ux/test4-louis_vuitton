package com.vuitton.android.presentation.screen.plp.viewmodels.impl.pagingsources;

import androidx.paging.PagingSource;
import androidx.paging.PagingState;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001Bi\u00127\u0010\f\u001a3\b\u0001\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004\u0012'\u0010\u0010\u001a#\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000f0\r¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;", "Landroidx/paging/PagingSource;", "", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "pageIndex", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "", "requestPage", "Lkotlin/Function1;", "page", "", "pageMapper", "<init>", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPPagingSource extends PagingSource<Integer, PlpSectionUiModel> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f63232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f63233c;
    public int d;

    public PLPPagingSource(Function2<? super Integer, ? super Continuation<? super Result<PlpPagination>>, ? extends Object> function2, Function1<? super PlpPagination, ? extends List<? extends PlpSectionUiModel>> function1) {
        function2.getClass();
        function1.getClass();
        this.f63232b = function2;
        this.f63233c = function1;
        Reflection.f71922a.b(PLPPagingSource.class).B();
    }

    @Override // androidx.paging.PagingSource
    public final Integer a(PagingState pagingState) {
        Integer num = pagingState.f18903b;
        if (num != null) {
            return Integer.valueOf(num.intValue() - 2);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.paging.PagingSource
    public final Object b(PagingSource.LoadParams loadParams, ContinuationImpl continuationImpl) {
        PLPPagingSource$load$1 pLPPagingSource$load$1;
        int iIntValue;
        if (continuationImpl instanceof PLPPagingSource$load$1) {
            pLPPagingSource$load$1 = (PLPPagingSource$load$1) continuationImpl;
            int i2 = pLPPagingSource$load$1.f63236e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pLPPagingSource$load$1.f63236e = i2 - Integer.MIN_VALUE;
            } else {
                pLPPagingSource$load$1 = new PLPPagingSource$load$1(this, continuationImpl);
            }
        } else {
            pLPPagingSource$load$1 = new PLPPagingSource$load$1(this, continuationImpl);
        }
        Object objInvoke = pLPPagingSource$load$1.f63235c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pLPPagingSource$load$1.f63236e;
        if (i3 == 0) {
            ResultKt.b(objInvoke);
            Integer num = (Integer) loadParams.getF18895b();
            iIntValue = num != null ? num.intValue() : 0;
            Integer num2 = new Integer(iIntValue);
            pLPPagingSource$load$1.f63234b = iIntValue;
            pLPPagingSource$load$1.f63236e = 1;
            objInvoke = this.f63232b.invoke(num2, pLPPagingSource$load$1);
            if (objInvoke == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            iIntValue = pLPPagingSource$load$1.f63234b;
            ResultKt.b(objInvoke);
        }
        Object obj = ((Result) objInvoke).f71708b;
        Throwable thA = Result.a(obj);
        if (thA != null) {
            thA.getMessage();
            return new PagingSource.LoadResult.Error(thA);
        }
        PlpPagination plpPagination = (PlpPagination) obj;
        List list = (List) this.f63233c.invoke(plpPagination);
        list.size();
        PagingSource.LoadResult.Page page = new PagingSource.LoadResult.Page(list, iIntValue != 0 ? new Integer(this.d) : null, plpPagination.f67825h);
        this.d = iIntValue;
        return page;
    }
}
