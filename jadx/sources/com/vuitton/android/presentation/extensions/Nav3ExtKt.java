package com.vuitton.android.presentation.extensions;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class Nav3ExtKt {
    public static final void a(NavBackStack navBackStack, NavKey navKey) {
        navBackStack.getClass();
        navKey.getClass();
        navBackStack.clear();
        navBackStack.a(navKey);
    }

    public static final boolean b(NavBackStack navBackStack) {
        navBackStack.getClass();
        if (navBackStack.f18396b.size() <= 1) {
            return false;
        }
        navBackStack.remove(navBackStack.size() - 1);
        return true;
    }

    public static final boolean c(NavBackStack navBackStack, NavKey navKey, boolean z) {
        int i2;
        navBackStack.getClass();
        navKey.getClass();
        SnapshotStateList snapshotStateList = navBackStack.f18396b;
        ListIterator listIterator = navBackStack.listIterator(snapshotStateList.size());
        while (true) {
            StateListIterator stateListIterator = (StateListIterator) listIterator;
            if (!stateListIterator.hasPrevious()) {
                i2 = -1;
                break;
            }
            if (Intrinsics.c((NavKey) stateListIterator.previous(), navKey)) {
                i2 = stateListIterator.f8522c + 1;
                break;
            }
        }
        boolean z2 = false;
        if (i2 == -1) {
            return false;
        }
        if (!z) {
            i2++;
        }
        while (snapshotStateList.size() > i2 && b(navBackStack)) {
            z2 = true;
        }
        return z2;
    }
}
