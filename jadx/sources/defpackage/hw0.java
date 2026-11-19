package defpackage;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.batch.android.j1.g;
import com.batch.android.j1.h;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$d;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hw0 implements AccessibilityViewCommand, OnApplyWindowInsetsListener, h, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f69798c;
    public final /* synthetic */ Object d;

    public /* synthetic */ hw0(SideSheetBehavior sideSheetBehavior, int i2) {
        this.f69797b = 0;
        this.d = sideSheetBehavior;
        this.f69798c = i2;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean a(View view) {
        ((SideSheetBehavior) this.d).w(this.f69798c);
        return true;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f69797b;
        Object obj2 = this.d;
        int i3 = this.f69798c;
        switch (i2) {
            case 3:
                List list = (List) obj;
                AtomicInteger atomicInteger = j.f41498a;
                StringBuilder sbQ = fc.q(i3, "[#", "] Factory#GetIdSystemDataBuilder(); idGroup.size()=");
                sbQ.append(list.size());
                Log.g(3, "IdSystemDataHelper", sbQ.toString());
                c$d c_d = new c$d(list);
                c_d.f42049a = (NetworkTaskManager.TaskPriority) obj2;
                return c_d.a(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(c_d, 4)), new y71(1))).l();
            default:
                HashMap map = (HashMap) obj2;
                AtomicInteger atomicInteger2 = j.f41498a;
                Log.g(3, "IdSystemDataHelper", "[#" + i3 + "] #getDownloadImageObservable(); done");
                return map;
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        om omVar = (om) this.d;
        view.getClass();
        int i2 = this.f69798c;
        Insets insetsE = windowInsetsCompat.e(i2);
        insetsE.getClass();
        omVar.invoke(insetsE, windowInsetsCompat);
        WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
        builder.b(i2, Insets.f12053e);
        return builder.a();
    }

    public /* synthetic */ hw0(int i2, Object obj, int i3) {
        this.f69797b = i3;
        this.f69798c = i2;
        this.d = obj;
    }

    @Override // com.batch.android.j1.h
    public void a(g gVar) {
        com.batch.android.v0.j.a(this.f69798c, (AtomicBoolean) this.d, gVar);
    }
}
