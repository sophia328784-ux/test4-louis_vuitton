package com.vuitton.android.presentation.extensions;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import defpackage.hw0;
import defpackage.om;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ViewExtKt {
    public static Unit a(View view, int i2, Insets insets, WindowInsetsCompat windowInsetsCompat) {
        android.graphics.Insets insets2;
        insets.getClass();
        windowInsetsCompat.getClass();
        int i3 = insets.f12054a;
        int i4 = insets.f12055b;
        int i5 = insets.f12056c;
        int i6 = windowInsetsCompat.e(i2).d;
        if (Build.VERSION.SDK_INT >= 30 && i2 == 8 && windowInsetsCompat.o(8) && windowInsetsCompat.e(2).d == 0) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            i6 -= (rootWindowInsets == null || (insets2 = rootWindowInsets.getInsets(WindowInsets.Type.navigationBars())) == null) ? 0 : insets2.bottom;
        }
        view.setPadding(i3, i4, i5, i6);
        return Unit.f71739a;
    }

    public static final void b(int i2, View view) {
        view.getClass();
        ViewCompat.x(view, new hw0(i2, new om(view, i2, 16), 1));
        if (view.isAttachedToWindow()) {
            view.requestApplyInsets();
        } else {
            view.addOnAttachStateChangeListener(new ViewExtKt$requestApplyInsetsWhenAttachedToWindow$1());
        }
    }

    public static final void c(View view, Window window, final Function1 function1) {
        view.getClass();
        window.getClass();
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i2 = iArr[0];
        PixelCopy.request(window, new Rect(i2, iArr[1], view.getWidth() + i2, view.getHeight() + iArr[1]), bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: u51
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i3) {
                if (i3 == 0) {
                    function1.invoke(bitmapCreateBitmap);
                }
            }
        }, new Handler(Looper.getMainLooper()));
    }

    public static void d(View view, final Function1 function1) {
        if (view != null) {
            view.setOnClickListener(new OnSingleClickListener() { // from class: com.vuitton.android.presentation.extensions.ViewExtKt$setOnSingleClickListener$1$1
                {
                    super(null);
                }

                @Override // com.vuitton.android.presentation.extensions.OnSingleClickListener
                public final void a(View view2) {
                    view2.getClass();
                    function1.invoke(view2);
                }
            });
        }
    }

    public static void e(View view, Function0 function0, Function1 function1, int i2) {
        int i3;
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        if (view != null) {
            if (((Boolean) function0.mo47invoke()).booleanValue()) {
                if (function1 != null) {
                    function1.invoke(view);
                }
                i3 = 0;
            } else {
                i3 = 8;
            }
            view.setVisibility(i3);
        }
    }
}
