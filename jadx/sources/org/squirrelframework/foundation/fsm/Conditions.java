package org.squirrelframework.foundation.fsm;

import defpackage.n00;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class Conditions {

    public static class Always<C> extends AnonymousCondition<C> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(C c2) {
            return true;
        }
    }

    public static class Never<C> extends AnonymousCondition<C> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(C c2) {
            return false;
        }
    }

    public static <C> Condition<C> always() {
        return new Always();
    }

    public static <C> Condition<C> and(final Condition<C> condition, final Condition<C> condition2) {
        return new Condition<C>() { // from class: org.squirrelframework.foundation.fsm.Conditions.1
            @Override // org.squirrelframework.foundation.fsm.Condition
            public boolean isSatisfied(C c2) {
                return condition.isSatisfied(c2) && condition2.isSatisfied(c2);
            }

            @Override // org.squirrelframework.foundation.fsm.Condition
            public String name() {
                return condition.name() + "And" + condition2.name();
            }
        };
    }

    public static <C> boolean isNotSatified(Condition<C> condition, C c2) {
        return condition == null || c2 == null || !condition.isSatisfied(c2);
    }

    public static <C> boolean isSatified(Condition<C> condition, C c2) {
        return (condition == null || c2 == null || !condition.isSatisfied(c2)) ? false : true;
    }

    public static <C> Condition<C> never() {
        return new Never();
    }

    public static <C> Condition<C> not(final Condition<C> condition) {
        return new Condition<C>() { // from class: org.squirrelframework.foundation.fsm.Conditions.5
            @Override // org.squirrelframework.foundation.fsm.Condition
            public boolean isSatisfied(C c2) {
                return !condition.isSatisfied(c2);
            }

            @Override // org.squirrelframework.foundation.fsm.Condition
            public String name() {
                return "Not" + condition.name();
            }
        };
    }

    public static <C> Condition<C> or(final Condition<C> condition, final Condition<C> condition2) {
        return new Condition<C>() { // from class: org.squirrelframework.foundation.fsm.Conditions.3
            @Override // org.squirrelframework.foundation.fsm.Condition
            public boolean isSatisfied(C c2) {
                return condition.isSatisfied(c2) || condition2.isSatisfied(c2);
            }

            @Override // org.squirrelframework.foundation.fsm.Condition
            public String name() {
                return condition.name() + "Or" + condition2.name();
            }
        };
    }

    public static <C> Condition<C> xor(final Condition<C> condition, final Condition<C> condition2) {
        return new Condition<C>() { // from class: org.squirrelframework.foundation.fsm.Conditions.6
            @Override // org.squirrelframework.foundation.fsm.Condition
            public boolean isSatisfied(C c2) {
                return condition2.isSatisfied(c2) ^ condition.isSatisfied(c2);
            }

            @Override // org.squirrelframework.foundation.fsm.Condition
            public String name() {
                return condition.name() + "Xor" + condition2.name();
            }
        };
    }

    public static <C> Condition<C> and(final List<Condition<C>> list) {
        return new Condition<C>() { // from class: org.squirrelframework.foundation.fsm.Conditions.2
            @Override // org.squirrelframework.foundation.fsm.Condition
            public boolean isSatisfied(C c2) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (!((Condition) it.next()).isSatisfied(c2)) {
                        return false;
                    }
                }
                return true;
            }

            @Override // org.squirrelframework.foundation.fsm.Condition
            public String name() {
                String strName = null;
                for (Condition condition : list) {
                    if (strName == null) {
                        strName = condition.name();
                    } else {
                        StringBuilder sbU = n00.u(strName, "And");
                        sbU.append(condition.name());
                        strName = sbU.toString();
                    }
                }
                return strName;
            }
        };
    }

    public static <C> Condition<C> or(final List<Condition<C>> list) {
        return new Condition<C>() { // from class: org.squirrelframework.foundation.fsm.Conditions.4
            @Override // org.squirrelframework.foundation.fsm.Condition
            public boolean isSatisfied(C c2) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((Condition) it.next()).isSatisfied(c2)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // org.squirrelframework.foundation.fsm.Condition
            public String name() {
                String strName = null;
                for (Condition condition : list) {
                    if (strName == null) {
                        strName = condition.name();
                    } else {
                        StringBuilder sbU = n00.u(strName, "Or");
                        sbU.append(condition.name());
                        strName = sbU.toString();
                    }
                }
                return strName;
            }
        };
    }
}
