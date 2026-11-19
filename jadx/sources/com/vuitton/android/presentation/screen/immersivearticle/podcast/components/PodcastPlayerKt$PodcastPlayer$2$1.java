package com.vuitton.android.presentation.screen.immersivearticle.podcast.components;

import androidx.compose.runtime.MutableLongState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastPlayerKt$PodcastPlayer$2$1", f = "PodcastPlayer.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "invokeSuspend", v = 2)
final class PodcastPlayerKt$PodcastPlayer$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioPlayerControllerUiState f58897c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f58898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableLongState f58899f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PodcastPlayerKt$PodcastPlayer$2$1(AudioPlayerControllerUiState audioPlayerControllerUiState, long j2, Function1 function1, MutableLongState mutableLongState, Continuation continuation) {
        super(2, continuation);
        this.f58897c = audioPlayerControllerUiState;
        this.d = j2;
        this.f58898e = function1;
        this.f58899f = mutableLongState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PodcastPlayerKt$PodcastPlayer$2$1(this.f58897c, this.d, this.f58898e, this.f58899f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PodcastPlayerKt$PodcastPlayer$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0021  */
    /* JADX WARN: Code duplicated, block: B:13:0x0029 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    /* JADX WARN: Code duplicated, block: B:17:0x003f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0027 -> B:14:0x002a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0021
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.f58896b
            r2 = 1000(0x3e8, double:4.94E-321)
            r4 = 1
            if (r1 == 0) goto L16
            if (r1 != r4) goto Lf
            kotlin.ResultKt.b(r10)
            goto L2a
        Lf:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L16:
            kotlin.ResultKt.b(r10)
        L19:
            com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState r10 = r9.f58897c
            com.vuitton.foundation.model.domain.model.audioplayer.PlayerState r10 = r10.f53245b
            com.vuitton.foundation.model.domain.model.audioplayer.PlayerState r1 = com.vuitton.foundation.model.domain.model.audioplayer.PlayerState.PLAYING
            if (r10 != r1) goto L47
            r9.f58896b = r4
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.b(r2, r9)
            if (r10 != r0) goto L2a
            return r0
        L2a:
            androidx.compose.runtime.MutableLongState r10 = r9.f58899f
            long r5 = r10.b()
            long r7 = r9.d
            int r1 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r1 >= 0) goto L3f
            long r5 = r10.b()
            long r5 = r5 + r2
            r10.D(r5)
            goto L19
        L3f:
            kotlin.jvm.functions.Function1 r10 = r9.f58898e
            com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent$Reset r1 = com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent.Reset.f53253a
            r10.invoke(r1)
            goto L19
        L47:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastPlayerKt$PodcastPlayer$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
