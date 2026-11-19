package com.google.accompanist.systemuicontroller;

import android.view.View;
import android.view.Window;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.core.view.WindowInsetsControllerCompat;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;", "Lcom/google/accompanist/systemuicontroller/SystemUiController;", "Landroid/view/View;", "view", "Landroid/view/Window;", "window", "<init>", "(Landroid/view/View;Landroid/view/Window;)V", "systemuicontroller_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AndroidSystemUiController implements SystemUiController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f27782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Window f27783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WindowInsetsControllerCompat f27784c;

    public AndroidSystemUiController(View view, Window window) {
        view.getClass();
        this.f27782a = view;
        this.f27783b = window;
        this.f27784c = window != null ? new WindowInsetsControllerCompat(window, view) : null;
    }

    @Override // com.google.accompanist.systemuicontroller.SystemUiController
    public final void a(long j2, boolean z, Function1 function1) {
        function1.getClass();
        WindowInsetsControllerCompat windowInsetsControllerCompat = this.f27784c;
        if (windowInsetsControllerCompat != null) {
            windowInsetsControllerCompat.e(z);
        }
        Window window = this.f27783b;
        if (window == null) {
            return;
        }
        if (z && (windowInsetsControllerCompat == null || !windowInsetsControllerCompat.c())) {
            j2 = ((Color) function1.invoke(new Color(j2))).f8872a;
        }
        window.setStatusBarColor(ColorKt.i(j2));
    }
}
