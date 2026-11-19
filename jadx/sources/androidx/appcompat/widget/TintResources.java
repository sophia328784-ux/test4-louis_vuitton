package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import com.vuitton.android.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class TintResources extends ResourcesWrapper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakReference f1311b;

    public TintResources(Context context, Resources resources) {
        super(resources);
        this.f1311b = new WeakReference(context);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    /* JADX WARN: Code duplicated, block: B:28:0x0075  */
    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final Drawable getDrawable(int i2) {
        ResourceManagerInternal.ResourceManagerHooks resourceManagerHooks;
        int i3;
        int iRound;
        Drawable drawableMutate;
        Drawable drawableA = a(i2);
        Context context = (Context) this.f1311b.get();
        if (drawableA != null && context != null && (resourceManagerHooks = ResourceManagerInternal.c().f1259e) != null) {
            AppCompatDrawableManager.AnonymousClass1 anonymousClass1 = (AppCompatDrawableManager.AnonymousClass1) resourceManagerHooks;
            PorterDuff.Mode mode = AppCompatDrawableManager.f1122b;
            boolean z = true;
            if (AppCompatDrawableManager.AnonymousClass1.a(i2, anonymousClass1.f1125a)) {
                i3 = R.attr.colorControlNormal;
            } else if (AppCompatDrawableManager.AnonymousClass1.a(i2, anonymousClass1.f1127c)) {
                i3 = R.attr.colorControlActivated;
            } else {
                if (AppCompatDrawableManager.AnonymousClass1.a(i2, anonymousClass1.d)) {
                    mode = PorterDuff.Mode.MULTIPLY;
                } else {
                    if (i2 == 2131230805) {
                        iRound = Math.round(40.8f);
                        i3 = 16842800;
                    } else if (i2 != R.drawable.abc_dialog_material_background) {
                        z = false;
                        i3 = 0;
                    }
                    if (z) {
                        drawableMutate = drawableA.mutate();
                        drawableMutate.setColorFilter(AppCompatDrawableManager.c(ThemeUtils.c(i3, context), mode));
                        if (iRound != -1) {
                            drawableMutate.setAlpha(iRound);
                        }
                    }
                }
                i3 = 16842801;
            }
            iRound = -1;
            if (z) {
                drawableMutate = drawableA.mutate();
                drawableMutate.setColorFilter(AppCompatDrawableManager.c(ThemeUtils.c(i3, context), mode));
                if (iRound != -1) {
                    drawableMutate.setAlpha(iRound);
                }
            }
        }
        return drawableA;
    }
}
