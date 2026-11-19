package com.vuitton.android.presentation.compose;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.media3.common.Player;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import com.google.common.base.Preconditions;
import com.vuitton.android.presentation.CacheFactory;
import com.vuitton.android.presentation.di.AppModule;
import defpackage.ws;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/compose/LvExoPlayer;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LvExoPlayer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExoPlayer f50900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f50901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f50902c;

    public LvExoPlayer(Context context) {
        ExoPlayer exoPlayerA;
        CacheDataSource.Factory factory;
        context.getClass();
        CacheFactory cacheFactory = AppModule.f51474a;
        if (cacheFactory == null || (factory = (CacheDataSource.Factory) cacheFactory.f50468b.getF71699b()) == null) {
            exoPlayerA = new ExoPlayer.Builder(context).a();
        } else {
            ExoPlayer.Builder builder = new ExoPlayer.Builder(context);
            DefaultMediaSourceFactory defaultMediaSourceFactory = new DefaultMediaSourceFactory(factory);
            Preconditions.q(!builder.A);
            builder.d = new ws(defaultMediaSourceFactory, 2);
            exoPlayerA = builder.a();
        }
        this.f50900a = exoPlayerA;
        this.f50901b = SnapshotStateKt.g(Boolean.FALSE);
        this.f50902c = SnapshotStateKt.g(Boolean.TRUE);
        exoPlayerA.Y(new Player.Listener() { // from class: com.vuitton.android.presentation.compose.LvExoPlayer$playerListener$1
            @Override // androidx.media3.common.Player.Listener
            public final void h0(float f2) {
                ((SnapshotMutableStateImpl) this.f50903b.f50902c).setValue(Boolean.valueOf(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM));
            }

            @Override // androidx.media3.common.Player.Listener
            public final void x0(boolean z) {
                ((SnapshotMutableStateImpl) this.f50903b.f50901b).setValue(Boolean.valueOf(z));
            }
        });
    }
}
