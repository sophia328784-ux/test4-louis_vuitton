package androidx.navigation3.runtime;

import androidx.compose.runtime.Composer;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001Bq\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n0\u0005\u0012\u0017\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u0005¢\u0006\u0002\b\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/navigation3/runtime/EntryClassProvider;", "", "K", "Lkotlin/reflect/KClass;", "clazz", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", ConfigurationName.KEY, "clazzContentKey", "", "", "metadata", "", "Landroidx/compose/runtime/Composable;", "content", "<init>", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class EntryClassProvider<K> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KClass f18387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f18388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f18389c;
    public final Function3 d;

    public EntryClassProvider(KClass<K> kClass, Function1<? super K, ? extends Object> function1, Function1<? super K, ? extends Map<String, ? extends Object>> function2, Function3<? super K, ? super Composer, ? super Integer, Unit> function3) {
        this.f18387a = kClass;
        this.f18388b = function1;
        this.f18389c = function2;
        this.d = function3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EntryClassProvider)) {
            return false;
        }
        EntryClassProvider entryClassProvider = (EntryClassProvider) obj;
        return Intrinsics.c(this.f18387a, entryClassProvider.f18387a) && Intrinsics.c(this.f18388b, entryClassProvider.f18388b) && Intrinsics.c(this.f18389c, entryClassProvider.f18389c) && Intrinsics.c(this.d, entryClassProvider.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f18389c.hashCode() + ((this.f18388b.hashCode() + (this.f18387a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "EntryClassProvider(clazz=" + this.f18387a + ", clazzContentKey=" + this.f18388b + ", metadata=" + this.f18389c + ", content=" + this.d + ')';
    }
}
