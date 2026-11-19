package org.teleal.cling.model.state;

import org.teleal.cling.model.VariableValue;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.meta.StateVariable;
import org.teleal.cling.model.types.InvalidValueException;

/* JADX INFO: loaded from: classes5.dex */
public class StateVariableValue<S extends Service> extends VariableValue {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateVariable f78499c;

    public StateVariableValue(StateVariable<S> stateVariable, Object obj) throws InvalidValueException {
        super(stateVariable.f78484b.f78492a, obj);
        this.f78499c = stateVariable;
    }
}
