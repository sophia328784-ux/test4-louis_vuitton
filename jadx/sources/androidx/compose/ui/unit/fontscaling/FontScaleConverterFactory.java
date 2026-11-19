package androidx.compose.ui.unit.fontscaling;

import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class FontScaleConverterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[] f11031a = {8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile SparseArrayCompat f11032b = new SparseArrayCompat(0, 1, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object[] f11033c;

    static {
        Object[] objArr = new Object[0];
        f11033c = objArr;
        synchronized (objArr) {
            f11032b.d(115, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{9.2f, 11.5f, 13.8f, 16.4f, 19.8f, 21.8f, 25.2f, 30.0f, 100.0f}));
            f11032b.d(130, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{10.4f, 13.0f, 15.6f, 18.8f, 21.6f, 23.6f, 26.4f, 30.0f, 100.0f}));
            f11032b.d(150, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{12.0f, 15.0f, 18.0f, 22.0f, 24.0f, 26.0f, 28.0f, 30.0f, 100.0f}));
            f11032b.d(Sink.ORIENTATION_180, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{14.4f, 18.0f, 21.6f, 24.4f, 27.6f, 30.8f, 32.8f, 34.8f, 100.0f}));
            f11032b.d(200, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{16.0f, 20.0f, 24.0f, 26.0f, 30.0f, 34.0f, 36.0f, 38.0f, 100.0f}));
        }
        if ((f11032b.c(0) / 100.0f) - 0.01f > 1.03f) {
            return;
        }
        InlineClassHelperKt.b("You should only apply non-linear scaling to font scales > 1");
    }

    public static FontScaleConverter a(float f2) {
        float fC;
        FontScaleConverter fontScaleConverterTable;
        float[] fArr = f11031a;
        if (f2 < 1.03f) {
            return null;
        }
        int i2 = (int) (f2 * 100.0f);
        FontScaleConverter fontScaleConverter = (FontScaleConverter) f11032b.b(i2);
        if (fontScaleConverter != null) {
            return fontScaleConverter;
        }
        SparseArrayCompat sparseArrayCompat = f11032b;
        if (sparseArrayCompat.f3383b) {
            SparseArrayCompatKt.a(sparseArrayCompat);
        }
        int iA = ContainerHelpersKt.a(sparseArrayCompat.f3385e, i2, sparseArrayCompat.f3384c);
        if (iA >= 0) {
            return (FontScaleConverter) f11032b.f(iA);
        }
        int i3 = -(iA + 1);
        int i4 = i3 - 1;
        if (i3 >= f11032b.e()) {
            FontScaleConverterTable fontScaleConverterTable2 = new FontScaleConverterTable(new float[]{1.0f}, new float[]{f2});
            b(f2, fontScaleConverterTable2);
            return fontScaleConverterTable2;
        }
        if (i4 < 0) {
            fontScaleConverterTable = new FontScaleConverterTable(fArr, fArr);
            fC = 1.0f;
        } else {
            fC = f11032b.c(i4) / 100.0f;
            fontScaleConverterTable = (FontScaleConverter) f11032b.f(i4);
        }
        float fC2 = f11032b.c(i3) / 100.0f;
        float fMax = (Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, fC == fC2 ? 0.0f : (f2 - fC) / (fC2 - fC))) * 1.0f) + Call.Parameters.DEFAULT_CAMERA_ZOOM;
        FontScaleConverter fontScaleConverter2 = (FontScaleConverter) f11032b.f(i3);
        float[] fArr2 = new float[9];
        for (int i5 = 0; i5 < 9; i5++) {
            float f3 = fArr[i5];
            float fB = fontScaleConverterTable.b(f3);
            fArr2[i5] = ((fontScaleConverter2.b(f3) - fB) * fMax) + fB;
        }
        FontScaleConverterTable fontScaleConverterTable3 = new FontScaleConverterTable(fArr, fArr2);
        b(f2, fontScaleConverterTable3);
        return fontScaleConverterTable3;
    }

    public static void b(float f2, FontScaleConverterTable fontScaleConverterTable) {
        synchronized (f11033c) {
            SparseArrayCompat sparseArrayCompatClone = f11032b.clone();
            sparseArrayCompatClone.d((int) (f2 * 100.0f), fontScaleConverterTable);
            f11032b = sparseArrayCompatClone;
        }
    }
}
