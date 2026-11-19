package defpackage;

import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.batch.android.d0.a;
import com.batch.android.m0.b;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v71 implements OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WindowInsetsControllerCompat f80525c;

    public /* synthetic */ v71(WindowInsetsControllerCompat windowInsetsControllerCompat, int i2) {
        this.f80524b = i2;
        this.f80525c = windowInsetsControllerCompat;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i2 = this.f80524b;
        WindowInsetsControllerCompat windowInsetsControllerCompat = this.f80525c;
        switch (i2) {
            case 0:
                return a.a(windowInsetsControllerCompat, view, windowInsetsCompat);
            default:
                return b.a(windowInsetsControllerCompat, view, windowInsetsCompat);
        }
    }
}
