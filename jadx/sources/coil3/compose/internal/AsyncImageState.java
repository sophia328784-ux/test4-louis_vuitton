package coil3.compose.internal;

import coil3.ImageLoader;
import coil3.compose.AsyncImageModelEqualityDelegate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcoil3/compose/internal/AsyncImageState;", "", "model", "Lcoil3/compose/AsyncImageModelEqualityDelegate;", "modelEqualityDelegate", "Lcoil3/ImageLoader;", "imageLoader", "<init>", "(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AsyncImageState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f21320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AsyncImageModelEqualityDelegate f21321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageLoader f21322c;

    public AsyncImageState(Object obj, AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate, ImageLoader imageLoader) {
        this.f21320a = obj;
        this.f21321b = asyncImageModelEqualityDelegate;
        this.f21322c = imageLoader;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AsyncImageState)) {
            return false;
        }
        AsyncImageState asyncImageState = (AsyncImageState) obj;
        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = asyncImageState.f21321b;
        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate2 = this.f21321b;
        return Intrinsics.c(asyncImageModelEqualityDelegate2, asyncImageModelEqualityDelegate) && asyncImageModelEqualityDelegate2.b(this.f21320a, asyncImageState.f21320a) && Intrinsics.c(this.f21322c, asyncImageState.f21322c);
    }

    public final int hashCode() {
        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = this.f21321b;
        return this.f21322c.hashCode() + ((asyncImageModelEqualityDelegate.a(this.f21320a) + (asyncImageModelEqualityDelegate.hashCode() * 31)) * 31);
    }
}
