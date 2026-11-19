package com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories;

import androidx.lifecycle.MutableLiveData;
import com.vuitton.android.domain.usecase.connectivity.watch.GetWatchTutorialCategoryListUseCase;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail.WatchTutorialUi;
import com.vuitton.foundation.model.domain.model.connectivity.sync.WatchTutorial;
import com.vuitton.foundation.model.domain.model.connectivity.sync.WatchTutorialCategory;
import defpackage.md;
import java.util.ArrayList;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1", f = "WatchTutorialCategoriesViewModelImpl.kt", l = {30}, m = "invokeSuspend", v = 2)
final class WatchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56797c;
    public final /* synthetic */ WatchTutorialCategoriesViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1(WatchTutorialCategoriesViewModelImpl watchTutorialCategoriesViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = watchTutorialCategoriesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WatchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1 watchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1 = new WatchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1(this.d, continuation);
        watchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1.f56797c = obj;
        return watchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchTutorialCategoriesViewModelImpl$getWatchTutorialCategories$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        WatchTutorialCategoriesViewModelImpl watchTutorialCategoriesViewModelImpl = this.d;
        MutableLiveData mutableLiveData = watchTutorialCategoriesViewModelImpl.f56795c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56796b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                GetWatchTutorialCategoryListUseCase getWatchTutorialCategoryListUseCase = watchTutorialCategoriesViewModelImpl.f56793a;
                this.f56797c = null;
                this.f56796b = 1;
                obj = getWatchTutorialCategoryListUseCase.a(this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = (List) obj;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA == null) {
            List<WatchTutorialCategory> list = (List) failure;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (WatchTutorialCategory watchTutorialCategory : list) {
                watchTutorialCategory.getClass();
                String str = watchTutorialCategory.f67351a;
                if (str == null) {
                    str = "";
                }
                String str2 = watchTutorialCategory.f67352b;
                if (str2 == null) {
                    str2 = "";
                }
                String str3 = watchTutorialCategory.f67353c;
                if (str3 == null) {
                    str3 = "";
                }
                ArrayList<WatchTutorial> arrayList2 = watchTutorialCategory.d;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
                for (WatchTutorial watchTutorial : arrayList2) {
                    watchTutorial.getClass();
                    String str4 = watchTutorial.f67349b;
                    String str5 = watchTutorial.f67350c;
                    if (str5 == null) {
                        str5 = "";
                    }
                    String str6 = watchTutorial.d;
                    if (str6 == null) {
                        str6 = "";
                    }
                    arrayList3.add(new WatchTutorialUi(str4, str5, str6));
                }
                arrayList.add(new WatchTutorialCategoryUi(str, str2, str3, arrayList3));
            }
            mutableLiveData.postValue(new Result(arrayList));
        } else {
            mutableLiveData.postValue(new Result(new Result.Failure(thA)));
        }
        return Unit.f71739a;
    }
}
