package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedTabState;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.video.VideoId;
import defpackage.md;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$refreshLiveSection$1", f = "FeedViewModelImpl.kt", l = {926}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$refreshLiveSection$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57715c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$refreshLiveSection$1(FeedViewModelImpl feedViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f57715c = feedViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$refreshLiveSection$1(this.f57715c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$refreshLiveSection$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object value;
        FeedTabState success;
        Object value2;
        FeedTabState success2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57714b;
        FeedViewModelImpl feedViewModelImpl = this.f57715c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetLiveVideoUseCase getLiveVideoUseCase = feedViewModelImpl.f57621j;
            VideoIdUiModel.f51798c.getClass();
            String str = this.d;
            if (str != null) {
                VideoId.Companion companion = VideoId.f68280a;
            } else {
                VideoId.f68280a.getClass();
                str = VideoId.f68281b;
            }
            this.f57714b = 1;
            objA = getLiveVideoUseCase.a(str, this);
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
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            AssetVideo assetVideo = (AssetVideo) objA;
            LiveInfoUiModel liveInfoUiModelA = EditorialModuleUiModelMapperKt.a(assetVideo);
            VideoIdUiModel.Companion companion3 = VideoIdUiModel.f51798c;
            String str2 = assetVideo.f67111a;
            companion3.getClass();
            MutableStateFlow mutableStateFlow = feedViewModelImpl.N;
            do {
                value = mutableStateFlow.getValue();
                success = (FeedTabState) value;
                if ((success instanceof FeedTabState.Success ? (FeedTabState.Success) success : null) != null) {
                    success = new FeedTabState.Success(FeedViewModelImpl.yc(feedViewModelImpl, ((FeedTabState.Success) success).f57922a, str2, liveInfoUiModelA));
                }
            } while (!mutableStateFlow.i(value, success));
            MutableStateFlow mutableStateFlow2 = feedViewModelImpl.O;
            do {
                value2 = mutableStateFlow2.getValue();
                success2 = (FeedTabState) value2;
                if ((success2 instanceof FeedTabState.Success ? (FeedTabState.Success) success2 : null) != null) {
                    success2 = new FeedTabState.Success(FeedViewModelImpl.yc(feedViewModelImpl, ((FeedTabState.Success) success2).f57922a, str2, liveInfoUiModelA));
                }
            } while (!mutableStateFlow2.i(value2, success2));
        }
        return Unit.f71739a;
    }
}
