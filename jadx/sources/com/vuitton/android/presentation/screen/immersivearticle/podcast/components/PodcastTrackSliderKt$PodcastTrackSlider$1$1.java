package com.vuitton.android.presentation.screen.immersivearticle.podcast.components;

import androidx.compose.runtime.MutableState;
import defpackage.md;
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
import kotlinx.coroutines.DelayKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$1$1", f = "PodcastTrackSlider.kt", l = {EACTags.APPLICATION_IMAGE}, m = "invokeSuspend", v = 2)
final class PodcastTrackSliderKt$PodcastTrackSlider$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f58903c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f58904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f58905f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PodcastTrackSliderKt$PodcastTrackSlider$1$1(Function1 function1, boolean z, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f58903c = function1;
        this.d = z;
        this.f58904e = mutableState;
        this.f58905f = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PodcastTrackSliderKt$PodcastTrackSlider$1$1(this.f58903c, this.d, this.f58904e, this.f58905f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PodcastTrackSliderKt$PodcastTrackSlider$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58902b;
        Function1 function1 = this.f58903c;
        if (i2 == 0) {
            ResultKt.b(obj);
            float f2 = PodcastTrackSliderKt.f58900a;
            if (((Boolean) this.f58904e.getF10755b()).booleanValue() || ((Boolean) this.f58905f.getF10755b()).booleanValue()) {
                function1.invoke(Boolean.TRUE);
            } else if (this.d) {
                this.f58902b = 1;
                if (DelayKt.b(200L, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        function1.invoke(Boolean.FALSE);
        return Unit.f71739a;
    }
}
