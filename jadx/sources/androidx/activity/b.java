package androidx.activity;

import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EdgeToEdgeImpl f689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SystemBarStyle f690c;
    public final /* synthetic */ SystemBarStyle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ View f692f;

    public /* synthetic */ b(EdgeToEdgeImpl edgeToEdgeImpl, SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, ComponentActivity componentActivity, View view) {
        this.f689b = edgeToEdgeImpl;
        this.f690c = systemBarStyle;
        this.d = systemBarStyle2;
        this.f691e = componentActivity;
        this.f692f = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = EdgeToEdge.f662a;
        Window window = this.f691e.getWindow();
        window.getClass();
        SystemBarStyle systemBarStyle = this.f690c;
        Function1 function1 = systemBarStyle.d;
        View view = this.f692f;
        Resources resources = view.getResources();
        resources.getClass();
        boolean zBooleanValue = ((Boolean) function1.invoke(resources)).booleanValue();
        SystemBarStyle systemBarStyle2 = this.d;
        Function1 function2 = systemBarStyle2.d;
        Resources resources2 = view.getResources();
        resources2.getClass();
        this.f689b.b(systemBarStyle, systemBarStyle2, window, view, zBooleanValue, ((Boolean) function2.invoke(resources2)).booleanValue());
    }
}
