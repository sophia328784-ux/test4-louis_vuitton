package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/animation/core/KeyframeBaseEntity;", "T", "", "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class KeyframeBaseEntity<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Easing f3896b;

    public KeyframeBaseEntity(Object obj, Easing easing, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3895a = obj;
        this.f3896b = easing;
    }
}
