package androidx.compose.runtime.tooling;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ComposeStackTraceBuilderKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.runtime.tooling.ComposeStackTraceBuilder, androidx.compose.runtime.tooling.WriterTraceBuilder] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.composer.gapbuffer.GapAnchor] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Integer] */
    public static final List a(SlotWriter slotWriter, Integer num, int i2, Integer num2) {
        int iG;
        int iS;
        MutableObjectList mutableObjectList;
        if (slotWriter.w || slotWriter.p() == 0) {
            return EmptyList.f71768b;
        }
        ?? writerTraceBuilder = new WriterTraceBuilder(slotWriter);
        if (num2 != null) {
            iG = num2.intValue();
        } else {
            iG = slotWriter.v;
            if (iG < 0) {
                iG = slotWriter.G(i2, slotWriter.f8219b);
            }
        }
        if (num == 0) {
            int iP = slotWriter.f8224i - slotWriter.P(slotWriter.r(i2), slotWriter.f8219b);
            MutableIntObjectMap mutableIntObjectMap = slotWriter.s;
            num = Integer.valueOf(iP + ((mutableIntObjectMap == null || (mutableObjectList = (MutableObjectList) mutableIntObjectMap.b(i2)) == null) ? 0 : mutableObjectList.f3346b));
        }
        int iR = slotWriter.r(i2) * 5;
        int[] iArr = slotWriter.f8219b;
        if (iR < iArr.length) {
            iS = slotWriter.s(i2);
        } else {
            int iG2 = iG >= 0 ? slotWriter.G(iG, iArr) : iG;
            iS = slotWriter.s(iG);
            int i3 = iG;
            iG = iG2;
            i2 = i3;
        }
        while (i2 >= 0) {
            writerTraceBuilder.d(iS, (slotWriter.f8219b[(slotWriter.r(i2) * 5) + 1] & PKIFailureInfo.duplicateCertReq) != 0 ? slotWriter.t(i2) : Composer.Companion.f7939a, slotWriter.Q(i2), num);
            num = slotWriter.b(i2);
            if (iG >= 0) {
                int iG3 = slotWriter.G(iG, slotWriter.f8219b);
                iS = slotWriter.s(iG);
                int i4 = iG;
                iG = iG3;
                i2 = i4;
            } else {
                i2 = iG;
            }
        }
        return writerTraceBuilder.f8553a;
    }

    public static final Integer b(SlotReader slotReader, CompositionContext compositionContext, int i2, int i3) {
        Integer numB;
        int[] iArr = slotReader.f8200b;
        while (true) {
            if (i2 >= i3) {
                return null;
            }
            int iA = SlotTableKt.a(i2, iArr) + i2;
            if (slotReader.j(i2) && slotReader.i(i2) == 206 && Intrinsics.c(slotReader.p(i2, iArr), ComposerKt.f7943e)) {
                Object objH = slotReader.h(i2, 0);
                RememberObserverHolder rememberObserverHolder = objH instanceof RememberObserverHolder ? (RememberObserverHolder) objH : null;
                RememberObserver f8001a = rememberObserverHolder != null ? rememberObserverHolder.getF8001a() : null;
                GapComposer.CompositionContextHolder compositionContextHolder = f8001a instanceof GapComposer.CompositionContextHolder ? (GapComposer.CompositionContextHolder) f8001a : null;
                if (compositionContextHolder != null && Intrinsics.c(compositionContextHolder.f7985b, compositionContext)) {
                    return Integer.valueOf(i2);
                }
            }
            if (slotReader.d(i2) && (numB = b(slotReader, compositionContext, i2 + 1, iA)) != null) {
                return Integer.valueOf(numB.intValue());
            }
            i2 = iA;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.tooling.ComposeStackTraceBuilder, androidx.compose.runtime.tooling.ReaderTraceBuilder] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    public static final ArrayList c(SlotReader slotReader, int i2, Integer num) {
        ?? readerTraceBuilder = new ReaderTraceBuilder(slotReader);
        i2 = slotReader.q(i2);
        GapAnchor gapAnchorA = slotReader.a(i2);
        while (i2 >= 0) {
            readerTraceBuilder.d(slotReader.i(i2), slotReader.k(i2) ? slotReader.p(i2, slotReader.f8200b) : Composer.Companion.f7939a, slotReader.f8199a.q(i2), num);
            if (i2 >= 0) {
                GapAnchor gapAnchor = gapAnchorA;
                gapAnchorA = slotReader.a(i2);
                i2 = slotReader.q(i2);
                num = gapAnchor;
            } else {
                num = gapAnchorA;
            }
        }
        return readerTraceBuilder.f8553a;
    }
}
