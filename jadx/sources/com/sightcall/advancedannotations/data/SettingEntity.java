package com.sightcall.advancedannotations.data;

import com.google.gson.annotations.SerializedName;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001BI\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010!\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001aJ\\\u0010\"\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010#J\u0014\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010'\u001a\u00020\tHÖ\u0081\u0004J\n\u0010(\u001a\u00020\u0004HÖ\u0081\u0004R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0012R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0018\u0010\u0016R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001a¨\u0006)"}, d2 = {"Lcom/sightcall/advancedannotations/data/SettingEntity;", "", "svgs", "", "", "pcx", "", "pcy", "width", "", "height", "period", "", "<init>", "(Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V", "getSvgs", "()Ljava/util/List;", "getPcx", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getPcy", "getWidth", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getHeight", "getPeriod", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)Lcom/sightcall/advancedannotations/data/SettingEntity;", "equals", "", "other", "hashCode", "toString", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SettingEntity {

    @SerializedName(NBSSpanMetricUnit.Hour)
    private final Integer height;

    @SerializedName("pcx")
    private final Float pcx;

    @SerializedName("pcy")
    private final Float pcy;

    @SerializedName("period")
    private final Long period;

    @SerializedName("svg")
    private final List<String> svgs;

    @SerializedName("w")
    private final Integer width;

    public SettingEntity(List<String> list, Float f2, Float f3, Integer num, Integer num2, Long l) {
        this.svgs = list;
        this.pcx = f2;
        this.pcy = f3;
        this.width = num;
        this.height = num2;
        this.period = l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SettingEntity copy$default(SettingEntity settingEntity, List list, Float f2, Float f3, Integer num, Integer num2, Long l, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = settingEntity.svgs;
        }
        if ((i2 & 2) != 0) {
            f2 = settingEntity.pcx;
        }
        if ((i2 & 4) != 0) {
            f3 = settingEntity.pcy;
        }
        if ((i2 & 8) != 0) {
            num = settingEntity.width;
        }
        if ((i2 & 16) != 0) {
            num2 = settingEntity.height;
        }
        if ((i2 & 32) != 0) {
            l = settingEntity.period;
        }
        Integer num3 = num2;
        Long l2 = l;
        return settingEntity.copy(list, f2, f3, num, num3, l2);
    }

    public final List<String> component1() {
        return this.svgs;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getPcx() {
        return this.pcx;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getPcy() {
        return this.pcy;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getHeight() {
        return this.height;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getPeriod() {
        return this.period;
    }

    public final SettingEntity copy(List<String> svgs, Float pcx, Float pcy, Integer width, Integer height, Long period) {
        return new SettingEntity(svgs, pcx, pcy, width, height, period);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SettingEntity)) {
            return false;
        }
        SettingEntity settingEntity = (SettingEntity) other;
        return Intrinsics.c(this.svgs, settingEntity.svgs) && Intrinsics.c(this.pcx, settingEntity.pcx) && Intrinsics.c(this.pcy, settingEntity.pcy) && Intrinsics.c(this.width, settingEntity.width) && Intrinsics.c(this.height, settingEntity.height) && Intrinsics.c(this.period, settingEntity.period);
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final Float getPcx() {
        return this.pcx;
    }

    public final Float getPcy() {
        return this.pcy;
    }

    public final Long getPeriod() {
        return this.period;
    }

    public final List<String> getSvgs() {
        return this.svgs;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        List<String> list = this.svgs;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Float f2 = this.pcx;
        int iHashCode2 = (iHashCode + (f2 == null ? 0 : f2.hashCode())) * 31;
        Float f3 = this.pcy;
        int iHashCode3 = (iHashCode2 + (f3 == null ? 0 : f3.hashCode())) * 31;
        Integer num = this.width;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int iHashCode5 = (iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l = this.period;
        return iHashCode5 + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "SettingEntity(svgs=" + this.svgs + ", pcx=" + this.pcx + ", pcy=" + this.pcy + ", width=" + this.width + ", height=" + this.height + ", period=" + this.period + ")";
    }
}
