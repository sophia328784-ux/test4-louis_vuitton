package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.OffsetApplier;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.IntRef;
import defpackage.c;
import defpackage.os;
import defpackage.rs;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u00002\u00020\u0001:$\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%\u0082\u0001$&'()*+,-./0123456789:;<=>?@ABCDEFGHI¨\u0006J"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "", "Ups", "Downs", "AdvanceSlotsBy", "SideEffect", "Remember", "RememberPausingScope", "StartResumingScope", "EndResumingScope", "AppendValue", "TrimParentValues", "UpdateValue", "UpdateAnchoredValue", "UpdateAuxData", "EnsureRootGroupStarted", "EnsureGroupStarted", "RemoveCurrentGroup", "MoveCurrentGroup", "EndCurrentGroup", "SkipToEndOfCurrentGroup", "EndCompositionScope", "UseCurrentNode", "UpdateNode", "RemoveNode", "MoveNode", "InsertSlots", "InsertSlotsWithFixups", "InsertNodeFixup", "PostInsertNodeFixup", "DeactivateCurrentGroup", "ResetSlots", "DetermineMovableContentNodeIndex", "CopyNodesToNewAnchorLocation", "CopySlotTableToAnchorLocation", "EndMovableContentPlacement", "ReleaseMovableGroupAtCurrent", "ApplyChangeList", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AdvanceSlotsBy;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Downs;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveNode;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$PostInsertNodeFixup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ReleaseMovableGroupAtCurrent;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveNode;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SideEffect;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Ups;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Operation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8248b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AdvanceSlotsBy;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AdvanceSlotsBy extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AdvanceSlotsBy f8249c = new AdvanceSlotsBy(1, 0, 2, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.a(opIterator.a(0));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AppendValue extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AppendValue f8250c = new AppendValue(0, 2, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            Object objB = opIterator.b(1);
            if (objB instanceof RememberObserverHolder) {
                rememberManager.h((RememberObserverHolder) objB);
            }
            if (slotWriter.n != 0) {
                ComposerKt.a("Can only append a slot if not current inserting");
            }
            int i2 = slotWriter.f8224i;
            int i3 = slotWriter.f8225j;
            int iC = slotWriter.c(gapAnchor);
            int iG = slotWriter.g(slotWriter.r(iC + 1), slotWriter.f8219b);
            slotWriter.f8224i = iG;
            slotWriter.f8225j = iG;
            slotWriter.x(1, iC);
            if (i2 >= iG) {
                i2++;
                i3++;
            }
            slotWriter.f8220c[iG] = objB;
            slotWriter.f8224i = i2;
            slotWriter.f8225j = i3;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ApplyChangeList extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ApplyChangeList f8251c = new ApplyChangeList(0, 2, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            IntRef intRef = (IntRef) opIterator.b(1);
            int i2 = intRef != null ? intRef.f8386a : 0;
            ChangeList changeList = (ChangeList) opIterator.b(0);
            if (i2 > 0) {
                applier = new OffsetApplier(applier, i2);
            }
            changeList.c(applier, slotWriter, rememberManager, operationErrorContext != null ? new OperationKt$withCurrentStackTrace$1(operationErrorContext, slotWriter) : null);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CopyNodesToNewAnchorLocation extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final CopyNodesToNewAnchorLocation f8252c = new CopyNodesToNewAnchorLocation(0, 2, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i2 = ((IntRef) opIterator.b(0)).f8386a;
            List list = (List) opIterator.b(1);
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Object obj = list.get(i3);
                int i4 = i2 + i3;
                applier.g(i4, obj);
                applier.e(i4, obj);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CopySlotTableToAnchorLocation extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final CopySlotTableToAnchorLocation f8253c = new CopySlotTableToAnchorLocation(0, 4, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) opIterator.b(2);
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) opIterator.b(3);
            CompositionContext compositionContext = (CompositionContext) opIterator.b(1);
            MovableContentState movableContentStateQ = (MovableContentState) opIterator.b(0);
            if (movableContentStateQ == null && (movableContentStateQ = compositionContext.q(movableContentStateReference)) == null) {
                ComposerKt.b("Could not resolve state for movable content");
                os.d();
                return;
            }
            SlotTable slotTableE = SlotTableKt.e(movableContentStateQ.f8023a);
            if (slotWriter.n > 0 || slotWriter.u(slotWriter.t + 1) != 1) {
                ComposerKt.a("Check failed");
            }
            int i2 = slotWriter.t;
            int i3 = slotWriter.f8224i;
            int i4 = slotWriter.f8225j;
            slotWriter.a(1);
            slotWriter.R();
            slotWriter.d();
            SlotWriter slotWriterO = slotTableE.o();
            try {
                SlotWriter.y.getClass();
                List listA = SlotWriter.Companion.a(slotWriterO, 2, slotWriter, false, true, true);
                slotWriterO.e(true);
                slotWriter.k();
                slotWriter.j();
                slotWriter.t = i2;
                slotWriter.f8224i = i3;
                slotWriter.f8225j = i4;
                RecomposeScopeImpl.Companion companion = RecomposeScopeImpl.f8075h;
                ControlledComposition controlledComposition = movableContentStateReference2.f8026c;
                controlledComposition.getClass();
                companion.getClass();
                RecomposeScopeImpl.Companion.a(slotWriter, listA, (RecomposeScopeOwner) controlledComposition);
            } catch (Throwable th) {
                slotWriterO.e(false);
                throw th;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DeactivateCurrentGroup extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final DeactivateCurrentGroup f8254c;

        static {
            int i2 = 0;
            f8254c = new DeactivateCurrentGroup(i2, i2, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.n(slotWriter.t, new rs(rememberManager, slotWriter, 17));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DetermineMovableContentNodeIndex extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final DetermineMovableContentNodeIndex f8255c = new DetermineMovableContentNodeIndex(0, 2, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i2;
            IntRef intRef = (IntRef) opIterator.b(0);
            int iC = slotWriter.c((GapAnchor) opIterator.b(1));
            if (slotWriter.t >= iC) {
                ComposerKt.a("Check failed");
            }
            OperationKt.a(slotWriter, applier, iC);
            int i3 = slotWriter.t;
            int iG = slotWriter.v;
            while (iG >= 0 && !slotWriter.y(iG)) {
                iG = slotWriter.G(iG, slotWriter.f8219b);
            }
            int iU = iG + 1;
            int iN = 0;
            while (iU < i3) {
                if (slotWriter.v(i3, iU)) {
                    if (slotWriter.y(iU)) {
                        iN = 0;
                    }
                    iU++;
                } else {
                    iN += slotWriter.y(iU) ? 1 : slotWriter.F(iU);
                    iU += slotWriter.u(iU);
                }
            }
            while (true) {
                i2 = slotWriter.t;
                if (i2 >= iC) {
                    break;
                }
                if (slotWriter.v(iC, i2)) {
                    int i4 = slotWriter.t;
                    if (i4 < slotWriter.u && (slotWriter.f8219b[(slotWriter.r(i4) * 5) + 1] & 1073741824) != 0) {
                        applier.h(slotWriter.E(slotWriter.t));
                        iN = 0;
                    }
                    slotWriter.R();
                } else {
                    iN += slotWriter.N();
                }
            }
            if (i2 != iC) {
                ComposerKt.a("Check failed");
            }
            intRef.f8386a = iN;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Downs;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Downs extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Downs f8256c;

        static {
            int i2 = 1;
            f8256c = new Downs(0, i2, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            for (Object obj : (Object[]) opIterator.b(0)) {
                applier.h(obj);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EndCompositionScope extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final EndCompositionScope f8257c = new EndCompositionScope(0, 2, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ((Function1) opIterator.b(0)).invoke((Composition) opIterator.b(1));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EndCurrentGroup extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final EndCurrentGroup f8258c;

        static {
            int i2 = 0;
            f8258c = new EndCurrentGroup(i2, i2, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.j();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EndMovableContentPlacement extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final EndMovableContentPlacement f8259c;

        static {
            int i2 = 0;
            f8259c = new EndMovableContentPlacement(i2, i2, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            OperationKt.a(slotWriter, applier, 0);
            slotWriter.j();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EndResumingScope extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final EndResumingScope f8260c;

        static {
            int i2 = 1;
            f8260c = new EndResumingScope(0, i2, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.e((RecomposeScopeImpl) opIterator.b(0));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EnsureGroupStarted extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final EnsureGroupStarted f8261c;

        static {
            int i2 = 1;
            f8261c = new EnsureGroupStarted(0, i2, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            gapAnchor.getClass();
            slotWriter.l(slotWriter.c(gapAnchor));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EnsureRootGroupStarted extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final EnsureRootGroupStarted f8262c;

        static {
            int i2 = 0;
            f8262c = new EnsureRootGroupStarted(i2, i2, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.l(0);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class InsertNodeFixup extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final InsertNodeFixup f8263c = new InsertNodeFixup(1, 2, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objMo47invoke = ((Function0) opIterator.b(0)).mo47invoke();
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(1);
            int iA = opIterator.a(0);
            gapAnchor.getClass();
            slotWriter.X(slotWriter.c(gapAnchor), objMo47invoke);
            applier.e(iA, objMo47invoke);
            applier.h(objMo47invoke);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final GapAnchor b(Operations.OpIterator opIterator) {
            return (GapAnchor) opIterator.b(1);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class InsertSlots extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final InsertSlots f8264c = new InsertSlots(0, 2, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            SlotTable slotTable = (SlotTable) opIterator.b(1);
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            slotWriter.d();
            gapAnchor.getClass();
            slotWriter.A(slotTable, slotTable.h(gapAnchor));
            slotWriter.k();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class InsertSlotsWithFixups extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final InsertSlotsWithFixups f8265c = new InsertSlotsWithFixups(0, 3, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            OperationKt$withCurrentStackTrace$1 operationKt$withCurrentStackTrace$1;
            SlotTable slotTable = (SlotTable) opIterator.b(1);
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            FixupList fixupList = (FixupList) opIterator.b(2);
            SlotWriter slotWriterO = slotTable.o();
            if (operationErrorContext != null) {
                try {
                    operationKt$withCurrentStackTrace$1 = new OperationKt$withCurrentStackTrace$1(operationErrorContext, slotWriter);
                } catch (Throwable th) {
                    slotWriterO.e(false);
                    throw th;
                }
            } else {
                operationKt$withCurrentStackTrace$1 = null;
            }
            if (!fixupList.f8246b.c()) {
                ComposerKt.a("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
            }
            fixupList.f8245a.b(applier, slotWriterO, rememberManager, operationKt$withCurrentStackTrace$1);
            slotWriterO.e(true);
            slotWriter.d();
            gapAnchor.getClass();
            slotWriter.A(slotTable, slotTable.h(gapAnchor));
            slotWriter.k();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class MoveCurrentGroup extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final MoveCurrentGroup f8266c = new MoveCurrentGroup(1, 0, 2, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int[] iArr;
            GapAnchor gapAnchor;
            int iC;
            int iA = opIterator.a(0);
            if (slotWriter.n != 0) {
                ComposerKt.a("Cannot move a group while inserting");
            }
            if (iA < 0) {
                ComposerKt.a("Parameter offset is out of bounds");
            }
            if (iA == 0) {
                return;
            }
            int i2 = slotWriter.t;
            int i3 = slotWriter.v;
            int i4 = slotWriter.u;
            int iA2 = i2;
            while (true) {
                iArr = slotWriter.f8219b;
                if (iA <= 0) {
                    break;
                }
                iA2 += SlotTableKt.a(slotWriter.r(iA2), iArr);
                if (iA2 > i4) {
                    ComposerKt.a("Parameter offset is out of bounds");
                }
                iA--;
            }
            int iA3 = SlotTableKt.a(slotWriter.r(iA2), iArr);
            int iG = slotWriter.g(slotWriter.r(slotWriter.t), slotWriter.f8219b);
            int iG2 = slotWriter.g(slotWriter.r(iA2), slotWriter.f8219b);
            int i5 = iA2 + iA3;
            int iG3 = slotWriter.g(slotWriter.r(i5), slotWriter.f8219b);
            int i6 = iG3 - iG2;
            slotWriter.x(i6, Math.max(slotWriter.t - 1, 0));
            slotWriter.w(iA3);
            int[] iArr2 = slotWriter.f8219b;
            int iR = slotWriter.r(i5) * 5;
            ArraysKt.i(slotWriter.r(i2) * 5, iR, (iA3 * 5) + iR, iArr2, iArr2);
            if (i6 > 0) {
                Object[] objArr = slotWriter.f8220c;
                int iH = slotWriter.h(iG2 + i6);
                System.arraycopy(objArr, iH, objArr, iG, slotWriter.h(iG3 + i6) - iH);
            }
            int i7 = iG2 + i6;
            int i8 = i7 - iG;
            int i9 = slotWriter.f8226k;
            int i10 = slotWriter.l;
            int length = slotWriter.f8220c.length;
            int i11 = slotWriter.m;
            int i12 = i2 + iA3;
            int i13 = i2;
            while (i13 < i12) {
                int iR2 = slotWriter.r(i13);
                int i14 = i8;
                int[] iArr3 = iArr2;
                iArr3[(iR2 * 5) + 4] = SlotWriter.i(SlotWriter.i(slotWriter.g(iR2, iArr2) - i14, i11 < iR2 ? 0 : i9, i10, length), slotWriter.f8226k, slotWriter.l, slotWriter.f8220c.length);
                i13++;
                i8 = i14;
                iArr2 = iArr3;
                i9 = i9;
            }
            int i15 = i5 + iA3;
            int iP = slotWriter.p();
            int iB = SlotTableKt.b(slotWriter.d, i5, iP);
            ArrayList arrayList = new ArrayList();
            if (iB >= 0) {
                while (iB < slotWriter.d.size() && (iC = slotWriter.c((gapAnchor = (GapAnchor) slotWriter.d.get(iB)))) >= i5 && iC < i15) {
                    arrayList.add(gapAnchor);
                }
            }
            int i16 = i2 - i5;
            int size = arrayList.size();
            for (int i17 = 0; i17 < size; i17++) {
                GapAnchor gapAnchor2 = (GapAnchor) arrayList.get(i17);
                int iC2 = slotWriter.c(gapAnchor2) + i16;
                if (iC2 >= slotWriter.g) {
                    gapAnchor2.f8187a = -(iP - iC2);
                } else {
                    gapAnchor2.f8187a = iC2;
                }
                slotWriter.d.add(SlotTableKt.b(slotWriter.d, iC2, iP), gapAnchor2);
            }
            if (slotWriter.K(i5, iA3)) {
                ComposerKt.a("Unexpectedly removed anchors");
            }
            slotWriter.m(i3, slotWriter.u, i2);
            if (i6 > 0) {
                slotWriter.L(i7, i6, i5 - 1);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveNode;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class MoveNode extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final MoveNode f8267c = new MoveNode(3, 0, 2, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.c(opIterator.a(0), opIterator.a(1), opIterator.a(2));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$PostInsertNodeFixup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PostInsertNodeFixup extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final PostInsertNodeFixup f8268c = new PostInsertNodeFixup(1, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(0);
            int iA = opIterator.a(0);
            applier.j();
            gapAnchor.getClass();
            applier.g(iA, slotWriter.E(slotWriter.c(gapAnchor)));
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final GapAnchor b(Operations.OpIterator opIterator) {
            return (GapAnchor) opIterator.b(0);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ReleaseMovableGroupAtCurrent;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ReleaseMovableGroupAtCurrent extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ReleaseMovableGroupAtCurrent f8269c = new ReleaseMovableGroupAtCurrent(0, 3, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ControlledComposition controlledComposition = (ControlledComposition) opIterator.b(0);
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) opIterator.b(2);
            ((CompositionContext) opIterator.b(1)).p(movableContentStateReference, ComposerKt.c(controlledComposition, movableContentStateReference, slotWriter, null), applier);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Remember extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Remember f8270c;

        static {
            int i2 = 1;
            f8270c = new Remember(0, i2, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.h((RememberObserverHolder) opIterator.b(0));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RememberPausingScope extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final RememberPausingScope f8271c;

        static {
            int i2 = 1;
            f8271c = new RememberPausingScope(0, i2, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.d((RecomposeScopeImpl) opIterator.b(0));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RemoveCurrentGroup extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final RemoveCurrentGroup f8272c;

        static {
            int i2 = 0;
            f8272c = new RemoveCurrentGroup(i2, i2, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            slotWriter.n(slotWriter.t, new c(rememberManager, 17));
            slotWriter.J();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveNode;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RemoveNode extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final RemoveNode f8273c;

        static {
            int i2 = 2;
            f8273c = new RemoveNode(i2, 0, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.d(opIterator.a(0), opIterator.a(1));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ResetSlots extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ResetSlots f8274c;

        static {
            int i2 = 0;
            f8274c = new ResetSlots(i2, i2, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            if (slotWriter.n != 0) {
                ComposerKt.a("Cannot reset when inserting");
            }
            slotWriter.I();
            slotWriter.t = 0;
            slotWriter.u = slotWriter.o() - slotWriter.f8223h;
            slotWriter.f8224i = 0;
            slotWriter.f8225j = 0;
            slotWriter.o = 0;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SideEffect;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SideEffect extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final SideEffect f8275c;

        static {
            int i2 = 1;
            f8275c = new SideEffect(0, i2, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.a((Function0) opIterator.b(0));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SkipToEndOfCurrentGroup extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final SkipToEndOfCurrentGroup f8276c;

        static {
            int i2 = 0;
            f8276c = new SkipToEndOfCurrentGroup(i2, i2, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.O();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class StartResumingScope extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final StartResumingScope f8277c;

        static {
            int i2 = 1;
            f8277c = new StartResumingScope(0, i2, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.f((RecomposeScopeImpl) opIterator.b(0));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TrimParentValues extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final TrimParentValues f8278c = new TrimParentValues(1, 0, 2, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int iA = opIterator.a(0);
            int i2 = slotWriter.v;
            int iP = slotWriter.P(slotWriter.r(i2), slotWriter.f8219b);
            int iG = slotWriter.g(slotWriter.r(i2 + 1), slotWriter.f8219b);
            for (int iMax = Math.max(iP, iG - iA); iMax < iG; iMax++) {
                Object obj = slotWriter.f8220c[slotWriter.h(iMax)];
                if (obj instanceof RememberObserverHolder) {
                    rememberManager.g((RememberObserverHolder) obj);
                } else if (obj instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj).c();
                }
            }
            if (iA <= 0) {
                ComposerKt.a("Check failed");
            }
            int i3 = slotWriter.v;
            int iP2 = slotWriter.P(slotWriter.r(i3), slotWriter.f8219b);
            int iG2 = slotWriter.g(slotWriter.r(i3 + 1), slotWriter.f8219b) - iA;
            if (iG2 < iP2) {
                ComposerKt.a("Check failed");
            }
            slotWriter.L(iG2, iA, i3);
            int i4 = slotWriter.f8224i;
            if (i4 >= iP2) {
                slotWriter.f8224i = i4 - iA;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UpdateAnchoredValue extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final UpdateAnchoredValue f8279c = new UpdateAnchoredValue(1, 2, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objB = opIterator.b(0);
            GapAnchor gapAnchor = (GapAnchor) opIterator.b(1);
            int iA = opIterator.a(0);
            if (objB instanceof RememberObserverHolder) {
                rememberManager.h((RememberObserverHolder) objB);
            }
            Object objM = slotWriter.M(slotWriter.c(gapAnchor), iA, objB);
            if (objM instanceof RememberObserverHolder) {
                rememberManager.g((RememberObserverHolder) objM);
            } else if (objM instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) objM).c();
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UpdateAuxData extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final UpdateAuxData f8280c;

        static {
            int i2 = 1;
            f8280c = new UpdateAuxData(0, i2, i2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.V(opIterator.b(0));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UpdateNode extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final UpdateNode f8281c = new UpdateNode(0, 2, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.a(opIterator.b(0), (Function2) opIterator.b(1));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UpdateValue extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final UpdateValue f8282c = new UpdateValue(1, 1, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objB = opIterator.b(0);
            int iA = opIterator.a(0);
            if (objB instanceof RememberObserverHolder) {
                rememberManager.h((RememberObserverHolder) objB);
            }
            Object objM = slotWriter.M(slotWriter.t, iA, objB);
            if (objM instanceof RememberObserverHolder) {
                rememberManager.g((RememberObserverHolder) objM);
            } else if (objM instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) objM).c();
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Ups;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Ups extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Ups f8283c = new Ups(1, 0, 2, null);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int iA = opIterator.a(0);
            for (int i2 = 0; i2 < iA; i2++) {
                applier.j();
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;", "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UseCurrentNode extends Operation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final UseCurrentNode f8284c;

        static {
            int i2 = 0;
            f8284c = new UseCurrentNode(i2, i2, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.i();
        }
    }

    public /* synthetic */ Operation(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3, null);
    }

    public abstract void a(Operations.OpIterator opIterator, Applier applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext);

    public GapAnchor b(Operations.OpIterator opIterator) {
        return null;
    }

    public final String toString() {
        String strB = Reflection.f71922a.b(getClass()).B();
        return strB == null ? "" : strB;
    }

    public Operation(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8247a = i2;
        this.f8248b = i3;
    }
}
