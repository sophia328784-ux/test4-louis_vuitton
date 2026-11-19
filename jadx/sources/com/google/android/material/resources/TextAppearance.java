package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.R$styleable;
import androidx.core.content.res.ResourcesCompat;
import com.batch.android.q0.b;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class TextAppearance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f32868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f32869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f32870c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f32871e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f32872f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f32873h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f32874i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f32875j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f32876k;
    public float l;
    public final int m;
    public boolean n = false;
    public boolean o = false;
    public Typeface p;

    public TextAppearance(Context context, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, R$styleable.y);
        this.l = typedArrayObtainStyledAttributes.getDimension(0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f32876k = MaterialResources.a(context, typedArrayObtainStyledAttributes, 3);
        MaterialResources.a(context, typedArrayObtainStyledAttributes, 4);
        MaterialResources.a(context, typedArrayObtainStyledAttributes, 5);
        this.d = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.f32871e = typedArrayObtainStyledAttributes.getInt(1, 1);
        int i3 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.m = typedArrayObtainStyledAttributes.getResourceId(i3, 0);
        this.f32869b = typedArrayObtainStyledAttributes.getString(i3);
        typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.f32868a = MaterialResources.a(context, typedArrayObtainStyledAttributes, 6);
        this.f32872f = typedArrayObtainStyledAttributes.getFloat(7, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.g = typedArrayObtainStyledAttributes.getFloat(8, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f32873h = typedArrayObtainStyledAttributes.getFloat(9, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i2, com.google.android.material.R$styleable.H);
        this.f32874i = typedArrayObtainStyledAttributes2.hasValue(0);
        this.f32875j = typedArrayObtainStyledAttributes2.getFloat(0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f32870c = typedArrayObtainStyledAttributes2.getString(typedArrayObtainStyledAttributes2.hasValue(3) ? 3 : 1);
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.p;
        int i2 = this.d;
        if (typeface == null && (str = this.f32869b) != null) {
            this.p = Typeface.create(str, i2);
        }
        if (this.p == null) {
            int i3 = this.f32871e;
            if (i3 == 1) {
                this.p = Typeface.SANS_SERIF;
            } else if (i3 == 2) {
                this.p = Typeface.SERIF;
            } else if (i3 != 3) {
                this.p = Typeface.DEFAULT;
            } else {
                this.p = Typeface.MONOSPACE;
            }
            this.p = Typeface.create(this.p, i2);
        }
    }

    public final void b(Context context, final TextAppearanceFontCallback textAppearanceFontCallback) {
        if (!c(context)) {
            a();
        }
        int i2 = this.m;
        if (i2 == 0) {
            this.n = true;
        }
        if (this.n) {
            textAppearanceFontCallback.b(this.p, true);
            return;
        }
        try {
            ResourcesCompat.FontCallback fontCallback = new ResourcesCompat.FontCallback() { // from class: com.google.android.material.resources.TextAppearance.1
                @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                public final void b(int i3) {
                    TextAppearance.this.n = true;
                    textAppearanceFontCallback.a(i3);
                }

                @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                public final void c(Typeface typeface) {
                    TextAppearance textAppearance = TextAppearance.this;
                    Typeface typefaceCreate = Typeface.create(typeface, textAppearance.d);
                    textAppearance.p = typefaceCreate;
                    textAppearance.n = true;
                    textAppearanceFontCallback.b(typefaceCreate, false);
                }
            };
            ThreadLocal threadLocal = ResourcesCompat.f12034a;
            if (context.isRestricted()) {
                fontCallback.a(-4);
            } else {
                ResourcesCompat.c(context, i2, new TypedValue(), 0, fontCallback, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.n = true;
            textAppearanceFontCallback.a(1);
        } catch (Exception unused2) {
            this.n = true;
            textAppearanceFontCallback.a(-3);
        }
    }

    public final boolean c(Context context) {
        Context context2;
        Typeface typefaceC;
        String string;
        Typeface typefaceCreate;
        if (this.n) {
            return true;
        }
        int i2 = this.m;
        if (i2 != 0) {
            ThreadLocal threadLocal = ResourcesCompat.f12034a;
            Typeface typefaceCreate2 = null;
            if (context.isRestricted()) {
                context2 = context;
                typefaceC = null;
            } else {
                context2 = context;
                typefaceC = ResourcesCompat.c(context2, i2, new TypedValue(), 0, null, false, true);
            }
            if (typefaceC != null) {
                this.p = typefaceC;
                this.n = true;
                return true;
            }
            if (!this.o) {
                this.o = true;
                Resources resources = context2.getResources();
                int i3 = this.m;
                if (i3 == 0 || !resources.getResourceTypeName(i3).equals("font")) {
                    string = null;
                    break;
                }
                try {
                    XmlResourceParser xml = resources.getXml(i3);
                    while (true) {
                        if (xml.getEventType() == 1) {
                            string = null;
                            break;
                        }
                        if (xml.getEventType() == 2 && xml.getName().equals("font-family")) {
                            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xml), androidx.core.R$styleable.f11867b);
                            string = typedArrayObtainAttributes.getString(7);
                            typedArrayObtainAttributes.recycle();
                            break;
                        }
                        xml.next();
                        string = null;
                        break;
                    }
                } catch (Throwable unused) {
                }
                if (string != null && (typefaceCreate = Typeface.create(string, 0)) != Typeface.DEFAULT) {
                    typefaceCreate2 = Typeface.create(typefaceCreate, this.d);
                }
            }
            if (typefaceCreate2 != null) {
                this.p = typefaceCreate2;
                this.n = true;
                return true;
            }
        }
        return false;
    }

    public final void d(Context context, TextPaint textPaint, TextAppearanceFontCallback textAppearanceFontCallback) {
        e(context, textPaint, textAppearanceFontCallback);
        ColorStateList colorStateList = this.f32876k;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : b.v);
        ColorStateList colorStateList2 = this.f32868a;
        textPaint.setShadowLayer(this.f32873h, this.f32872f, this.g, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void e(final Context context, final TextPaint textPaint, final TextAppearanceFontCallback textAppearanceFontCallback) {
        Typeface typeface;
        if (c(context) && this.n && (typeface = this.p) != null) {
            f(context, textPaint, typeface);
            return;
        }
        a();
        f(context, textPaint, this.p);
        b(context, new TextAppearanceFontCallback() { // from class: com.google.android.material.resources.TextAppearance.2
            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public final void a(int i2) {
                textAppearanceFontCallback.a(i2);
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public final void b(Typeface typeface2, boolean z) {
                TextAppearance.this.f(context, textPaint, typeface2);
                textAppearanceFontCallback.b(typeface2, z);
            }
        });
    }

    public final void f(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceA = TypefaceUtils.a(context.getResources().getConfiguration(), typeface);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        textPaint.setTypeface(typeface);
        int i2 = (~typeface.getStyle()) & this.d;
        textPaint.setFakeBoldText((i2 & 1) != 0);
        textPaint.setTextSkewX((i2 & 2) != 0 ? -0.25f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
        textPaint.setTextSize(this.l);
        textPaint.setFontVariationSettings(this.f32870c);
        if (this.f32874i) {
            textPaint.setLetterSpacing(this.f32875j);
        }
    }
}
