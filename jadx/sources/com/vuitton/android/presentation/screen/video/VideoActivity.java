package com.vuitton.android.presentation.screen.video;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.extensions.ActivityViewTreeExtKt;
import com.vuitton.android.presentation.utils.TrackingFrom;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.z41;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/VideoActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class VideoActivity extends Hilt_VideoActivity {
    public static final Companion m = new Companion(null);
    public final ViewModelLazy l;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;", "", "", "EXTRA_URL", "Ljava/lang/String;", "EXTRA_URL_SRT", "EXTRA_IDENTIFIER", "EXTRA_TRACKING_FROM", "EXTRA_CURRENT_PLAY_POSITION", "KEY_VIDEO_TRACKING_NAME", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, TrackingFrom trackingFrom, String str, String str2) {
            context.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) VideoActivity.class).putExtra("extra_tracking_from", trackingFrom).putExtra("extra_url", str).putExtra("extra_url_srt", str2).putExtra("EXTRA_CURRENT_PLAY_POSITION", (Serializable) 0);
            intentPutExtra.getClass();
            return intentPutExtra;
        }

        public static Intent b(Context context, TrackingFrom trackingFrom, String str, String str2, String str3) {
            context.getClass();
            trackingFrom.getClass();
            Intent intentPutExtra = a(context, trackingFrom, str, str2).putExtra("identifier", (String) null).putExtra("VIDEO_TRACKING_NAME", str3);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    public VideoActivity() {
        final Function0 function0 = null;
        this.l = new ViewModelLazy(Reflection.f71922a.b(VideoViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.video.VideoActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.video.VideoActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.video.VideoActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.video.Hilt_VideoActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(getWindow(), getWindow().getDecorView());
        windowInsetsControllerCompat.f();
        windowInsetsControllerCompat.a(519);
        SystemIcons.f43533b.getClass();
        boolean z = SystemIcons.f43534c;
        EdgeToEdgeKt.a(this, z, z);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(477826600, true, new z41(this, 1)));
        ActivityViewTreeExtKt.a(this);
    }
}
