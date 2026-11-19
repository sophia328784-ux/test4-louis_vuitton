package com.batch.android.o0;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.ViewCompat;
import com.batch.android.e.t;
import com.batch.android.j0.g;
import defpackage.d21;
import defpackage.r81;
import java.util.LinkedList;
import java.util.Map;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23873a = "StyleHelper";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f23874b = Color.parseColor("#22000000");

    private b() {
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00ed  */
    public static void a(View view, Map<String, String> map) {
        Integer numValueOf;
        Float[] fArr;
        int i2;
        Float fA;
        g.c cVar;
        float[] fArr2;
        Float fA2;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (view == null || map == null) {
            return;
        }
        int i3 = 0;
        int i4 = 1;
        int i5 = 3;
        Float[] fArr3 = {fValueOf, fValueOf, fValueOf, fValueOf};
        Resources resources = view.getResources();
        int i6 = 1;
        Integer num = null;
        g gVar = null;
        Integer numValueOf2 = null;
        Float fA3 = null;
        Float fA4 = null;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            float f3 = f2;
            int i7 = i3;
            if ("background".equalsIgnoreCase(entry.getKey())) {
                String value = entry.getValue();
                if (value.startsWith("#")) {
                    try {
                        numValueOf = Integer.valueOf(c(entry.getValue()));
                        fArr = fArr3;
                        i2 = i5;
                        num = numValueOf;
                    } catch (IllegalArgumentException e2) {
                        t.c(f23873a, "Unparsable background color (" + entry.getValue() + ")", e2);
                        fArr = fArr3;
                        i2 = i5;
                    }
                    f2 = f3;
                    i3 = i7;
                    gVar = gVar;
                    i5 = i2;
                    fArr3 = fArr;
                    i4 = 1;
                } else {
                    int i8 = i4;
                    if (value.startsWith("linear-gradient(") && value.endsWith(")")) {
                        String[] strArrSplit = value.substring(16, value.length() - 1).split(",");
                        if (strArrSplit.length >= i5 && (fA = a(strArrSplit[i7].replace("deg", ""))) != null) {
                            int iIntValue = fA.intValue();
                            if (iIntValue == -90) {
                                cVar = g.c.RIGHT_LEFT;
                            } else if (iIntValue == 90) {
                                cVar = g.c.LEFT_RIGHT;
                            } else if (iIntValue == 180) {
                                cVar = g.c.TOP_BOTTOM;
                            } else if (iIntValue != 270) {
                                cVar = g.c.BOTTOM_TOP;
                            } else {
                                cVar = g.c.RIGHT_LEFT;
                            }
                            int length = strArrSplit.length - 1;
                            int[] iArr = new int[length];
                            LinkedList linkedList = new LinkedList();
                            i2 = i5;
                            int i9 = i8;
                            while (i9 < strArrSplit.length) {
                                String[] strArr = strArrSplit;
                                Float[] fArr4 = fArr3;
                                String[] strArrSplit2 = strArrSplit[i9].replace("%", "").trim().split("\\s+", 2);
                                if (strArrSplit2.length != 0) {
                                    iArr[i9 - 1] = c(strArrSplit2[i7]);
                                    int i10 = i8;
                                    if (strArrSplit2.length > i10 && (fA2 = a(strArrSplit2[i10])) != null && fA2.floatValue() >= f3 && fA2.floatValue() <= 100.0f) {
                                        linkedList.add(Float.valueOf(fA2.floatValue() / 100.0f));
                                    }
                                }
                                i9++;
                                strArrSplit = strArr;
                                fArr3 = fArr4;
                                i8 = 1;
                            }
                            fArr = fArr3;
                            if (linkedList.size() == length) {
                                fArr2 = new float[linkedList.size()];
                                for (int i11 = i7; i11 < linkedList.size(); i11++) {
                                    fArr2[i11] = ((Float) linkedList.get(i11)).floatValue();
                                }
                            } else {
                                fArr2 = null;
                            }
                            gVar = new g(cVar, iArr, fArr2);
                        }
                    }
                    f2 = f3;
                    i3 = i7;
                    gVar = gVar;
                    i5 = i2;
                    fArr3 = fArr;
                    i4 = 1;
                }
                fArr = fArr3;
                i2 = i5;
                f2 = f3;
                i3 = i7;
                gVar = gVar;
                i5 = i2;
                fArr3 = fArr;
                i4 = 1;
            } else {
                fArr = fArr3;
                i2 = i5;
                if ("background-color".equalsIgnoreCase(entry.getKey())) {
                    try {
                        numValueOf = Integer.valueOf(c(entry.getValue()));
                        num = numValueOf;
                    } catch (IllegalArgumentException e3) {
                        t.c(f23873a, "Unparsable background-color (" + entry.getValue() + ")", e3);
                    }
                } else if ("border-color".equalsIgnoreCase(entry.getKey())) {
                    try {
                        numValueOf2 = Integer.valueOf(c(entry.getValue()));
                    } catch (IllegalArgumentException e4) {
                        t.c(f23873a, "Unparsable border-color (" + entry.getValue() + ")", e4);
                    }
                } else if ("border-width".equalsIgnoreCase(entry.getKey())) {
                    fA4 = a(entry.getValue());
                } else if ("border-radius".equalsIgnoreCase(entry.getKey())) {
                    fA3 = a(entry.getValue());
                } else if ("opacity".equalsIgnoreCase(entry.getKey())) {
                    Float fA5 = a(entry.getValue());
                    if (fA5 != null) {
                        view.setAlpha(fA5.floatValue());
                    }
                } else if ("elevation".equalsIgnoreCase(entry.getKey())) {
                    Float fA6 = a(entry.getValue());
                    if (fA6 != null) {
                        view.setElevation(a(resources, fA6));
                    }
                } else if ("z-index".equalsIgnoreCase(entry.getKey())) {
                    Float fA7 = a(entry.getValue());
                    if (fA7 != null) {
                        view.setZ(a(resources, fA7));
                    }
                } else if ("clip-subviews".equalsIgnoreCase(entry.getKey())) {
                    Float fA8 = a(entry.getValue());
                    if (fA8 != null) {
                        f2 = f3;
                        i3 = i7;
                        if (fA8.floatValue() > f3) {
                            i5 = i2;
                            fArr3 = fArr;
                            i4 = 1;
                            i6 = 1;
                        } else {
                            i6 = i3;
                            gVar = gVar;
                            i5 = i2;
                            fArr3 = fArr;
                            i4 = 1;
                        }
                    }
                } else if ("padding-left".equalsIgnoreCase(entry.getKey())) {
                    fArr[i7] = a(entry.getValue());
                } else if ("padding-top".equalsIgnoreCase(entry.getKey())) {
                    fArr[1] = a(entry.getValue());
                } else if ("padding-right".equalsIgnoreCase(entry.getKey())) {
                    fArr[2] = a(entry.getValue());
                } else if ("padding-bottom".equalsIgnoreCase(entry.getKey())) {
                    fArr[i2] = a(entry.getValue());
                }
                f2 = f3;
                i3 = i7;
                gVar = gVar;
                i5 = i2;
                fArr3 = fArr;
                i4 = 1;
            }
        }
        Float[] fArr5 = fArr3;
        int i12 = i3;
        int i13 = i5;
        if (!(view instanceof TextureView)) {
            if ((num != null && num.intValue() == 0) || gVar != null || numValueOf2 != null || fA3 != null || fA4 != null) {
                if (gVar == null) {
                    gVar = new g();
                }
                if (num != null) {
                    gVar.c(num.intValue());
                }
                if (fA4 != null) {
                    if (num == null) {
                        num = numValueOf2;
                    }
                    if (num != null) {
                        gVar.b(a(resources, fA4), num.intValue());
                    }
                }
                if (fA3 != null) {
                    gVar.a(a(resources, fA3));
                }
                Drawable drawableA = gVar;
                if (view instanceof com.batch.android.messaging.view.styled.mep.a) {
                    drawableA = a(gVar);
                }
                view.setBackground(drawableA);
            } else if (num != null) {
                if (view instanceof AppCompatButton) {
                    ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}, new int[]{R.attr.state_enabled}}, new int[]{a(num.intValue()), num.intValue()});
                    WeakHashMap weakHashMap = ViewCompat.f12200a;
                    view.setBackgroundTintList(colorStateList);
                } else {
                    view.setBackgroundColor(num.intValue());
                }
            }
            if (fA3 != null && i6 != 0) {
                view.setClipToOutline(true);
            }
        }
        Drawable background = view.getBackground();
        Rect rect = new Rect();
        if (background != null) {
            background.getPadding(rect);
        }
        view.setPadding(a(resources, fArr5[i12]) + rect.left, a(resources, fArr5[1]) + rect.top, a(resources, fArr5[2]) + rect.right, a(resources, fArr5[i13]) + rect.bottom);
    }

    public static float b(Resources resources, Float f2) {
        return f2 == null ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2.floatValue() / resources.getDisplayMetrics().density;
    }

    public static int c(String str) {
        if (!TextUtils.isEmpty(str) && !"transparent".equalsIgnoreCase(str)) {
            try {
                return Color.parseColor(str.trim());
            } catch (IllegalArgumentException unused) {
            }
        }
        return 0;
    }

    public static com.batch.android.a0.d d(String str) {
        try {
            if (str == null) {
                throw new IllegalArgumentException("Message's style string cannot be null");
            }
            com.batch.android.a0.d dVarB = new com.batch.android.a0.g(new com.batch.android.b0.a(), str).b();
            if (dVarB != null) {
                return dVarB;
            }
            throw new IllegalArgumentException("An error occurred while parsing message style");
        } catch (com.batch.android.a0.a e2) {
            r81.j("Unparsable style", e2);
            return null;
        }
    }

    public static String e(String str) {
        if (str.length() < 8 || str.length() > 9) {
            return str;
        }
        String strSubstring = str.startsWith("#") ? str.substring(1) : str;
        if (strSubstring.length() != 8) {
            return str;
        }
        return d21.l("#", strSubstring.substring(6, 8), strSubstring.substring(0, 2), strSubstring.substring(2, 4), strSubstring.substring(4, 6));
    }

    public static Spanned f(String str) {
        if (str == null) {
            str = "";
        }
        return Html.fromHtml(str, 0);
    }

    public static Integer b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static com.batch.android.j0.d.h a(Context context, com.batch.android.j0.d.h hVar, Map<String, String> map) {
        com.batch.android.j0.d.h hVar2;
        Integer numB;
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (hVar != null) {
            hVar2 = new com.batch.android.j0.d.h(hVar);
        } else {
            hVar2 = new com.batch.android.j0.d.h(-2, -2);
        }
        Float[] fArr = {fValueOf, fValueOf, fValueOf, fValueOf};
        Resources resources = context.getResources();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("margin-left".equalsIgnoreCase(entry.getKey())) {
                fArr[0] = a(entry.getValue());
            } else if ("margin-top".equalsIgnoreCase(entry.getKey())) {
                fArr[1] = a(entry.getValue());
            } else if ("margin-right".equalsIgnoreCase(entry.getKey())) {
                fArr[2] = a(entry.getValue());
            } else if ("margin-bottom".equalsIgnoreCase(entry.getKey())) {
                fArr[3] = a(entry.getValue());
            } else if ("width".equalsIgnoreCase(entry.getKey())) {
                if ("100%".equals(entry.getValue())) {
                    ((ViewGroup.MarginLayoutParams) hVar2).width = -1;
                } else if ("auto".equals(entry.getValue())) {
                    ((ViewGroup.MarginLayoutParams) hVar2).width = -2;
                } else {
                    Float fA = a(entry.getValue());
                    if (fA != null) {
                        ((ViewGroup.MarginLayoutParams) hVar2).width = a(resources, fA);
                    }
                }
            } else if ("height".equalsIgnoreCase(entry.getKey())) {
                if ("100%".equals(entry.getValue())) {
                    ((ViewGroup.MarginLayoutParams) hVar2).height = -1;
                } else if ("auto".equals(entry.getValue())) {
                    ((ViewGroup.MarginLayoutParams) hVar2).height = -2;
                } else {
                    Float fA2 = a(entry.getValue());
                    if (fA2 != null) {
                        ((ViewGroup.MarginLayoutParams) hVar2).height = a(resources, fA2);
                    }
                }
            } else if ("align".equalsIgnoreCase(entry.getKey())) {
                if ("left".equals(entry.getValue())) {
                    hVar2.d = 0;
                } else if ("right".equals(entry.getValue())) {
                    hVar2.d = 1;
                } else if ("center".equals(entry.getValue())) {
                    hVar2.d = 2;
                } else if ("auto".equals(entry.getValue())) {
                    hVar2.d = -1;
                }
            } else if ("flex-grow".equalsIgnoreCase(entry.getKey())) {
                Float fA3 = a(entry.getValue());
                if (fA3 != null) {
                    hVar2.f23517b = fA3.floatValue();
                }
            } else if ("flex-shrink".equalsIgnoreCase(entry.getKey())) {
                Float fA4 = a(entry.getValue());
                if (fA4 != null) {
                    hVar2.f23518c = fA4.floatValue();
                }
            } else if ("flex-basis".equalsIgnoreCase(entry.getKey())) {
                Float fA5 = a(entry.getValue());
                if (fA5 != null) {
                    hVar2.f23519e = fA5.floatValue();
                }
            } else if ("flex-order".equalsIgnoreCase(entry.getKey()) && (numB = b(entry.getValue())) != null) {
                hVar2.f23516a = numB.intValue();
            }
        }
        hVar2.setMargins(a(resources, fArr[0]), a(resources, fArr[1]), a(resources, fArr[2]), a(resources, fArr[3]));
        return hVar2;
    }

    public static com.batch.android.p0.c.a a(Context context, com.batch.android.p0.c.a aVar, Map<String, String> map, int i2, View view) {
        com.batch.android.p0.c.a aVar2;
        char c2;
        char c3;
        char c4;
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (aVar != null) {
            aVar2 = new com.batch.android.p0.c.a((ViewGroup.MarginLayoutParams) aVar);
        } else {
            aVar2 = new com.batch.android.p0.c.a(-1, -1);
        }
        Float[] fArr = new Float[4];
        char c5 = 0;
        fArr[0] = fValueOf;
        char c6 = 1;
        fArr[1] = fValueOf;
        char c7 = 2;
        fArr[2] = fValueOf;
        fArr[3] = fValueOf;
        Resources resources = context.getResources();
        char c8 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("margin-left".equalsIgnoreCase(entry.getKey())) {
                fArr[c5] = a(entry.getValue());
            } else if ("margin-top".equalsIgnoreCase(entry.getKey())) {
                fArr[c6] = a(entry.getValue());
            } else if ("margin-right".equalsIgnoreCase(entry.getKey())) {
                fArr[c7] = a(entry.getValue());
            } else if ("margin-bottom".equalsIgnoreCase(entry.getKey())) {
                fArr[3] = a(entry.getValue());
            } else if (!"width".equalsIgnoreCase(entry.getKey()) && !"size".equalsIgnoreCase(entry.getKey())) {
                c2 = c5;
                if ("height".equalsIgnoreCase(entry.getKey())) {
                    c3 = c6;
                    if ("100%".equals(entry.getValue())) {
                        ((RelativeLayout.LayoutParams) aVar2).height = -1;
                    } else if ("fill".equals(entry.getValue())) {
                        ((RelativeLayout.LayoutParams) aVar2).height = -2;
                        if (view != null) {
                            aVar2.addRule(6, view.getId());
                            aVar2.addRule(8, view.getId());
                        } else {
                            aVar2.addRule(10);
                            aVar2.addRule(12);
                        }
                    } else if ("auto".equals(entry.getValue())) {
                        ((RelativeLayout.LayoutParams) aVar2).height = -2;
                    } else {
                        Float fA = a(entry.getValue());
                        if (fA != null) {
                            ((RelativeLayout.LayoutParams) aVar2).height = a(resources, fA);
                        }
                    }
                } else {
                    c3 = c6;
                    if ("align".equalsIgnoreCase(entry.getKey())) {
                        if ("left".equals(entry.getValue())) {
                            if (view != null) {
                                aVar2.addRule(5, view.getId());
                            } else {
                                aVar2.addRule(9);
                            }
                        } else if ("right".equals(entry.getValue())) {
                            if (view != null) {
                                aVar2.addRule(7, view.getId());
                            } else {
                                aVar2.addRule(11);
                            }
                        } else if ("center".equals(entry.getValue()) || "auto".equals(entry.getValue())) {
                            aVar2.addRule(14);
                        }
                        c5 = c2;
                        c6 = c3;
                        c8 = c6;
                    } else {
                        c4 = c7;
                        if ("align-v".equalsIgnoreCase(entry.getKey()) || "vertical-align".equalsIgnoreCase(entry.getKey())) {
                            if ("top".equals(entry.getValue())) {
                                if (view != null) {
                                    aVar2.addRule(6, view.getId());
                                } else {
                                    aVar2.addRule(10);
                                }
                            } else if ("bottom".equals(entry.getValue())) {
                                if (view != null) {
                                    aVar2.addRule(8, view.getId());
                                } else {
                                    aVar2.addRule(12);
                                }
                            } else if ("center".equals(entry.getValue()) || "auto".equals(entry.getValue())) {
                                aVar2.addRule(15);
                            }
                        }
                        c5 = c2;
                        c6 = c3;
                        c7 = c4;
                    }
                }
                c4 = c7;
                c5 = c2;
                c6 = c3;
                c7 = c4;
            } else {
                c2 = c5;
                c3 = c6;
                c4 = c7;
                if ("auto".equals(entry.getValue())) {
                    ((RelativeLayout.LayoutParams) aVar2).width = -1;
                } else {
                    Float fA2 = a(entry.getValue());
                    if (fA2 != null) {
                        ((RelativeLayout.LayoutParams) aVar2).width = a(resources, fA2);
                    }
                }
                c5 = c2;
                c6 = c3;
                c7 = c4;
            }
            c2 = c5;
            c3 = c6;
            c4 = c7;
            c5 = c2;
            c6 = c3;
            c7 = c4;
        }
        char c9 = c5;
        char c10 = c6;
        char c11 = c7;
        if (c8 == 0) {
            aVar2.addRule(i2);
        }
        aVar2.setMargins(a(resources, fArr[c9]), a(resources, fArr[c10]), a(resources, fArr[c11]), a(resources, fArr[3]));
        return aVar2;
    }

    public static FrameLayout.LayoutParams a(Context context, FrameLayout.LayoutParams layoutParams, Map<String, String> map) {
        FrameLayout.LayoutParams layoutParams2;
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (layoutParams != null) {
            layoutParams2 = new FrameLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            layoutParams2.gravity = layoutParams.gravity;
        } else {
            layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        }
        layoutParams2.gravity = 5;
        Float[] fArr = {fValueOf, fValueOf, fValueOf, fValueOf};
        Resources resources = context.getResources();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("margin-left".equalsIgnoreCase(entry.getKey())) {
                fArr[0] = a(entry.getValue());
            } else if ("margin-top".equalsIgnoreCase(entry.getKey())) {
                fArr[1] = a(entry.getValue());
            } else if ("margin-right".equalsIgnoreCase(entry.getKey())) {
                fArr[2] = a(entry.getValue());
            } else if ("margin-bottom".equalsIgnoreCase(entry.getKey())) {
                fArr[3] = a(entry.getValue());
            } else if (!"width".equalsIgnoreCase(entry.getKey()) && !"size".equalsIgnoreCase(entry.getKey())) {
                if ("height".equalsIgnoreCase(entry.getKey())) {
                    if ("100%".equals(entry.getValue())) {
                        layoutParams2.height = -1;
                    } else if ("auto".equals(entry.getValue())) {
                        layoutParams2.height = -2;
                    } else {
                        Float fA = a(entry.getValue());
                        if (fA != null) {
                            layoutParams2.height = a(resources, fA);
                        }
                    }
                } else if ("align".equalsIgnoreCase(entry.getKey())) {
                    if ("left".equals(entry.getValue())) {
                        layoutParams2.gravity = 3;
                    } else if ("right".equals(entry.getValue())) {
                        layoutParams2.gravity = 5;
                    } else if ("center".equals(entry.getValue())) {
                        layoutParams2.gravity = 1;
                    } else if ("auto".equals(entry.getValue())) {
                        layoutParams2.gravity = 1;
                    }
                } else if ("vertical-align".equalsIgnoreCase(entry.getKey())) {
                    if ("top".equals(entry.getValue())) {
                        layoutParams2.gravity |= 48;
                    } else if ("bottom".equals(entry.getValue())) {
                        layoutParams2.gravity |= 80;
                    } else if ("center".equals(entry.getValue())) {
                        layoutParams2.gravity |= 16;
                    }
                }
            } else if ("auto".equals(entry.getValue())) {
                layoutParams2.width = -1;
            } else {
                Float fA2 = a(entry.getValue());
                if (fA2 != null) {
                    layoutParams2.width = a(resources, fA2);
                }
            }
        }
        layoutParams2.setMargins(a(resources, fArr[0]), a(resources, fArr[1]), a(resources, fArr[2]), a(resources, fArr[3]));
        return layoutParams2;
    }

    public static int a(Resources resources, Float f2) {
        if (f2 == null) {
            return 0;
        }
        return (int) TypedValue.applyDimension(1, f2.floatValue(), resources.getDisplayMetrics());
    }

    public static Float a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static int a(int i2) {
        float[] fArr = new float[3];
        Color.colorToHSV(i2, fArr);
        fArr[2] = fArr[2] * 0.8f;
        return Color.HSVToColor(i2, fArr);
    }

    private static Drawable a(g gVar) {
        g gVar2 = (g) gVar.getConstantState().newDrawable().mutate();
        gVar2.c(-1);
        return new RippleDrawable(ColorStateList.valueOf(f23874b), gVar, gVar2);
    }
}
