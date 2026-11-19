package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.usecase.dynamicyield.ReportDYClickUseCase;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedTabState;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$reportDYClick$1", f = "FeedViewModelImpl.kt", l = {1119}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$reportDYClick$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57719c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$reportDYClick$1(FeedViewModelImpl feedViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f57719c = feedViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$reportDYClick$1(this.f57719c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$reportDYClick$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object next;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57718b;
        String str = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            FeedViewModelImpl feedViewModelImpl = this.f57719c;
            FeedTabState feedTabState = ((FeedViewState) feedViewModelImpl.g0.getValue()).d;
            FeedTabState.Success success = feedTabState instanceof FeedTabState.Success ? (FeedTabState.Success) feedTabState : null;
            if (success == null) {
                return Unit.f71739a;
            }
            Iterator it = success.f57922a.f57983a.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((EditorialModuleUiModel) next).getF50852a(), this.d));
            EditorialModuleUiModel editorialModuleUiModel = (EditorialModuleUiModel) next;
            if (editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel) {
                str = ((EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel).f50839f;
            } else if (editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                str = ((EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel).f50832f;
            }
            if (str != null) {
                ReportDYClickUseCase reportDYClickUseCase = feedViewModelImpl.m;
                this.f57718b = 1;
                if (reportDYClickUseCase.a(str, this) == coroutineSingletons) {
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
