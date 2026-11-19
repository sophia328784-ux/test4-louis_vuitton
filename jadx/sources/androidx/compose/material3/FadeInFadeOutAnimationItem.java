package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002BF\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00125\u0010\f\u001a1\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u000b¢\u0006\u0002\b\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/material3/FadeInFadeOutAnimationItem;", "T", "", ConfigurationName.KEY, "Lkotlin/Function1;", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "Lkotlin/ParameterName;", "name", "content", "Landroidx/compose/material3/FadeInFadeOutTransition;", "transition", "<init>", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final /* data */ class FadeInFadeOutAnimationItem<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f6960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function3 f6961b;

    public FadeInFadeOutAnimationItem(T t, Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> function3) {
        this.f6960a = t;
        this.f6961b = function3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FadeInFadeOutAnimationItem)) {
            return false;
        }
        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) obj;
        return Intrinsics.c(this.f6960a, fadeInFadeOutAnimationItem.f6960a) && Intrinsics.c(this.f6961b, fadeInFadeOutAnimationItem.f6961b);
    }

    public final int hashCode() {
        Object obj = this.f6960a;
        return this.f6961b.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "FadeInFadeOutAnimationItem(key=" + this.f6960a + ", transition=" + this.f6961b + ')';
    }
}
