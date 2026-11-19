package com.vuitton.android.presentation.compose;

import android.net.Uri;
import androidx.compose.runtime.MutableState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.google.common.collect.ImmutableList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.LvVideoPlayerKt$LvVideoPlayer$3$1", f = "LvVideoPlayer.kt", l = {}, m = "invokeSuspend", v = 2)
final class LvVideoPlayerKt$LvVideoPlayer$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExoPlayer f50911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f50912c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CacheDataSource.Factory f50913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f50914f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f50915h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Boolean f50916i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f50917j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ MutableState f50918k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ MutableState m;
    public final /* synthetic */ Function0 n;
    public final /* synthetic */ Function0 o;
    public final /* synthetic */ MutableState p;
    public final /* synthetic */ MutableState q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LvVideoPlayerKt$LvVideoPlayer$3$1(ExoPlayer exoPlayer, String str, String str2, CacheDataSource.Factory factory, boolean z, boolean z2, boolean z3, Boolean bool, boolean z4, MutableState mutableState, Function0 function0, MutableState mutableState2, Function0 function1, Function0 function2, MutableState mutableState3, MutableState mutableState4, Continuation continuation) {
        super(2, continuation);
        this.f50911b = exoPlayer;
        this.f50912c = str;
        this.d = str2;
        this.f50913e = factory;
        this.f50914f = z;
        this.g = z2;
        this.f50915h = z3;
        this.f50916i = bool;
        this.f50917j = z4;
        this.f50918k = mutableState;
        this.l = function0;
        this.m = mutableState2;
        this.n = function1;
        this.o = function2;
        this.p = mutableState3;
        this.q = mutableState4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LvVideoPlayerKt$LvVideoPlayer$3$1(this.f50911b, this.f50912c, this.d, this.f50913e, this.f50914f, this.g, this.f50915h, this.f50916i, this.f50917j, this.f50918k, this.l, this.m, this.n, this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LvVideoPlayerKt$LvVideoPlayer$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f50918k;
        Player.Listener listener = (Player.Listener) mutableState.getF10755b();
        final ExoPlayer exoPlayer = this.f50911b;
        if (listener != null) {
            exoPlayer.V(listener);
        }
        final Function0 function0 = this.l;
        final MutableState mutableState2 = this.m;
        final Function0 function1 = this.n;
        final Function0 function2 = this.o;
        final MutableState mutableState3 = this.p;
        mutableState.setValue(new Player.Listener() { // from class: com.vuitton.android.presentation.compose.LvVideoPlayerKt$LvVideoPlayer$3$1$1$2
            @Override // androidx.media3.common.Player.Listener
            public final void K(int i2) {
                Function0 function3;
                if (i2 != 3) {
                    if (i2 == 4 && (function3 = function1) != null) {
                        function3.mo47invoke();
                        return;
                    }
                    return;
                }
                MutableState mutableState4 = mutableState3;
                if (((Boolean) mutableState4.getF10755b()).booleanValue()) {
                    mutableState4.setValue(Boolean.FALSE);
                }
                MutableState mutableState5 = mutableState2;
                if (((Boolean) mutableState5.getF10755b()).booleanValue()) {
                    mutableState5.setValue(Boolean.FALSE);
                }
                Function0 function4 = function2;
                if (function4 != null) {
                    function4.mo47invoke();
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public final void d0(int i2, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
                positionInfo.getClass();
                positionInfo2.getClass();
                if (i2 == 0 && exoPlayer.i() == 1) {
                    function0.mo47invoke();
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public final void s(PlaybackException playbackException) {
                playbackException.getClass();
                mutableState2.setValue(Boolean.TRUE);
            }
        });
        Player.Listener listener2 = (Player.Listener) mutableState.getF10755b();
        if (listener2 != null) {
            exoPlayer.Y(listener2);
        }
        String str = this.f50912c;
        if (com.vuitton.android.platform.extensions.StringExtKt.a(str)) {
            exoPlayer.stop();
            exoPlayer.D();
            MediaItem.Builder builder = new MediaItem.Builder();
            builder.b(str);
            String str2 = this.d;
            if (com.vuitton.android.platform.extensions.StringExtKt.a(str2)) {
                if (str2 == null) {
                    str2 = "";
                }
                MediaItem.SubtitleConfiguration.Builder builder2 = new MediaItem.SubtitleConfiguration.Builder(Uri.parse(str2));
                builder2.f13874c = Locale.getDefault().getLanguage();
                builder2.f13873b = MimeTypes.p("text/vtt");
                builder2.d = 1;
                builder.f13800h = ImmutableList.t(CollectionsKt.O(new MediaItem.SubtitleConfiguration(builder2)));
            }
            MediaItem mediaItemA = builder.a();
            exoPlayer.R(mediaItemA);
            CacheDataSource.Factory factory = this.f50913e;
            if (factory != null) {
                exoPlayer.b(new ProgressiveMediaSource.Factory(factory).c(mediaItemA));
            }
            exoPlayer.f();
            if (!this.f50914f) {
                exoPlayer.F0(exoPlayer.d0().a().m(1, true).b());
            }
            exoPlayer.P(this.g);
            exoPlayer.P0();
            exoPlayer.E0(this.f50915h ? 1 : 0);
            Boolean bool = this.f50916i;
            if (bool != null) {
                if (bool.booleanValue()) {
                    exoPlayer.c();
                } else {
                    exoPlayer.pause();
                }
            }
            if (this.f50917j) {
                exoPlayer.pause();
            }
            this.q.setValue(Boolean.valueOf(exoPlayer.isPlaying()));
        }
        return Unit.f71739a;
    }
}
