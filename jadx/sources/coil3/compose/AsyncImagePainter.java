package coil3.compose;

import android.os.Trace;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import coil3.ExtrasKt;
import coil3.Image;
import coil3.ImageLoader;
import coil3.compose.internal.DeferredDispatchKt;
import coil3.compose.internal.UtilsKt;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.SizeResolver;
import coil3.target.Target;
import coil3.transition.CrossfadeTransition;
import coil3.transition.Transition;
import defpackage.u5;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\u0007\b\tB\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcoil3/compose/AsyncImagePainter;", "Landroidx/compose/ui/graphics/painter/Painter;", "Landroidx/compose/runtime/RememberObserver;", "Lcoil3/compose/AsyncImagePainter$Input;", "input", "<init>", "(Lcoil3/compose/AsyncImagePainter$Input;)V", "Input", "State", "Companion", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AsyncImagePainter extends Painter implements RememberObserver {
    public static final Companion y = new Companion(null);
    public static final u5 z = new u5(4);
    public final MutableState g = SnapshotStateKt.g(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f21271h = 1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ColorFilter f21272i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f21273j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Job f21274k;
    public SharedFlowImpl l;
    public long m;
    public CoroutineScope n;
    public Function1 o;
    public Function1 p;
    public ContentScale q;
    public int r;
    public AsyncImagePreviewHandler s;
    public Input t;
    public final MutableStateFlow u;
    public final StateFlow v;
    public final MutableStateFlow w;
    public final StateFlow x;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil3/compose/AsyncImagePainter$Companion;", "", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/compose/AsyncImagePainter$Input;", "", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/request/ImageRequest;", "request", "Lcoil3/compose/AsyncImageModelEqualityDelegate;", "modelEqualityDelegate", "<init>", "(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Input {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImageLoader f21275a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImageRequest f21276b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AsyncImageModelEqualityDelegate f21277c;

        public Input(ImageLoader imageLoader, ImageRequest imageRequest, AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate) {
            this.f21275a = imageLoader;
            this.f21276b = imageRequest;
            this.f21277c = asyncImageModelEqualityDelegate;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Input)) {
                return false;
            }
            Input input = (Input) obj;
            if (!Intrinsics.c(this.f21275a, input.f21275a)) {
                return false;
            }
            AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = input.f21277c;
            AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate2 = this.f21277c;
            return Intrinsics.c(asyncImageModelEqualityDelegate2, asyncImageModelEqualityDelegate) && asyncImageModelEqualityDelegate2.b(this.f21276b, input.f21276b);
        }

        public final int hashCode() {
            int iHashCode = this.f21275a.hashCode() * 31;
            AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = this.f21277c;
            return asyncImageModelEqualityDelegate.a(this.f21276b) + ((asyncImageModelEqualityDelegate.hashCode() + iHashCode) * 31);
        }

        public final String toString() {
            return "Input(imageLoader=" + this.f21275a + ", request=" + this.f21276b + ", modelEqualityDelegate=" + this.f21277c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcoil3/compose/AsyncImagePainter$State;", "", "Empty", "Loading", "Success", "Error", "Lcoil3/compose/AsyncImagePainter$State$Empty;", "Lcoil3/compose/AsyncImagePainter$State$Error;", "Lcoil3/compose/AsyncImagePainter$State$Loading;", "Lcoil3/compose/AsyncImagePainter$State$Success;", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public interface State {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil3/compose/AsyncImagePainter$State$Empty;", "Lcoil3/compose/AsyncImagePainter$State;", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class Empty implements State {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Empty f21278a = new Empty();

            @Override // coil3.compose.AsyncImagePainter.State
            /* JADX INFO: renamed from: d */
            public final Painter getF21282a() {
                return null;
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Empty);
            }

            public final int hashCode() {
                return -1625786264;
            }

            public final String toString() {
                return "Empty";
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/compose/AsyncImagePainter$State$Error;", "Lcoil3/compose/AsyncImagePainter$State;", "Landroidx/compose/ui/graphics/painter/Painter;", "painter", "Lcoil3/request/ErrorResult;", "result", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/ErrorResult;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class Error implements State {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Painter f21279a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ErrorResult f21280b;

            public Error(Painter painter, ErrorResult errorResult) {
                this.f21279a = painter;
                this.f21280b = errorResult;
            }

            @Override // coil3.compose.AsyncImagePainter.State
            /* JADX INFO: renamed from: d, reason: from getter */
            public final Painter getF21282a() {
                return this.f21279a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Error)) {
                    return false;
                }
                Error error = (Error) obj;
                return Intrinsics.c(this.f21279a, error.f21279a) && Intrinsics.c(this.f21280b, error.f21280b);
            }

            public final int hashCode() {
                Painter painter = this.f21279a;
                return this.f21280b.hashCode() + ((painter == null ? 0 : painter.hashCode()) * 31);
            }

            public final String toString() {
                return "Error(painter=" + this.f21279a + ", result=" + this.f21280b + ")";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/compose/AsyncImagePainter$State$Loading;", "Lcoil3/compose/AsyncImagePainter$State;", "Landroidx/compose/ui/graphics/painter/Painter;", "painter", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class Loading implements State {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Painter f21281a;

            public Loading(Painter painter) {
                this.f21281a = painter;
            }

            @Override // coil3.compose.AsyncImagePainter.State
            /* JADX INFO: renamed from: d, reason: from getter */
            public final Painter getF21282a() {
                return this.f21281a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Loading) && Intrinsics.c(this.f21281a, ((Loading) obj).f21281a);
            }

            public final int hashCode() {
                Painter painter = this.f21281a;
                if (painter == null) {
                    return 0;
                }
                return painter.hashCode();
            }

            public final String toString() {
                return "Loading(painter=" + this.f21281a + ")";
            }
        }

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/compose/AsyncImagePainter$State$Success;", "Lcoil3/compose/AsyncImagePainter$State;", "Landroidx/compose/ui/graphics/painter/Painter;", "painter", "Lcoil3/request/SuccessResult;", "result", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/SuccessResult;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class Success implements State {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Painter f21282a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final SuccessResult f21283b;

            public Success(Painter painter, SuccessResult successResult) {
                this.f21282a = painter;
                this.f21283b = successResult;
            }

            @Override // coil3.compose.AsyncImagePainter.State
            /* JADX INFO: renamed from: d, reason: from getter */
            public final Painter getF21282a() {
                return this.f21282a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return Intrinsics.c(this.f21282a, success.f21282a) && Intrinsics.c(this.f21283b, success.f21283b);
            }

            public final int hashCode() {
                return this.f21283b.hashCode() + (this.f21282a.hashCode() * 31);
            }

            public final String toString() {
                return "Success(painter=" + this.f21282a + ", result=" + this.f21283b + ")";
            }
        }

        /* JADX INFO: renamed from: d */
        Painter getF21282a();
    }

    public AsyncImagePainter(Input input) {
        Size.f8820b.getClass();
        this.m = Size.f8821c;
        this.o = z;
        ContentScale.f9447a.getClass();
        this.q = ContentScale.Companion.f9450c;
        DrawScope.a0.getClass();
        this.r = DrawScope.Companion.f9008c;
        this.t = input;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(input);
        this.u = mutableStateFlowA;
        this.v = FlowKt.b(mutableStateFlowA);
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(State.Empty.f21278a);
        this.w = mutableStateFlowA2;
        this.x = FlowKt.b(mutableStateFlowA2);
    }

    public static final ImageRequest j(final AsyncImagePainter asyncImagePainter, final ImageRequest imageRequest, boolean z2) {
        SizeResolver sizeResolver = imageRequest.u;
        ImageRequest.Defined defined = imageRequest.y;
        if (sizeResolver instanceof DrawScopeSizeResolver) {
            DrawScopeSizeResolver drawScopeSizeResolver = (DrawScopeSizeResolver) sizeResolver;
            if (asyncImagePainter.l == null) {
                SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(1, 0, BufferOverflow.DROP_OLDEST, 2);
                long j2 = asyncImagePainter.m;
                if (j2 != 9205357640488583168L) {
                    sharedFlowImplB.a(new Size(j2));
                }
                asyncImagePainter.l = sharedFlowImplB;
            }
            drawScopeSizeResolver.connect();
        }
        ImageRequest.Builder builderA = ImageRequest.a(imageRequest);
        builderA.d = new Target() { // from class: coil3.compose.AsyncImagePainter$updateRequest$$inlined$target$default$1
            @Override // coil3.target.Target
            public final void b(Image image) {
            }

            @Override // coil3.target.Target
            public final void c(Image image) {
                ImageRequest imageRequest2 = imageRequest;
                AsyncImagePainter asyncImagePainter2 = asyncImagePainter;
                Painter painterA = image != null ? ImagePainter_androidKt.a(image, imageRequest2.f21612a, asyncImagePainter2.r) : null;
                if (painterA == null && ((Boolean) ExtrasKt.a(imageRequest2, ImageRequestsKt.f21306a)).booleanValue()) {
                    AsyncImagePainter.Companion companion = AsyncImagePainter.y;
                    Painter painterL = asyncImagePainter2.l();
                    if (painterL != null) {
                        painterA = painterL;
                    }
                }
                AsyncImagePainter.k(asyncImagePainter2, new AsyncImagePainter.State.Loading(painterA));
            }

            @Override // coil3.target.Target
            public final void e(Image image) {
            }
        };
        if (defined.f21647k == null) {
            builderA.v = SizeResolver.f21692a;
        }
        if (defined.l == null) {
            ContentScale contentScale = asyncImagePainter.q;
            MeasurePolicy measurePolicy = UtilsKt.f21339a;
            ContentScale.f9447a.getClass();
            builderA.w = (Intrinsics.c(contentScale, ContentScale.Companion.f9450c) || Intrinsics.c(contentScale, ContentScale.Companion.f9452f)) ? Scale.FIT : Scale.FILL;
        }
        if (defined.m == null) {
            builderA.x = Precision.INEXACT;
        }
        if (z2) {
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f71840b;
            builderA.l = emptyCoroutineContext;
            builderA.m = emptyCoroutineContext;
            builderA.n = emptyCoroutineContext;
        }
        return builderA.a();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x008c  */
    /* JADX WARN: Code duplicated, block: B:26:0x0091  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    public static final void k(AsyncImagePainter asyncImagePainter, State state) {
        ImageResult imageResult;
        Painter f21282a;
        Function1 function1;
        Object f21282a2;
        RememberObserver rememberObserver;
        RememberObserver rememberObserver2;
        MutableStateFlow mutableStateFlow = asyncImagePainter.w;
        State state2 = (State) mutableStateFlow.getValue();
        State state3 = (State) asyncImagePainter.o.invoke(state);
        mutableStateFlow.setValue(state3);
        ContentScale contentScale = asyncImagePainter.q;
        if (!(state3 instanceof State.Success)) {
            if (state3 instanceof State.Error) {
                imageResult = ((State.Error) state3).f21280b;
            } else {
                f21282a = null;
            }
            if (f21282a == null) {
                f21282a = state3.getF21282a();
            }
            ((SnapshotMutableStateImpl) asyncImagePainter.g).setValue(f21282a);
            if (state2.getF21282a() != state3.getF21282a()) {
                f21282a2 = state2.getF21282a();
                if (f21282a2 instanceof RememberObserver) {
                    rememberObserver = (RememberObserver) f21282a2;
                } else {
                    rememberObserver = null;
                }
                if (rememberObserver != null) {
                    rememberObserver.i();
                }
                Object f21282a3 = state3.getF21282a();
                rememberObserver2 = f21282a3 instanceof RememberObserver ? (RememberObserver) f21282a3 : null;
                if (rememberObserver2 != null) {
                    rememberObserver2.d();
                }
            }
            function1 = asyncImagePainter.p;
            if (function1 != null) {
                function1.invoke(state3);
            }
        }
        imageResult = ((State.Success) state3).f21283b;
        Transition transitionA = ((Transition.Factory) ExtrasKt.a(imageResult.getF21610b(), ImageRequests_androidKt.f21651a)).a(AsyncImagePainter_androidKt.f21289a, imageResult);
        if (transitionA instanceof CrossfadeTransition) {
            Painter f21282a4 = state2.getF21282a();
            if (!(state2 instanceof State.Loading)) {
                f21282a4 = null;
            }
            Painter f21282a5 = state3.getF21282a();
            Duration.Companion companion = Duration.INSTANCE;
            CrossfadeTransition crossfadeTransition = (CrossfadeTransition) transitionA;
            f21282a = new CrossfadePainter(f21282a4, f21282a5, contentScale, DurationKt.g(crossfadeTransition.f21710c, DurationUnit.MILLISECONDS), null, ((imageResult instanceof SuccessResult) && ((SuccessResult) imageResult).g) ? false : true, crossfadeTransition.d, ((Boolean) ExtrasKt.a(imageResult.getF21610b(), ImageRequestsKt.f21307b)).booleanValue(), 16, null);
        } else {
            f21282a = null;
        }
        if (f21282a == null) {
            f21282a = state3.getF21282a();
        }
        ((SnapshotMutableStateImpl) asyncImagePainter.g).setValue(f21282a);
        if (state2.getF21282a() != state3.getF21282a()) {
            f21282a2 = state2.getF21282a();
            if (f21282a2 instanceof RememberObserver) {
                rememberObserver = (RememberObserver) f21282a2;
            } else {
                rememberObserver = null;
            }
            if (rememberObserver != null) {
                rememberObserver.i();
            }
            Object f21282a6 = state3.getF21282a();
            if (f21282a6 instanceof RememberObserver) {
            }
            if (rememberObserver2 != null) {
                rememberObserver2.d();
            }
        }
        function1 = asyncImagePainter.p;
        if (function1 != null) {
            function1.invoke(state3);
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean a(float f2) {
        this.f21271h = f2;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean b(ColorFilter colorFilter) {
        this.f21272i = colorFilter;
        return true;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        Trace.beginSection("AsyncImagePainter.onRemembered");
        try {
            Object objL = l();
            RememberObserver rememberObserver = objL instanceof RememberObserver ? (RememberObserver) objL : null;
            if (rememberObserver != null) {
                rememberObserver.d();
            }
            Input input = this.t;
            if (input != null) {
                CoroutineScope coroutineScope = this.n;
                if (coroutineScope == null) {
                    Intrinsics.h("scope");
                    throw null;
                }
                Job jobA = DeferredDispatchKt.a(coroutineScope, new AsyncImagePainter$launchJob$1(this, input, null));
                Job job = this.f21274k;
                if (job != null) {
                    job.cancel(null);
                }
                this.f21274k = jobA;
            }
            this.f21273j = true;
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
        Job job = this.f21274k;
        if (job != null) {
            job.cancel(null);
        }
        this.f21274k = null;
        Object objL = l();
        RememberObserver rememberObserver = objL instanceof RememberObserver ? (RememberObserver) objL : null;
        if (rememberObserver != null) {
            rememberObserver.f();
        }
        this.f21273j = false;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: g */
    public final long getR() {
        Painter painterL = l();
        if (painterL != null) {
            return painterL.getR();
        }
        Size.f8820b.getClass();
        return Size.f8821c;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void h(DrawScope drawScope) {
        long jB = drawScope.b();
        if (!Size.a(this.m, jB)) {
            this.m = jB;
            SharedFlowImpl sharedFlowImpl = this.l;
            if (sharedFlowImpl != null) {
                sharedFlowImpl.a(new Size(jB));
            }
        }
        Painter painterL = l();
        if (painterL != null) {
            painterL.e(drawScope, drawScope.b(), this.f21271h, this.f21272i);
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        Job job = this.f21274k;
        if (job != null) {
            job.cancel(null);
        }
        this.f21274k = null;
        Object objL = l();
        RememberObserver rememberObserver = objL instanceof RememberObserver ? (RememberObserver) objL : null;
        if (rememberObserver != null) {
            rememberObserver.i();
        }
        this.f21273j = false;
    }

    public final Painter l() {
        return (Painter) ((SnapshotMutableStateImpl) this.g).getF10755b();
    }

    public final void m(Input input) {
        if (Intrinsics.c(this.t, input)) {
            return;
        }
        this.t = input;
        if (input == null) {
            Job job = this.f21274k;
            if (job != null) {
                job.cancel(null);
            }
            this.f21274k = null;
        } else if (this.f21273j && input != null) {
            CoroutineScope coroutineScope = this.n;
            if (coroutineScope == null) {
                Intrinsics.h("scope");
                throw null;
            }
            Job jobA = DeferredDispatchKt.a(coroutineScope, new AsyncImagePainter$launchJob$1(this, input, null));
            Job job2 = this.f21274k;
            if (job2 != null) {
                job2.cancel(null);
            }
            this.f21274k = jobA;
        }
        if (input != null) {
            this.u.setValue(input);
        }
    }
}
