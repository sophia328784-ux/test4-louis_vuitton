package coil3.graphics;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.Semaphore;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.decode.BitmapFactoryDecoder", f = "BitmapFactoryDecoder.kt", l = {213, 40}, m = "decode", v = 1)
final class BitmapFactoryDecoder$decode$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Semaphore f21350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21351c;
    public final /* synthetic */ BitmapFactoryDecoder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21352e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapFactoryDecoder$decode$1(BitmapFactoryDecoder bitmapFactoryDecoder, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = bitmapFactoryDecoder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21351c = obj;
        this.f21352e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
