package org.squirrelframework.foundation.fsm;

/* JADX INFO: loaded from: classes5.dex */
public interface MvelScriptManager {
    public static final String SEPARATOR_CHARS = ":::";
    public static final String VAR_CONTEXT = "context";
    public static final String VAR_EVENT = "event";
    public static final String VAR_EXCEPTION = "exception";
    public static final String VAR_FROM = "from";
    public static final String VAR_STATE_MACHINE = "stateMachine";
    public static final String VAR_TO = "to";

    void compile(String str);

    <T> T eval(String str, Object obj, Class<T> cls);

    boolean evalBoolean(String str, Object obj);
}
