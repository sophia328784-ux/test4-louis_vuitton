package coil3.compose;

import android.os.Trace;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.layout.ContentScale;
import coil3.compose.internal.AsyncImageState;
import coil3.compose.internal.UtilsKt;
import coil3.request.ImageRequest;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-compose-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class AsyncImagePainterKt {
    public static final AsyncImagePainter a(AsyncImageState asyncImageState, Function1 function1, Function1 function2, ContentScale contentScale, int i2, Composer composer) {
        composer.L(-1242991349);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Trace.beginSection("rememberAsyncImagePainter");
        try {
            ImageRequest imageRequestD = UtilsKt.d(asyncImageState.f21320a, composer);
            UtilsKt.h(imageRequestD);
            AsyncImagePainter.Input input = new AsyncImagePainter.Input(asyncImageState.f21322c, imageRequestD, asyncImageState.f21321b);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new AsyncImagePainter(input);
                composer.q(objX);
            }
            AsyncImagePainter asyncImagePainter = (AsyncImagePainter) objX;
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, composer);
                composer.q(objX2);
            }
            asyncImagePainter.n = (CoroutineScope) objX2;
            asyncImagePainter.o = function1;
            asyncImagePainter.p = function2;
            asyncImagePainter.q = contentScale;
            asyncImagePainter.r = i2;
            asyncImagePainter.s = UtilsKt.b(composer);
            asyncImagePainter.m(input);
            composer.F();
            return asyncImagePainter;
        } finally {
            Trace.endSection();
        }
    }
}
