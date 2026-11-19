package com.sensorsdata.analytics.android.sdk;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public interface SensorsExpandableListViewItemTrackProperties {
    JSONObject getSensorsChildItemTrackProperties(int i2, int i3) throws JSONException;

    JSONObject getSensorsGroupItemTrackProperties(int i2) throws JSONException;
}
