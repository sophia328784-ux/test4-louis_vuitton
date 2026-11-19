package androidx.compose.ui.graphics;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerV29;
import androidx.compose.ui.graphics.shadow.ShadowContext;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/AndroidGraphicsContext;", "Landroidx/compose/ui/graphics/GraphicsContext;", "Landroid/view/ViewGroup;", "ownerView", "<init>", "(Landroid/view/ViewGroup;)V", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AndroidGraphicsContext implements GraphicsContext {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f8827f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f8828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8829b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8830c;
    public ShadowContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnonymousClass1 f8831e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.content.ComponentCallbacks, androidx.compose.ui.graphics.AndroidGraphicsContext$1] */
    public AndroidGraphicsContext(ViewGroup viewGroup) {
        this.f8828a = viewGroup;
        ?? r0 = new ComponentCallbacks2() { // from class: androidx.compose.ui.graphics.AndroidGraphicsContext.1
            @Override // android.content.ComponentCallbacks
            public final void onConfigurationChanged(Configuration configuration) {
            }

            @Override // android.content.ComponentCallbacks
            public final void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public final void onTrimMemory(int i2) {
                if (i2 >= 40) {
                    AndroidGraphicsContext androidGraphicsContext = AndroidGraphicsContext.this;
                    ShadowContext shadowContext = androidGraphicsContext.d;
                    if (shadowContext != null) {
                        shadowContext.a();
                    }
                    androidGraphicsContext.d = null;
                }
            }
        };
        this.f8831e = r0;
        if (viewGroup.isAttachedToWindow()) {
            Context context = viewGroup.getContext();
            if (!this.f8830c) {
                context.getApplicationContext().registerComponentCallbacks(r0);
                this.f8830c = true;
            }
        }
        viewGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.graphics.AndroidGraphicsContext.2
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                Context context2 = view.getContext();
                int i2 = AndroidGraphicsContext.f8827f;
                AndroidGraphicsContext androidGraphicsContext = AndroidGraphicsContext.this;
                if (androidGraphicsContext.f8830c) {
                    return;
                }
                context2.getApplicationContext().registerComponentCallbacks(androidGraphicsContext.f8831e);
                androidGraphicsContext.f8830c = true;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                Context context2 = view.getContext();
                AndroidGraphicsContext androidGraphicsContext = AndroidGraphicsContext.this;
                if (androidGraphicsContext.f8830c) {
                    context2.getApplicationContext().unregisterComponentCallbacks(androidGraphicsContext.f8831e);
                    androidGraphicsContext.f8830c = false;
                }
                ShadowContext shadowContext = androidGraphicsContext.d;
                if (shadowContext != null) {
                    shadowContext.a();
                }
                androidGraphicsContext.d = null;
            }
        });
    }

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final GraphicsLayer a() {
        GraphicsLayer graphicsLayer;
        synchronized (this.f8829b) {
            graphicsLayer = new GraphicsLayer(new GraphicsLayerV29(this.f8828a.getUniqueDrawingId(), null, null, 6, null));
        }
        return graphicsLayer;
    }

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final void b(GraphicsLayer graphicsLayer) {
        synchronized (this.f8829b) {
            if (!graphicsLayer.s) {
                graphicsLayer.s = true;
                graphicsLayer.b();
            }
        }
    }
}
