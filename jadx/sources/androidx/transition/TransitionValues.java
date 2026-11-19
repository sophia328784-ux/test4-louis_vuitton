package androidx.transition;

import android.view.View;
import defpackage.n00;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class TransitionValues {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f20031b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f20030a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f20032c = new ArrayList();

    public TransitionValues(View view) {
        this.f20031b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TransitionValues)) {
            return false;
        }
        TransitionValues transitionValues = (TransitionValues) obj;
        return this.f20031b == transitionValues.f20031b && this.f20030a.equals(transitionValues.f20030a);
    }

    public final int hashCode() {
        return this.f20030a.hashCode() + (this.f20031b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbU = n00.u("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbU.append(this.f20031b);
        sbU.append("\n");
        String strConcat = sbU.toString().concat("    values:");
        HashMap map = this.f20030a;
        for (String str : map.keySet()) {
            strConcat = strConcat + "    " + str + ": " + map.get(str) + "\n";
        }
        return strConcat;
    }

    @Deprecated
    public TransitionValues() {
    }
}
