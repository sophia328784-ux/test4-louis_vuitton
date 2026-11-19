package androidx.compose.ui.text.font;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BI\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/text/font/AsyncFontListLoader;", "Landroidx/compose/runtime/State;", "", "", "Landroidx/compose/ui/text/font/Font;", "fontList", "initialType", "Landroidx/compose/ui/text/font/TypefaceRequest;", "typefaceRequest", "Landroidx/compose/ui/text/font/AsyncTypefaceCache;", "asyncTypefaceCache", "Lkotlin/Function1;", "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;", "", "onCompletion", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "platformFontLoader", "<init>", "(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/PlatformFontLoader;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AsyncFontListLoader implements State<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f10667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypefaceRequest f10668c;
    public final AsyncTypefaceCache d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f10669e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PlatformFontLoader f10670f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10671h = true;

    public AsyncFontListLoader(List<? extends Font> list, Object obj, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, Function1<? super TypefaceResult.Immutable, Unit> function1, PlatformFontLoader platformFontLoader) {
        this.f10667b = list;
        this.f10668c = typefaceRequest;
        this.d = asyncTypefaceCache;
        this.f10669e = function1;
        this.f10670f = platformFontLoader;
        this.g = SnapshotStateKt.g(obj);
    }

    @Override // androidx.compose.runtime.State
    /* JADX INFO: renamed from: getValue */
    public final Object getF10755b() {
        return ((SnapshotMutableStateImpl) this.g).getF10755b();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0065 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:25:0x0065, B:27:0x0078, B:32:0x009d, B:35:0x00ca, B:20:0x0050, B:23:0x0059), top: B:44:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0078 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:25:0x0065, B:27:0x0078, B:32:0x009d, B:35:0x00ca, B:20:0x0050, B:23:0x0059), top: B:44:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    /* JADX WARN: Code duplicated, block: B:30:0x0095  */
    /* JADX WARN: Code duplicated, block: B:32:0x009d A[Catch: all -> 0x003d, TRY_LEAVE, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:25:0x0065, B:27:0x0078, B:32:0x009d, B:35:0x00ca, B:20:0x0050, B:23:0x0059), top: B:44:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ca A[Catch: all -> 0x003d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:25:0x0065, B:27:0x0078, B:32:0x009d, B:35:0x00ca, B:20:0x0050, B:23:0x0059), top: B:44:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00e0 A[PHI: r0 r4 r11
      0x00e0: PHI (r0v15 java.util.List) = (r0v10 java.util.List), (r0v16 java.util.List) binds: [B:26:0x0076, B:38:0x00df] A[DONT_GENERATE, DONT_INLINE]
      0x00e0: PHI (r4v7 int) = (r4v6 int), (r4v8 int) binds: [B:26:0x0076, B:38:0x00df] A[DONT_GENERATE, DONT_INLINE]
      0x00e0: PHI (r11v3 int) = (r11v2 int), (r11v5 int) binds: [B:26:0x0076, B:38:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0076 -> B:39:0x00e0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00dc -> B:38:0x00df). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(kotlin.coroutines.jvm.internal.ContinuationImpl r18) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.AsyncFontListLoader.h(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(Font font, ContinuationImpl continuationImpl) {
        AsyncFontListLoader$loadWithTimeoutOrNull$1 asyncFontListLoader$loadWithTimeoutOrNull$1;
        if (continuationImpl instanceof AsyncFontListLoader$loadWithTimeoutOrNull$1) {
            asyncFontListLoader$loadWithTimeoutOrNull$1 = (AsyncFontListLoader$loadWithTimeoutOrNull$1) continuationImpl;
            int i2 = asyncFontListLoader$loadWithTimeoutOrNull$1.f10681e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                asyncFontListLoader$loadWithTimeoutOrNull$1.f10681e = i2 - Integer.MIN_VALUE;
            } else {
                asyncFontListLoader$loadWithTimeoutOrNull$1 = new AsyncFontListLoader$loadWithTimeoutOrNull$1(this, continuationImpl);
            }
        } else {
            asyncFontListLoader$loadWithTimeoutOrNull$1 = new AsyncFontListLoader$loadWithTimeoutOrNull$1(this, continuationImpl);
        }
        Object obj = asyncFontListLoader$loadWithTimeoutOrNull$1.f10680c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = asyncFontListLoader$loadWithTimeoutOrNull$1.f10681e;
        try {
            if (i3 != 0) {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                Font font2 = asyncFontListLoader$loadWithTimeoutOrNull$1.f10679b;
                ResultKt.b(obj);
                return obj;
            }
            ResultKt.b(obj);
            AsyncFontListLoader$loadWithTimeoutOrNull$2 asyncFontListLoader$loadWithTimeoutOrNull$2 = new AsyncFontListLoader$loadWithTimeoutOrNull$2(this, font, null);
            asyncFontListLoader$loadWithTimeoutOrNull$1.f10679b = font;
            asyncFontListLoader$loadWithTimeoutOrNull$1.f10681e = 1;
            Object objC = TimeoutKt.c(15000L, asyncFontListLoader$loadWithTimeoutOrNull$2, asyncFontListLoader$loadWithTimeoutOrNull$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        } catch (CancellationException e2) {
            if (!JobKt.g(asyncFontListLoader$loadWithTimeoutOrNull$1.getContext())) {
                throw e2;
            }
            return null;
        } catch (Exception e3) {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) asyncFontListLoader$loadWithTimeoutOrNull$1.getContext().get(CoroutineExceptionHandler.Key.f74649b);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.q(new IllegalStateException("Unable to load font " + font, e3), asyncFontListLoader$loadWithTimeoutOrNull$1.getContext());
            }
            return null;
        }
    }
}
