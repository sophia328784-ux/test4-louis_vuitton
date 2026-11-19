package org.teleal.cling.model.action;

import defpackage.md;
import java.util.LinkedHashMap;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.ActionArgument;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public class ActionInvocation<S extends Service> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Action f78397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f78398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f78399c;
    public ActionException d;

    public ActionInvocation(Action<S> action, ActionArgumentValue<S>[] actionArgumentValueArr, ActionArgumentValue<S>[] actionArgumentValueArr2) {
        this.f78398b = new LinkedHashMap();
        this.f78399c = new LinkedHashMap();
        this.d = null;
        if (action == null) {
            md.n("Action can not be null");
            throw null;
        }
        this.f78397a = action;
        if (actionArgumentValueArr != null) {
            for (ActionArgumentValue<S> actionArgumentValue : actionArgumentValueArr) {
                this.f78398b.put(actionArgumentValue.f78395c.f78438a, actionArgumentValue);
            }
        }
        if (actionArgumentValueArr2 == null) {
            return;
        }
        for (ActionArgumentValue<S> actionArgumentValue2 : actionArgumentValueArr2) {
            this.f78399c.put(actionArgumentValue2.f78395c.f78438a, actionArgumentValue2);
        }
    }

    public final ActionArgumentValue a(String str) {
        ActionArgument actionArgument;
        ActionArgument[] actionArgumentArr = this.f78397a.d;
        int length = actionArgumentArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                actionArgument = null;
                break;
            }
            actionArgument = actionArgumentArr[i2];
            if (actionArgument.f78438a.equals(str)) {
                break;
            }
            i2++;
        }
        if (actionArgument != null) {
            return (ActionArgumentValue) this.f78399c.get(actionArgument.f78438a);
        }
        md.n("Argument not found: ".concat(str));
        return null;
    }

    public final void b(Object obj, String str) {
        ActionArgument actionArgument;
        ActionArgument[] actionArgumentArr = this.f78397a.f78436c;
        int length = actionArgumentArr.length;
        int i2 = 0;
        loop0: while (true) {
            if (i2 >= length) {
                actionArgument = null;
                break;
            }
            actionArgument = actionArgumentArr[i2];
            if (actionArgument.f78438a.equals(str)) {
                break;
            }
            for (String str2 : actionArgument.f78439b) {
                if (str2.equals(str)) {
                    break loop0;
                }
            }
            i2++;
        }
        if (actionArgument == null) {
            md.n("Argument not found: ".concat(str));
            return;
        }
        ActionArgumentValue actionArgumentValue = new ActionArgumentValue(actionArgument, obj);
        this.f78398b.put(actionArgumentValue.f78395c.f78438a, actionArgumentValue);
    }

    public final String toString() {
        return "(" + getClass().getSimpleName() + ") " + this.f78397a;
    }

    public ActionInvocation(Action<S> action, ActionArgumentValue<S>[] actionArgumentValueArr) {
        this(action, actionArgumentValueArr, null);
    }

    public ActionInvocation(Action<S> action) {
        this(action, null, null);
    }

    public ActionInvocation(ActionException actionException) {
        this.f78398b = new LinkedHashMap();
        new LinkedHashMap();
        this.f78397a = null;
        this.f78398b = null;
        this.f78399c = null;
        this.d = actionException;
    }
}
