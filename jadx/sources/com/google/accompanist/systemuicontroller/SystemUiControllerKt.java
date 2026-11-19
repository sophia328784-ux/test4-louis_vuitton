package com.google.accompanist.systemuicontroller;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.window.DialogWindowProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"systemuicontroller_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class SystemUiControllerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f27785a = ColorKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.3f, ColorSpaces.f8958e);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Function1 f27786b = SystemUiControllerKt$BlackScrimmed$1.f27787c;

    public static final AndroidSystemUiController a(Composer composer) {
        composer.w(-715745933);
        composer.w(1009281237);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        CompositionLocal compositionLocal = AndroidCompositionLocals_androidKt.f9939f;
        ViewParent parent = ((View) composer.k(compositionLocal)).getParent();
        Window window = null;
        DialogWindowProvider dialogWindowProvider = parent instanceof DialogWindowProvider ? (DialogWindowProvider) parent : null;
        Window window2 = dialogWindowProvider != null ? dialogWindowProvider.getWindow() : null;
        if (window2 == null) {
            Context context = ((View) composer.k(compositionLocal)).getContext();
            context.getClass();
            while (true) {
                if (!(context instanceof Activity)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                    context.getClass();
                } else {
                    window = ((Activity) context).getWindow();
                    break;
                }
            }
            window2 = window;
        }
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        composer.J();
        View view = (View) composer.k(AndroidCompositionLocals_androidKt.f9939f);
        composer.w(-1044852491);
        boolean zK = composer.K(view) | composer.K(window2);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new AndroidSystemUiController(view, window2);
            composer.q(objX);
        }
        AndroidSystemUiController androidSystemUiController = (AndroidSystemUiController) objX;
        composer.J();
        composer.J();
        return androidSystemUiController;
    }
}
