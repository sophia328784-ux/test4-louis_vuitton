package com.dynatrace.agent.userinteraction.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;", "", "EMIT_NATIVE_EVENT", "SKIP_NATIVE_EVENT", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GestureSequenceResolution {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ GestureSequenceResolution[] $VALUES;
    public static final GestureSequenceResolution EMIT_NATIVE_EVENT;
    public static final GestureSequenceResolution SKIP_NATIVE_EVENT;

    static {
        GestureSequenceResolution gestureSequenceResolution = new GestureSequenceResolution("EMIT_NATIVE_EVENT", 0);
        EMIT_NATIVE_EVENT = gestureSequenceResolution;
        GestureSequenceResolution gestureSequenceResolution2 = new GestureSequenceResolution("SKIP_NATIVE_EVENT", 1);
        SKIP_NATIVE_EVENT = gestureSequenceResolution2;
        GestureSequenceResolution[] gestureSequenceResolutionArr = {gestureSequenceResolution, gestureSequenceResolution2};
        $VALUES = gestureSequenceResolutionArr;
        $ENTRIES = EnumEntriesKt.a(gestureSequenceResolutionArr);
    }

    public static GestureSequenceResolution valueOf(String str) {
        return (GestureSequenceResolution) Enum.valueOf(GestureSequenceResolution.class, str);
    }

    public static GestureSequenceResolution[] values() {
        return (GestureSequenceResolution[]) $VALUES.clone();
    }
}
