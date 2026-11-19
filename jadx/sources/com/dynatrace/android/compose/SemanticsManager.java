package com.dynatrace.android.compose;

import androidx.collection.MutableScatterMap;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AnnotatedString;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.api.compose.SemanticsExtensionKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/android/compose/SemanticsManager;", "", "agent.instrumentorAPI.compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class SemanticsManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SemanticsConfiguration f27631a;

    static {
        boolean z = Global.f27307a;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:26:0x0060  */
    public static String a() {
        String strC;
        String str;
        if (Global.f27307a) {
            if (f27631a == null) {
                str = "onUA: no SemanticsConfiguration value available";
            } else {
                str = "onUA: " + f27631a;
            }
            Utility.n(str);
        }
        SemanticsConfiguration semanticsConfiguration = f27631a;
        if (semanticsConfiguration != null) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsExtensionKt.f27588b;
            MutableScatterMap mutableScatterMap = semanticsConfiguration.f10312b;
            if (mutableScatterMap.c(semanticsPropertyKey)) {
                strC = (String) SemanticsConfigurationKt.a(semanticsConfiguration, semanticsPropertyKey);
                if (strC == null) {
                    strC = b(semanticsConfiguration);
                } else {
                    if (strC.length() == 0) {
                        strC = b(semanticsConfiguration);
                    }
                    if (strC == null) {
                        strC = b(semanticsConfiguration);
                    }
                }
            } else if (mutableScatterMap.c(SemanticsProperties.f10331a)) {
                strC = b(semanticsConfiguration);
            } else if (mutableScatterMap.c(SemanticsProperties.C)) {
                strC = c(semanticsConfiguration);
            } else {
                strC = null;
            }
        } else {
            strC = null;
        }
        f27631a = null;
        return strC;
    }

    public static String b(SemanticsConfiguration semanticsConfiguration) {
        Object next;
        List list = (List) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.f10331a);
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((String) next).length() <= 0);
            String strC = (String) next;
            if (strC == null) {
                strC = c(semanticsConfiguration);
            }
            if (strC != null) {
                return strC;
            }
        }
        return c(semanticsConfiguration);
    }

    public static String c(SemanticsConfiguration semanticsConfiguration) {
        Object next;
        List list = (List) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.C);
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((AnnotatedString) next).f10420c.length() <= 0);
            AnnotatedString annotatedString = (AnnotatedString) next;
            if (annotatedString != null) {
                return annotatedString.f10420c;
            }
        }
        return null;
    }

    public static boolean d(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        pointerEvent.getClass();
        pointerEventPass.getClass();
        int i2 = pointerEvent.f9309f;
        PointerEventType.f9310a.getClass();
        return i2 == PointerEventType.f9312c && pointerEventPass.ordinal() == PointerEventPass.Final.ordinal();
    }
}
