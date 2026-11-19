package com.networkbench.agent.impl.harvest.type;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum MetricCategory {
    NONE("None"),
    VIEW_LOADING("ViewLoading"),
    VIEW_LAYOUT("ViewLayout"),
    DATABASE("Storage"),
    IMAGE("Image"),
    JSON("Json"),
    NETWORK("Network"),
    BACKGROUND("Background"),
    CUSTOMEVENT("CustomEvent");

    private static final Map<String, MetricCategory> methodMap = new HashMap<String, MetricCategory>() { // from class: com.networkbench.agent.impl.harvest.type.MetricCategory.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final long f37323a = -1342597889479051466L;

        {
            put("onCreate", MetricCategory.VIEW_LOADING);
        }
    };
    private String categoryName;

    MetricCategory(String str) {
        this.categoryName = str;
    }

    public static MetricCategory categoryForMethod(String str) {
        if (str == null) {
            return NONE;
        }
        int iIndexOf = str.indexOf("#");
        MetricCategory metricCategory = methodMap.get(iIndexOf >= 0 ? str.substring(iIndexOf + 1) : null);
        return metricCategory == null ? NONE : metricCategory;
    }

    public String getCategoryName() {
        return this.categoryName;
    }
}
