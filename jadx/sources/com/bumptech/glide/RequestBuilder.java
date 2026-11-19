package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.ErrorRequestCoordinator;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.ThumbnailRequestCoordinator;
import com.bumptech.glide.request.target.BitmapImageViewTarget;
import com.bumptech.glide.request.target.DrawableImageViewTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.sightcall.pratik.extensions.ImageViewExtensionsKt;
import defpackage.az;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class RequestBuilder<TranscodeType> extends BaseRequestOptions<RequestBuilder<TranscodeType>> implements Cloneable, ModelTypes<RequestBuilder<TranscodeType>> {
    public RequestBuilder A;
    public final boolean B = true;
    public boolean C;
    public boolean D;
    public final Context s;
    public final RequestManager t;
    public final Class u;
    public final GlideContext v;
    public TransitionOptions w;
    public Object x;
    public ArrayList y;
    public RequestBuilder z;

    /* JADX INFO: renamed from: com.bumptech.glide.RequestBuilder$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f24312a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f24313b;

        static {
            int[] iArr = new int[Priority.values().length];
            f24313b = iArr;
            try {
                iArr[Priority.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f24313b[Priority.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f24313b[Priority.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f24313b[Priority.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f24312a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f24312a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f24312a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f24312a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f24312a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f24312a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f24312a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f24312a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
    }

    public RequestBuilder(Glide glide, RequestManager requestManager, Class cls, Context context) {
        RequestOptions requestOptions;
        this.t = requestManager;
        this.u = cls;
        this.s = context;
        Map map = requestManager.f24314b.d.f24296f;
        TransitionOptions transitionOptions = (TransitionOptions) map.get(cls);
        if (transitionOptions == null) {
            for (Map.Entry entry : map.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    transitionOptions = (TransitionOptions) entry.getValue();
                }
            }
        }
        this.w = transitionOptions == null ? GlideContext.f24291k : transitionOptions;
        this.v = glide.d;
        Iterator it = requestManager.f24320j.iterator();
        while (it.hasNext()) {
            C((RequestListener) it.next());
        }
        synchronized (requestManager) {
            requestOptions = requestManager.f24321k;
        }
        a(requestOptions);
    }

    public final RequestBuilder C(RequestListener requestListener) {
        if (this.p) {
            return clone().C(requestListener);
        }
        if (requestListener != null) {
            if (this.y == null) {
                this.y = new ArrayList();
            }
            this.y.add(requestListener);
        }
        l();
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final RequestBuilder a(BaseRequestOptions baseRequestOptions) {
        Preconditions.b(baseRequestOptions);
        return (RequestBuilder) super.a(baseRequestOptions);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Request E(Object obj, Target target, RequestCoordinator requestCoordinator, TransitionOptions transitionOptions, Priority priority, int i2, int i3, BaseRequestOptions baseRequestOptions) {
        RequestCoordinator requestCoordinator2;
        RequestCoordinator errorRequestCoordinator;
        BaseRequestOptions baseRequestOptions2;
        Request singleRequest;
        Priority priority2;
        if (this.A != null) {
            errorRequestCoordinator = new ErrorRequestCoordinator(obj, requestCoordinator);
            requestCoordinator2 = errorRequestCoordinator;
        } else {
            requestCoordinator2 = null;
            errorRequestCoordinator = requestCoordinator;
        }
        RequestBuilder requestBuilder = this.z;
        if (requestBuilder == null) {
            Context context = this.s;
            GlideContext glideContext = this.v;
            baseRequestOptions2 = baseRequestOptions;
            singleRequest = new SingleRequest(context, glideContext, obj, this.x, this.u, baseRequestOptions2, i2, i3, priority, target, this.y, errorRequestCoordinator, glideContext.g, transitionOptions.f24324b);
        } else {
            if (this.D) {
                md.k("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
                return null;
            }
            TransitionOptions transitionOptions2 = requestBuilder.B ? transitionOptions : requestBuilder.w;
            if (BaseRequestOptions.f(requestBuilder.f24928b, 8)) {
                priority2 = this.z.d;
            } else {
                int i4 = AnonymousClass1.f24313b[priority.ordinal()];
                if (i4 == 1) {
                    priority2 = Priority.NORMAL;
                } else if (i4 == 2) {
                    priority2 = Priority.HIGH;
                } else {
                    if (i4 != 3 && i4 != 4) {
                        az.w(this.d, "unknown priority: ");
                        return null;
                    }
                    priority2 = Priority.IMMEDIATE;
                }
            }
            Priority priority3 = priority2;
            RequestBuilder requestBuilder2 = this.z;
            int i5 = requestBuilder2.g;
            int i6 = requestBuilder2.f24931f;
            if (Util.i(i2, i3)) {
                RequestBuilder requestBuilder3 = this.z;
                if (!Util.i(requestBuilder3.g, requestBuilder3.f24931f)) {
                    i5 = baseRequestOptions.g;
                    i6 = baseRequestOptions.f24931f;
                }
            }
            int i7 = i6;
            int i8 = i5;
            ThumbnailRequestCoordinator thumbnailRequestCoordinator = new ThumbnailRequestCoordinator(obj, errorRequestCoordinator);
            Context context2 = this.s;
            GlideContext glideContext2 = this.v;
            SingleRequest singleRequest2 = new SingleRequest(context2, glideContext2, obj, this.x, this.u, baseRequestOptions, i2, i3, priority, target, this.y, thumbnailRequestCoordinator, glideContext2.g, transitionOptions.f24324b);
            this.D = true;
            RequestBuilder requestBuilder4 = this.z;
            Request requestE = requestBuilder4.E(obj, target, thumbnailRequestCoordinator, transitionOptions2, priority3, i8, i7, requestBuilder4);
            this.D = false;
            thumbnailRequestCoordinator.f24952c = singleRequest2;
            thumbnailRequestCoordinator.d = requestE;
            baseRequestOptions2 = baseRequestOptions;
            singleRequest = thumbnailRequestCoordinator;
        }
        if (requestCoordinator2 == null) {
            return singleRequest;
        }
        RequestBuilder requestBuilder5 = this.A;
        int i9 = requestBuilder5.g;
        int i10 = requestBuilder5.f24931f;
        if (Util.i(i2, i3)) {
            RequestBuilder requestBuilder6 = this.A;
            if (!Util.i(requestBuilder6.g, requestBuilder6.f24931f)) {
                i9 = baseRequestOptions2.g;
                i10 = baseRequestOptions2.f24931f;
            }
        }
        RequestBuilder requestBuilder7 = this.A;
        ErrorRequestCoordinator errorRequestCoordinator2 = requestCoordinator2;
        Request requestE2 = requestBuilder7.E(obj, target, errorRequestCoordinator2, requestBuilder7.w, requestBuilder7.d, i9, i10, requestBuilder7);
        errorRequestCoordinator2.f24938c = singleRequest;
        errorRequestCoordinator2.d = requestE2;
        return errorRequestCoordinator2;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public final RequestBuilder clone() {
        RequestBuilder requestBuilder = (RequestBuilder) super.clone();
        requestBuilder.w = requestBuilder.w.clone();
        if (requestBuilder.y != null) {
            requestBuilder.y = new ArrayList(requestBuilder.y);
        }
        RequestBuilder requestBuilder2 = requestBuilder.z;
        if (requestBuilder2 != null) {
            requestBuilder.z = requestBuilder2.clone();
        }
        RequestBuilder requestBuilder3 = requestBuilder.A;
        if (requestBuilder3 != null) {
            requestBuilder.A = requestBuilder3.clone();
        }
        return requestBuilder;
    }

    public final void G(ImageView imageView) {
        BaseRequestOptions baseRequestOptionsG;
        Target drawableImageViewTarget;
        Util.a();
        if (!BaseRequestOptions.f(this.f24928b, 2048) && this.f24934j && imageView.getScaleType() != null) {
            switch (AnonymousClass1.f24312a[imageView.getScaleType().ordinal()]) {
                case 1:
                    baseRequestOptionsG = clone().g(DownsampleStrategy.f24770c, new CenterCrop());
                    break;
                case 2:
                    baseRequestOptionsG = clone().k(DownsampleStrategy.f24769b, new CenterInside(), false);
                    break;
                case 3:
                case 4:
                case 5:
                    baseRequestOptionsG = clone().k(DownsampleStrategy.f24768a, new FitCenter(), false);
                    break;
                case 6:
                    baseRequestOptionsG = clone().k(DownsampleStrategy.f24769b, new CenterInside(), false);
                    break;
                default:
                    baseRequestOptionsG = this;
                    break;
            }
        } else {
            baseRequestOptionsG = this;
        }
        this.v.f24294c.getClass();
        Class cls = this.u;
        if (Bitmap.class.equals(cls)) {
            drawableImageViewTarget = new BitmapImageViewTarget(imageView);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                md.n(pq0.n(cls, "Unhandled class: ", ", try .as*(Class).transcode(ResourceTranscoder)"));
                return;
            }
            drawableImageViewTarget = new DrawableImageViewTarget(imageView);
        }
        H(drawableImageViewTarget, baseRequestOptionsG);
    }

    public final void H(Target target, BaseRequestOptions baseRequestOptions) {
        Preconditions.b(target);
        if (!this.C) {
            md.n("You must call #load() before calling #into()");
            return;
        }
        Request requestE = E(new Object(), target, null, this.w, baseRequestOptions.d, baseRequestOptions.g, baseRequestOptions.f24931f, baseRequestOptions);
        Request requestA = target.a();
        if (requestE.h(requestA) && (baseRequestOptions.f24930e || !requestA.a())) {
            Preconditions.c(requestA, "Argument must not be null");
            if (requestA.isRunning()) {
                return;
            }
            requestA.begin();
            return;
        }
        this.t.i(target);
        target.g(requestE);
        RequestManager requestManager = this.t;
        synchronized (requestManager) {
            requestManager.g.f24909b.add(target);
            RequestTracker requestTracker = requestManager.f24316e;
            requestTracker.f24897a.add(requestE);
            if (requestTracker.f24899c) {
                requestE.clear();
                Log.isLoggable("RequestTracker", 2);
                requestTracker.f24898b.add(requestE);
            } else {
                requestE.begin();
            }
        }
    }

    public final RequestBuilder J(ImageViewExtensionsKt.AnonymousClass1 anonymousClass1) {
        if (this.p) {
            return clone().J(anonymousClass1);
        }
        this.y = null;
        return C(anonymousClass1);
    }

    public final RequestBuilder K(Object obj) {
        if (this.p) {
            return clone().K(obj);
        }
        this.x = obj;
        this.C = true;
        l();
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final boolean equals(Object obj) {
        if (!(obj instanceof RequestBuilder)) {
            return false;
        }
        RequestBuilder requestBuilder = (RequestBuilder) obj;
        return super.equals(requestBuilder) && Objects.equals(this.u, requestBuilder.u) && this.w.equals(requestBuilder.w) && Objects.equals(this.x, requestBuilder.x) && Objects.equals(this.y, requestBuilder.y) && Objects.equals(this.z, requestBuilder.z) && Objects.equals(this.A, requestBuilder.A) && this.B == requestBuilder.B && this.C == requestBuilder.C;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final int hashCode() {
        return Util.g(this.C ? 1 : 0, Util.g(this.B ? 1 : 0, Util.h(Util.h(Util.h(Util.h(Util.h(Util.h(Util.h(super.hashCode(), this.u), this.w), this.x), this.y), this.z), this.A), null)));
    }
}
