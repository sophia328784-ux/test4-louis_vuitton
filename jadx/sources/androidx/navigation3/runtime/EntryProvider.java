package androidx.navigation3.runtime;

import androidx.compose.runtime.Composer;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001BP\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00060\u0005\u0012\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\u0005¢\u0006\u0002\b\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/navigation3/runtime/EntryProvider;", "", "K", ConfigurationName.KEY, "contentKey", "Lkotlin/Function1;", "", "", "metadata", "", "Landroidx/compose/runtime/Composable;", "content", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class EntryProvider<K> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f18390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f18391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f18392c;
    public final Function3 d;

    public EntryProvider(K k2, Object obj, Function1<? super K, ? extends Map<String, ? extends Object>> function1, Function3<? super K, ? super Composer, ? super Integer, Unit> function3) {
        this.f18390a = k2;
        this.f18391b = obj;
        this.f18392c = function1;
        this.d = function3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EntryProvider)) {
            return false;
        }
        EntryProvider entryProvider = (EntryProvider) obj;
        return Intrinsics.c(this.f18390a, entryProvider.f18390a) && Intrinsics.c(this.f18391b, entryProvider.f18391b) && Intrinsics.c(this.f18392c, entryProvider.f18392c) && Intrinsics.c(this.d, entryProvider.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f18392c.hashCode() + ((this.f18391b.hashCode() + (this.f18390a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "EntryProvider(key=" + this.f18390a + ", contentKey=" + this.f18391b + ", metadata=" + this.f18392c + ", content=" + this.d + ')';
    }
}
