package com.dynatrace.agent.compose.userinteraction.utils;

import android.graphics.Rect;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.node.NodeCoordinator;
import com.dynatrace.agent.compose.userinteraction.sensor.DTBasicTextModifier;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class UserInteractionUtilsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f26700a = ArraysKt.Z(new String[]{"androidx.compose.foundation.ClickableKt", "androidx.compose.foundation.ClickableElement", "androidx.compose.foundation.CombinedClickableElement"});

    public static final Rect a(LayoutInfo layoutInfo) {
        layoutInfo.getClass();
        if (!d(layoutInfo)) {
            return new Rect(0, 0, 0, 0);
        }
        androidx.compose.ui.geometry.Rect rectB = LayoutCoordinatesKt.b(layoutInfo.w(), true);
        return new Rect((int) rectB.f8811a, (int) rectB.f8812b, (int) rectB.f8813c, (int) rectB.d);
    }

    public static final String b(LayoutInfo layoutInfo) {
        Object next;
        layoutInfo.getClass();
        if (layoutInfo.z().isEmpty()) {
            return null;
        }
        Iterator it = layoutInfo.z().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((ModifierInfo) next).f9537a instanceof DTBasicTextModifier));
        ModifierInfo modifierInfo = (ModifierInfo) next;
        if (modifierInfo == null) {
            return null;
        }
        Modifier modifier = modifierInfo.f9537a;
        modifier.getClass();
        return ((DTBasicTextModifier) modifier).f26696b;
    }

    public static final boolean c(LayoutInfo layoutInfo) {
        layoutInfo.getClass();
        List listZ = layoutInfo.z();
        if ((listZ instanceof Collection) && listZ.isEmpty()) {
            return false;
        }
        Iterator it = listZ.iterator();
        while (it.hasNext()) {
            try {
                String string = ((ModifierInfo) it.next()).f9537a.toString();
                Set set = f26700a;
                if (!(set instanceof Collection) || !set.isEmpty()) {
                    Iterator it2 = set.iterator();
                    while (it2.hasNext()) {
                        if (StringsKt.k(string, (String) it2.next(), false)) {
                            return true;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static final boolean d(LayoutInfo layoutInfo) {
        layoutInfo.getClass();
        if (!layoutInfo.c() || !layoutInfo.A() || !((NodeCoordinator) layoutInfo.w()).p1().o) {
            return false;
        }
        LayoutCoordinates layoutCoordinatesW = layoutInfo.w();
        return ((int) (((NodeCoordinator) layoutCoordinatesW).d >> 32)) > 0 && ((int) (((NodeCoordinator) layoutCoordinatesW).d & BodyPartID.bodyIdMax)) > 0;
    }
}
