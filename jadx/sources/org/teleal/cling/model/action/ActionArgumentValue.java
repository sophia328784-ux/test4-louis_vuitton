package org.teleal.cling.model.action;

import java.util.HashMap;
import org.teleal.cling.model.VariableValue;
import org.teleal.cling.model.meta.ActionArgument;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.meta.StateVariable;
import org.teleal.cling.model.meta.StateVariableTypeDetails;
import org.teleal.cling.model.types.Datatype;
import org.teleal.cling.model.types.InvalidValueException;

/* JADX INFO: loaded from: classes5.dex */
public class ActionArgumentValue<S extends Service> extends VariableValue {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ActionArgument f78395c;

    public ActionArgumentValue(ActionArgument<S> actionArgument, Object obj) throws InvalidValueException {
        StateVariable stateVariable;
        Service service = actionArgument.f78442f.f78437e;
        service.getClass();
        String str = actionArgument.f78440c;
        if ("VirtualQueryActionInput".equals(str)) {
            stateVariable = new StateVariable("VirtualQueryActionInput", new StateVariableTypeDetails(Datatype.Builtin.STRING.b()));
        } else if ("VirtualQueryActionOutput".equals(str)) {
            stateVariable = new StateVariable("VirtualQueryActionOutput", new StateVariableTypeDetails(Datatype.Builtin.STRING.b()));
        } else {
            HashMap map = service.d;
            stateVariable = map == null ? null : (StateVariable) map.get(str);
        }
        Datatype datatype = stateVariable.f78484b.f78492a;
        if (obj != null && obj.getClass().isEnum()) {
            obj = obj.toString();
        }
        super(datatype, obj);
        this.f78395c = actionArgument;
    }
}
