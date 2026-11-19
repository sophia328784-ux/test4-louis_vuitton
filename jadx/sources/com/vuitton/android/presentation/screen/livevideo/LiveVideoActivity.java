package com.vuitton.android.presentation.screen.livevideo;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.compose.components.LifecycleEventKt;
import com.vuitton.android.presentation.extensions.ActivityViewTreeExtKt;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoViewState;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.rg;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Companion", "Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;", "viewState", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class LiveVideoActivity extends Hilt_LiveVideoActivity {
    public static final Companion q = new Companion(null);
    public final ViewModelLazy l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;", "", "", "KEY_VIDEO_ID", "Ljava/lang/String;", "ORIENTATION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str, boolean z) {
            context.getClass();
            str.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) LiveVideoActivity.class).putExtra("VIDEO_ID", new VideoIdUiModel(str)).putExtra("ORIENTATION", z);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    public LiveVideoActivity() {
        final Function0 function0 = null;
        this.l = new ViewModelLazy(Reflection.f71922a.b(LiveVideoViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getF13583b();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getF13584c();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public final LiveVideoViewModel B() {
        return (LiveVideoViewModel) this.l.getF71699b();
    }

    @Override // com.vuitton.android.presentation.screen.livevideo.Hilt_LiveVideoActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Parcelable parcelable;
        super.onCreate(bundle);
        Intent intent = getIntent();
        final String str = null;
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) intent.getParcelableExtra("VIDEO_ID", VideoIdUiModel.class);
            } else {
                Parcelable parcelableExtra = intent.getParcelableExtra("VIDEO_ID");
                if (!(parcelableExtra instanceof VideoIdUiModel)) {
                    parcelableExtra = null;
                }
                parcelable = (VideoIdUiModel) parcelableExtra;
            }
            VideoIdUiModel videoIdUiModel = (VideoIdUiModel) parcelable;
            String str2 = videoIdUiModel != null ? videoIdUiModel.f51799b : null;
            if (str2 != null) {
                str = str2;
            }
        }
        if (str == null) {
            str = "";
        }
        Intent intent2 = getIntent();
        if (intent2 != null ? intent2.getBooleanExtra("ORIENTATION", false) : false) {
            setRequestedOrientation(0);
        }
        getWindow().setBackgroundDrawableResource(R.color.black);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(getWindow(), getWindow().getDecorView());
        windowInsetsControllerCompat.f();
        windowInsetsControllerCompat.a(519);
        SystemIcons.f43533b.getClass();
        boolean z = SystemIcons.f43534c;
        EdgeToEdgeKt.a(this, z, z);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-1358195396, true, new Function2() { // from class: com.vuitton.android.presentation.screen.livevideo.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                LiveVideoActivity.Companion companion = LiveVideoActivity.q;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Lifecycle.Event eventA = LifecycleEventKt.a(composer);
                    final LiveVideoActivity liveVideoActivity = this.f58958b;
                    MutableState mutableStateB = SnapshotStateKt.b(liveVideoActivity.B().getF58947h(), composer);
                    final boolean z2 = ((LiveVideoViewState) mutableStateB.getF10755b()).f58968b;
                    String str3 = ((LiveVideoViewState) mutableStateB.getF10755b()).f58969c;
                    Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
                    boolean zK = composer.K(str3) | composer.K(mutableStateB) | composer.y(liveVideoActivity) | composer.y(context);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX == composer$Companion$Empty$1) {
                        LiveVideoActivity$onCreate$1$1$1 liveVideoActivity$onCreate$1$1$1 = new LiveVideoActivity$onCreate$1$1$1(str3, liveVideoActivity, context, mutableStateB, null);
                        composer.q(liveVideoActivity$onCreate$1$1$1);
                        objX = liveVideoActivity$onCreate$1$1$1;
                    }
                    EffectsKt.e(composer, str3, (Function2) objX);
                    boolean zD = composer.d(eventA.ordinal()) | composer.K(mutableStateB);
                    Object objX2 = composer.x();
                    if (zD || objX2 == composer$Companion$Empty$1) {
                        objX2 = new LiveVideoActivity$onCreate$1$2$1(eventA, mutableStateB, null);
                        composer.q(objX2);
                    }
                    EffectsKt.e(composer, eventA, (Function2) objX2);
                    ExoPlayer exoPlayer = ((LiveVideoViewState) mutableStateB.getF10755b()).d;
                    if (exoPlayer != null) {
                        final String str4 = str;
                        exoPlayer.Y(new Player.Listener() { // from class: com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity$onCreate$1$3
                            @Override // androidx.media3.common.Player.Listener
                            public final void f0(Player player, Player.Events events) {
                                player.getClass();
                                LiveVideoActivity.Companion companion2 = LiveVideoActivity.q;
                                if (z2 || !player.isPlaying()) {
                                    return;
                                }
                                if (events.f13927a.a(3, 4, 5, 7)) {
                                    long duration = (player.getDuration() * 25) / 100;
                                    long duration2 = (player.getDuration() * 50) / 100;
                                    long duration3 = (player.getDuration() * 75) / 100;
                                    long duration4 = (player.getDuration() * 90) / 100;
                                    long currentPosition = player.getCurrentPosition();
                                    LiveVideoActivity liveVideoActivity2 = liveVideoActivity;
                                    String str5 = str4;
                                    if (currentPosition > duration && !liveVideoActivity2.n) {
                                        liveVideoActivity2.n = true;
                                        liveVideoActivity2.B().U1(str5, "milestone_25");
                                        return;
                                    }
                                    if (player.getCurrentPosition() > duration2 && !liveVideoActivity2.o) {
                                        liveVideoActivity2.o = true;
                                        liveVideoActivity2.B().U1(str5, "milestone_50");
                                    } else if (player.getCurrentPosition() > duration3 && !liveVideoActivity2.p) {
                                        liveVideoActivity2.p = true;
                                        liveVideoActivity2.B().U1(str5, "milestone_75");
                                    } else {
                                        if (player.getCurrentPosition() <= duration4 || liveVideoActivity2.m) {
                                            return;
                                        }
                                        liveVideoActivity2.m = true;
                                        liveVideoActivity2.B().U1(str5, "video_completed");
                                    }
                                }
                            }

                            @Override // androidx.media3.common.Player.Listener
                            public final void x0(boolean z3) {
                                LiveVideoActivity.Companion companion2 = LiveVideoActivity.q;
                                liveVideoActivity.B().o1(str4, z3);
                            }
                        });
                    }
                    ThemeKt.a(null, ComposableLambdaKt.b(1401501728, new rg(mutableStateB, liveVideoActivity, z2, 5), composer), composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            }
        }));
        ActivityViewTreeExtKt.a(this);
    }
}
