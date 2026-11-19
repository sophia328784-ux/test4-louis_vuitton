package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.core.graphics.TypefaceCompat;
import defpackage.aa0;
import defpackage.t6;
import java.io.IOException;
import java.util.Objects;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResourcesCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f12034a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f12035b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f12036c = new Object();

    public static class ColorStateListCacheEntry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ColorStateList f12037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Configuration f12038b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12039c;

        public ColorStateListCacheEntry(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            this.f12037a = colorStateList;
            this.f12038b = configuration;
            this.f12039c = theme == null ? 0 : theme.hashCode();
        }
    }

    public static final class ColorStateListCacheKey {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f12040a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Resources.Theme f12041b;

        public ColorStateListCacheKey(Resources resources, Resources.Theme theme) {
            this.f12040a = resources;
            this.f12041b = theme;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && ColorStateListCacheKey.class == obj.getClass()) {
                ColorStateListCacheKey colorStateListCacheKey = (ColorStateListCacheKey) obj;
                if (this.f12040a.equals(colorStateListCacheKey.f12040a) && Objects.equals(this.f12041b, colorStateListCacheKey.f12041b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.f12040a, this.f12041b);
        }
    }

    public static abstract class FontCallback {
        public final void a(int i2) {
            new Handler(Looper.getMainLooper()).post(new t6(this, i2, 6));
        }

        public abstract void b(int i2);

        public abstract void c(Typeface typeface);
    }

    public static ColorStateList a(int i2, Resources.Theme theme, Resources resources) {
        ColorStateList colorStateListA;
        ColorStateList colorStateList;
        ColorStateListCacheEntry colorStateListCacheEntry;
        ColorStateListCacheKey colorStateListCacheKey = new ColorStateListCacheKey(resources, theme);
        synchronized (f12036c) {
            try {
                SparseArray sparseArray = (SparseArray) f12035b.get(colorStateListCacheKey);
                colorStateListA = null;
                if (sparseArray == null || sparseArray.size() <= 0 || (colorStateListCacheEntry = (ColorStateListCacheEntry) sparseArray.get(i2)) == null) {
                    colorStateList = null;
                } else {
                    if (colorStateListCacheEntry.f12038b.equals(resources.getConfiguration())) {
                        if (theme != null || colorStateListCacheEntry.f12039c != 0) {
                            if (theme == null || colorStateListCacheEntry.f12039c != theme.hashCode()) {
                            }
                        }
                        colorStateList = colorStateListCacheEntry.f12037a;
                    }
                    sparseArray.remove(i2);
                    colorStateList = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        ThreadLocal threadLocal = f12034a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i2, typedValue, true);
        int i3 = typedValue.type;
        if (i3 < 28 || i3 > 31) {
            try {
                colorStateListA = ColorStateListInflaterCompat.a(resources, resources.getXml(i2), theme);
            } catch (Exception unused) {
            }
        }
        if (colorStateListA == null) {
            return resources.getColorStateList(i2, theme);
        }
        synchronized (f12036c) {
            try {
                WeakHashMap weakHashMap = f12035b;
                SparseArray sparseArray2 = (SparseArray) weakHashMap.get(colorStateListCacheKey);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray();
                    weakHashMap.put(colorStateListCacheKey, sparseArray2);
                }
                sparseArray2.append(i2, new ColorStateListCacheEntry(colorStateListA, colorStateListCacheKey.f12040a.getConfiguration(), theme));
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return colorStateListA;
    }

    public static Typeface b(int i2, Context context) {
        if (context.isRestricted()) {
            return null;
        }
        return c(context, i2, new TypedValue(), 0, null, false, false);
    }

    public static Typeface c(Context context, int i2, TypedValue typedValue, int i3, FontCallback fontCallback, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i2) + "\" (" + Integer.toHexString(i2) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        Typeface typefaceB = null;
        if (string.startsWith("res/")) {
            Typeface typeface = (Typeface) TypefaceCompat.f12061b.b(TypefaceCompat.d(resources, i2, string, typedValue.assetCookie, i3));
            int i4 = 21;
            if (typeface != null) {
                if (fontCallback != null) {
                    new Handler(Looper.getMainLooper()).post(new aa0(fontCallback, typeface, i4));
                }
                typefaceB = typeface;
            } else if (!z2) {
                try {
                    if (string.toLowerCase().endsWith(".xml")) {
                        FontResourcesParserCompat.FamilyResourceEntry familyResourceEntryA = FontResourcesParserCompat.a(resources.getXml(i2), resources);
                        if (familyResourceEntryA != null) {
                            typefaceB = TypefaceCompat.b(context, familyResourceEntryA, resources, i2, string, typedValue.assetCookie, i3, fontCallback, z);
                        } else if (fontCallback != null) {
                            fontCallback.a(-3);
                        }
                    } else {
                        Typeface typefaceC = TypefaceCompat.c(resources, i2, string, typedValue.assetCookie, i3);
                        if (fontCallback != null) {
                            if (typefaceC != null) {
                                new Handler(Looper.getMainLooper()).post(new aa0(fontCallback, typefaceC, i4));
                            } else {
                                fontCallback.a(-3);
                            }
                        }
                        typefaceB = typefaceC;
                    }
                } catch (IOException | XmlPullParserException unused) {
                    if (fontCallback != null) {
                        fontCallback.a(-3);
                    }
                }
            }
        } else if (fontCallback != null) {
            fontCallback.a(-3);
        }
        if (typefaceB != null || fontCallback != null || z2) {
            return typefaceB;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i2) + " could not be retrieved.");
    }
}
