package androidx.navigationevent;

import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\f\rB;\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroidx/navigationevent/NavigationEvent;", "", "", "swipeEdge", "", "progress", "touchX", "touchY", "", "frameTimeMillis", "<init>", "(IFFFJ)V", "SwipeEdge", "Companion", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavigationEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f18456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f18457c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f18458e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/navigationevent/NavigationEvent$Companion;", "", "", "EDGE_LEFT", "I", "EDGE_RIGHT", "EDGE_NONE", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/navigationevent/NavigationEvent$SwipeEdge;", "", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @kotlin.annotation.Target
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention
    public @interface SwipeEdge {
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ NavigationEvent(int i2, float f2, float f3, float f4, long j2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 2 : i2, (i3 & 2) != 0 ? 0.0f : f2, (i3 & 4) != 0 ? 0.0f : f3, (i3 & 8) != 0 ? 0.0f : f4, (i3 & 16) != 0 ? 0L : j2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && NavigationEvent.class == obj.getClass()) {
            NavigationEvent navigationEvent = (NavigationEvent) obj;
            return this.f18457c == navigationEvent.f18457c && this.d == navigationEvent.d && this.f18456b == navigationEvent.f18456b && this.f18455a == navigationEvent.f18455a && this.f18458e == navigationEvent.f18458e;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f18458e) + tr.b(this.f18455a, pq0.b(pq0.b(Float.hashCode(this.f18457c) * 31, 31, this.d), 31, this.f18456b), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NavigationEvent(touchX=");
        sb.append(this.f18457c);
        sb.append(", touchY=");
        sb.append(this.d);
        sb.append(", progress=");
        sb.append(this.f18456b);
        sb.append(", swipeEdge=");
        sb.append(this.f18455a);
        sb.append(", frameTimeMillis=");
        return fc.k(sb, this.f18458e, ')');
    }

    public NavigationEvent(int i2) {
        this(i2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 30, null);
    }

    public NavigationEvent(int i2, float f2) {
        this(i2, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 28, null);
    }

    public NavigationEvent(int i2, float f2, float f3) {
        this(i2, f2, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 24, null);
    }

    public NavigationEvent(int i2, float f2, float f3, float f4) {
        this(i2, f2, f3, f4, 0L, 16, null);
    }

    public NavigationEvent(int i2, float f2, float f3, float f4, long j2) {
        this.f18455a = i2;
        this.f18456b = f2;
        this.f18457c = f3;
        this.d = f4;
        this.f18458e = j2;
    }

    public NavigationEvent() {
        this(0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 31, null);
    }
}
