package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bp\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/font/TypefaceResult;", "Landroidx/compose/runtime/State;", "", "Immutable", "Async", "Landroidx/compose/ui/text/font/TypefaceResult$Async;", "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface TypefaceResult extends State<Object> {

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/font/TypefaceResult$Async;", "Landroidx/compose/ui/text/font/TypefaceResult;", "Landroidx/compose/runtime/State;", "", "Landroidx/compose/ui/text/font/AsyncFontListLoader;", "current", "<init>", "(Landroidx/compose/ui/text/font/AsyncFontListLoader;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Async implements TypefaceResult, State<Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AsyncFontListLoader f10754b;

        public Async(AsyncFontListLoader asyncFontListLoader) {
            this.f10754b = asyncFontListLoader;
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        /* JADX INFO: renamed from: g */
        public final boolean getF10756c() {
            return this.f10754b.f10671h;
        }

        @Override // androidx.compose.runtime.State
        /* JADX INFO: renamed from: getValue */
        public final Object getF10755b() {
            return this.f10754b.getF10755b();
        }
    }

    /* JADX INFO: renamed from: g */
    boolean getF10756c();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/font/TypefaceResult$Immutable;", "Landroidx/compose/ui/text/font/TypefaceResult;", "", "value", "", "cacheable", "<init>", "(Ljava/lang/Object;Z)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Immutable implements TypefaceResult {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f10755b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f10756c;

        public /* synthetic */ Immutable(Object obj, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i2 & 2) != 0 ? true : z);
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        /* JADX INFO: renamed from: g, reason: from getter */
        public final boolean getF10756c() {
            return this.f10756c;
        }

        @Override // androidx.compose.runtime.State
        /* JADX INFO: renamed from: getValue, reason: from getter */
        public final Object getF10755b() {
            return this.f10755b;
        }

        public Immutable(Object obj, boolean z) {
            this.f10755b = obj;
            this.f10756c = z;
        }
    }
}
