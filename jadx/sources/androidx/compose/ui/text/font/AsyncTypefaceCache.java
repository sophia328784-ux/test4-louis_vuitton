package androidx.compose.ui.text.font;

import androidx.collection.LruCache;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import defpackage.md;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/font/AsyncTypefaceCache;", "", "<init>", "()V", "AsyncTypefaceResult", "Key", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AsyncTypefaceCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LruCache f10684a = new LruCache(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableScatterMap f10685b = ScatterMapKt.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SynchronizedObject f10686c = new SynchronizedObject();

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0081@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u0004\u0018\u00010\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;", "", "result", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class AsyncTypefaceResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f10687a;

        public /* synthetic */ AsyncTypefaceResult(Object obj) {
            this.f10687a = obj;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof AsyncTypefaceResult) {
                return Intrinsics.c(this.f10687a, ((AsyncTypefaceResult) obj).f10687a);
            }
            return false;
        }

        public final int hashCode() {
            Object obj = this.f10687a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public final String toString() {
            return "AsyncTypefaceResult(result=" + this.f10687a + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;", "", "Landroidx/compose/ui/text/font/Font;", "font", "loaderKey", "<init>", "(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Key {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Font f10688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f10689b;

        public Key(Font font, Object obj) {
            this.f10688a = font;
            this.f10689b = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return Intrinsics.c(this.f10688a, key.f10688a) && Intrinsics.c(this.f10689b, key.f10689b);
        }

        public final int hashCode() {
            int iHashCode = this.f10688a.hashCode() * 31;
            Object obj = this.f10689b;
            return iHashCode + (obj == null ? 0 : obj.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Key(font=");
            sb.append(this.f10688a);
            sb.append(", loaderKey=");
            return o60.r(sb, this.f10689b, ')');
        }
    }

    public static void a(AsyncTypefaceCache asyncTypefaceCache, Font font, PlatformFontLoader platformFontLoader, Object obj) {
        asyncTypefaceCache.getClass();
        Key key = new Key(font, platformFontLoader.getF10694b());
        synchronized (asyncTypefaceCache.f10686c) {
            try {
                if (obj == null) {
                    asyncTypefaceCache.f10685b.o(key, new AsyncTypefaceResult(null));
                } else {
                    asyncTypefaceCache.f10684a.c(key, new AsyncTypefaceResult(obj));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Font font, PlatformFontLoader platformFontLoader, Function1 function1, ContinuationImpl continuationImpl) {
        AsyncTypefaceCache$runCached$1 asyncTypefaceCache$runCached$1;
        Key key;
        if (continuationImpl instanceof AsyncTypefaceCache$runCached$1) {
            asyncTypefaceCache$runCached$1 = (AsyncTypefaceCache$runCached$1) continuationImpl;
            int i2 = asyncTypefaceCache$runCached$1.f10692e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                asyncTypefaceCache$runCached$1.f10692e = i2 - Integer.MIN_VALUE;
            } else {
                asyncTypefaceCache$runCached$1 = new AsyncTypefaceCache$runCached$1(this, continuationImpl);
            }
        } else {
            asyncTypefaceCache$runCached$1 = new AsyncTypefaceCache$runCached$1(this, continuationImpl);
        }
        Object obj = asyncTypefaceCache$runCached$1.f10691c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = asyncTypefaceCache$runCached$1.f10692e;
        Object obj2 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            Key key2 = new Key(font, platformFontLoader.getF10694b());
            synchronized (this.f10686c) {
                try {
                    AsyncTypefaceResult asyncTypefaceResult = (AsyncTypefaceResult) this.f10684a.b(key2);
                    if (asyncTypefaceResult == null) {
                        asyncTypefaceResult = (AsyncTypefaceResult) this.f10685b.e(key2);
                    }
                    if (asyncTypefaceResult != null) {
                        return asyncTypefaceResult.f10687a;
                    }
                    asyncTypefaceCache$runCached$1.f10690b = key2;
                    asyncTypefaceCache$runCached$1.f10692e = 1;
                    Object objInvoke = ((AsyncFontListLoader$load$2$typeface$1) function1).invoke(asyncTypefaceCache$runCached$1);
                    if (objInvoke == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    obj = objInvoke;
                    key = key2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            key = asyncTypefaceCache$runCached$1.f10690b;
            ResultKt.b(obj);
        }
        synchronized (this.f10686c) {
            try {
                if (obj == null) {
                    this.f10685b.o(key, new AsyncTypefaceResult(obj2));
                } else {
                    this.f10684a.c(key, new AsyncTypefaceResult(obj));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return obj;
    }
}
