package androidx.activity;

import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.core.view.insets.ColorProtection;
import androidx.core.view.insets.Protection;
import androidx.core.view.insets.ProtectionLayout;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J?\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0017¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/activity/EdgeToEdgeApi35;", "Landroidx/activity/EdgeToEdgeApi30;", "<init>", "()V", "Landroidx/activity/SystemBarStyle;", "statusBarStyle", "navigationBarStyle", "Landroid/view/Window;", "window", "Landroid/view/View;", "view", "", "statusBarIsDark", "navigationBarIsDark", "", NBSSpanMetricUnit.Bit, "(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
final class EdgeToEdgeApi35 extends EdgeToEdgeApi30 {
    @Override // androidx.activity.EdgeToEdgeApi29, androidx.activity.EdgeToEdgeApi26, androidx.activity.EdgeToEdgeImpl
    public void b(SystemBarStyle statusBarStyle, SystemBarStyle navigationBarStyle, Window window, View view, boolean statusBarIsDark, boolean navigationBarIsDark) {
        statusBarStyle.getClass();
        navigationBarStyle.getClass();
        window.getClass();
        view.getClass();
        WindowCompat.a(window, false);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
        int iA = statusBarStyle.a(statusBarIsDark);
        int iA2 = navigationBarStyle.a(navigationBarIsDark);
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null) {
            Iterator f74480a = new ViewGroupKt$children$1(viewGroup).getF74480a();
            while (true) {
                ViewGroupKt$iterator$1 viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) f74480a;
                if (!viewGroupKt$iterator$1.hasNext()) {
                    if (iA != 0 || iA2 != 0) {
                        List listP = CollectionsKt.P(new ColorProtection(2, iA), new ColorProtection(1, iA2), new ColorProtection(4, iA2), new ColorProtection(8, iA2));
                        ProtectionLayout protectionLayout = new ProtectionLayout(((ViewGroup) view).getContext(), (List<Protection>) listP);
                        protectionLayout.setTag(listP);
                        viewGroup.addView(protectionLayout);
                        break;
                    }
                    break;
                }
                Object tag = ((View) viewGroupKt$iterator$1.next()).getTag();
                if (tag instanceof List) {
                    List list = (List) tag;
                    if (list.size() == 4 && (list.get(0) instanceof ColorProtection)) {
                        for (Object obj : (Iterable) tag) {
                            if ((obj instanceof ColorProtection ? (ColorProtection) obj : null) != null) {
                                ColorProtection colorProtection = (ColorProtection) obj;
                                int i2 = colorProtection.f12288a;
                                if (i2 == 1) {
                                    colorProtection.d(iA2);
                                } else if (i2 == 2) {
                                    colorProtection.d(iA);
                                } else if (i2 == 4) {
                                    colorProtection.d(iA2);
                                } else if (i2 == 8) {
                                    colorProtection.d(iA2);
                                }
                            }
                        }
                        break;
                    }
                }
            }
        }
        window.setNavigationBarContrastEnforced(navigationBarStyle.f687c == 0);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, view);
        windowInsetsControllerCompat.e(!statusBarIsDark);
        windowInsetsControllerCompat.d(!navigationBarIsDark);
    }
}
