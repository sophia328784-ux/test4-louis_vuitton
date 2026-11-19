package androidx.compose.ui.node;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/AlignmentLines;", "", "Landroidx/compose/ui/node/LayoutNodeAlignmentLines;", "Landroidx/compose/ui/node/LookaheadAlignmentLines;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AlignmentLines {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AlignmentLinesOwner f9622a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9624c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9626f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AlignmentLinesOwner f9627h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f9623b = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap f9628i = new HashMap();

    public AlignmentLines(AlignmentLinesOwner alignmentLinesOwner, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9622a = alignmentLinesOwner;
    }

    public static final void a(AlignmentLines alignmentLines, AlignmentLine alignmentLine, int i2, NodeCoordinator nodeCoordinator) {
        HashMap map = alignmentLines.f9628i;
        float f2 = i2;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        while (true) {
            jFloatToRawIntBits = alignmentLines.b(nodeCoordinator, jFloatToRawIntBits);
            nodeCoordinator = nodeCoordinator.u;
            nodeCoordinator.getClass();
            if (nodeCoordinator.equals(alignmentLines.f9622a.J())) {
                break;
            } else if (alignmentLines.c(nodeCoordinator).containsKey(alignmentLine)) {
                float fD = alignmentLines.d(nodeCoordinator, alignmentLine);
                jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fD)) << 32) | (((long) Float.floatToRawIntBits(fD)) & BodyPartID.bodyIdMax);
            }
        }
        int iRound = Math.round(alignmentLine instanceof HorizontalAlignmentLine ? Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax)) : Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)));
        if (map.containsKey(alignmentLine)) {
            int iIntValue = ((Number) MapsKt.d(map, alignmentLine)).intValue();
            HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.f9416a;
            iRound = ((Number) alignmentLine.f9415a.invoke(Integer.valueOf(iIntValue), Integer.valueOf(iRound))).intValue();
        }
        map.put(alignmentLine, Integer.valueOf(iRound));
    }

    public abstract long b(NodeCoordinator nodeCoordinator, long j2);

    public abstract Map c(NodeCoordinator nodeCoordinator);

    public abstract int d(NodeCoordinator nodeCoordinator, AlignmentLine alignmentLine);

    public final boolean e() {
        return this.f9624c || this.f9625e || this.f9626f || this.g;
    }

    public final boolean f() {
        i();
        return this.f9627h != null;
    }

    public final void g() {
        this.f9623b = true;
        AlignmentLinesOwner alignmentLinesOwner = this.f9622a;
        AlignmentLinesOwner alignmentLinesOwnerZ = alignmentLinesOwner.z();
        if (alignmentLinesOwnerZ == null) {
            return;
        }
        if (this.f9624c) {
            alignmentLinesOwnerZ.i0();
        } else if (this.f9625e || this.d) {
            alignmentLinesOwnerZ.requestLayout();
        }
        if (this.f9626f) {
            alignmentLinesOwner.i0();
        }
        if (this.g) {
            alignmentLinesOwner.requestLayout();
        }
        alignmentLinesOwnerZ.j().g();
    }

    public final void h() {
        HashMap map = this.f9628i;
        map.clear();
        Function1<AlignmentLinesOwner, Unit> function1 = new Function1<AlignmentLinesOwner, Unit>() { // from class: androidx.compose.ui.node.AlignmentLines$recalculate$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AlignmentLines alignmentLines;
                AlignmentLinesOwner alignmentLinesOwner = (AlignmentLinesOwner) obj;
                if (alignmentLinesOwner.getF9757j() != Integer.MAX_VALUE) {
                    if (alignmentLinesOwner.j().f9623b) {
                        alignmentLinesOwner.F();
                    }
                    Iterator it = alignmentLinesOwner.j().f9628i.entrySet().iterator();
                    while (true) {
                        boolean zHasNext = it.hasNext();
                        alignmentLines = this.f9629c;
                        if (!zHasNext) {
                            break;
                        }
                        Map.Entry entry = (Map.Entry) it.next();
                        AlignmentLines.a(alignmentLines, (AlignmentLine) entry.getKey(), ((Number) entry.getValue()).intValue(), alignmentLinesOwner.J());
                    }
                    NodeCoordinator nodeCoordinator = alignmentLinesOwner.J().u;
                    nodeCoordinator.getClass();
                    while (!nodeCoordinator.equals(alignmentLines.f9622a.J())) {
                        for (AlignmentLine alignmentLine : alignmentLines.c(nodeCoordinator).keySet()) {
                            AlignmentLines.a(alignmentLines, alignmentLine, alignmentLines.d(nodeCoordinator, alignmentLine), nodeCoordinator);
                        }
                        nodeCoordinator = nodeCoordinator.u;
                        nodeCoordinator.getClass();
                    }
                }
                return Unit.f71739a;
            }
        };
        AlignmentLinesOwner alignmentLinesOwner = this.f9622a;
        alignmentLinesOwner.e0(function1);
        map.putAll(c(alignmentLinesOwner.J()));
        this.f9623b = false;
    }

    public final void i() {
        AlignmentLines alignmentLinesJ;
        AlignmentLines alignmentLinesJ2;
        boolean zE = e();
        AlignmentLinesOwner alignmentLinesOwner = this.f9622a;
        if (!zE) {
            AlignmentLinesOwner alignmentLinesOwnerZ = alignmentLinesOwner.z();
            if (alignmentLinesOwnerZ == null) {
                return;
            }
            alignmentLinesOwner = alignmentLinesOwnerZ.j().f9627h;
            if (alignmentLinesOwner == null || !alignmentLinesOwner.j().e()) {
                AlignmentLinesOwner alignmentLinesOwner2 = this.f9627h;
                if (alignmentLinesOwner2 == null || alignmentLinesOwner2.j().e()) {
                    return;
                }
                AlignmentLinesOwner alignmentLinesOwnerZ2 = alignmentLinesOwner2.z();
                if (alignmentLinesOwnerZ2 != null && (alignmentLinesJ2 = alignmentLinesOwnerZ2.j()) != null) {
                    alignmentLinesJ2.i();
                }
                AlignmentLinesOwner alignmentLinesOwnerZ3 = alignmentLinesOwner2.z();
                alignmentLinesOwner = (alignmentLinesOwnerZ3 == null || (alignmentLinesJ = alignmentLinesOwnerZ3.j()) == null) ? null : alignmentLinesJ.f9627h;
            }
        }
        this.f9627h = alignmentLinesOwner;
    }
}
