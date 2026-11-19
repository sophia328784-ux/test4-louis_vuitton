package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSlotClickUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SlottedSku;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$reportDYSlotClick$1", f = "FeedViewModelImpl.kt", l = {1131}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$reportDYSlotClick$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57721c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f57722e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$reportDYSlotClick$1(FeedViewModelImpl feedViewModelImpl, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f57721c = feedViewModelImpl;
        this.d = str;
        this.f57722e = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$reportDYSlotClick$1(this.f57721c, this.d, this.f57722e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$reportDYSlotClick$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object next;
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57720b;
        if (i2 == 0) {
            ResultKt.b(obj);
            String str2 = this.d;
            FeedViewModelImpl feedViewModelImpl = this.f57721c;
            Iterator it = feedViewModelImpl.I1(str2).iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                str = ((SlottedSku) next).f61765b;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            } while (!str.equals(this.f57722e));
            SlottedSku slottedSku = (SlottedSku) next;
            String str3 = slottedSku != null ? slottedSku.f61766c : null;
            if (str3 != null) {
                ReportDYSlotClickUseCase reportDYSlotClickUseCase = feedViewModelImpl.p;
                this.f57720b = 1;
                if (reportDYSlotClickUseCase.a(str3, this) == coroutineSingletons) {
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
