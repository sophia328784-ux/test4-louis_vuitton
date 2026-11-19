package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class VectorPainterKt {
    public static final void a(GroupComponent groupComponent, VectorGroup vectorGroup) {
        int size = vectorGroup.f9171k.size();
        for (int i2 = 0; i2 < size; i2++) {
            VectorNode vectorNode = (VectorNode) vectorGroup.f9171k.get(i2);
            if (vectorNode instanceof VectorPath) {
                PathComponent pathComponent = new PathComponent();
                VectorPath vectorPath = (VectorPath) vectorNode;
                pathComponent.d = vectorPath.f9180c;
                pathComponent.n = true;
                pathComponent.c();
                pathComponent.s.h(vectorPath.d);
                pathComponent.c();
                pathComponent.c();
                pathComponent.f9099b = vectorPath.f9181e;
                pathComponent.c();
                pathComponent.f9100c = vectorPath.f9182f;
                pathComponent.c();
                pathComponent.g = vectorPath.g;
                pathComponent.c();
                pathComponent.f9101e = vectorPath.f9183h;
                pathComponent.c();
                pathComponent.f9102f = vectorPath.f9184i;
                pathComponent.o = true;
                pathComponent.c();
                pathComponent.f9103h = vectorPath.f9185j;
                pathComponent.o = true;
                pathComponent.c();
                pathComponent.f9104i = vectorPath.f9186k;
                pathComponent.o = true;
                pathComponent.c();
                pathComponent.f9105j = vectorPath.l;
                pathComponent.o = true;
                pathComponent.c();
                pathComponent.f9106k = vectorPath.m;
                pathComponent.p = true;
                pathComponent.c();
                pathComponent.l = vectorPath.n;
                pathComponent.p = true;
                pathComponent.c();
                pathComponent.m = vectorPath.o;
                pathComponent.p = true;
                pathComponent.c();
                groupComponent.e(i2, pathComponent);
            } else if (vectorNode instanceof VectorGroup) {
                GroupComponent groupComponent2 = new GroupComponent();
                VectorGroup vectorGroup2 = (VectorGroup) vectorNode;
                groupComponent2.f9070k = vectorGroup2.f9164b;
                groupComponent2.c();
                groupComponent2.l = vectorGroup2.f9165c;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.o = vectorGroup2.f9167f;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.p = vectorGroup2.g;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.q = vectorGroup2.f9168h;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.r = vectorGroup2.f9169i;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.m = vectorGroup2.d;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.n = vectorGroup2.f9166e;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.f9066f = vectorGroup2.f9170j;
                groupComponent2.g = true;
                groupComponent2.c();
                a(groupComponent2, vectorGroup2);
                groupComponent.e(i2, groupComponent2);
            }
        }
    }

    public static final VectorPainter b(ImageVector imageVector, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Density density = (Density) composer.k(CompositionLocalsKt.f10031h);
        float f2 = imageVector.f9080j;
        boolean zE = composer.e((((long) Float.floatToRawIntBits(density.getF11002b())) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32));
        Object objX = composer.x();
        if (zE || objX == Composer.Companion.f7939a) {
            GroupComponent groupComponent = new GroupComponent();
            a(groupComponent, imageVector.f9077f);
            float f3 = imageVector.f9074b;
            float f4 = imageVector.f9075c;
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(density.u1(f3))) << 32) | (((long) Float.floatToRawIntBits(density.u1(f4))) & BodyPartID.bodyIdMax);
            Size.Companion companion = Size.f8820b;
            float fIntBitsToFloat = imageVector.d;
            float fIntBitsToFloat2 = imageVector.f9076e;
            if (Float.isNaN(fIntBitsToFloat)) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
            }
            if (Float.isNaN(fIntBitsToFloat2)) {
                fIntBitsToFloat2 = Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax));
            }
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(fIntBitsToFloat2)));
            VectorPainter vectorPainter = new VectorPainter(groupComponent);
            String str = imageVector.f9073a;
            long j2 = imageVector.g;
            int i2 = imageVector.f9078h;
            BlendModeColorFilter blendModeColorFilter = null;
            if (j2 != 16) {
                ColorFilter.f8873b.getClass();
                blendModeColorFilter = new BlendModeColorFilter(j2, i2, null);
            }
            boolean z = imageVector.f9079i;
            ((SnapshotMutableStateImpl) vectorPainter.g).setValue(new Size(jFloatToRawIntBits));
            ((SnapshotMutableStateImpl) vectorPainter.f9174h).setValue(Boolean.valueOf(z));
            VectorComponent vectorComponent = vectorPainter.f9175i;
            ((SnapshotMutableStateImpl) vectorComponent.g).setValue(blendModeColorFilter);
            ((SnapshotMutableStateImpl) vectorComponent.f9158i).setValue(new Size(jFloatToRawIntBits2));
            vectorComponent.f9154c = str;
            composer.q(vectorPainter);
            objX = vectorPainter;
        }
        return (VectorPainter) objX;
    }
}
