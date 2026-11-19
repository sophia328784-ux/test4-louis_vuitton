package kotlinx.coroutines;

import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import kotlin.Metadata;
import kotlinx.coroutines.internal.LimitedDispatcherKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.internal.NamedDispatcher;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/MainCoroutineDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class MainCoroutineDispatcher extends CoroutineDispatcher {
    @Override // kotlinx.coroutines.CoroutineDispatcher
    public CoroutineDispatcher limitedParallelism(int i2, String str) {
        LimitedDispatcherKt.a(i2);
        return str != null ? new NamedDispatcher(this, str) : this;
    }

    public abstract MainCoroutineDispatcher r();

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* JADX INFO: renamed from: toString */
    public String getD() {
        MainCoroutineDispatcher mainCoroutineDispatcherR;
        String str;
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
        if (this == mainCoroutineDispatcher) {
            str = "Dispatchers.Main";
        } else {
            try {
                mainCoroutineDispatcherR = mainCoroutineDispatcher.r();
            } catch (UnsupportedOperationException unused) {
                mainCoroutineDispatcherR = null;
            }
            str = this == mainCoroutineDispatcherR ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        return getClass().getSimpleName() + AnnotationParser.AnnotationInstruction + DebugStringsKt.a(this);
    }
}
