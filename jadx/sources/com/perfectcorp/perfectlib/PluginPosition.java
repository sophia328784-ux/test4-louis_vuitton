package com.perfectcorp.perfectlib;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class PluginPosition {
    public static final PluginPosition BACK;
    public static final PluginPosition FRONT;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ PluginPosition[] f39794a;

    static {
        PluginPosition pluginPosition = new PluginPosition("FRONT", 0);
        FRONT = pluginPosition;
        PluginPosition pluginPosition2 = new PluginPosition("BACK", 1);
        BACK = pluginPosition2;
        f39794a = new PluginPosition[]{pluginPosition, pluginPosition2};
    }

    public static PluginPosition valueOf(String str) {
        return (PluginPosition) Enum.valueOf(PluginPosition.class, str);
    }

    public static PluginPosition[] values() {
        return (PluginPosition[]) f39794a.clone();
    }
}
