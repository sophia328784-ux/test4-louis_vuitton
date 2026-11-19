package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.state.helpers.Facade;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public interface Reference {
    void a(ConstraintWidget constraintWidget);

    void apply();

    ConstraintWidget b();

    Facade c();

    Object getKey();
}
