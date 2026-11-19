package androidx.window.layout.util;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.Rect;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/window/layout/util/BoundsHelperApi29Impl;", "Landroidx/window/layout/util/BoundsHelper;", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class BoundsHelperApi29Impl implements BoundsHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BoundsHelperApi29Impl f20198a = new BoundsHelperApi29Impl();

    @Override // androidx.window.layout.util.BoundsHelper
    public final Rect a(Activity activity) throws Exception {
        activity.getClass();
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            Object objInvoke = obj.getClass().getDeclaredMethod("getBounds", null).invoke(obj, null);
            objInvoke.getClass();
            return new Rect((Rect) objInvoke);
        } catch (Exception e2) {
            if ((e2 instanceof NoSuchFieldException) || (e2 instanceof NoSuchMethodException) || (e2 instanceof IllegalAccessException) || (e2 instanceof InvocationTargetException)) {
                return BoundsHelperApi28Impl.f20197a.a(activity);
            }
            throw e2;
        }
    }
}
