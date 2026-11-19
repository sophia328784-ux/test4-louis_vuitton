package org.teleal.cling.support.model;

import java.util.Map;
import org.teleal.cling.model.ModelUtil;
import org.teleal.cling.model.action.ActionArgumentValue;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class PositionInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UnsignedIntegerFourBytes f78591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78593c;

    public PositionInfo(Map<String, ActionArgumentValue> map) {
        this(((UnsignedIntegerFourBytes) map.get("Track").f78394b).f78534a, (String) map.get("TrackDuration").f78394b, (String) map.get("TrackMetaData").f78394b, (String) map.get("TrackURI").f78394b, (String) map.get("RelTime").f78394b, (String) map.get("AbsTime").f78394b, ((Integer) map.get("RelCount").f78394b).intValue(), ((Integer) map.get("AbsCount").f78394b).intValue());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(PositionInfo) Track: ");
        sb.append(this.f78591a);
        sb.append(" RelTime: ");
        String str = this.f78593c;
        sb.append(str);
        sb.append(" Duration: ");
        String str2 = this.f78592b;
        sb.append(str2);
        sb.append(" Percent: ");
        long jA = (str == null || str.equals("NOT_IMPLEMENTED")) ? 0L : ModelUtil.a(str);
        long jA2 = str2 == null ? 0L : ModelUtil.a(str2);
        sb.append((jA == 0 || jA2 == 0) ? 0 : new Double(jA / (jA2 / 100.0d)).intValue());
        return sb.toString();
    }

    public PositionInfo() {
        this.f78591a = new UnsignedIntegerFourBytes(0L);
        this.f78592b = "00:00:00";
        this.f78593c = "00:00:00";
    }

    public PositionInfo(PositionInfo positionInfo, String str, String str2) {
        this.f78591a = new UnsignedIntegerFourBytes(0L);
        this.f78592b = "00:00:00";
        this.f78593c = "00:00:00";
        this.f78591a = positionInfo.f78591a;
        this.f78592b = positionInfo.f78592b;
        this.f78593c = str;
    }

    public PositionInfo(PositionInfo positionInfo, long j2, long j3) {
        this.f78591a = new UnsignedIntegerFourBytes(0L);
        this.f78592b = "00:00:00";
        this.f78593c = "00:00:00";
        this.f78591a = positionInfo.f78591a;
        this.f78592b = positionInfo.f78592b;
        this.f78593c = ModelUtil.b(j2);
        ModelUtil.b(j3);
    }

    public PositionInfo(long j2, String str, String str2, String str3, String str4) {
        this.f78591a = new UnsignedIntegerFourBytes(0L);
        this.f78592b = "00:00:00";
        this.f78593c = "00:00:00";
        this.f78591a = new UnsignedIntegerFourBytes(j2);
        this.f78592b = str;
        this.f78593c = str3;
    }

    public PositionInfo(long j2, String str, String str2, String str3, String str4, String str5, int i2, int i3) {
        this.f78591a = new UnsignedIntegerFourBytes(0L);
        this.f78592b = "00:00:00";
        this.f78593c = "00:00:00";
        this.f78591a = new UnsignedIntegerFourBytes(j2);
        this.f78592b = str;
        this.f78593c = str4;
    }

    public PositionInfo(long j2, String str, String str2) {
        this.f78591a = new UnsignedIntegerFourBytes(0L);
        this.f78592b = "00:00:00";
        this.f78593c = "00:00:00";
        this.f78591a = new UnsignedIntegerFourBytes(j2);
    }
}
