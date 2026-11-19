package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.text.PositionedGlyphs;
import android.graphics.text.TextRunShaper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import defpackage.aa0;
import defpackage.vp;
import java.io.IOException;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class TypefaceCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TypefaceCompatApi29Impl f12060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LruCache f12061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Paint f12062c;

    public static class ResourcesCallbackAdapter extends FontsContractCompat.FontRequestCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ResourcesCompat.FontCallback f12063a;

        public ResourcesCallbackAdapter(ResourcesCompat.FontCallback fontCallback) {
            this.f12063a = fontCallback;
        }

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public final void a(int i2) {
            ResourcesCompat.FontCallback fontCallback = this.f12063a;
            if (fontCallback != null) {
                fontCallback.b(i2);
            }
        }

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public final void b(Typeface typeface) {
            ResourcesCompat.FontCallback fontCallback = this.f12063a;
            if (fontCallback != null) {
                fontCallback.c(typeface);
            }
        }
    }

    static {
        Trace.beginSection(androidx.tracing.Trace.b("TypefaceCompat static init"));
        if (Build.VERSION.SDK_INT >= 31) {
            f12060a = new TypefaceCompatApi31Impl();
        } else {
            f12060a = new TypefaceCompatApi29Impl();
        }
        f12061b = new LruCache(16);
        f12062c = null;
        Trace.endSection();
    }

    public static Typeface a(Context context, FontsContractCompat.FontInfo[] fontInfoArr, int i2) {
        Trace.beginSection(androidx.tracing.Trace.b("TypefaceCompat.createFromFontInfo"));
        try {
            TypefaceCompatApi29Impl typefaceCompatApi29Impl = f12060a;
            typefaceCompatApi29Impl.getClass();
            Typeface typefaceBuild = null;
            try {
                FontFamily fontFamilyC = typefaceCompatApi29Impl.c(fontInfoArr, context.getContentResolver());
                if (fontFamilyC != null) {
                    typefaceBuild = new Typeface.CustomFallbackBuilder(fontFamilyC).setStyle(TypefaceCompatApi29Impl.b(fontFamilyC, i2).getStyle()).build();
                }
            } catch (Exception unused) {
            }
            return typefaceBuild;
        } finally {
            Trace.endSection();
        }
    }

    public static Typeface b(Context context, FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry, Resources resources, int i2, String str, int i3, int i4, ResourcesCompat.FontCallback fontCallback, boolean z) {
        Typeface typefaceB;
        FontFamily fontFamilyBuild;
        Typeface typefaceE;
        boolean z2 = familyResourceEntry instanceof FontResourcesParserCompat.ProviderResourceEntry;
        int i5 = 21;
        LruCache lruCache = f12061b;
        Typeface typefaceBuild = null;
        if (z2) {
            FontResourcesParserCompat.ProviderResourceEntry providerResourceEntry = (FontResourcesParserCompat.ProviderResourceEntry) familyResourceEntry;
            String str2 = providerResourceEntry.d;
            if (TextUtils.isEmpty(str2) || (typefaceE = e(str2)) == null) {
                List list = providerResourceEntry.f12029a;
                if (list.size() == 1) {
                    typefaceBuild = e(((FontRequest) list.get(0)).f12097f);
                } else if (Build.VERSION.SDK_INT >= 31) {
                    int i6 = 0;
                    while (true) {
                        if (i6 >= list.size()) {
                            Typeface.CustomFallbackBuilder customFallbackBuilder = null;
                            int i7 = 0;
                            while (true) {
                                if (i7 < list.size()) {
                                    FontRequest fontRequest = (FontRequest) list.get(i7);
                                    if (i7 == list.size() - 1 && TextUtils.isEmpty(fontRequest.g)) {
                                        customFallbackBuilder.setSystemFallback(fontRequest.f12097f);
                                    } else {
                                        String str3 = fontRequest.f12097f;
                                        String str4 = fontRequest.g;
                                        Font fontF = f(e(str3));
                                        if (fontF == null) {
                                            break;
                                        }
                                        if (!TextUtils.isEmpty(str4)) {
                                            try {
                                                fontFamilyBuild = new FontFamily.Builder(vp.a(fontF).setFontVariationSettings(str4).build()).build();
                                            } catch (IOException unused) {
                                                break;
                                            }
                                        } else {
                                            fontFamilyBuild = new FontFamily.Builder(fontF).build();
                                        }
                                        if (customFallbackBuilder == null) {
                                            customFallbackBuilder = new Typeface.CustomFallbackBuilder(fontFamilyBuild);
                                        } else {
                                            customFallbackBuilder.addCustomFallback(fontFamilyBuild);
                                        }
                                        i7++;
                                    }
                                }
                                typefaceBuild = customFallbackBuilder.build();
                                break;
                            }
                        }
                        if (e(((FontRequest) list.get(i6)).f12097f) == null) {
                            break;
                        }
                        i6++;
                    }
                }
            } else {
                typefaceBuild = typefaceE;
            }
            if (typefaceBuild != null) {
                if (fontCallback != null) {
                    new Handler(Looper.getMainLooper()).post(new aa0(fontCallback, typefaceBuild, i5));
                }
                lruCache.c(d(resources, i2, str, i3, i4), typefaceBuild);
                return typefaceBuild;
            }
            typefaceB = FontsContractCompat.b(context, providerResourceEntry.f12029a, i4, !z ? fontCallback != null : providerResourceEntry.f12031c != 0, z ? providerResourceEntry.f12030b : -1, new Handler(Looper.getMainLooper()), new ResourcesCallbackAdapter(fontCallback));
        } else {
            FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry = (FontResourcesParserCompat.FontFamilyFilesResourceEntry) familyResourceEntry;
            f12060a.getClass();
            try {
                FontFamily.Builder builder = null;
                for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.f12024a) {
                    try {
                        try {
                            try {
                                Font fontBuild = new Font.Builder(resources, fontFileResourceEntry.f12028e).setWeight(fontFileResourceEntry.f12025a).setSlant(fontFileResourceEntry.f12026b ? 1 : 0).setTtcIndex(fontFileResourceEntry.d).setFontVariationSettings(fontFileResourceEntry.f12027c).build();
                                if (builder == null) {
                                    builder = new FontFamily.Builder(fontBuild);
                                } else {
                                    builder.addFont(fontBuild);
                                }
                            } catch (Exception unused2) {
                            }
                        } catch (IOException unused3) {
                        }
                    } catch (IOException unused4) {
                    }
                }
                if (builder != null) {
                    FontFamily fontFamilyBuild2 = builder.build();
                    try {
                        typefaceBuild = new Typeface.CustomFallbackBuilder(fontFamilyBuild2).setStyle(TypefaceCompatApi29Impl.b(fontFamilyBuild2, i4).getStyle()).build();
                    } catch (Exception unused5) {
                    }
                }
            } catch (Exception unused6) {
            }
            if (fontCallback != null) {
                if (typefaceBuild != null) {
                    new Handler(Looper.getMainLooper()).post(new aa0(fontCallback, typefaceBuild, i5));
                } else {
                    fontCallback.a(-3);
                }
            }
            typefaceB = typefaceBuild;
        }
        if (typefaceB != null) {
            lruCache.c(d(resources, i2, str, i3, i4), typefaceB);
        }
        return typefaceB;
    }

    public static Typeface c(Resources resources, int i2, String str, int i3, int i4) {
        Typeface typefaceBuild;
        f12060a.getClass();
        try {
            Font fontBuild = new Font.Builder(resources, i2).build();
            typefaceBuild = new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            typefaceBuild = null;
        }
        if (typefaceBuild != null) {
            f12061b.c(d(resources, i2, str, i3, i4), typefaceBuild);
        }
        return typefaceBuild;
    }

    public static String d(Resources resources, int i2, String str, int i3, int i4) {
        return resources.getResourcePackageName(i2) + '-' + str + '-' + i3 + '-' + i2 + '-' + i4;
    }

    public static Typeface e(String str) {
        if (str != null && !str.isEmpty()) {
            Typeface typefaceCreate = Typeface.create(str, 0);
            Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
            if (typefaceCreate != null && !typefaceCreate.equals(typefaceCreate2)) {
                return typefaceCreate;
            }
        }
        return null;
    }

    public static Font f(Typeface typeface) {
        if (f12062c == null) {
            f12062c = new Paint();
        }
        f12062c.setTextSize(10.0f);
        f12062c.setTypeface(typeface);
        PositionedGlyphs positionedGlyphsShapeTextRun = TextRunShaper.shapeTextRun((CharSequence) " ", 0, 1, 0, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, f12062c);
        if (positionedGlyphsShapeTextRun.glyphCount() == 0) {
            return null;
        }
        return positionedGlyphsShapeTextRun.getFont(0);
    }
}
