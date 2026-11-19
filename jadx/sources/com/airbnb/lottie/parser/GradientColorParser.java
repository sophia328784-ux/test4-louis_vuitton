package com.airbnb.lottie.parser;

import android.graphics.Color;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class GradientColorParser implements ValueParser<GradientColor> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f22234a;

    public GradientColorParser(int i2) {
        this.f22234a = i2;
    }

    @Override // com.airbnb.lottie.parser.ValueParser
    public final Object a(JsonReader jsonReader, float f2) {
        float[] fArrCopyOf;
        int iArgb;
        float f3;
        int iArgb2;
        float f4;
        float f5;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = 1;
        char c2 = 0;
        boolean z = jsonReader.w() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.h();
        }
        while (jsonReader.o()) {
            arrayList.add(Float.valueOf((float) jsonReader.q()));
        }
        int i4 = 2;
        if (arrayList.size() == 4 && ((Float) arrayList.get(0)).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add((Float) arrayList.get(1));
            arrayList.add((Float) arrayList.get(2));
            arrayList.add((Float) arrayList.get(3));
            this.f22234a = 2;
        }
        if (z) {
            jsonReader.k();
        }
        if (this.f22234a == -1) {
            this.f22234a = arrayList.size() / 4;
        }
        int i5 = this.f22234a;
        float[] fArr = new float[i5];
        int[] iArr = new int[i5];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < this.f22234a * 4) {
            int i9 = i6 / 4;
            double dFloatValue = ((Float) arrayList.get(i6)).floatValue();
            int i10 = i6 % 4;
            if (i10 != 0) {
                if (i10 == i3) {
                    i7 = (int) (dFloatValue * 255.0d);
                } else if (i10 == 2) {
                    i8 = (int) (dFloatValue * 255.0d);
                } else if (i10 == 3) {
                    iArr[i9] = Color.argb(255, i7, i8, (int) (dFloatValue * 255.0d));
                }
                i2 = i3;
            } else {
                if (i9 > 0) {
                    i2 = i3;
                    float f6 = (float) dFloatValue;
                    if (fArr[i9 - 1] >= f6) {
                        fArr[i9] = f6 + 0.01f;
                    }
                } else {
                    i2 = i3;
                }
                fArr[i9] = (float) dFloatValue;
            }
            i6++;
            i3 = i2;
        }
        int i11 = i3;
        GradientColor gradientColor = new GradientColor(fArr, iArr);
        int i12 = this.f22234a * 4;
        if (arrayList.size() <= i12) {
            return gradientColor;
        }
        int size = (arrayList.size() - i12) / 2;
        float[] fArr2 = new float[size];
        float[] fArr3 = new float[size];
        int i13 = 0;
        while (i12 < arrayList.size()) {
            if (i12 % 2 == 0) {
                fArr2[i13] = ((Float) arrayList.get(i12)).floatValue();
            } else {
                fArr3[i13] = ((Float) arrayList.get(i12)).floatValue();
                i13++;
            }
            i12++;
        }
        float[] fArr4 = gradientColor.f22115a;
        if (fArr4.length == 0) {
            fArrCopyOf = fArr2;
        } else if (size == 0) {
            fArrCopyOf = fArr4;
        } else {
            int length = fArr4.length + size;
            fArrCopyOf = new float[length];
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            for (int i17 = 0; i17 < length; i17++) {
                float f7 = i15 < fArr4.length ? fArr4[i15] : Float.NaN;
                float f8 = i16 < size ? fArr2[i16] : Float.NaN;
                if (Float.isNaN(f8) || f7 < f8) {
                    fArrCopyOf[i17] = f7;
                    i15++;
                } else if (Float.isNaN(f7) || f8 < f7) {
                    fArrCopyOf[i17] = f8;
                    i16++;
                } else {
                    fArrCopyOf[i17] = f7;
                    i15++;
                    i16++;
                    i14++;
                }
            }
            if (i14 != 0) {
                fArrCopyOf = Arrays.copyOf(fArrCopyOf, length - i14);
            }
        }
        int length2 = fArrCopyOf.length;
        int[] iArr2 = new int[length2];
        int i18 = 0;
        while (i18 < length2) {
            float f9 = fArrCopyOf[i18];
            int iBinarySearch = Arrays.binarySearch(fArr4, f9);
            int iBinarySearch2 = Arrays.binarySearch(fArr2, f9);
            char c3 = c2;
            int[] iArr3 = gradientColor.f22116b;
            if (iBinarySearch < 0 || iBinarySearch2 > 0) {
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = -(iBinarySearch2 + 1);
                }
                float f10 = fArr3[iBinarySearch2];
                if (iArr3.length < i4 || f9 == fArr4[c3]) {
                    iArgb = iArr3[c3];
                } else {
                    int i19 = i11;
                    while (true) {
                        if (i19 >= fArr4.length) {
                            md.n("Unreachable code.");
                            return null;
                        }
                        f3 = fArr4[i19];
                        if (f3 >= f9 || i19 == fArr4.length - 1) {
                            break;
                        }
                        i19++;
                    }
                    if (i19 != fArr4.length - 1 || f9 < f3) {
                        int i20 = i19 - 1;
                        float f11 = fArr4[i20];
                        int iC = GammaEvaluator.c(iArr3[i20], iArr3[i19], (f9 - f11) / (f3 - f11));
                        iArgb = Color.argb((int) (f10 * 255.0f), Color.red(iC), Color.green(iC), Color.blue(iC));
                    } else {
                        iArgb = Color.argb((int) (f10 * 255.0f), Color.red(iArr3[i19]), Color.green(iArr3[i19]), Color.blue(iArr3[i19]));
                    }
                }
                iArr2[i18] = iArgb;
            } else {
                int i21 = iArr3[iBinarySearch];
                if (size < i4 || f9 <= fArr2[c3]) {
                    iArgb2 = Color.argb((int) (fArr3[c3] * 255.0f), Color.red(i21), Color.green(i21), Color.blue(i21));
                } else {
                    int i22 = i11;
                    while (true) {
                        if (i22 >= size) {
                            md.n("Unreachable code.");
                            return null;
                        }
                        f4 = fArr2[i22];
                        if (f4 >= f9 || i22 == size - 1) {
                            break;
                        }
                        i22++;
                    }
                    if (f4 <= f9) {
                        f5 = fArr3[i22];
                    } else {
                        int i23 = i22 - 1;
                        float f12 = fArr2[i23];
                        f5 = MiscUtils.f(fArr3[i23], fArr3[i22], (f9 - f12) / (f4 - f12));
                    }
                    iArgb2 = Color.argb((int) (f5 * 255.0f), Color.red(i21), Color.green(i21), Color.blue(i21));
                }
                iArr2[i18] = iArgb2;
            }
            i18++;
            c2 = c3;
            i4 = 2;
        }
        return new GradientColor(fArrCopyOf, iArr2);
    }
}
