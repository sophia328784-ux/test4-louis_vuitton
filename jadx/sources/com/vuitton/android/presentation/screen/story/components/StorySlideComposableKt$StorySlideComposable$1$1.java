package com.vuitton.android.presentation.screen.story.components;

import android.media.MediaMetadataRetriever;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryAssetUiModel;
import com.vuitton.android.presentation.screen.story.models.StorySlideUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.story.components.StorySlideComposableKt$StorySlideComposable$1$1", f = "StorySlideComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class StorySlideComposableKt$StorySlideComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ StorySlideUiModel f65144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f65145c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f65146e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StorySlideComposableKt$StorySlideComposable$1$1(StorySlideUiModel storySlideUiModel, Function1 function1, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f65144b = storySlideUiModel;
        this.f65145c = function1;
        this.d = mutableState;
        this.f65146e = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StorySlideComposableKt$StorySlideComposable$1$1(this.f65144b, this.f65145c, this.d, this.f65146e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StorySlideComposableKt$StorySlideComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AssetVideoUiModel assetVideoUiModel;
        AssetVideoUiModel assetVideoUiModel2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        StorySlideUiModel storySlideUiModel = this.f65144b;
        StoryAssetUiModel storyAssetUiModel = storySlideUiModel.f65171e;
        if (StringExtKt.a((storyAssetUiModel == null || (assetVideoUiModel2 = storyAssetUiModel.f65163b) == null) ? null : assetVideoUiModel2.f51783c)) {
            this.d.setValue(Boolean.TRUE);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            StoryAssetUiModel storyAssetUiModel2 = storySlideUiModel.f65171e;
            mediaMetadataRetriever.setDataSource((storyAssetUiModel2 == null || (assetVideoUiModel = storyAssetUiModel2.f65163b) == null) ? null : assetVideoUiModel.f51783c);
            String strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
            Long l = strExtractMetadata != null ? new Long(Long.parseLong(strExtractMetadata)) : null;
            if (l != null && ((Boolean) this.f65146e.getF10755b()).booleanValue()) {
                this.f65145c.invoke(l);
            }
        }
        return Unit.f71739a;
    }
}
