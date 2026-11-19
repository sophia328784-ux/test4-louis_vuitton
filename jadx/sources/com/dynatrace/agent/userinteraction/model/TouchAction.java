package com.dynatrace.agent.userinteraction.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/TouchAction;", "", "DOWN", "UP", "MOVE", "POINTER_DOWN", "POINTER_UP", "UNKNOWN", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TouchAction {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TouchAction[] $VALUES;
    public static final TouchAction DOWN;
    public static final TouchAction MOVE;
    public static final TouchAction POINTER_DOWN;
    public static final TouchAction POINTER_UP;
    public static final TouchAction UNKNOWN;
    public static final TouchAction UP;

    static {
        TouchAction touchAction = new TouchAction("DOWN", 0);
        DOWN = touchAction;
        TouchAction touchAction2 = new TouchAction("UP", 1);
        UP = touchAction2;
        TouchAction touchAction3 = new TouchAction("MOVE", 2);
        MOVE = touchAction3;
        TouchAction touchAction4 = new TouchAction("POINTER_DOWN", 3);
        POINTER_DOWN = touchAction4;
        TouchAction touchAction5 = new TouchAction("POINTER_UP", 4);
        POINTER_UP = touchAction5;
        TouchAction touchAction6 = new TouchAction("UNKNOWN", 5);
        UNKNOWN = touchAction6;
        TouchAction[] touchActionArr = {touchAction, touchAction2, touchAction3, touchAction4, touchAction5, touchAction6};
        $VALUES = touchActionArr;
        $ENTRIES = EnumEntriesKt.a(touchActionArr);
    }

    public static TouchAction valueOf(String str) {
        return (TouchAction) Enum.valueOf(TouchAction.class, str);
    }

    public static TouchAction[] values() {
        return (TouchAction[]) $VALUES.clone();
    }
}
