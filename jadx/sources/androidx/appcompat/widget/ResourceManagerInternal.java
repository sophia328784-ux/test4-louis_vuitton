package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.core.content.ContextCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.vuitton.android.R;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ResourceManagerInternal {
    public static ResourceManagerInternal g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakHashMap f1256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakHashMap f1257b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f1258c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ResourceManagerHooks f1259e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final PorterDuff.Mode f1254f = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ColorFilterLruCache f1255h = new ColorFilterLruCache(6);

    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i2) {
            super(i2);
        }
    }

    public interface InflateDelegate {
    }

    public interface ResourceManagerHooks {
    }

    public static synchronized ResourceManagerInternal c() {
        try {
            if (g == null) {
                g = new ResourceManagerInternal();
            }
        } catch (Throwable th) {
            throw th;
        }
        return g;
    }

    public static synchronized PorterDuffColorFilter f(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        ColorFilterLruCache colorFilterLruCache = f1255h;
        colorFilterLruCache.getClass();
        int i3 = (31 + i2) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) colorFilterLruCache.b(Integer.valueOf(mode.hashCode() + i3));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
        }
        return porterDuffColorFilter;
    }

    public final void a(Context context, int i2, ColorStateList colorStateList) {
        if (this.f1256a == null) {
            this.f1256a = new WeakHashMap();
        }
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.f1256a.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat();
            this.f1256a.put(context, sparseArrayCompat);
        }
        int i3 = sparseArrayCompat.f3385e;
        if (i3 != 0 && i2 <= sparseArrayCompat.f3384c[i3 - 1]) {
            sparseArrayCompat.d(i2, colorStateList);
            return;
        }
        if (sparseArrayCompat.f3383b && i3 >= sparseArrayCompat.f3384c.length) {
            SparseArrayCompatKt.a(sparseArrayCompat);
        }
        int i4 = sparseArrayCompat.f3385e;
        if (i4 >= sparseArrayCompat.f3384c.length) {
            int i5 = (i4 + 1) * 4;
            for (int i6 = 4; i6 < 32; i6++) {
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
            }
            int i8 = i5 / 4;
            sparseArrayCompat.f3384c = Arrays.copyOf(sparseArrayCompat.f3384c, i8);
            sparseArrayCompat.d = Arrays.copyOf(sparseArrayCompat.d, i8);
        }
        sparseArrayCompat.f3384c[i4] = i2;
        sparseArrayCompat.d[i4] = colorStateList;
        sparseArrayCompat.f3385e = i4 + 1;
    }

    public final Drawable b(int i2, Context context) {
        LayerDrawable layerDrawableC;
        WeakReference weakReference;
        Drawable drawableNewDrawable;
        if (this.f1258c == null) {
            this.f1258c = new TypedValue();
        }
        TypedValue typedValue = this.f1258c;
        context.getResources().getValue(i2, typedValue, true);
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        synchronized (this) {
            LongSparseArray longSparseArray = (LongSparseArray) this.f1257b.get(context);
            layerDrawableC = null;
            if (longSparseArray != null && (weakReference = (WeakReference) longSparseArray.b(j2)) != null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                if (constantState != null) {
                    drawableNewDrawable = constantState.newDrawable(context.getResources());
                } else {
                    longSparseArray.f(j2);
                }
            }
            drawableNewDrawable = null;
        }
        if (drawableNewDrawable != null) {
            return drawableNewDrawable;
        }
        if (this.f1259e != null) {
            if (i2 == R.drawable.abc_cab_background_top_material) {
                layerDrawableC = new LayerDrawable(new Drawable[]{d(context, R.drawable.abc_cab_background_internal_bg), d(context, 2131230785)});
            } else if (i2 == R.drawable.abc_ratingbar_material) {
                layerDrawableC = AppCompatDrawableManager.AnonymousClass1.c(this, context, R.dimen.abc_star_big);
            } else if (i2 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableC = AppCompatDrawableManager.AnonymousClass1.c(this, context, R.dimen.abc_star_medium);
            } else if (i2 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableC = AppCompatDrawableManager.AnonymousClass1.c(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableC == null) {
            return layerDrawableC;
        }
        layerDrawableC.setChangingConfigurations(typedValue.changingConfigurations);
        synchronized (this) {
            try {
                Drawable.ConstantState constantState2 = layerDrawableC.getConstantState();
                if (constantState2 == null) {
                    return layerDrawableC;
                }
                LongSparseArray longSparseArray2 = (LongSparseArray) this.f1257b.get(context);
                if (longSparseArray2 == null) {
                    longSparseArray2 = new LongSparseArray();
                    this.f1257b.put(context, longSparseArray2);
                }
                longSparseArray2.e(j2, new WeakReference(constantState2));
                return layerDrawableC;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized Drawable d(Context context, int i2) {
        return e(context, i2, false);
    }

    public final synchronized Drawable e(Context context, int i2, boolean z) {
        Drawable drawableB;
        try {
            if (!this.d) {
                this.d = true;
                Drawable drawableD = d(context, R.drawable.abc_vector_test);
                if (drawableD == null || (!(drawableD instanceof VectorDrawableCompat) && !"android.graphics.drawable.VectorDrawable".equals(drawableD.getClass().getName()))) {
                    this.d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableB = b(i2, context);
            if (drawableB == null) {
                drawableB = ContextCompat.getDrawable(context, i2);
            }
            if (drawableB != null) {
                drawableB = h(context, i2, z, drawableB);
            }
            if (drawableB != null) {
                DrawableUtils.a(drawableB);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableB;
    }

    public final synchronized ColorStateList g(int i2, Context context) {
        ColorStateList colorStateList;
        SparseArrayCompat sparseArrayCompat;
        WeakHashMap weakHashMap = this.f1256a;
        ColorStateList colorStateListD = null;
        colorStateList = (weakHashMap == null || (sparseArrayCompat = (SparseArrayCompat) weakHashMap.get(context)) == null) ? null : (ColorStateList) sparseArrayCompat.b(i2);
        if (colorStateList == null) {
            ResourceManagerHooks resourceManagerHooks = this.f1259e;
            if (resourceManagerHooks != null) {
                colorStateListD = ((AppCompatDrawableManager.AnonymousClass1) resourceManagerHooks).d(i2, context);
            }
            if (colorStateListD != null) {
                a(context, i2, colorStateListD);
            }
            colorStateList = colorStateListD;
        }
        return colorStateList;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f0 A[RETURN] */
    public final Drawable h(Context context, int i2, boolean z, Drawable drawable) {
        int iRound;
        ColorStateList colorStateListG = g(i2, context);
        PorterDuff.Mode mode = null;
        if (colorStateListG != null) {
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setTintList(colorStateListG);
            if (this.f1259e != null && i2 == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode != null) {
                drawableMutate.setTintMode(mode);
            }
            return drawableMutate;
        }
        ResourceManagerHooks resourceManagerHooks = this.f1259e;
        int i3 = R.attr.colorControlNormal;
        if (resourceManagerHooks != null) {
            if (i2 == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int iC = ThemeUtils.c(R.attr.colorControlNormal, context);
                PorterDuff.Mode mode2 = AppCompatDrawableManager.f1122b;
                AppCompatDrawableManager.AnonymousClass1.e(drawableFindDrawableByLayerId, iC, mode2);
                AppCompatDrawableManager.AnonymousClass1.e(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), ThemeUtils.c(R.attr.colorControlNormal, context), mode2);
                AppCompatDrawableManager.AnonymousClass1.e(layerDrawable.findDrawableByLayerId(android.R.id.progress), ThemeUtils.c(R.attr.colorControlActivated, context), mode2);
                return drawable;
            }
            if (i2 == R.drawable.abc_ratingbar_material || i2 == R.drawable.abc_ratingbar_indicator_material || i2 == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int iB = ThemeUtils.b(R.attr.colorControlNormal, context);
                PorterDuff.Mode mode3 = AppCompatDrawableManager.f1122b;
                AppCompatDrawableManager.AnonymousClass1.e(drawableFindDrawableByLayerId2, iB, mode3);
                AppCompatDrawableManager.AnonymousClass1.e(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), ThemeUtils.c(R.attr.colorControlActivated, context), mode3);
                AppCompatDrawableManager.AnonymousClass1.e(layerDrawable2.findDrawableByLayerId(android.R.id.progress), ThemeUtils.c(R.attr.colorControlActivated, context), mode3);
                return drawable;
            }
        }
        if (resourceManagerHooks != null) {
            AppCompatDrawableManager.AnonymousClass1 anonymousClass1 = (AppCompatDrawableManager.AnonymousClass1) resourceManagerHooks;
            PorterDuff.Mode mode4 = AppCompatDrawableManager.f1122b;
            boolean z2 = true;
            if (AppCompatDrawableManager.AnonymousClass1.a(i2, anonymousClass1.f1125a)) {
                iRound = -1;
            } else {
                if (AppCompatDrawableManager.AnonymousClass1.a(i2, anonymousClass1.f1127c)) {
                    i3 = R.attr.colorControlActivated;
                } else {
                    boolean zA = AppCompatDrawableManager.AnonymousClass1.a(i2, anonymousClass1.d);
                    i3 = android.R.attr.colorBackground;
                    if (zA) {
                        mode4 = PorterDuff.Mode.MULTIPLY;
                    } else if (i2 == 2131230805) {
                        iRound = Math.round(40.8f);
                        i3 = android.R.attr.colorForeground;
                    } else if (i2 != R.drawable.abc_dialog_material_background) {
                        i3 = 0;
                        z2 = false;
                    }
                }
                iRound = -1;
            }
            if (z2) {
                Drawable drawableMutate2 = drawable.mutate();
                drawableMutate2.setColorFilter(AppCompatDrawableManager.c(ThemeUtils.c(i3, context), mode4));
                if (iRound != -1) {
                    drawableMutate2.setAlpha(iRound);
                    return drawable;
                }
            } else if (z) {
                return null;
            }
        } else if (z) {
            return null;
        }
        return drawable;
    }
}
