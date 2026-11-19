package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.state.helpers.AlignHorizontallyReference;
import androidx.constraintlayout.core.state.helpers.AlignVerticallyReference;
import androidx.constraintlayout.core.state.helpers.BarrierReference;
import androidx.constraintlayout.core.state.helpers.Facade;
import androidx.constraintlayout.core.state.helpers.FlowReference;
import androidx.constraintlayout.core.state.helpers.GridReference;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import androidx.constraintlayout.core.state.helpers.HorizontalChainReference;
import androidx.constraintlayout.core.state.helpers.VerticalChainReference;
import defpackage.a;
import defpackage.ln0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class State {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ln0 f11446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f11447b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f11448c;
    public final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f11449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConstraintReference f11450f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f11451h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f11452i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f11453j;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Chain {
        private static final /* synthetic */ Chain[] $VALUES;
        public static final Chain PACKED;
        public static final Chain SPREAD;
        public static final Chain SPREAD_INSIDE;
        public static Map<String, Chain> chainMap;
        public static Map<String, Integer> valueMap;

        static {
            Chain chain = new Chain("SPREAD", 0);
            SPREAD = chain;
            Chain chain2 = new Chain("SPREAD_INSIDE", 1);
            SPREAD_INSIDE = chain2;
            Chain chain3 = new Chain("PACKED", 2);
            PACKED = chain3;
            $VALUES = new Chain[]{chain, chain2, chain3};
            chainMap = new HashMap();
            valueMap = new HashMap();
            chainMap.put("packed", chain3);
            chainMap.put("spread_inside", chain2);
            chainMap.put("spread", chain);
            valueMap.put("packed", 2);
            valueMap.put("spread_inside", 1);
            valueMap.put("spread", 0);
        }

        public static int a(String str) {
            if (valueMap.containsKey(str)) {
                return valueMap.get(str).intValue();
            }
            return -1;
        }

        public static Chain valueOf(String str) {
            return (Chain) Enum.valueOf(Chain.class, str);
        }

        public static Chain[] values() {
            return (Chain[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Constraint {
        private static final /* synthetic */ Constraint[] $VALUES;
        public static final Constraint BASELINE_TO_BASELINE;
        public static final Constraint BASELINE_TO_BOTTOM;
        public static final Constraint BASELINE_TO_TOP;
        public static final Constraint BOTTOM_TO_BASELINE;
        public static final Constraint BOTTOM_TO_BOTTOM;
        public static final Constraint BOTTOM_TO_TOP;
        public static final Constraint CENTER_HORIZONTALLY;
        public static final Constraint CENTER_VERTICALLY;
        public static final Constraint CIRCULAR_CONSTRAINT;
        public static final Constraint END_TO_END;
        public static final Constraint END_TO_START;
        public static final Constraint LEFT_TO_LEFT;
        public static final Constraint LEFT_TO_RIGHT;
        public static final Constraint RIGHT_TO_LEFT;
        public static final Constraint RIGHT_TO_RIGHT;
        public static final Constraint START_TO_END;
        public static final Constraint START_TO_START;
        public static final Constraint TOP_TO_BASELINE;
        public static final Constraint TOP_TO_BOTTOM;
        public static final Constraint TOP_TO_TOP;

        static {
            Constraint constraint = new Constraint("LEFT_TO_LEFT", 0);
            LEFT_TO_LEFT = constraint;
            Constraint constraint2 = new Constraint("LEFT_TO_RIGHT", 1);
            LEFT_TO_RIGHT = constraint2;
            Constraint constraint3 = new Constraint("RIGHT_TO_LEFT", 2);
            RIGHT_TO_LEFT = constraint3;
            Constraint constraint4 = new Constraint("RIGHT_TO_RIGHT", 3);
            RIGHT_TO_RIGHT = constraint4;
            Constraint constraint5 = new Constraint("START_TO_START", 4);
            START_TO_START = constraint5;
            Constraint constraint6 = new Constraint("START_TO_END", 5);
            START_TO_END = constraint6;
            Constraint constraint7 = new Constraint("END_TO_START", 6);
            END_TO_START = constraint7;
            Constraint constraint8 = new Constraint("END_TO_END", 7);
            END_TO_END = constraint8;
            Constraint constraint9 = new Constraint("TOP_TO_TOP", 8);
            TOP_TO_TOP = constraint9;
            Constraint constraint10 = new Constraint("TOP_TO_BOTTOM", 9);
            TOP_TO_BOTTOM = constraint10;
            Constraint constraint11 = new Constraint("TOP_TO_BASELINE", 10);
            TOP_TO_BASELINE = constraint11;
            Constraint constraint12 = new Constraint("BOTTOM_TO_TOP", 11);
            BOTTOM_TO_TOP = constraint12;
            Constraint constraint13 = new Constraint("BOTTOM_TO_BOTTOM", 12);
            BOTTOM_TO_BOTTOM = constraint13;
            Constraint constraint14 = new Constraint("BOTTOM_TO_BASELINE", 13);
            BOTTOM_TO_BASELINE = constraint14;
            Constraint constraint15 = new Constraint("BASELINE_TO_BASELINE", 14);
            BASELINE_TO_BASELINE = constraint15;
            Constraint constraint16 = new Constraint("BASELINE_TO_TOP", 15);
            BASELINE_TO_TOP = constraint16;
            Constraint constraint17 = new Constraint("BASELINE_TO_BOTTOM", 16);
            BASELINE_TO_BOTTOM = constraint17;
            Constraint constraint18 = new Constraint("CENTER_HORIZONTALLY", 17);
            CENTER_HORIZONTALLY = constraint18;
            Constraint constraint19 = new Constraint("CENTER_VERTICALLY", 18);
            CENTER_VERTICALLY = constraint19;
            Constraint constraint20 = new Constraint("CIRCULAR_CONSTRAINT", 19);
            CIRCULAR_CONSTRAINT = constraint20;
            $VALUES = new Constraint[]{constraint, constraint2, constraint3, constraint4, constraint5, constraint6, constraint7, constraint8, constraint9, constraint10, constraint11, constraint12, constraint13, constraint14, constraint15, constraint16, constraint17, constraint18, constraint19, constraint20};
        }

        public static Constraint valueOf(String str) {
            return (Constraint) Enum.valueOf(Constraint.class, str);
        }

        public static Constraint[] values() {
            return (Constraint[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Direction {
        private static final /* synthetic */ Direction[] $VALUES;
        public static final Direction BOTTOM;
        public static final Direction END;
        public static final Direction LEFT;
        public static final Direction RIGHT;
        public static final Direction START;
        public static final Direction TOP;

        static {
            Direction direction = new Direction("LEFT", 0);
            LEFT = direction;
            Direction direction2 = new Direction("RIGHT", 1);
            RIGHT = direction2;
            Direction direction3 = new Direction("START", 2);
            START = direction3;
            Direction direction4 = new Direction("END", 3);
            END = direction4;
            Direction direction5 = new Direction("TOP", 4);
            TOP = direction5;
            Direction direction6 = new Direction("BOTTOM", 5);
            BOTTOM = direction6;
            $VALUES = new Direction[]{direction, direction2, direction3, direction4, direction5, direction6};
        }

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Helper {
        private static final /* synthetic */ Helper[] $VALUES;
        public static final Helper ALIGN_HORIZONTALLY;
        public static final Helper ALIGN_VERTICALLY;
        public static final Helper BARRIER;
        public static final Helper COLUMN;
        public static final Helper FLOW;
        public static final Helper GRID;
        public static final Helper HORIZONTAL_CHAIN;
        public static final Helper HORIZONTAL_FLOW;
        public static final Helper LAYER;
        public static final Helper ROW;
        public static final Helper VERTICAL_CHAIN;
        public static final Helper VERTICAL_FLOW;

        static {
            Helper helper = new Helper("HORIZONTAL_CHAIN", 0);
            HORIZONTAL_CHAIN = helper;
            Helper helper2 = new Helper("VERTICAL_CHAIN", 1);
            VERTICAL_CHAIN = helper2;
            Helper helper3 = new Helper("ALIGN_HORIZONTALLY", 2);
            ALIGN_HORIZONTALLY = helper3;
            Helper helper4 = new Helper("ALIGN_VERTICALLY", 3);
            ALIGN_VERTICALLY = helper4;
            Helper helper5 = new Helper("BARRIER", 4);
            BARRIER = helper5;
            Helper helper6 = new Helper("LAYER", 5);
            LAYER = helper6;
            Helper helper7 = new Helper("HORIZONTAL_FLOW", 6);
            HORIZONTAL_FLOW = helper7;
            Helper helper8 = new Helper("VERTICAL_FLOW", 7);
            VERTICAL_FLOW = helper8;
            Helper helper9 = new Helper("GRID", 8);
            GRID = helper9;
            Helper helper10 = new Helper("ROW", 9);
            ROW = helper10;
            Helper helper11 = new Helper("COLUMN", 10);
            COLUMN = helper11;
            Helper helper12 = new Helper("FLOW", 11);
            FLOW = helper12;
            $VALUES = new Helper[]{helper, helper2, helper3, helper4, helper5, helper6, helper7, helper8, helper9, helper10, helper11, helper12};
        }

        public static Helper valueOf(String str) {
            return (Helper) Enum.valueOf(Helper.class, str);
        }

        public static Helper[] values() {
            return (Helper[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Wrap {
        private static final /* synthetic */ Wrap[] $VALUES;
        public static final Wrap ALIGNED;
        public static final Wrap CHAIN;
        public static final Wrap NONE;
        public static Map<String, Integer> valueMap;
        public static Map<String, Wrap> wrapMap;

        static {
            Wrap wrap = new Wrap("NONE", 0);
            NONE = wrap;
            Wrap wrap2 = new Wrap("CHAIN", 1);
            CHAIN = wrap2;
            Wrap wrap3 = new Wrap("ALIGNED", 2);
            ALIGNED = wrap3;
            $VALUES = new Wrap[]{wrap, wrap2, wrap3};
            wrapMap = new HashMap();
            valueMap = new HashMap();
            wrapMap.put("none", wrap);
            wrapMap.put("chain", wrap2);
            wrapMap.put("aligned", wrap3);
            valueMap.put("none", 0);
            valueMap.put("chain", 3);
            valueMap.put("aligned", 2);
        }

        public static Wrap valueOf(String str) {
            return (Wrap) Enum.valueOf(Wrap.class, str);
        }

        public static Wrap[] values() {
            return (Wrap[]) $VALUES.clone();
        }
    }

    public State() {
        HashMap map = new HashMap();
        this.f11448c = map;
        this.d = new HashMap();
        this.f11449e = new HashMap();
        ConstraintReference constraintReference = new ConstraintReference(this);
        this.f11450f = constraintReference;
        this.g = 0;
        this.f11451h = new ArrayList();
        this.f11452i = new ArrayList();
        this.f11453j = true;
        constraintReference.f11417a = 0;
        map.put(0, constraintReference);
    }

    public final void a(Object obj) {
        this.f11451h.add(obj);
        this.f11453j = true;
    }

    public final ConstraintReference b(Object obj) {
        HashMap map = this.f11448c;
        Reference reference = (Reference) map.get(obj);
        Object obj2 = reference;
        if (reference == null) {
            ConstraintReference constraintReference = new ConstraintReference(this);
            map.put(obj, constraintReference);
            constraintReference.f11417a = obj;
            obj2 = constraintReference;
        }
        if (obj2 instanceof ConstraintReference) {
            return (ConstraintReference) obj2;
        }
        return null;
    }

    public int c(Float f2) {
        return Math.round(f2.floatValue());
    }

    public final GuidelineReference d(int i2, String str) {
        ConstraintReference constraintReferenceB = b(str);
        Facade facade = constraintReferenceB.f11419c;
        if (facade == null || !(facade instanceof GuidelineReference)) {
            GuidelineReference guidelineReference = new GuidelineReference(this);
            guidelineReference.f11465b = i2;
            guidelineReference.g = str;
            constraintReferenceB.f11419c = guidelineReference;
            constraintReferenceB.a(guidelineReference.b());
        }
        return (GuidelineReference) constraintReferenceB.f11419c;
    }

    public final HelperReference e(Helper helper) {
        StringBuilder sb = new StringBuilder("__HELPER_KEY_");
        int i2 = this.g;
        this.g = i2 + 1;
        String strI = a.i(i2, "__", sb);
        HashMap map = this.d;
        HelperReference horizontalChainReference = (HelperReference) map.get(strI);
        if (horizontalChainReference == null) {
            switch (helper.ordinal()) {
                case 0:
                    horizontalChainReference = new HorizontalChainReference(this);
                    break;
                case 1:
                    horizontalChainReference = new VerticalChainReference(this);
                    break;
                case 2:
                    horizontalChainReference = new AlignHorizontallyReference(this);
                    break;
                case 3:
                    horizontalChainReference = new AlignVerticallyReference(this);
                    break;
                case 4:
                    horizontalChainReference = new BarrierReference(this);
                    break;
                case 5:
                default:
                    horizontalChainReference = new HelperReference(this, helper);
                    break;
                case 6:
                case 7:
                    horizontalChainReference = new FlowReference(this, helper);
                    break;
                case 8:
                case 9:
                case 10:
                    horizontalChainReference = new GridReference(this, helper);
                    break;
            }
            horizontalChainReference.f11417a = strI;
            map.put(strI, horizontalChainReference);
        }
        return horizontalChainReference;
    }
}
