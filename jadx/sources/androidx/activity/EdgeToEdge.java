package androidx.activity;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import defpackage.l01;
import java.util.Iterator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {ActionFloatingViewItem.f37018a}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EdgeToEdge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f662a = Color.argb(230, 255, 255, 255);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f663b = Color.argb(128, 27, 27, 27);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static EdgeToEdgeApi29 f664c;

    public static final void a(ComponentActivity componentActivity, SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2) {
        ViewGroupKt$iterator$1 viewGroupKt$iterator$1;
        componentActivity.getClass();
        systemBarStyle2.getClass();
        View decorView = componentActivity.getWindow().getDecorView();
        decorView.getClass();
        EdgeToEdgeApi29 edgeToEdgeApi30 = f664c;
        if (edgeToEdgeApi30 == null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 35) {
                edgeToEdgeApi30 = new EdgeToEdgeApi35();
            } else {
                edgeToEdgeApi30 = i2 >= 30 ? new EdgeToEdgeApi30() : new EdgeToEdgeApi29();
            }
            f664c = edgeToEdgeApi30;
        }
        EdgeToEdgeApi29 edgeToEdgeApi29 = edgeToEdgeApi30;
        final b bVar = new b(edgeToEdgeApi29, systemBarStyle, systemBarStyle2, componentActivity, decorView);
        ViewGroup viewGroup = (ViewGroup) decorView;
        Iterator it = new ViewGroupKt$children$1(viewGroup).getF74480a();
        do {
            viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) it;
            if (!viewGroupKt$iterator$1.hasNext()) {
                final Context context = viewGroup.getContext();
                View view = new View(context) { // from class: androidx.activity.EdgeToEdge$enableEdgeToEdge$1$2
                    @Override // android.view.View
                    public final void onConfigurationChanged(Configuration configuration) {
                        configuration.getClass();
                        bVar.run();
                    }
                };
                view.setTag(edgeToEdgeApi29);
                view.setVisibility(8);
                view.setWillNotDraw(true);
                viewGroup.addView(view);
                break;
            }
        } while (!(((View) viewGroupKt$iterator$1.next()).getTag() instanceof EdgeToEdgeImpl));
        bVar.run();
        Window window = componentActivity.getWindow();
        window.getClass();
        edgeToEdgeApi29.a(window);
    }

    public static void b(BaseActivity baseActivity, SystemBarStyle systemBarStyle, int i2) {
        SystemBarStyle.Companion companion = SystemBarStyle.f684e;
        int i3 = 26;
        l01 l01Var = new l01(i3);
        companion.getClass();
        SystemBarStyle systemBarStyle2 = new SystemBarStyle(0, 0, 0, l01Var, null);
        if ((i2 & 2) != 0) {
            l01 l01Var2 = new l01(i3);
            companion.getClass();
            systemBarStyle = new SystemBarStyle(f662a, f663b, 0, l01Var2, null);
        }
        a(baseActivity, systemBarStyle2, systemBarStyle);
    }
}
