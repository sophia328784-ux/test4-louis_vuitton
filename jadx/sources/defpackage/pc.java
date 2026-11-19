package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ymk.utility.FileDownloader;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pc implements OnApplyWindowInsetsListener, Consumer, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78824c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78825e;

    public /* synthetic */ pc(DownloadTaskCancelable downloadTaskCancelable, AtomicInteger atomicInteger, int i2, RecommendationHandler.SyncServerCallback syncServerCallback) {
        this.f78824c = downloadTaskCancelable;
        this.d = atomicInteger;
        this.f78823b = i2;
        this.f78825e = syncServerCallback;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        MediaSourceEventListener.EventDispatcher eventDispatcher = (MediaSourceEventListener.EventDispatcher) this.f78824c;
        ((MediaSourceEventListener) obj).z(eventDispatcher.f15520a, eventDispatcher.f15521b, (LoadEventInfo) this.d, (MediaLoadData) this.f78825e, this.f78823b);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) this.f78824c;
        AtomicInteger atomicInteger = (AtomicInteger) this.d;
        RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) this.f78825e;
        String str = (String) obj;
        int i2 = 2;
        return new h(new p(new sw0(str, downloadTaskCancelable, i2)).j(FileDownloader.d).f(new uw0(str, atomicInteger, this.f78823b, syncServerCallback, 0)), new h8(str, i2));
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        ViewGroup.LayoutParams layoutParams;
        View view2 = (View) this.f78824c;
        View view3 = (View) this.d;
        Integer num = (Integer) this.f78825e;
        view.getClass();
        Insets insetsE = windowInsetsCompat.e(519);
        insetsE.getClass();
        if (view2 != null && (layoutParams = view2.getLayoutParams()) != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            if (marginLayoutParams != null) {
                marginLayoutParams.topMargin = this.f78823b + insetsE.f12055b;
                view2.setLayoutParams(marginLayoutParams);
            }
        }
        if (view3 != null && num != null) {
            ViewGroup.LayoutParams layoutParams2 = view3.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            if (marginLayoutParams2 != null) {
                marginLayoutParams2.bottomMargin = num.intValue() + insetsE.d;
                view3.setLayoutParams(marginLayoutParams2);
            }
        }
        return windowInsetsCompat;
    }

    public /* synthetic */ pc(Object obj, Object obj2, Object obj3, int i2) {
        this.f78824c = obj;
        this.d = obj2;
        this.f78825e = obj3;
        this.f78823b = i2;
    }
}
