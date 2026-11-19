package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.util.ak;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenNameManager {
    private static String currentActivityName = "";
    private static String currentFragmentName = "";

    public static void clearCurrentFragmentName() {
        currentFragmentName = "";
    }

    public static String getCurrentActivityName() {
        return currentActivityName;
    }

    public static String getCurrentFragmentName() {
        return currentFragmentName;
    }

    public static final String getCurrentScreenName() {
        return ak.r(currentFragmentName) ? currentActivityName : currentFragmentName;
    }

    public static void setCurrentActivityName(String str) {
        if (str == null) {
            str = "";
        }
        currentActivityName = str;
        currentFragmentName = "";
    }

    public static void setCurrentFragmentName(String str) {
        if (str == null) {
            str = "";
        }
        currentFragmentName = str;
    }
}
