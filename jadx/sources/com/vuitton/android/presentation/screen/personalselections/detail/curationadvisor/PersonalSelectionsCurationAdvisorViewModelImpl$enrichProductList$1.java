package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionPLPProductUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionProductInteractionUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl$enrichProductList$1", f = "PersonalSelectionsCurationAdvisorViewModelImpl.kt", l = {311}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsCurationAdvisorViewModelImpl$enrichProductList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsCurationAdvisorViewModelImpl f62444c;
    public final /* synthetic */ ArrayList d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsCurationAdvisorViewModelImpl$enrichProductList$1(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl, ArrayList arrayList, Continuation continuation) {
        super(2, continuation);
        this.f62444c = personalSelectionsCurationAdvisorViewModelImpl;
        this.d = arrayList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsCurationAdvisorViewModelImpl$enrichProductList$1(this.f62444c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsCurationAdvisorViewModelImpl$enrichProductList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Object value;
        Object next;
        MutableState mutableState;
        PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel;
        String str;
        String str2;
        ?? r11;
        String str3;
        Object objYc;
        PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl = this.f62444c;
        MutableStateFlow mutableStateFlow = personalSelectionsCurationAdvisorViewModelImpl.v;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62443b;
        ArrayList arrayList = this.d;
        int i3 = 10;
        DefaultConstructorMarker defaultConstructorMarker = null;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new SkuIdUiModel(((SelectionProductUiModel) it.next()).f62584a));
                }
                this.f62443b = 1;
                objYc = PersonalSelectionsCurationAdvisorViewModelImpl.yc(personalSelectionsCurationAdvisorViewModelImpl, arrayList2, this);
                if (objYc == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objYc = obj;
            }
            failure = new Result((List) objYc);
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
        Object obj2 = ((Result) failure).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            List list = (List) obj2;
            while (true) {
                Object value2 = mutableStateFlow.getValue();
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList, i3));
                Iterator it2 = arrayList.iterator();
                while (true) {
                    boolean z = false;
                    if (!it2.hasNext()) {
                        break;
                    }
                    SelectionProductUiModel selectionProductUiModel = (SelectionProductUiModel) it2.next();
                    String str4 = selectionProductUiModel.f62584a;
                    SelectionProductInteractionUiModel selectionProductInteractionUiModel = selectionProductUiModel.d;
                    if (selectionProductInteractionUiModel != null && selectionProductInteractionUiModel.f62582a) {
                        z = true;
                    }
                    if (selectionProductInteractionUiModel != null) {
                        str3 = selectionProductInteractionUiModel.f62583b;
                    } else {
                        r11 = defaultConstructorMarker;
                    }
                    if (r11 == 0) {
                        r11 = str3;
                        r11 = "";
                    } else {
                        r11 = str3;
                    }
                    arrayList3.add(new SelectionPLPProductUiModel(str4, z, r11, defaultConstructorMarker));
                }
                List<PlpProductUiModel> list2 = list;
                ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list2, i3));
                for (PlpProductUiModel plpProductUiModel : list2) {
                    Iterator it3 = arrayList.iterator();
                    do {
                        if (!it3.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it3.next();
                        str = ((SelectionProductUiModel) next).f62584a;
                        str2 = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62943a;
                        SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                    } while (!str.equals(str2));
                    SelectionProductUiModel selectionProductUiModel2 = (SelectionProductUiModel) next;
                    SelectionProductInteractionUiModel selectionProductInteractionUiModel2 = selectionProductUiModel2 != null ? selectionProductUiModel2.d : null;
                    MutableState mutableState2 = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h;
                    if (mutableState2 != null && (mutableState = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h) != null && (pLPWishlistStateUiModel = (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()) != null) {
                        mutableState2.setValue(PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel.a(pLPWishlistStateUiModel, selectionProductInteractionUiModel2 != null && selectionProductInteractionUiModel2.f62582a, 2));
                    }
                    arrayList4.add(plpProductUiModel);
                }
                if (mutableStateFlow.i(value2, new PersonalSelectionsCurationAdvisorProductState.Success(arrayList4, arrayList3))) {
                    break;
                }
                i3 = 10;
                defaultConstructorMarker = null;
            }
        }
        Throwable thA2 = Result.a(obj2);
        if (thA2 != null) {
            PersonalSelectionsCurationAdvisorViewModelImpl.zc(personalSelectionsCurationAdvisorViewModelImpl);
            personalSelectionsCurationAdvisorViewModelImpl.f62428b.c("PersonalSelectionsDetailViewModelImpl", "Unable to retrieve the product list", thA2);
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, PersonalSelectionsCurationAdvisorProductState.Error.f62500a));
        }
        return Unit.f71739a;
    }
}
