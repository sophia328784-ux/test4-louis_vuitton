package org.teleal.cling.model.meta;

import defpackage.md;
import org.teleal.cling.model.meta.Service;

/* JADX INFO: loaded from: classes5.dex */
public class QueryStateVariableAction<S extends Service> extends Action<S> {
    public QueryStateVariableAction(S s) {
        super("QueryStateVariable", new ActionArgument[]{new ActionArgument("varName", "VirtualQueryActionInput", ActionArgument.Direction.IN), new ActionArgument("return", "VirtualQueryActionOutput", ActionArgument.Direction.OUT)});
        if (this.f78437e == null) {
            this.f78437e = s;
        } else {
            md.k("Final value has been set already, model is immutable");
            throw null;
        }
    }

    @Override // org.teleal.cling.model.meta.Action
    public final String a() {
        return "QueryStateVariable";
    }

    public QueryStateVariableAction() {
        this(null);
    }
}
