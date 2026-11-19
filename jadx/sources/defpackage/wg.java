package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wg implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80864b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80865c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80867f;

    public /* synthetic */ wg(long j2, float[] fArr, Ref$IntRef ref$IntRef, Ref$FloatRef ref$FloatRef) {
        this.d = j2;
        this.f80865c = fArr;
        this.f80866e = ref$IntRef;
        this.f80867f = ref$FloatRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long jFloatToRawIntBits;
        int i2 = this.f80864b;
        Object obj2 = this.f80867f;
        Object obj3 = this.f80866e;
        Object obj4 = this.f80865c;
        switch (i2) {
            case 0:
                Rect rect = (Rect) obj4;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                long j2 = this.d;
                ColorFilter colorFilter = (ColorFilter) obj2;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.R1();
                float f2 = rect.f8811a;
                float f3 = rect.f8812b;
                contentDrawScope.getF8996c().f9001a.g(f2, f3);
                try {
                    DrawScope.X(contentDrawScope, (ImageBitmap) ref$ObjectRef.f71921b, 0L, j2, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, colorFilter, 0, 0, 890);
                    return Unit.f71739a;
                } finally {
                    contentDrawScope.getF8996c().f9001a.g(-f2, -f3);
                }
            case 1:
                Rect rect2 = (Rect) obj4;
                Animatable animatable = (Animatable) obj3;
                MutableState mutableState = (MutableState) obj2;
                DrawScope drawScope = (DrawScope) obj;
                drawScope.getClass();
                float fHypot = (float) Math.hypot(Float.intBitsToFloat((int) (drawScope.b() >> 32)), Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)));
                if (rect2 != null) {
                    long jB = rect2.b();
                    jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jB >> 32)) - Float.intBitsToFloat((int) (((Offset) mutableState.getF10755b()).f8808a >> 32)))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jB & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (((Offset) mutableState.getF10755b()).f8808a & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
                } else {
                    jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.b() >> 32)) / 2.0f)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) / 2.0f)) & BodyPartID.bodyIdMax);
                    Offset.Companion companion = Offset.f8806b;
                }
                DrawScope.r0(drawScope, this.d, ((Number) animatable.d()).floatValue() * fHypot, jFloatToRawIntBits, null, 120);
                return Unit.f71739a;
            default:
                float[] fArr = (float[]) obj4;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj3;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj2;
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                int i3 = paragraphInfo.f10472b;
                Paragraph paragraph = paragraphInfo.f10471a;
                int iE = paragraphInfo.f10473c;
                long j3 = this.d;
                int iF = i3 > TextRange.f(j3) ? paragraphInfo.f10472b : TextRange.f(j3);
                if (iE >= TextRange.e(j3)) {
                    iE = TextRange.e(j3);
                }
                long jA = TextRangeKt.a(paragraphInfo.d(iF), paragraphInfo.d(iE));
                paragraph.q(jA, fArr, ref$IntRef.f71919b);
                int iD = (TextRange.d(jA) * 4) + ref$IntRef.f71919b;
                for (int i4 = ref$IntRef.f71919b; i4 < iD; i4 += 4) {
                    int i5 = i4 + 1;
                    float f4 = fArr[i5];
                    float f5 = ref$FloatRef.f71918b;
                    fArr[i5] = f4 + f5;
                    int i6 = i4 + 3;
                    fArr[i6] = fArr[i6] + f5;
                }
                ref$IntRef.f71919b = iD;
                ref$FloatRef.f71918b = paragraph.getHeight() + ref$FloatRef.f71918b;
                return Unit.f71739a;
        }
    }

    public /* synthetic */ wg(Rect rect, long j2, Animatable animatable, MutableState mutableState) {
        this.f80865c = rect;
        this.d = j2;
        this.f80866e = animatable;
        this.f80867f = mutableState;
    }

    public /* synthetic */ wg(Rect rect, Ref$ObjectRef ref$ObjectRef, long j2, BlendModeColorFilter blendModeColorFilter) {
        this.f80865c = rect;
        this.f80866e = ref$ObjectRef;
        this.d = j2;
        this.f80867f = blendModeColorFilter;
    }
}
