package org.squirrelframework.foundation.fsm.jmx;

import defpackage.ct0;
import java.lang.management.ManagementFactory;
import java.util.Hashtable;
import java.util.regex.Pattern;
import javax.management.MBeanServer;
import javax.management.MalformedObjectNameException;
import javax.management.ObjectName;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.annotation.OnStateMachineStart;
import org.squirrelframework.foundation.fsm.annotation.OnStateMachineTerminate;

/* JADX INFO: loaded from: classes5.dex */
public class ManagementService {
    public static final String DOMAIN = "org.squirrelframework";

    public static String quote(String str) {
        return Pattern.compile("[:\",=*?]").matcher(str).find() ? ObjectName.quote(str) : str;
    }

    public ObjectName createObjectName(StateMachine<?, ?, ?, ?> stateMachine) {
        Hashtable hashtable = new Hashtable(2);
        hashtable.put("type", quote(stateMachine.getClass().getSimpleName()));
        hashtable.put("name", quote(stateMachine.getIdentifier()));
        try {
            return new ObjectName(DOMAIN, hashtable);
        } catch (MalformedObjectNameException unused) {
            ct0.c();
            return null;
        }
    }

    @OnStateMachineStart
    public void onStateMachineStart(StateMachine<?, ?, ?, ?> stateMachine) {
        StateMachineManagement stateMachineManagement = new StateMachineManagement(stateMachine);
        MBeanServer platformMBeanServer = ManagementFactory.getPlatformMBeanServer();
        ObjectName objectNameCreateObjectName = createObjectName(stateMachine);
        if (platformMBeanServer.isRegistered(objectNameCreateObjectName)) {
            return;
        }
        try {
            platformMBeanServer.registerMBean(stateMachineManagement, objectNameCreateObjectName);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @OnStateMachineTerminate
    public void onStateMachineTerminate(StateMachine<?, ?, ?, ?> stateMachine) {
        MBeanServer platformMBeanServer = ManagementFactory.getPlatformMBeanServer();
        ObjectName objectNameCreateObjectName = createObjectName(stateMachine);
        if (platformMBeanServer.isRegistered(objectNameCreateObjectName)) {
            try {
                platformMBeanServer.unregisterMBean(objectNameCreateObjectName);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void register(StateMachine<?, ?, ?, ?> stateMachine) {
        if (stateMachine.isRemoteMonitorEnabled()) {
            stateMachine.addDeclarativeListener(this);
        }
    }
}
