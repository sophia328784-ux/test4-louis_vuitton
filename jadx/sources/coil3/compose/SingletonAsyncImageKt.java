package coil3.compose;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import coil3.ImageLoader;
import coil3.SingletonImageLoader;
import coil3.compose.internal.AsyncImageState;
import coil3.compose.internal.UtilsKt;
import coil3.request.ImageRequest;
import defpackage.p11;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-compose"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class SingletonAsyncImageKt {
    public static final void a(ImageRequest imageRequest, Modifier modifier, Painter painter, ContentScale contentScale, Composer composer, int i2) {
        Function1 p11Var;
        Modifier modifierE = modifier != null ? defpackage.a.e(modifier, "AsyncImage-x1rPTaM") : modifier;
        Alignment.f8582a.getClass();
        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
        DrawScope.a0.getClass();
        int i3 = DrawScope.Companion.f9008c;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ImageLoader imageLoaderA = SingletonImageLoader.a((Context) composer.k(AndroidCompositionLocals_androidKt.f9936b));
        int i4 = ((i2 << 3) & 7168) | 2392112;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AsyncImage-nc27qi8");
        }
        int i5 = i4 >> 3;
        Modifier modifier2 = modifierE;
        AsyncImageState asyncImageState = new AsyncImageState(imageRequest, (AsyncImageModelEqualityDelegate) composer.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), imageLoaderA);
        MeasurePolicy measurePolicy = UtilsKt.f21339a;
        if (painter == null) {
            AsyncImagePainter.y.getClass();
            p11Var = AsyncImagePainter.z;
        } else {
            p11Var = new p11(painter, 14);
        }
        AsyncImageKt.a(asyncImageState, modifier2, p11Var, null, biasAlignment, contentScale, i3, composer, 48 | (i5 & 896), 0);
    }
}
