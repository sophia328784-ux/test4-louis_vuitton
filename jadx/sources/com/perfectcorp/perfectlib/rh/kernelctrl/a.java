package com.perfectcorp.perfectlib.rh.kernelctrl;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    public float cooler_item_delta_e;
    public int cooler_item_index;
    public float darker_item_delta_e;
    public int darker_item_index;
    public float lighter_item_delta_e;
    public int lighter_item_index;
    public float warmer_item_delta_e;
    public int warmer_item_index;

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("NeighborShadeResult");
        toStringHelper.b("lighter_item_index", Integer.valueOf(this.lighter_item_index));
        toStringHelper.b("darker_item_index", Integer.valueOf(this.darker_item_index));
        toStringHelper.b("warmer_item_index", Integer.valueOf(this.warmer_item_index));
        toStringHelper.b("cooler_item_index", Integer.valueOf(this.cooler_item_index));
        toStringHelper.b("lighter_item_delta_e", Float.valueOf(this.lighter_item_delta_e));
        toStringHelper.b("darker_item_delta_e", Float.valueOf(this.darker_item_delta_e));
        toStringHelper.b("warmer_item_delta_e", Float.valueOf(this.warmer_item_delta_e));
        toStringHelper.b("cooler_item_delta_e", Float.valueOf(this.cooler_item_delta_e));
        return toStringHelper.toString();
    }
}
