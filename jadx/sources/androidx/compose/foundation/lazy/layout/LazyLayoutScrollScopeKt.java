package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutScrollScopeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f5516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f5517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f5518c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f5516a = 2500.0f;
        f5517b = 1500.0f;
        f5518c = 50.0f;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c6 A[Catch: ItemFoundInScroll -> 0x01aa, TryCatch #4 {ItemFoundInScroll -> 0x01aa, blocks: (B:34:0x00c2, B:36:0x00c6, B:38:0x00cc, B:52:0x00f6, B:54:0x0110, B:58:0x0125, B:62:0x012d), top: B:113:0x00c2 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00db  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:56:0x0122  */
    /* JADX WARN: Code duplicated, block: B:57:0x0124  */
    /* JADX WARN: Code duplicated, block: B:60:0x0128  */
    /* JADX WARN: Code duplicated, block: B:61:0x012b  */
    /* JADX WARN: Code duplicated, block: B:71:0x017d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4, types: [boolean] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x017d -> B:106:0x0189). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(androidx.compose.foundation.lazy.LazyListScrollScopeKt$LazyLayoutScrollScope$1 r28, int r29, int r30, int r31, androidx.compose.ui.unit.Density r32, kotlin.coroutines.jvm.internal.ContinuationImpl r33) {
        /*
            Method dump skipped, instruction units count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt.a(androidx.compose.foundation.lazy.LazyListScrollScopeKt$LazyLayoutScrollScope$1, int, int, int, androidx.compose.ui.unit.Density, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final boolean b(boolean z, LazyLayoutScrollScope lazyLayoutScrollScope, int i2, int i3) {
        if (z) {
            if (lazyLayoutScrollScope.g() > i2) {
                return true;
            }
            return lazyLayoutScrollScope.g() == i2 && lazyLayoutScrollScope.f() > i3;
        }
        if (lazyLayoutScrollScope.g() < i2) {
            return true;
        }
        return lazyLayoutScrollScope.g() == i2 && lazyLayoutScrollScope.f() < i3;
    }

    public static final boolean c(LazyLayoutScrollScope lazyLayoutScrollScope, int i2) {
        return i2 <= lazyLayoutScrollScope.a() && lazyLayoutScrollScope.g() <= i2;
    }
}
