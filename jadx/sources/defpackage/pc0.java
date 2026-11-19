package defpackage;

import android.view.View;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.viewpager2.widget.ViewPager2;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pc0 implements ListenerSet.Event, ViewPager2.PageTransformer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f78827c;

    public /* synthetic */ pc0(int i2, int i3) {
        this.f78826b = i2;
        this.f78827c = i3;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void a(float f2, View view) {
        WatchfacePresentationFragment.Companion companion = WatchfacePresentationFragment.L;
        ViewParent parent = view.getParent().getParent();
        parent.getClass();
        float f3 = f2 * (-((this.f78826b * 2) + this.f78827c));
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        if (((ViewPager2) parent).getLayoutDirection() == 1) {
            view.setTranslationX(-f3);
        } else {
            view.setTranslationX(f3);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((Player.Listener) obj).X(this.f78826b, this.f78827c);
    }
}
