package com.sightcall.advancedannotations.domain.settings;

import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001:\u0001(B?\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001d\u001a\u00020\tHÆ\u0003J\t\u0010\u001e\u001a\u00020\tHÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u0018JR\u0010 \u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010!J\u0014\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010%\u001a\u00020\tHÖ\u0081\u0004J\n\u0010&\u001a\u00020'HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018¨\u0006)"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/Setting;", "", "svgs", "", "Lcom/sightcall/advancedannotations/domain/settings/Setting$SVG;", "hotPointX", "", "hotPointY", "width", "", "height", "period", "", "<init>", "(Ljava/util/List;FFIILjava/lang/Long;)V", "getSvgs", "()Ljava/util/List;", "getHotPointX", "()F", "getHotPointY", "getWidth", "()I", "getHeight", "getPeriod", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/util/List;FFIILjava/lang/Long;)Lcom/sightcall/advancedannotations/domain/settings/Setting;", "equals", "", "other", "hashCode", "toString", "", "SVG", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Setting {
    private final int height;
    private final float hotPointX;
    private final float hotPointY;
    private final Long period;
    private final List<SVG> svgs;
    private final int width;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/Setting$SVG;", "", "content", "", "<init>", "(Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SVG {
        private final String content;

        public SVG(String str) {
            str.getClass();
            this.content = str;
        }

        public static /* synthetic */ SVG copy$default(SVG svg, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = svg.content;
            }
            return svg.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getContent() {
            return this.content;
        }

        public final SVG copy(String content) {
            content.getClass();
            return new SVG(content);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SVG) && Intrinsics.c(this.content, ((SVG) other).content);
        }

        public final String getContent() {
            return this.content;
        }

        public int hashCode() {
            return this.content.hashCode();
        }

        public String toString() {
            return fc.h("SVG(content=", this.content, ")");
        }
    }

    public Setting(List<SVG> list, float f2, float f3, int i2, int i3, Long l) {
        list.getClass();
        this.svgs = list;
        this.hotPointX = f2;
        this.hotPointY = f3;
        this.width = i2;
        this.height = i3;
        this.period = l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Setting copy$default(Setting setting, List list, float f2, float f3, int i2, int i3, Long l, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            list = setting.svgs;
        }
        if ((i4 & 2) != 0) {
            f2 = setting.hotPointX;
        }
        if ((i4 & 4) != 0) {
            f3 = setting.hotPointY;
        }
        if ((i4 & 8) != 0) {
            i2 = setting.width;
        }
        if ((i4 & 16) != 0) {
            i3 = setting.height;
        }
        if ((i4 & 32) != 0) {
            l = setting.period;
        }
        int i5 = i3;
        Long l2 = l;
        return setting.copy(list, f2, f3, i2, i5, l2);
    }

    public final List<SVG> component1() {
        return this.svgs;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getHotPointX() {
        return this.hotPointX;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getHotPointY() {
        return this.hotPointY;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getHeight() {
        return this.height;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getPeriod() {
        return this.period;
    }

    public final Setting copy(List<SVG> svgs, float hotPointX, float hotPointY, int width, int height, Long period) {
        svgs.getClass();
        return new Setting(svgs, hotPointX, hotPointY, width, height, period);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Setting)) {
            return false;
        }
        Setting setting = (Setting) other;
        return Intrinsics.c(this.svgs, setting.svgs) && Float.compare(this.hotPointX, setting.hotPointX) == 0 && Float.compare(this.hotPointY, setting.hotPointY) == 0 && this.width == setting.width && this.height == setting.height && Intrinsics.c(this.period, setting.period);
    }

    public final int getHeight() {
        return this.height;
    }

    public final float getHotPointX() {
        return this.hotPointX;
    }

    public final float getHotPointY() {
        return this.hotPointY;
    }

    public final Long getPeriod() {
        return this.period;
    }

    public final List<SVG> getSvgs() {
        return this.svgs;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int iB = tr.b(this.height, tr.b(this.width, pq0.b(pq0.b(this.svgs.hashCode() * 31, 31, this.hotPointX), 31, this.hotPointY), 31), 31);
        Long l = this.period;
        return iB + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "Setting(svgs=" + this.svgs + ", hotPointX=" + this.hotPointX + ", hotPointY=" + this.hotPointY + ", width=" + this.width + ", height=" + this.height + ", period=" + this.period + ")";
    }
}
