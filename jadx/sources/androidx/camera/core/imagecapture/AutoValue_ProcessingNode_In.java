package androidx.camera.core.imagecapture;

import androidx.camera.core.processing.Edge;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_ProcessingNode_In extends ProcessingNode.In {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Edge f2059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Edge f2060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2061c;
    public final List d;

    public AutoValue_ProcessingNode_In(Edge edge, Edge edge2, int i2, List list) {
        this.f2059a = edge;
        this.f2060b = edge2;
        this.f2061c = i2;
        if (list != null) {
            this.d = list;
        } else {
            r81.d("Null outputFormats");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProcessingNode.In)) {
            return false;
        }
        AutoValue_ProcessingNode_In autoValue_ProcessingNode_In = (AutoValue_ProcessingNode_In) ((ProcessingNode.In) obj);
        return this.f2059a.equals(autoValue_ProcessingNode_In.f2059a) && this.f2060b.equals(autoValue_ProcessingNode_In.f2060b) && this.f2061c == autoValue_ProcessingNode_In.f2061c && this.d.equals(autoValue_ProcessingNode_In.d);
    }

    public final int hashCode() {
        return this.d.hashCode() ^ ((((((this.f2059a.hashCode() ^ 1000003) * 1000003) ^ this.f2060b.hashCode()) * 1000003) ^ this.f2061c) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("In{edge=");
        sb.append(this.f2059a);
        sb.append(", postviewEdge=");
        sb.append(this.f2060b);
        sb.append(", inputFormat=");
        sb.append(this.f2061c);
        sb.append(", outputFormats=");
        return defpackage.a.o(sb, this.d, "}");
    }
}
