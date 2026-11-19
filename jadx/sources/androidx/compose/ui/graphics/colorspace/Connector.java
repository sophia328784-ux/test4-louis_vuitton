package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.jt0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001:\u0002\u000f\u0010B;\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fB!\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\u000e¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Connector;", "", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", Payload.SOURCE, "destination", "transformSource", "transformDestination", "Landroidx/compose/ui/graphics/colorspace/RenderIntent;", "renderIntent", "", "transform", "<init>", "(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "intent", "(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "RgbConnector", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class Connector {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f8964e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorSpace f8965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ColorSpace f8966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ColorSpace f8967c;
    public final float[] d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Connector$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;", "Landroidx/compose/ui/graphics/colorspace/Connector;", "Landroidx/compose/ui/graphics/colorspace/Rgb;", "mSource", "mDestination", "Landroidx/compose/ui/graphics/colorspace/RenderIntent;", "intent", "<init>", "(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RgbConnector extends Connector {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Rgb f8968f;
        public final Rgb g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float[] f8969h;

        public RgbConnector(Rgb rgb, Rgb rgb2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            float[] fArrF;
            super(rgb, rgb2, rgb, rgb2, i2, null, null);
            this.f8968f = rgb;
            this.g = rgb2;
            WhitePoint whitePoint = rgb.d;
            float[] fArrF2 = rgb.f8983i;
            WhitePoint whitePoint2 = rgb2.d;
            float[] fArrE = rgb2.f8984j;
            if (ColorSpaceKt.c(whitePoint, whitePoint2)) {
                fArrF = ColorSpaceKt.f(fArrE, fArrF2);
            } else {
                float[] fArrA = whitePoint.a();
                float[] fArrA2 = whitePoint2.a();
                WhitePoint whitePoint3 = Illuminant.f8972b;
                if (!ColorSpaceKt.c(whitePoint, whitePoint3)) {
                    Adaptation.f8945b.getClass();
                    fArrF2 = ColorSpaceKt.f(ColorSpaceKt.b(Adaptation.f8946c.f8947a, fArrA, new float[]{0.964212f, 1.0f, 0.825188f}), fArrF2);
                }
                if (!ColorSpaceKt.c(whitePoint2, whitePoint3)) {
                    Adaptation.f8945b.getClass();
                    fArrE = ColorSpaceKt.e(ColorSpaceKt.f(ColorSpaceKt.b(Adaptation.f8946c.f8947a, fArrA2, new float[]{0.964212f, 1.0f, 0.825188f}), rgb2.f8983i));
                }
                RenderIntent.f8977a.getClass();
                fArrF = ColorSpaceKt.f(fArrE, i2 == RenderIntent.f8979c ? ColorSpaceKt.g(new float[]{fArrA[0] / fArrA2[0], fArrA[1] / fArrA2[1], fArrA[2] / fArrA2[2]}, fArrF2) : fArrF2);
            }
            this.f8969h = fArrF;
        }

        @Override // androidx.compose.ui.graphics.colorspace.Connector
        public final long a(long j2) {
            float fH = Color.h(j2);
            float fG = Color.g(j2);
            float fE = Color.e(j2);
            float fD = Color.d(j2);
            Rgb rgb = this.f8968f;
            float fB = (float) rgb.p.b(fH);
            jt0 jt0Var = rgb.p;
            float fB2 = (float) jt0Var.b(fG);
            float fB3 = (float) jt0Var.b(fE);
            float[] fArr = this.f8969h;
            float f2 = (fArr[6] * fB3) + (fArr[3] * fB2) + (fArr[0] * fB);
            float f3 = (fArr[7] * fB3) + (fArr[4] * fB2) + (fArr[1] * fB);
            float f4 = (fArr[8] * fB3) + (fArr[5] * fB2) + (fArr[2] * fB);
            Rgb rgb2 = this.g;
            float fB4 = (float) rgb2.m.b(f2);
            jt0 jt0Var2 = rgb2.m;
            return ColorKt.a(fB4, (float) jt0Var2.b(f3), (float) jt0Var2.b(f4), fD, rgb2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0084  */
    /* JADX WARN: Illegal instructions before constructor call */
    public Connector(ColorSpace colorSpace, ColorSpace colorSpace2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        float[] fArr;
        long j2 = colorSpace.f8953b;
        ColorModel.f8948a.getClass();
        long j3 = ColorModel.f8949b;
        ColorSpace colorSpaceA = ColorModel.a(j2, j3) ? ColorSpaceKt.a(colorSpace, Illuminant.f8972b) : colorSpace;
        ColorSpace colorSpaceA2 = ColorModel.a(colorSpace2.f8953b, j3) ? ColorSpaceKt.a(colorSpace2, Illuminant.f8972b) : colorSpace2;
        f8964e.getClass();
        RenderIntent.f8977a.getClass();
        if (i2 == RenderIntent.f8979c) {
            boolean zA = ColorModel.a(colorSpace.f8953b, j3);
            boolean zA2 = ColorModel.a(colorSpace2.f8953b, j3);
            if (!(zA && zA2) && (zA || zA2)) {
                WhitePoint whitePoint = ((Rgb) (zA ? colorSpace : colorSpace2)).d;
                float[] fArrA = zA ? whitePoint.a() : Illuminant.f8974e;
                float[] fArrA2 = zA2 ? whitePoint.a() : Illuminant.f8974e;
                fArr = new float[]{fArrA[0] / fArrA2[0], fArrA[1] / fArrA2[1], fArrA[2] / fArrA2[2]};
            } else {
                fArr = null;
            }
        } else {
            fArr = null;
        }
        this(colorSpace, colorSpace2, colorSpaceA, colorSpaceA2, i2, fArr, null);
    }

    public long a(long j2) {
        float fH = Color.h(j2);
        float fG = Color.g(j2);
        float fE = Color.e(j2);
        float fD = Color.d(j2);
        ColorSpace colorSpace = this.f8966b;
        long jE = colorSpace.e(fH, fG, fE);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jE >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jE & BodyPartID.bodyIdMax));
        float fG2 = colorSpace.g(fH, fG, fE);
        float[] fArr = this.d;
        if (fArr != null) {
            fIntBitsToFloat *= fArr[0];
            fIntBitsToFloat2 *= fArr[1];
            fG2 *= fArr[2];
        }
        float f2 = fIntBitsToFloat;
        float f3 = fIntBitsToFloat2;
        return this.f8967c.h(f2, f3, fG2, fD, this.f8965a);
    }

    public Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, ColorSpace colorSpace4, int i2, float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8965a = colorSpace2;
        this.f8966b = colorSpace3;
        this.f8967c = colorSpace4;
        this.d = fArr;
    }
}
