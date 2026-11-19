package androidx.compose.ui.modifier;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/modifier/EmptyMap;", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EmptyMap extends ModifierLocalMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EmptyMap f9612a = new EmptyMap(null);

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public final boolean a(ModifierLocal modifierLocal) {
        return false;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public final Object b(ModifierLocal modifierLocal) {
        throw new IllegalStateException("");
    }
}
