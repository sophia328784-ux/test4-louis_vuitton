package androidx.compose.ui.autofill;

import kotlin.Metadata;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ContentType_androidKt {
    public static final ContentType a(String str) {
        return new AndroidContentType(SetsKt.h(str));
    }

    public static final String[] b(ContentType contentType) {
        contentType.getClass();
        return (String[]) ((AndroidContentType) contentType).f8640b.toArray(new String[0]);
    }
}
