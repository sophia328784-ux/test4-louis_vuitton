package coil3.compose.internal;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.lifecycle.Lifecycle;
import coil3.ExtrasKt;
import coil3.compose.AsyncImagePreviewHandler;
import coil3.compose.ConstraintsSizeResolver;
import coil3.compose.LocalAsyncImagePreviewHandlerKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.size.SizeResolver;
import defpackage.fc;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-compose-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class UtilsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MeasurePolicy f21339a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f21340b = ConstraintsKt.b(0, 0, 0, 0, 5);

    public static final MeasurePolicy a() {
        return UtilsKt$UseMinConstraintsMeasurePolicy$1.f21341a;
    }

    public static final AsyncImagePreviewHandler b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (!((Boolean) composer.k(InspectionModeKt.f10102a)).booleanValue()) {
            composer.L(2019088453);
            composer.F();
            return null;
        }
        composer.L(2019030948);
        AsyncImagePreviewHandler asyncImagePreviewHandler = (AsyncImagePreviewHandler) composer.k(LocalAsyncImagePreviewHandlerKt.f21309a);
        composer.F();
        return asyncImagePreviewHandler;
    }

    public static final SizeResolver c(ContentScale contentScale, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ContentScale.f9447a.getClass();
        boolean zC = Intrinsics.c(contentScale, ContentScale.Companion.g);
        boolean zB = composer.b(zC);
        Object objX = composer.x();
        if (zB || objX == Composer.Companion.f7939a) {
            objX = zC ? SizeResolver.f21692a : new ConstraintsSizeResolver();
            composer.q(objX);
        }
        return (SizeResolver) objX;
    }

    public static final ImageRequest d(Object obj, Composer composer) {
        composer.L(1319639034);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (obj instanceof ImageRequest) {
            composer.L(1530875884);
            ImageRequest imageRequest = (ImageRequest) obj;
            composer.F();
            composer.F();
            return imageRequest;
        }
        composer.L(1530915130);
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        boolean zK = composer.K(context) | composer.K(obj);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            ImageRequest.Builder builder = new ImageRequest.Builder(context);
            builder.f21623c = obj;
            objX = builder.a();
            composer.q(objX);
        }
        ImageRequest imageRequest2 = (ImageRequest) objX;
        composer.F();
        composer.F();
        return imageRequest2;
    }

    public static final ImageRequest e(Object obj, ContentScale contentScale, Composer composer, int i2) {
        composer.L(-329318062);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = obj instanceof ImageRequest;
        Object obj2 = Composer.Companion.f7939a;
        if (!z) {
            composer.L(-1008595950);
            Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
            SizeResolver sizeResolverC = c(contentScale, composer);
            boolean zK = composer.K(context) | composer.K(obj) | composer.K(sizeResolverC);
            Object objX = composer.x();
            if (zK || objX == obj2) {
                ImageRequest.Builder builder = new ImageRequest.Builder(context);
                builder.f21623c = obj;
                builder.v = sizeResolverC;
                objX = builder.a();
                composer.q(objX);
            }
            ImageRequest imageRequest = (ImageRequest) objX;
            composer.F();
            composer.F();
            return imageRequest;
        }
        composer.L(-1008942344);
        ImageRequest imageRequest2 = (ImageRequest) obj;
        if (imageRequest2.y.f21647k != null) {
            composer.L(-1008902292);
            composer.F();
            composer.F();
            composer.F();
            return imageRequest2;
        }
        composer.L(-1008854118);
        SizeResolver sizeResolverC2 = c(contentScale, composer);
        boolean zK2 = composer.K(obj) | composer.K(sizeResolverC2);
        Object objX2 = composer.x();
        if (zK2 || objX2 == obj2) {
            ImageRequest.Builder builderA = ImageRequest.a(imageRequest2);
            builderA.v = sizeResolverC2;
            objX2 = builderA.a();
            composer.q(objX2);
        }
        ImageRequest imageRequest3 = (ImageRequest) objX2;
        composer.F();
        composer.F();
        composer.F();
        return imageRequest3;
    }

    public static final long f(long j2) {
        int iC = MathKt.c(Float.intBitsToFloat((int) (j2 >> 32)));
        long jC = (((long) MathKt.c(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) iC) << 32);
        IntSize.Companion companion = IntSize.f11020b;
        return jC;
    }

    public static void g(String str) {
        throw new IllegalArgumentException(fc.i("Unsupported type: ", str, ". ", fc.h("If you wish to display this ", str, ", use androidx.compose.foundation.Image.")));
    }

    public static final void h(ImageRequest imageRequest) {
        Object obj = imageRequest.f21613b;
        if (obj instanceof ImageRequest.Builder) {
            md.n("Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?");
            return;
        }
        if (obj instanceof ImageBitmap) {
            g("ImageBitmap");
            throw null;
        }
        if (obj instanceof ImageVector) {
            g("ImageVector");
            throw null;
        }
        if (obj instanceof Painter) {
            g("Painter");
            throw null;
        }
        if (imageRequest.f21614c != null) {
            md.n("request.target must be null.");
        } else {
            if (((Lifecycle) ExtrasKt.a(imageRequest, ImageRequests_androidKt.f21654e)) == null) {
                return;
            }
            md.n("request.lifecycle must be null.");
        }
    }
}
