package coil3;

import android.content.Context;
import coil3.disk.DiskCache;
import coil3.memory.MemoryCache;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.util.Logger;
import defpackage.m10;
import defpackage.ss;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lcoil3/ImageLoader;", "", "Builder", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface ImageLoader {
    DiskCache a();

    Object b(ImageRequest imageRequest, ContinuationImpl continuationImpl);

    ImageRequest.Defaults c();

    Disposable d(ImageRequest imageRequest);

    MemoryCache e();

    /* JADX INFO: renamed from: getComponents */
    ComponentRegistry getD();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\b\u0016\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/ImageLoader$Builder;", "", "Landroid/content/Context;", "Lcoil3/PlatformContext;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Lcoil3/RealImageLoader$Options;", "options", "(Lcoil3/RealImageLoader$Options;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f21223a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImageRequest.Defaults f21224b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Lazy f21225c;
        public final Lazy d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Lazy f21226e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final EventListener.Factory f21227f;
        public ComponentRegistry g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Logger f21228h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Extras.Builder f21229i;

        public Builder(RealImageLoader.Options options) {
            this.f21223a = options.f21239a;
            ImageRequest.Defaults defaults = options.f21240b;
            this.f21224b = defaults;
            this.f21225c = options.f21241c;
            this.d = options.d;
            this.f21226e = options.f21242e;
            this.f21227f = options.f21243f;
            this.g = options.g;
            this.f21228h = options.f21244h;
            Extras extras = defaults.n;
            extras.getClass();
            this.f21229i = new Extras.Builder(extras);
        }

        public final RealImageLoader a() {
            Extras extrasA = this.f21229i.a();
            ImageRequest.Defaults defaults = this.f21224b;
            ImageRequest.Defaults defaults2 = new ImageRequest.Defaults(defaults.f21630a, defaults.f21631b, defaults.f21632c, defaults.d, defaults.f21633e, defaults.f21634f, defaults.g, defaults.f21635h, defaults.f21636i, defaults.f21637j, defaults.f21638k, defaults.l, defaults.m, extrasA);
            Lazy lazyB = this.f21225c;
            if (lazyB == null) {
                lazyB = LazyKt.b(new m10(5));
            }
            Lazy lazyB2 = this.d;
            if (lazyB2 == null) {
                lazyB2 = LazyKt.b(new ss(this, 19));
            }
            Lazy lazyB3 = this.f21226e;
            if (lazyB3 == null) {
                lazyB3 = LazyKt.b(new m10(6));
            }
            EventListener.Factory factory = this.f21227f;
            if (factory == null) {
                factory = EventListener.Factory.i0;
            }
            ComponentRegistry componentRegistry = this.g;
            if (componentRegistry == null) {
                componentRegistry = new ComponentRegistry();
            }
            return new RealImageLoader(new RealImageLoader.Options(this.f21223a, defaults2, lazyB, lazyB2, lazyB3, factory, componentRegistry, this.f21228h));
        }

        public Builder(Context context) {
            this.f21223a = context.getApplicationContext();
            this.f21224b = ImageRequest.Defaults.o;
            this.f21225c = null;
            this.d = null;
            this.f21226e = null;
            this.f21227f = null;
            this.g = null;
            this.f21228h = null;
            this.f21229i = new Extras.Builder();
        }
    }
}
