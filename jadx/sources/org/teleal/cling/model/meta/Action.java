package org.teleal.cling.model.meta;

import defpackage.md;
import java.util.ArrayList;
import java.util.logging.Logger;
import org.teleal.cling.model.Validatable;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public class Action<S extends Service> implements Validatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActionArgument[] f78435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ActionArgument[] f78436c;
    public final ActionArgument[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Service f78437e;

    static {
        Logger.getLogger(Action.class.getName());
    }

    public Action(String str, ActionArgument[] actionArgumentArr) {
        this.f78434a = str;
        if (actionArgumentArr == null) {
            this.f78435b = new ActionArgument[0];
            this.f78436c = new ActionArgument[0];
            this.d = new ActionArgument[0];
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ActionArgument actionArgument : actionArgumentArr) {
            Action action = actionArgument.f78442f;
            ActionArgument.Direction direction = actionArgument.d;
            if (action != null) {
                md.k("Final value has been set already, model is immutable");
                throw null;
            }
            actionArgument.f78442f = this;
            if (direction.equals(ActionArgument.Direction.IN)) {
                arrayList.add(actionArgument);
            }
            if (direction.equals(ActionArgument.Direction.OUT)) {
                arrayList2.add(actionArgument);
            }
        }
        this.f78435b = actionArgumentArr;
        this.f78436c = (ActionArgument[]) arrayList.toArray(new ActionArgument[arrayList.size()]);
        this.d = (ActionArgument[]) arrayList2.toArray(new ActionArgument[arrayList2.size()]);
    }

    public String a() {
        return this.f78434a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(getClass().getSimpleName());
        sb.append(", Arguments: ");
        ActionArgument[] actionArgumentArr = this.f78435b;
        sb.append(actionArgumentArr != null ? Integer.valueOf(actionArgumentArr.length) : "NO ARGS");
        sb.append(") ");
        sb.append(a());
        return sb.toString();
    }
}
