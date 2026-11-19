package com.vuitton.android.presentation.screen.story;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.StoryMonitoring;
import com.vuitton.android.domain.usecase.story.GetStoryUseCase;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.story.models.StoryAssetUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryCloseUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryCtaUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryHeaderUiModel;
import com.vuitton.android.presentation.screen.story.models.StorySlideUiModel;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.story.Story;
import com.vuitton.foundation.model.domain.model.story.StoryAsset;
import com.vuitton.foundation.model.domain.model.story.StoryCta;
import com.vuitton.foundation.model.domain.model.story.StorySlide;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.story.StoryViewModelImpl$getStory$2", f = "StoryViewModelImpl.kt", l = {101}, m = "invokeSuspend", v = 2)
final class StoryViewModelImpl$getStory$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoryViewModelImpl f65110c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryViewModelImpl$getStory$2(StoryViewModelImpl storyViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f65110c = storyViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoryViewModelImpl$getStory$2(this.f65110c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoryViewModelImpl$getStory$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object obj2;
        Object value2;
        Object value3;
        Object value4;
        Object value5;
        Object value6;
        StoryAssetUiModel storyAssetUiModel;
        StoryViewModelImpl storyViewModelImpl = this.f65110c;
        MutableStateFlow mutableStateFlow = storyViewModelImpl.f65104f;
        MutableStateFlow mutableStateFlow2 = storyViewModelImpl.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65109b;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow2.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow2.i(value, Boolean.TRUE));
            GetStoryUseCase getStoryUseCase = storyViewModelImpl.f65101b;
            this.f65109b = 1;
            objA = getStoryUseCase.a(this.d, this);
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
        if (objA instanceof Result.Failure) {
            obj2 = objA;
        } else {
            Story story = (Story) objA;
            do {
                value4 = mutableStateFlow.getValue();
                ((Boolean) value4).getClass();
            } while (!mutableStateFlow.i(value4, Boolean.FALSE));
            do {
                value5 = mutableStateFlow2.getValue();
                ((Boolean) value5).getClass();
            } while (!mutableStateFlow2.i(value5, Boolean.FALSE));
            MutableStateFlow mutableStateFlow3 = storyViewModelImpl.f65105h;
            do {
                value6 = mutableStateFlow3.getValue();
                story.getClass();
            } while (!mutableStateFlow3.i(value6, new StoryHeaderUiModel(story.f68269b, story.f68270c)));
            MutableStateFlow mutableStateFlow4 = storyViewModelImpl.f65106i;
            while (true) {
                Object value7 = mutableStateFlow4.getValue();
                List<StorySlide> list = story.d;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                for (StorySlide storySlide : list) {
                    storySlide.getClass();
                    String str = storySlide.f68275a;
                    String str2 = storySlide.f68276b;
                    String str3 = storySlide.f68277c;
                    String str4 = storySlide.d;
                    StoryAsset storyAsset = storySlide.f68278e;
                    Object obj3 = objA;
                    if (storyAsset != null) {
                        AssetImage assetImage = storyAsset.f68271a;
                        AssetImageUiModel assetImageUiModelA = assetImage != null ? AssetMapperKt.a(assetImage) : null;
                        AssetVideo assetVideo = storyAsset.f68272b;
                        storyAssetUiModel = new StoryAssetUiModel(assetImageUiModelA, assetVideo != null ? AssetMapperKt.c(assetVideo) : null);
                    } else {
                        storyAssetUiModel = null;
                    }
                    StoryCta storyCta = storySlide.f68279f;
                    arrayList.add(new StorySlideUiModel(str, str2, str3, str4, storyAssetUiModel, storyCta != null ? new StoryCtaUiModel(storyCta.f68273a, storyCta.f68274b) : null));
                    objA = obj3;
                    story = story;
                }
                obj2 = objA;
                Story story2 = story;
                if (mutableStateFlow4.i(value7, arrayList)) {
                    break;
                }
                objA = obj2;
                story = story2;
            }
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            MonitorAction monitorAction = storyViewModelImpl.o;
            if (monitorAction != null) {
                monitorAction.d(new StoryMonitoring.Error.OpenStoryError(thA));
            }
            if (storyViewModelImpl.f65103e) {
                storyViewModelImpl.v9(StoryCloseUiModel.LAST_SLIDE_CHECKED);
            } else {
                do {
                    value2 = mutableStateFlow.getValue();
                    ((Boolean) value2).getClass();
                } while (!mutableStateFlow.i(value2, Boolean.TRUE));
            }
            do {
                value3 = mutableStateFlow2.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
        }
        MonitorAction monitorAction2 = storyViewModelImpl.o;
        if (monitorAction2 != null) {
            monitorAction2.b();
            Result.Companion companion2 = Result.INSTANCE;
        }
        return Unit.f71739a;
    }
}
