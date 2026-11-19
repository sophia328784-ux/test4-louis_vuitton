package androidx.compose.ui.platform;

import android.graphics.Outline;
import android.os.Build;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import defpackage.mt;
import defpackage.v40;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/OutlineResolver;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OutlineResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Outline f10130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.compose.ui.graphics.Outline f10131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AndroidPath f10132c;
    public Path d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10133e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10134f;
    public Path g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RoundRect f10135h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f10136i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f10137j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f10138k;
    public boolean l;

    public OutlineResolver() {
        Outline outline = new Outline();
        outline.setAlpha(1.0f);
        this.f10130a = outline;
        Offset.f8806b.getClass();
        this.f10137j = 0L;
        Size.f8820b.getClass();
        this.f10138k = 0L;
    }

    public final void a() {
        if (this.f10133e) {
            Offset.f8806b.getClass();
            this.f10137j = 0L;
            this.f10136i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.d = null;
            this.f10133e = false;
            this.f10134f = false;
            androidx.compose.ui.graphics.Outline outline = this.f10131b;
            Outline outline2 = this.f10130a;
            if (outline == null || !this.l || Float.intBitsToFloat((int) (this.f10138k >> 32)) <= Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.intBitsToFloat((int) (this.f10138k & BodyPartID.bodyIdMax)) <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                outline2.setEmpty();
                return;
            }
            if (outline instanceof androidx.compose.ui.graphics.Outline.Rectangle) {
                Rect rect = ((androidx.compose.ui.graphics.Outline.Rectangle) outline).f8903a;
                float f2 = rect.f8811a;
                float f3 = rect.f8812b;
                this.f10137j = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
                float f4 = rect.f8813c;
                float f5 = rect.f8811a;
                float f6 = rect.d;
                long jFloatToRawIntBits = Float.floatToRawIntBits(f4 - f5);
                long jFloatToRawIntBits2 = ((long) Float.floatToRawIntBits(f6 - f3)) & BodyPartID.bodyIdMax;
                Size.Companion companion = Size.f8820b;
                this.f10138k = jFloatToRawIntBits2 | (jFloatToRawIntBits << 32);
                outline2.setRect(Math.round(f5), Math.round(f3), Math.round(f4), Math.round(f6));
                return;
            }
            if (!(outline instanceof androidx.compose.ui.graphics.Outline.Rounded)) {
                if (outline instanceof androidx.compose.ui.graphics.Outline.Generic) {
                    b(((androidx.compose.ui.graphics.Outline.Generic) outline).f8902a);
                    return;
                } else {
                    v40.g();
                    return;
                }
            }
            RoundRect roundRect = ((androidx.compose.ui.graphics.Outline.Rounded) outline).f8904a;
            float fIntBitsToFloat = Float.intBitsToFloat((int) (roundRect.f8817e >> 32));
            float f7 = roundRect.f8814a;
            float f8 = roundRect.f8815b;
            this.f10137j = (((long) Float.floatToRawIntBits(f7)) << 32) | (((long) Float.floatToRawIntBits(f8)) & BodyPartID.bodyIdMax);
            float fB = roundRect.b();
            float fA = roundRect.a();
            long jFloatToRawIntBits3 = Float.floatToRawIntBits(fB);
            long jFloatToRawIntBits4 = ((long) Float.floatToRawIntBits(fA)) & BodyPartID.bodyIdMax;
            Size.Companion companion2 = Size.f8820b;
            this.f10138k = jFloatToRawIntBits4 | (jFloatToRawIntBits3 << 32);
            if (RoundRectKt.d(roundRect)) {
                this.f10130a.setRoundRect(Math.round(f7), Math.round(f8), Math.round(roundRect.f8816c), Math.round(roundRect.d), fIntBitsToFloat);
                this.f10136i = fIntBitsToFloat;
                return;
            }
            AndroidPath androidPathA = this.f10132c;
            if (androidPathA == null) {
                androidPathA = AndroidPath_androidKt.a();
                this.f10132c = androidPathA;
            }
            androidPathA.reset();
            androidPathA.s(roundRect, Path.Direction.CounterClockwise);
            b(androidPathA);
        }
    }

    public final void b(Path path) {
        int i2 = Build.VERSION.SDK_INT;
        Outline outline = this.f10130a;
        if (i2 >= 30) {
            OutlineVerificationHelper.f10139a.a(outline, path);
        } else {
            if (!(path instanceof AndroidPath)) {
                mt.i("Unable to obtain android.graphics.Path");
                return;
            }
            outline.setConvexPath(((AndroidPath) path).f8841a);
        }
        this.f10134f = !outline.canClip();
        this.d = path;
    }
}
