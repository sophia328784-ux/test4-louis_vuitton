package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B[\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/graphics/vector/ImageVector;", "", "", "name", "Landroidx/compose/ui/unit/Dp;", "defaultWidth", "defaultHeight", "", "viewportWidth", "viewportHeight", "Landroidx/compose/ui/graphics/vector/VectorGroup;", "root", "Landroidx/compose/ui/graphics/Color;", "tintColor", "Landroidx/compose/ui/graphics/BlendMode;", "tintBlendMode", "", "autoMirror", "", "genId", "<init>", "(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V", "Builder", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageVector {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Companion f9072k;
    public static int l;
    public static final Companion m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f9074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f9075c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f9076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final VectorGroup f9077f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f9078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f9079i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9080j;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u00060\u0001j\u0002`\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/graphics/vector/ImageVector$Companion;", "", "", "imageVectorCount", "I", "Landroidx/compose/ui/platform/SynchronizedObject;", "lock", "Ljava/lang/Object;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        Companion companion = new Companion(null);
        f9072k = companion;
        m = companion;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ImageVector(String str, float f2, float f3, float f4, float f5, VectorGroup vectorGroup, long j2, int i2, boolean z, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        int i5;
        int i6;
        if ((i4 & 512) != 0) {
            f9072k.getClass();
            synchronized (m) {
                i6 = l;
                l = i6 + 1;
            }
            i5 = i6;
        } else {
            i5 = i3;
        }
        this(str, f2, f3, f4, f5, vectorGroup, j2, i2, z, i5, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageVector)) {
            return false;
        }
        ImageVector imageVector = (ImageVector) obj;
        if (!Intrinsics.c(this.f9073a, imageVector.f9073a) || !Dp.b(this.f9074b, imageVector.f9074b) || !Dp.b(this.f9075c, imageVector.f9075c) || this.d != imageVector.d || this.f9076e != imageVector.f9076e || !Intrinsics.c(this.f9077f, imageVector.f9077f) || !Color.c(this.g, imageVector.g)) {
            return false;
        }
        int i2 = imageVector.f9078h;
        BlendMode.Companion companion = BlendMode.f8847a;
        return this.f9078h == i2 && this.f9079i == imageVector.f9079i;
    }

    public final int hashCode() {
        int iHashCode = this.f9073a.hashCode() * 31;
        Dp.Companion companion = Dp.f11004c;
        int iHashCode2 = (this.f9077f.hashCode() + pq0.b(pq0.b(pq0.b(pq0.b(iHashCode, 31, this.f9074b), 31, this.f9075c), 31, this.d), 31, this.f9076e)) * 31;
        Color.Companion companion2 = Color.f8866b;
        ULong.Companion companion3 = ULong.INSTANCE;
        int iA = fc.a(iHashCode2, 31, this.g);
        BlendMode.Companion companion4 = BlendMode.f8847a;
        return Boolean.hashCode(this.f9079i) + tr.b(this.f9078h, iA, 31);
    }

    public ImageVector(String str, float f2, float f3, float f4, float f5, VectorGroup vectorGroup, long j2, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9073a = str;
        this.f9074b = f2;
        this.f9075c = f3;
        this.d = f4;
        this.f9076e = f5;
        this.f9077f = vectorGroup;
        this.g = j2;
        this.f9078h = i2;
        this.f9079i = z;
        this.f9080j = i3;
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0013BO\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011BG\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0012¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/vector/ImageVector$Builder;", "", "", "name", "Landroidx/compose/ui/unit/Dp;", "defaultWidth", "defaultHeight", "", "viewportWidth", "viewportHeight", "Landroidx/compose/ui/graphics/Color;", "tintColor", "Landroidx/compose/ui/graphics/BlendMode;", "tintBlendMode", "", "autoMirror", "<init>", "(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Ljava/lang/String;FFFFJILkotlin/jvm/internal/DefaultConstructorMarker;)V", "GroupParams", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f9081a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f9082b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f9083c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f9084e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f9085f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f9086h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ArrayList f9087i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final GroupParams f9088j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f9089k;

        public Builder(String str, float f2, float f3, float f4, float f5, long j2, int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this.f9081a = str;
            this.f9082b = f2;
            this.f9083c = f3;
            this.d = f4;
            this.f9084e = f5;
            this.f9085f = j2;
            this.g = i2;
            this.f9086h = z;
            ArrayList arrayList = new ArrayList();
            this.f9087i = arrayList;
            GroupParams groupParams = new GroupParams(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 1023, null);
            this.f9088j = groupParams;
            arrayList.add(groupParams);
        }

        public final void a(String str, float f2, float f3, float f4, float f5, float f6, float f7, float f8, List list) {
            if (this.f9089k) {
                InlineClassHelperKt.c("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            this.f9087i.add(new GroupParams(str, f2, f3, f4, f5, f6, f7, f8, list, null, 512, null));
        }

        public final void b(List list, int i2, String str, Brush brush, float f2, Brush brush2, float f3, float f4, int i3, int i4, float f5, float f6, float f7, float f8) {
            if (this.f9089k) {
                InlineClassHelperKt.c("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            ((GroupParams) cj.c(1, this.f9087i)).f9097j.add(new VectorPath(str, list, i2, brush, f2, brush2, f3, f4, i3, i4, f5, f6, f7, f8, null));
        }

        public final ImageVector d() {
            if (this.f9089k) {
                InlineClassHelperKt.c("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            while (this.f9087i.size() > 1) {
                e();
            }
            GroupParams groupParams = this.f9088j;
            ImageVector imageVector = new ImageVector(this.f9081a, this.f9082b, this.f9083c, this.d, this.f9084e, new VectorGroup(groupParams.f9090a, groupParams.f9091b, groupParams.f9092c, groupParams.d, groupParams.f9093e, groupParams.f9094f, groupParams.g, groupParams.f9095h, groupParams.f9096i, groupParams.f9097j), this.f9085f, this.g, this.f9086h, 0, 512, null);
            this.f9089k = true;
            return imageVector;
        }

        public final void e() {
            if (this.f9089k) {
                InlineClassHelperKt.c("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            ArrayList arrayList = this.f9087i;
            GroupParams groupParams = (GroupParams) arrayList.remove(arrayList.size() - 1);
            ((GroupParams) cj.c(1, arrayList)).f9097j.add(new VectorGroup(groupParams.f9090a, groupParams.f9091b, groupParams.f9092c, groupParams.d, groupParams.f9093e, groupParams.f9094f, groupParams.g, groupParams.f9095h, groupParams.f9096i, groupParams.f9097j));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Builder(String str, float f2, float f3, float f4, float f5, long j2, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            long j3;
            int i4;
            String str2 = (i3 & 1) != 0 ? "" : str;
            if ((i3 & 32) != 0) {
                Color.f8866b.getClass();
                j3 = Color.f8871i;
            } else {
                j3 = j2;
            }
            if ((i3 & 64) != 0) {
                BlendMode.f8847a.getClass();
                i4 = BlendMode.f8851f;
            } else {
                i4 = i2;
            }
            this(str2, f2, f3, f4, f5, j3, i4, (i3 & 128) != 0 ? false : z, (DefaultConstructorMarker) null);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Builder(String str, float f2, float f3, float f4, float f5, long j2, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            long j3;
            int i4;
            String str2 = (i3 & 1) != 0 ? "" : str;
            if ((i3 & 32) != 0) {
                Color.f8866b.getClass();
                j3 = Color.f8871i;
            } else {
                j3 = j2;
            }
            if ((i3 & 64) != 0) {
                BlendMode.f8847a.getClass();
                i4 = BlendMode.f8851f;
            } else {
                i4 = i2;
            }
            this(str2, f2, f3, f4, f5, j3, i4, null);
        }

        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001Bw\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;", "", "", "name", "", "rotate", "pivotX", "pivotY", "scaleX", "scaleY", "translationX", "translationY", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "clipPathData", "", "Landroidx/compose/ui/graphics/vector/VectorNode;", "children", "<init>", "(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class GroupParams {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f9090a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final float f9091b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final float f9092c;
            public final float d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final float f9093e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final float f9094f;
            public final float g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final float f9095h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final List f9096i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final List f9097j;

            public /* synthetic */ GroupParams(String str, float f2, float f3, float f4, float f5, float f6, float f7, float f8, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0.0f : f2, (i2 & 4) != 0 ? 0.0f : f3, (i2 & 8) != 0 ? 0.0f : f4, (i2 & 16) != 0 ? 1.0f : f5, (i2 & 32) != 0 ? 1.0f : f6, (i2 & 64) != 0 ? 0.0f : f7, (i2 & 128) != 0 ? 0.0f : f8, (i2 & 256) != 0 ? VectorKt.f9173a : list, (i2 & 512) != 0 ? new ArrayList() : list2);
            }

            public GroupParams(String str, float f2, float f3, float f4, float f5, float f6, float f7, float f8, List<? extends PathNode> list, List<VectorNode> list2) {
                this.f9090a = str;
                this.f9091b = f2;
                this.f9092c = f3;
                this.d = f4;
                this.f9093e = f5;
                this.f9094f = f6;
                this.g = f7;
                this.f9095h = f8;
                this.f9096i = list;
                this.f9097j = list2;
            }

            public GroupParams() {
                this(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 1023, null);
            }
        }

        @Deprecated
        public Builder(String str, float f2, float f3, float f4, float f5, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, f2, f3, f4, f5, j2, i2, false, (DefaultConstructorMarker) null);
        }
    }
}
