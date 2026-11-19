package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt$asDrawTransform$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/vector/GroupComponent;", "Landroidx/compose/ui/graphics/vector/VNode;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GroupComponent extends VNode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float[] f9063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f9064c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f9065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f9066f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AndroidPath f9067h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Function1 f9068i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Function1 f9069j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f9070k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public boolean s;

    public GroupComponent() {
        super(null);
        this.f9064c = new ArrayList();
        this.d = true;
        Color.f8866b.getClass();
        this.f9065e = Color.f8871i;
        this.f9066f = VectorKt.f9173a;
        this.g = true;
        this.f9069j = new Function1<VNode, Unit>() { // from class: androidx.compose.ui.graphics.vector.GroupComponent$wrappedListener$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                VNode vNode = (VNode) obj;
                GroupComponent groupComponent = this.f9071c;
                groupComponent.g(vNode);
                Function1 function1 = groupComponent.f9068i;
                if (function1 != null) {
                    function1.invoke(vNode);
                }
                return Unit.f71739a;
            }
        };
        this.f9070k = "";
        this.o = 1.0f;
        this.p = 1.0f;
        this.s = true;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void a(DrawScope drawScope) {
        if (this.s) {
            float[] fArrA = this.f9063b;
            if (fArrA == null) {
                fArrA = Matrix.a();
                this.f9063b = fArrA;
            } else {
                Matrix.d(fArrA);
            }
            Matrix.f(this.q + this.m, this.r + this.n, fArrA);
            float f2 = this.l;
            if (fArrA.length >= 16) {
                double d = ((double) f2) * 0.017453292519943295d;
                float fSin = (float) Math.sin(d);
                float fCos = (float) Math.cos(d);
                float f3 = fArrA[0];
                float f4 = fArrA[4];
                float f5 = (fSin * f4) + (fCos * f3);
                float f6 = -fSin;
                float f7 = (f4 * fCos) + (f3 * f6);
                float f8 = fArrA[1];
                float f9 = fArrA[5];
                float f10 = (fSin * f9) + (fCos * f8);
                float f11 = (f9 * fCos) + (f8 * f6);
                float f12 = fArrA[2];
                float f13 = fArrA[6];
                float f14 = (fSin * f13) + (fCos * f12);
                float f15 = (f13 * fCos) + (f12 * f6);
                float f16 = fArrA[3];
                float f17 = fArrA[7];
                float f18 = (fSin * f17) + (fCos * f16);
                fArrA[0] = f5;
                fArrA[1] = f10;
                fArrA[2] = f14;
                fArrA[3] = f18;
                fArrA[4] = f7;
                fArrA[5] = f11;
                fArrA[6] = f15;
                fArrA[7] = (fCos * f17) + (f6 * f16);
            }
            float f19 = this.o;
            float f20 = this.p;
            if (fArrA.length >= 16) {
                fArrA[0] = fArrA[0] * f19;
                fArrA[1] = fArrA[1] * f19;
                fArrA[2] = fArrA[2] * f19;
                fArrA[3] = fArrA[3] * f19;
                fArrA[4] = fArrA[4] * f20;
                fArrA[5] = fArrA[5] * f20;
                fArrA[6] = fArrA[6] * f20;
                fArrA[7] = fArrA[7] * f20;
                fArrA[8] = fArrA[8] * 1.0f;
                fArrA[9] = fArrA[9] * 1.0f;
                fArrA[10] = fArrA[10] * 1.0f;
                fArrA[11] = fArrA[11] * 1.0f;
            }
            Matrix.f(-this.m, -this.n, fArrA);
            this.s = false;
        }
        if (this.g) {
            if (!this.f9066f.isEmpty()) {
                AndroidPath androidPathA = this.f9067h;
                if (androidPathA == null) {
                    androidPathA = AndroidPath_androidKt.a();
                    this.f9067h = androidPathA;
                }
                PathParserKt.b(this.f9066f, androidPathA);
            }
            this.g = false;
        }
        CanvasDrawScope$drawContext$1 f8996c = drawScope.getF8996c();
        long jD = f8996c.d();
        f8996c.a().p();
        try {
            CanvasDrawScopeKt$asDrawTransform$1 canvasDrawScopeKt$asDrawTransform$1 = f8996c.f9001a;
            float[] fArr = this.f9063b;
            if (fArr != null) {
                canvasDrawScopeKt$asDrawTransform$1.f9004a.a().r(fArr);
            }
            AndroidPath androidPath = this.f9067h;
            if (!this.f9066f.isEmpty() && androidPath != null) {
                ClipOp.f8864a.getClass();
                canvasDrawScopeKt$asDrawTransform$1.c(androidPath, ClipOp.f8865b);
            }
            ArrayList arrayList = this.f9064c;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((VNode) arrayList.get(i2)).a(drawScope);
            }
        } finally {
            pq0.y(f8996c, jD);
        }
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Function1 getF9068i() {
        return this.f9068i;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void d(Function1 function1) {
        this.f9068i = function1;
    }

    public final void e(int i2, VNode vNode) {
        ArrayList arrayList = this.f9064c;
        if (i2 < arrayList.size()) {
            arrayList.set(i2, vNode);
        } else {
            arrayList.add(vNode);
        }
        g(vNode);
        vNode.d(this.f9069j);
        c();
    }

    public final void f(long j2) {
        if (this.d && j2 != 16) {
            long j3 = this.f9065e;
            if (j3 == 16) {
                this.f9065e = j2;
                return;
            }
            EmptyList emptyList = VectorKt.f9173a;
            if (Color.h(j3) == Color.h(j2) && Color.g(j3) == Color.g(j2) && Color.e(j3) == Color.e(j2)) {
                return;
            }
            this.d = false;
            Color.f8866b.getClass();
            this.f9065e = Color.f8871i;
        }
    }

    public final void g(VNode vNode) {
        if (!(vNode instanceof PathComponent)) {
            if (vNode instanceof GroupComponent) {
                GroupComponent groupComponent = (GroupComponent) vNode;
                if (groupComponent.d && this.d) {
                    f(groupComponent.f9065e);
                    return;
                }
                this.d = false;
                Color.f8866b.getClass();
                this.f9065e = Color.f8871i;
                return;
            }
            return;
        }
        PathComponent pathComponent = (PathComponent) vNode;
        Brush brush = pathComponent.f9099b;
        if (this.d && brush != null) {
            if (brush instanceof SolidColor) {
                f(((SolidColor) brush).f8931b);
            } else {
                this.d = false;
                Color.f8866b.getClass();
                this.f9065e = Color.f8871i;
            }
        }
        Brush brush2 = pathComponent.g;
        if (this.d && brush2 != null) {
            if (brush2 instanceof SolidColor) {
                f(((SolidColor) brush2).f8931b);
                return;
            }
            this.d = false;
            Color.f8866b.getClass();
            this.f9065e = Color.f8871i;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VGroup: ");
        sb.append(this.f9070k);
        ArrayList arrayList = this.f9064c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            VNode vNode = (VNode) arrayList.get(i2);
            sb.append("\t");
            sb.append(vNode.toString());
            sb.append("\n");
        }
        return sb.toString();
    }
}
