package androidx.compose.material3;

import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class ComposableSingletons$SnackbarKt$lambda$984817901$1 implements Function2<Composer, Integer, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ComposableSingletons$SnackbarKt$lambda$984817901$1 f6729b = new ComposableSingletons$SnackbarKt$lambda$984817901$1();

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Number) obj2).intValue();
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ImageVector imageVectorD = Icons$Filled.f7621a;
            if (imageVectorD == null) {
                Dp.Companion companion = Dp.f11004c;
                ImageVector.Builder builder = new ImageVector.Builder("Filled.Close", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, BERTags.FLAGS, null);
                EmptyList emptyList = VectorKt.f9173a;
                Color.f8866b.getClass();
                SolidColor solidColor = new SolidColor(Color.f8867c, null);
                StrokeCap.f8932a.getClass();
                StrokeJoin.f8935a.getClass();
                int i2 = StrokeJoin.f8937c;
                PathBuilder pathBuilder = new PathBuilder();
                pathBuilder.f(19.0f, 6.41f);
                pathBuilder.d(17.59f, 5.0f);
                pathBuilder.d(12.0f, 10.59f);
                pathBuilder.d(6.41f, 5.0f);
                pathBuilder.d(5.0f, 6.41f);
                pathBuilder.d(10.59f, 12.0f);
                pathBuilder.d(5.0f, 17.59f);
                pathBuilder.d(6.41f, 19.0f);
                pathBuilder.d(12.0f, 13.41f);
                pathBuilder.d(17.59f, 19.0f);
                pathBuilder.d(19.0f, 17.59f);
                pathBuilder.d(13.41f, 12.0f);
                pathBuilder.a();
                builder.b(pathBuilder.f9098a, 0, "", solidColor, 1.0f, null, 1.0f, 1.0f, 0, i2, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                imageVectorD = builder.d();
                Icons$Filled.f7621a = imageVectorD;
            }
            int i3 = Strings.f7646a;
            IconKt.b(imageVectorD, Strings_androidKt.a(composer, R.string.m3c_snackbar_dismiss), null, 0L, composer, 0, 12);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
