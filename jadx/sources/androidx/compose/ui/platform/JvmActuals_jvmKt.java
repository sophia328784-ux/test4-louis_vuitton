package androidx.compose.ui.platform;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002*\f\b\u0000\u0010\u0001\"\u00020\u00002\u00020\u0000¨\u0006\u0002"}, d2 = {"Ljava/util/concurrent/atomic/AtomicInteger;", "AtomicInt", "ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class JvmActuals_jvmKt {
    public static final String a(Object obj) {
        return (obj.getClass().isAnonymousClass() ? obj.getClass().getName() : obj.getClass().getSimpleName()) + AnnotationParser.AnnotationInstruction + String.format("%07x", Arrays.copyOf(new Object[]{Integer.valueOf(System.identityHashCode(obj))}, 1));
    }
}
