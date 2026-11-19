package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.parser.CLString;
import androidx.constraintlayout.core.state.helpers.BarrierReference;
import androidx.constraintlayout.core.state.helpers.ChainReference;
import androidx.constraintlayout.core.state.helpers.Facade;
import androidx.constraintlayout.core.state.helpers.FlowReference;
import androidx.constraintlayout.core.state.helpers.GridReference;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import androidx.constraintlayout.core.state.helpers.HorizontalChainReference;
import androidx.constraintlayout.core.state.helpers.VerticalChainReference;
import com.batch.android.s.b;
import defpackage.ln0;
import defpackage.n00;
import defpackage.pq0;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintSetParser {

    public static class FiniteGenerator implements GeneratedValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f11427a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f11428b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f11429c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f11430e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f11431f;

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public final float value() {
            float f2 = this.f11430e;
            if (f2 >= this.f11431f) {
                this.f11428b = true;
            }
            if (!this.f11428b) {
                this.f11430e = f2 + this.f11427a;
            }
            return this.f11430e;
        }
    }

    public interface GeneratedValue {
        float value();
    }

    public static class Generator implements GeneratedValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f11432a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f11433b;

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public final float value() {
            float f2 = this.f11433b + this.f11432a;
            this.f11433b = f2;
            return f2;
        }
    }

    public static class LayoutVariables {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f11434a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f11435b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HashMap f11436c = new HashMap();

        public final float a(CLElement cLElement) {
            if (!(cLElement instanceof CLString)) {
                return cLElement instanceof CLNumber ? ((CLNumber) cLElement).i() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            String strH = ((CLString) cLElement).h();
            HashMap map = this.f11435b;
            if (map.containsKey(strH)) {
                return ((GeneratedValue) map.get(strH)).value();
            }
            HashMap map2 = this.f11434a;
            return map2.containsKey(strH) ? ((Integer) map2.get(strH)).floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    public static void a(CLObject cLObject, ConstraintReference constraintReference, LayoutVariables layoutVariables, State state, String str) throws CLParsingException {
        long j2;
        str.getClass();
        switch (str) {
            case "centerVertically":
                String strN = cLObject.N(str);
                ConstraintReference constraintReferenceB = strN.equals("parent") ? state.b(0) : state.b(strN);
                constraintReference.p(constraintReferenceB);
                constraintReference.e(constraintReferenceB);
                return;
            case "center":
                String strN2 = cLObject.N(str);
                ConstraintReference constraintReferenceB2 = strN2.equals("parent") ? state.b(0) : state.b(strN2);
                constraintReference.o(constraintReferenceB2);
                constraintReference.i(constraintReferenceB2);
                constraintReference.p(constraintReferenceB2);
                constraintReference.e(constraintReferenceB2);
                return;
            case "custom":
                CLElement cLElementL = cLObject.L(str);
                CLObject cLObject2 = cLElementL instanceof CLObject ? (CLObject) cLElementL : null;
                if (cLObject2 == null) {
                    return;
                }
                for (String str2 : cLObject2.Q()) {
                    CLElement cLElementE = cLObject2.E(str2);
                    if (cLElementE instanceof CLNumber) {
                        float fI = cLElementE.i();
                        if (constraintReference.j0 == null) {
                            constraintReference.j0 = new HashMap();
                        }
                        constraintReference.j0.put(str2, Float.valueOf(fI));
                    } else if (cLElementE instanceof CLString) {
                        String strH = cLElementE.h();
                        if (strH.startsWith("#")) {
                            String strSubstring = strH.substring(1);
                            if (strSubstring.length() == 6) {
                                strSubstring = "FF".concat(strSubstring);
                            }
                            j2 = Long.parseLong(strSubstring, 16);
                        } else {
                            j2 = -1;
                        }
                        if (j2 != -1) {
                            constraintReference.i0.put(str2, Integer.valueOf((int) j2));
                        }
                    }
                }
                return;
            case "rotationX":
                constraintReference.z = layoutVariables.a(cLObject.E(str));
                return;
            case "rotationY":
                constraintReference.A = layoutVariables.a(cLObject.E(str));
                return;
            case "rotationZ":
                constraintReference.B = layoutVariables.a(cLObject.E(str));
                return;
            case "translationX":
                constraintReference.C = state.f11446a.e(layoutVariables.a(cLObject.E(str)));
                return;
            case "translationY":
                constraintReference.D = state.f11446a.e(layoutVariables.a(cLObject.E(str)));
                return;
            case "translationZ":
                constraintReference.E = state.f11446a.e(layoutVariables.a(cLObject.E(str)));
                return;
            case "height":
                constraintReference.f0 = d(cLObject, str, state, state.f11446a);
                return;
            case "motion":
                CLElement cLElementE2 = cLObject.E(str);
                if (cLElementE2 instanceof CLObject) {
                    CLObject cLObject3 = (CLObject) cLElementE2;
                    TypedBundle typedBundle = new TypedBundle();
                    for (String str3 : cLObject3.Q()) {
                        str3.getClass();
                        switch (str3) {
                            case "stagger":
                                typedBundle.a(cLObject3.G(str3), 600);
                                break;
                            case "easing":
                                typedBundle.c(603, cLObject3.N(str3));
                                break;
                            case "quantize":
                                CLElement cLElementE3 = cLObject3.E(str3);
                                if (cLElementE3 instanceof CLArray) {
                                    CLArray cLArray = (CLArray) cLElementE3;
                                    int size = cLArray.f11408f.size();
                                    if (size > 0) {
                                        typedBundle.b(610, cLArray.J(0));
                                        if (size > 1) {
                                            typedBundle.c(611, cLArray.M(1));
                                            if (size > 2) {
                                                typedBundle.a(cLArray.F(2), 602);
                                            }
                                        }
                                    }
                                    break;
                                } else {
                                    CLElement cLElementE4 = cLObject3.E(str3);
                                    if (cLElementE4 == null) {
                                        StringBuilder sbR = pq0.r("no int found for key <", str3, ">, found [");
                                        sbR.append(cLElementE4.v());
                                        sbR.append("] : ");
                                        sbR.append(cLElementE4);
                                        throw new CLParsingException(sbR.toString(), cLObject3);
                                    }
                                    typedBundle.b(610, cLElementE4.u());
                                    break;
                                }
                                break;
                            case "pathArc":
                                String strN3 = cLObject3.N(str3);
                                String[] strArr = {"none", "startVertical", "startHorizontal", "flip", "below", "above"};
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= 6) {
                                        i2 = -1;
                                    } else if (!strArr[i2].equals(strN3)) {
                                        i2++;
                                    }
                                }
                                if (i2 != -1) {
                                    typedBundle.b(607, i2);
                                    break;
                                } else {
                                    System.err.println("0 pathArc = '" + strN3 + "'");
                                    break;
                                }
                                break;
                            case "relativeTo":
                                typedBundle.c(605, cLObject3.N(str3));
                                break;
                        }
                    }
                    constraintReference.getClass();
                    return;
                }
                return;
            case "pivotX":
                constraintReference.x = layoutVariables.a(cLObject.E(str));
                return;
            case "pivotY":
                constraintReference.y = layoutVariables.a(cLObject.E(str));
                return;
            case "scaleX":
                constraintReference.G = layoutVariables.a(cLObject.E(str));
                return;
            case "scaleY":
                constraintReference.H = layoutVariables.a(cLObject.E(str));
                return;
            case "hRtlBias":
                float fA = layoutVariables.a(cLObject.E(str));
                if (!state.f11447b) {
                    fA = 1.0f - fA;
                }
                constraintReference.f11422h = fA;
                return;
            case "vWeight":
                constraintReference.g = layoutVariables.a(cLObject.E(str));
                return;
            case "alpha":
                constraintReference.F = layoutVariables.a(cLObject.E(str));
                return;
            case "hBias":
                constraintReference.f11422h = layoutVariables.a(cLObject.E(str));
                return;
            case "vBias":
                constraintReference.f11423i = layoutVariables.a(cLObject.E(str));
                return;
            case "width":
                constraintReference.e0 = d(cLObject, str, state, state.f11446a);
                return;
            case "hWeight":
                constraintReference.f11421f = layoutVariables.a(cLObject.E(str));
                return;
            case "centerHorizontally":
                String strN4 = cLObject.N(str);
                ConstraintReference constraintReferenceB3 = strN4.equals("parent") ? state.b(0) : state.b(strN4);
                constraintReference.o(constraintReferenceB3);
                constraintReference.i(constraintReferenceB3);
                return;
            case "visibility":
                switch (cLObject.N(str)) {
                    case "invisible":
                        constraintReference.I = 4;
                        constraintReference.F = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        return;
                    case "gone":
                        constraintReference.I = 8;
                        return;
                    case "visible":
                        constraintReference.I = 0;
                        return;
                    default:
                        return;
                }
            default:
                c(cLObject, constraintReference, layoutVariables, state, str);
                return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0095  */
    public static void b(int i2, State state, LayoutVariables layoutVariables, CLArray cLArray) throws CLParsingException {
        String strH;
        ChainReference chainReference = i2 == 0 ? (HorizontalChainReference) state.e(State.Helper.HORIZONTAL_CHAIN) : (VerticalChainReference) state.e(State.Helper.VERTICAL_CHAIN);
        CLElement cLElementD = cLArray.D(1);
        if (cLElementD instanceof CLArray) {
            CLArray cLArray2 = (CLArray) cLElementD;
            if (cLArray2.f11408f.size() < 1) {
                return;
            }
            for (int i3 = 0; i3 < cLArray2.f11408f.size(); i3++) {
                chainReference.q(cLArray2.M(i3));
            }
            if (cLArray.f11408f.size() > 2) {
                CLElement cLElementD2 = cLArray.D(2);
                if (cLElementD2 instanceof CLObject) {
                    CLObject cLObject = (CLObject) cLElementD2;
                    for (String str : cLObject.Q()) {
                        str.getClass();
                        if (str.equals("style")) {
                            CLElement cLElementE = cLObject.E(str);
                            if (cLElementE instanceof CLArray) {
                                CLArray cLArray3 = (CLArray) cLElementE;
                                if (cLArray3.f11408f.size() > 1) {
                                    strH = cLArray3.M(0);
                                    chainReference.n0 = cLArray3.F(1);
                                } else {
                                    strH = cLElementE.h();
                                }
                            } else {
                                strH = cLElementE.h();
                            }
                            if (strH.equals("packed")) {
                                chainReference.t0 = State.Chain.PACKED;
                            } else if (strH.equals("spread_inside")) {
                                chainReference.t0 = State.Chain.SPREAD_INSIDE;
                            } else {
                                chainReference.t0 = State.Chain.SPREAD;
                            }
                        } else {
                            c(cLObject, chainReference, layoutVariables, state, str);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:61:0x00ec. Please report as an issue. */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r22v0, types: [androidx.constraintlayout.core.state.ConstraintReference] */
    /* JADX WARN: Type inference failed for: r24v0, types: [androidx.constraintlayout.core.state.State] */
    public static void c(CLObject cLObject, ConstraintReference constraintReference, LayoutVariables layoutVariables, State state, String str) throws CLParsingException {
        boolean z;
        char c2;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = state.f11447b;
        CLElement cLElementL = cLObject.L(str);
        CLArray cLArray = cLElementL instanceof CLArray ? (CLArray) cLElementL : null;
        ?? r16 = -1;
        r16 = -1;
        r16 = -1;
        r16 = -1;
        if (cLArray == null || cLArray.f11408f.size() <= 1) {
            String strO = cLObject.O(str);
            if (strO != null) {
                ConstraintReference constraintReferenceB = strO.equals("parent") ? state.b(0) : state.b(strO);
                str.getClass();
                switch (str) {
                    case "baseline":
                        state.a(constraintReference.f11417a);
                        state.a(constraintReferenceB.f11417a);
                        constraintReference.d0 = State.Constraint.BASELINE_TO_BASELINE;
                        constraintReference.X = constraintReferenceB;
                        break;
                    case "bottom":
                        constraintReference.e(constraintReferenceB);
                        break;
                    case "end":
                        if (z5) {
                            constraintReference.d0 = State.Constraint.RIGHT_TO_RIGHT;
                            constraintReference.M = constraintReferenceB;
                            break;
                        } else {
                            constraintReference.d0 = State.Constraint.LEFT_TO_LEFT;
                            constraintReference.J = constraintReferenceB;
                            break;
                        }
                        break;
                    case "top":
                        constraintReference.p(constraintReferenceB);
                        break;
                    case "start":
                        if (z5) {
                            constraintReference.d0 = State.Constraint.LEFT_TO_LEFT;
                            constraintReference.J = constraintReferenceB;
                            break;
                        } else {
                            constraintReference.d0 = State.Constraint.RIGHT_TO_RIGHT;
                            constraintReference.M = constraintReferenceB;
                            break;
                        }
                        break;
                }
            }
            return;
        }
        String strM = cLArray.M(0);
        CLElement cLElementK = cLArray.K(1);
        String strH = cLElementK instanceof CLString ? cLElementK.h() : null;
        int size = cLArray.f11408f.size();
        float fE = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fE2 = size > 2 ? state.f11446a.e(layoutVariables.a(cLArray.K(2))) : 0.0f;
        float fE3 = cLArray.f11408f.size() > 3 ? state.f11446a.e(layoutVariables.a(cLArray.K(3))) : 0.0f;
        ConstraintReference constraintReferenceB2 = strM.equals("parent") ? state.b(0) : state.b(strM);
        str.getClass();
        switch (str) {
            case "baseline":
                z = true;
                c2 = 2;
                strH.getClass();
                switch (strH) {
                    case "baseline":
                        state.a(constraintReference.f11417a);
                        state.a(constraintReferenceB2.f11417a);
                        constraintReference.d0 = State.Constraint.BASELINE_TO_BASELINE;
                        constraintReference.X = constraintReferenceB2;
                        break;
                    case "bottom":
                        state.a(constraintReference.f11417a);
                        constraintReference.d0 = State.Constraint.BASELINE_TO_BOTTOM;
                        constraintReference.Z = constraintReferenceB2;
                        break;
                    case "top":
                        state.a(constraintReference.f11417a);
                        constraintReference.d0 = State.Constraint.BASELINE_TO_TOP;
                        constraintReference.Y = constraintReferenceB2;
                        break;
                }
                z2 = z;
                z3 = false;
                break;
            case "circular":
                z = true;
                float fA = layoutVariables.a(cLArray.D(1));
                if (cLArray.f11408f.size() > 2) {
                    fE = state.f11446a.e(layoutVariables.a(cLArray.K(2)));
                }
                constraintReference.a0 = constraintReference.j(constraintReferenceB2);
                constraintReference.b0 = fA;
                constraintReference.c0 = fE;
                constraintReference.d0 = State.Constraint.CIRCULAR_CONSTRAINT;
                c2 = 2;
                z2 = z;
                z3 = false;
                break;
            case "bottom":
                strH.getClass();
                switch (strH) {
                    case "baseline":
                        state.a(constraintReferenceB2.f11417a);
                        constraintReference.d0 = State.Constraint.BOTTOM_TO_BASELINE;
                        constraintReference.W = constraintReferenceB2;
                        break;
                    case "bottom":
                        constraintReference.e(constraintReferenceB2);
                        break;
                    case "top":
                        constraintReference.d0 = State.Constraint.BOTTOM_TO_TOP;
                        constraintReference.U = constraintReferenceB2;
                        break;
                }
                z = true;
                c2 = 2;
                z2 = z;
                z3 = false;
                break;
            case "end":
                z2 = !z5;
                z = true;
                c2 = 2;
                z3 = true;
                break;
            case "top":
                strH.getClass();
                switch (strH) {
                    case "baseline":
                        state.a(constraintReferenceB2.f11417a);
                        constraintReference.d0 = State.Constraint.TOP_TO_BASELINE;
                        constraintReference.T = constraintReferenceB2;
                        break;
                    case "bottom":
                        constraintReference.d0 = State.Constraint.TOP_TO_BOTTOM;
                        constraintReference.S = constraintReferenceB2;
                        break;
                    case "top":
                        constraintReference.p(constraintReferenceB2);
                        break;
                }
                z = true;
                c2 = 2;
                z2 = z;
                z3 = false;
                break;
            case "left":
                z2 = true;
                z = true;
                c2 = 2;
                z3 = true;
                break;
            case "right":
                z2 = false;
                z = true;
                c2 = 2;
                z3 = true;
                break;
            case "start":
                z2 = z5;
                z = true;
                c2 = 2;
                z3 = true;
                break;
            default:
                z = true;
                c2 = 2;
                z2 = z;
                z3 = false;
                break;
        }
        if (z3) {
            strH.getClass();
            switch (strH.hashCode()) {
                case 100571:
                    if (strH.equals("end")) {
                        r16 = 0;
                    }
                    break;
                case 108511772:
                    if (strH.equals("right")) {
                        r16 = z;
                    }
                    break;
                case 109757538:
                    if (strH.equals("start")) {
                        r16 = c2;
                    }
                    break;
            }
            switch (r16) {
                case 0:
                    z4 = !z5;
                    break;
                case 1:
                    z4 = false;
                    break;
                case 2:
                    z4 = z5;
                    break;
                default:
                    z4 = z;
                    break;
            }
            if (z2) {
                if (z4) {
                    constraintReference.d0 = State.Constraint.LEFT_TO_LEFT;
                    constraintReference.J = constraintReferenceB2;
                } else {
                    constraintReference.d0 = State.Constraint.LEFT_TO_RIGHT;
                    constraintReference.K = constraintReferenceB2;
                }
            } else if (z4) {
                constraintReference.d0 = State.Constraint.RIGHT_TO_LEFT;
                constraintReference.L = constraintReferenceB2;
            } else {
                constraintReference.d0 = State.Constraint.RIGHT_TO_RIGHT;
                constraintReference.M = constraintReferenceB2;
            }
        }
        constraintReference.l(Float.valueOf(fE2)).n(Float.valueOf(fE3));
    }

    public static Dimension d(CLObject cLObject, String str, State state, ln0 ln0Var) throws CLParsingException {
        CLElement cLElementE = cLObject.E(str);
        Dimension dimensionB = Dimension.b(0);
        if (cLElementE instanceof CLString) {
            return e(cLElementE.h());
        }
        if (cLElementE instanceof CLNumber) {
            return Dimension.b(state.c(Float.valueOf(ln0Var.e(cLObject.G(str)))));
        }
        if (cLElementE instanceof CLObject) {
            CLObject cLObject2 = (CLObject) cLElementE;
            String strO = cLObject2.O("value");
            if (strO != null) {
                dimensionB = e(strO);
            }
            CLElement cLElementL = cLObject2.L("min");
            if (cLElementL != null) {
                if (cLElementL instanceof CLNumber) {
                    int iC = state.c(Float.valueOf(ln0Var.e(((CLNumber) cLElementL).i())));
                    if (iC >= 0) {
                        dimensionB.f11441a = iC;
                    }
                } else if (cLElementL instanceof CLString) {
                    dimensionB.f11441a = -2;
                }
            }
            CLElement cLElementL2 = cLObject2.L("max");
            if (cLElementL2 != null) {
                if (cLElementL2 instanceof CLNumber) {
                    int iC2 = state.c(Float.valueOf(ln0Var.e(((CLNumber) cLElementL2).i())));
                    if (dimensionB.f11442b >= 0) {
                        dimensionB.f11442b = iC2;
                        return dimensionB;
                    }
                } else if ((cLElementL2 instanceof CLString) && dimensionB.g) {
                    dimensionB.f11445f = Dimension.f11438i;
                    dimensionB.f11442b = Integer.MAX_VALUE;
                }
            }
        }
        return dimensionB;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Dimension e(String str) {
        Dimension dimensionB = Dimension.b(0);
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1460244870:
                if (str.equals("preferWrap")) {
                    b2 = 0;
                }
                break;
            case -995424086:
                if (str.equals("parent")) {
                    b2 = 1;
                }
                break;
            case -895684237:
                if (str.equals("spread")) {
                    b2 = 2;
                }
                break;
            case 3657802:
                if (str.equals("wrap")) {
                    b2 = 3;
                }
                break;
        }
        String str2 = Dimension.f11438i;
        String str3 = Dimension.f11439j;
        switch (b2) {
            case 0:
                return Dimension.c(str2);
            case 1:
                return new Dimension(Dimension.f11440k);
            case 2:
                return Dimension.c(str3);
            case 3:
                return new Dimension(str2);
            default:
                if (str.endsWith("%")) {
                    float f2 = Float.parseFloat(str.substring(0, str.indexOf(37))) / 100.0f;
                    Dimension dimension = new Dimension(Dimension.l);
                    dimension.f11443c = f2;
                    dimension.g = true;
                    dimension.f11442b = 0;
                    return dimension;
                }
                if (!str.contains(":")) {
                    return dimensionB;
                }
                Dimension dimension2 = new Dimension(Dimension.m);
                dimension2.f11444e = str;
                dimension2.f11445f = str3;
                dimension2.g = true;
                return dimension2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x004e  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e2  */
    public static void f(int i2, State state, String str, CLObject cLObject) throws CLParsingException {
        ArrayList<String> arrayListQ = cLObject.Q();
        ConstraintReference constraintReferenceB = state.b(str);
        if (i2 == 0) {
            state.d(0, str);
        } else {
            state.d(1, str);
        }
        boolean z = state.f11447b || i2 == 0;
        GuidelineReference guidelineReference = (GuidelineReference) constraintReferenceB.f11419c;
        boolean z2 = false;
        boolean z3 = true;
        float fG = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (String str2 : arrayListQ) {
            str2.getClass();
            switch (str2) {
                case "percent":
                    CLElement cLElementL = cLObject.L(str2);
                    CLArray cLArray = cLElementL instanceof CLArray ? (CLArray) cLElementL : null;
                    if (cLArray == null) {
                        fG = cLObject.G(str2);
                        z2 = true;
                        z3 = true;
                        break;
                    } else {
                        if (cLArray.f11408f.size() > 1) {
                            String strM = cLArray.M(0);
                            float F = cLArray.F(1);
                            switch (strM) {
                                case "end":
                                    z3 = !z;
                                    break;
                                case "left":
                                    z3 = true;
                                    fG = F;
                                    z2 = true;
                                    continue;
                                    break;
                                case "right":
                                    z3 = false;
                                    break;
                                case "start":
                                    z3 = z;
                                    break;
                            }
                            fG = F;
                        }
                        z2 = true;
                        break;
                    }
                    break;
                case "end":
                    fG = state.f11446a.e(cLObject.G(str2));
                    z3 = !z;
                    break;
                case "left":
                    fG = state.f11446a.e(cLObject.G(str2));
                    z3 = true;
                    break;
                case "right":
                    fG = state.f11446a.e(cLObject.G(str2));
                    z3 = false;
                    break;
                case "start":
                    fG = state.f11446a.e(cLObject.G(str2));
                    z3 = z;
                    break;
            }
        }
        if (z2) {
            if (z3) {
                guidelineReference.d = -1;
                guidelineReference.f11467e = -1;
                guidelineReference.f11468f = fG;
                return;
            } else {
                guidelineReference.d = -1;
                guidelineReference.f11467e = -1;
                guidelineReference.f11468f = 1.0f - fG;
                return;
            }
        }
        if (z3) {
            guidelineReference.d = guidelineReference.f11464a.c(Float.valueOf(fG));
            guidelineReference.f11467e = -1;
            guidelineReference.f11468f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        } else {
            Float fValueOf = Float.valueOf(fG);
            guidelineReference.d = -1;
            guidelineReference.f11467e = guidelineReference.f11464a.c(fValueOf);
            guidelineReference.f11468f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    public static void g(State state, LayoutVariables layoutVariables, String str, CLObject cLObject) throws CLParsingException {
        ConstraintReference constraintReferenceB = state.b(str);
        Dimension dimension = constraintReferenceB.e0;
        String str2 = Dimension.f11438i;
        if (dimension == null) {
            constraintReferenceB.e0 = new Dimension(str2);
        }
        if (constraintReferenceB.f0 == null) {
            constraintReferenceB.f0 = new Dimension(str2);
        }
        Iterator it = cLObject.Q().iterator();
        while (it.hasNext()) {
            a(cLObject, constraintReferenceB, layoutVariables, state, (String) it.next());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:194:0x034b  */
    /* JADX WARN: Code duplicated, block: B:196:0x034f  */
    /* JADX WARN: Code duplicated, block: B:200:0x0365  */
    /* JADX WARN: Code duplicated, block: B:202:0x0369  */
    /* JADX WARN: Code duplicated, block: B:206:0x037f  */
    /* JADX WARN: Code duplicated, block: B:208:0x0383  */
    /* JADX WARN: Code duplicated, block: B:224:0x040e  */
    /* JADX WARN: Code duplicated, block: B:243:0x048b  */
    /* JADX WARN: Code duplicated, block: B:253:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:265:0x0537  */
    /* JADX WARN: Code duplicated, block: B:292:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:308:0x060b  */
    /* JADX WARN: Code duplicated, block: B:336:0x06ad  */
    /* JADX WARN: Code duplicated, block: B:34:0x0097  */
    /* JADX WARN: Code duplicated, block: B:362:0x070a  */
    /* JADX WARN: Code duplicated, block: B:415:0x07dd  */
    /* JADX WARN: Code duplicated, block: B:455:0x0856  */
    /* JADX WARN: Code duplicated, block: B:534:0x0a63  */
    /* JADX WARN: Code duplicated, block: B:661:0x0c7c  */
    /* JADX WARN: Code duplicated, block: B:750:0x0ed6  */
    /* JADX WARN: Code duplicated, block: B:769:0x0f01  */
    /* JADX WARN: Code duplicated, block: B:7:0x0029  */
    /* JADX WARN: Code duplicated, block: B:832:0x03a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x0184 A[PHI: r29
      0x0184: PHI (r29v15 java.util.Iterator) = 
      (r29v1 java.util.Iterator)
      (r29v2 java.util.Iterator)
      (r29v3 java.util.Iterator)
      (r29v4 java.util.Iterator)
      (r29v5 java.util.Iterator)
      (r29v6 java.util.Iterator)
      (r29v7 java.util.Iterator)
      (r29v8 java.util.Iterator)
      (r29v9 java.util.Iterator)
      (r29v10 java.util.Iterator)
      (r29v11 java.util.Iterator)
      (r29v12 java.util.Iterator)
      (r29v13 java.util.Iterator)
      (r29v16 java.util.Iterator)
     binds: [B:149:0x0239, B:145:0x022c, B:141:0x021f, B:137:0x0212, B:133:0x0205, B:129:0x01f8, B:125:0x01eb, B:121:0x01db, B:117:0x01cd, B:113:0x01bd, B:109:0x01ad, B:105:0x019f, B:101:0x018f, B:98:0x0182] A[DONT_GENERATE, DONT_INLINE]] */
    public static void h(CLObject cLObject, State state, LayoutVariables layoutVariables) throws CLParsingException {
        Iterator it;
        CLObject cLObject2;
        String strO;
        CLObject cLObject3;
        String strO2;
        String str;
        String strN;
        byte b2;
        float fU;
        float fJ;
        float fJ2;
        float fJ3;
        String strH;
        int iU;
        Iterator it2;
        Iterator it3;
        int i2;
        float F;
        float fE;
        float f2;
        float fE2;
        float f3;
        float F2;
        String strH2;
        Iterator it4;
        byte b3;
        String str2;
        String str3;
        String strH3;
        String strM;
        String strM2;
        Float fValueOf;
        Float fValueOf2;
        Float fValueOf3;
        String strH4;
        String strM3;
        String strM4;
        float fU2;
        float f4;
        float fJ4;
        float fJ5;
        Float fValueOf4;
        Float f5;
        Float fValueOf5;
        CLArray cLArray;
        String str4;
        float F3;
        float fE3;
        float fE4;
        LayoutVariables layoutVariables2 = layoutVariables;
        Iterator it5 = cLObject.Q().iterator();
        while (it5.hasNext()) {
            String str5 = (String) it5.next();
            CLElement cLElementE = cLObject.E(str5);
            str5.getClass();
            switch (str5) {
                case "Helpers":
                    it = it5;
                    if (!(cLElementE instanceof CLArray)) {
                        break;
                    } else {
                        CLArray cLArray2 = (CLArray) cLElementE;
                        for (int i3 = 0; i3 < cLArray2.f11408f.size(); i3++) {
                            CLElement cLElementD = cLArray2.D(i3);
                            if (cLElementD instanceof CLArray) {
                                CLArray cLArray3 = (CLArray) cLElementD;
                                if (cLArray3.f11408f.size() > 1) {
                                    switch (cLArray3.M(0)) {
                                        case "vGuideline":
                                            CLElement cLElementD2 = cLArray3.D(1);
                                            if (!(cLElementD2 instanceof CLObject) || (strO = (cLObject2 = (CLObject) cLElementD2).O(b.a.f24015b)) == null) {
                                                break;
                                            } else {
                                                f(1, state, strO, cLObject2);
                                                break;
                                            }
                                            break;
                                        case "hChain":
                                            b(0, state, layoutVariables2, cLArray3);
                                            break;
                                        case "vChain":
                                            b(1, state, layoutVariables2, cLArray3);
                                            break;
                                        case "hGuideline":
                                            CLElement cLElementD3 = cLArray3.D(1);
                                            if ((cLElementD3 instanceof CLObject) && (strO2 = (cLObject3 = (CLObject) cLElementD3).O(b.a.f24015b)) != null) {
                                                f(0, state, strO2, cLObject3);
                                            }
                                            break;
                                        default:
                                            break;
                                    }
                                }
                            }
                        }
                        break;
                    }
                    break;
                case "Generate":
                    it = it5;
                    if (!(cLElementE instanceof CLObject)) {
                        break;
                    } else {
                        CLObject cLObject4 = (CLObject) cLElementE;
                        for (String str6 : cLObject4.Q()) {
                            CLElement cLElementE2 = cLObject4.E(str6);
                            HashMap map = layoutVariables2.f11436c;
                            ArrayList arrayList = map.containsKey(str6) ? (ArrayList) map.get(str6) : null;
                            if (arrayList != null && (cLElementE2 instanceof CLObject)) {
                                Iterator it6 = arrayList.iterator();
                                while (it6.hasNext()) {
                                    g(state, layoutVariables2, (String) it6.next(), (CLObject) cLElementE2);
                                }
                            }
                        }
                        break;
                    }
                    break;
                case "Variables":
                    it = it5;
                    if (!(cLElementE instanceof CLObject)) {
                        continue;
                        break;
                    } else {
                        CLObject cLObject5 = (CLObject) cLElementE;
                        for (String str7 : cLObject5.Q()) {
                            CLElement cLElementE3 = cLObject5.E(str7);
                            if (cLElementE3 instanceof CLNumber) {
                                layoutVariables2.f11434a.put(str7, Integer.valueOf(cLElementE3.u()));
                            } else if (cLElementE3 instanceof CLObject) {
                                CLObject cLObject6 = (CLObject) cLElementE3;
                                if (cLObject6.P("from") && cLObject6.P(MvelScriptManager.VAR_TO)) {
                                    float fA = layoutVariables2.a(cLObject6.E("from"));
                                    float fA2 = layoutVariables2.a(cLObject6.E(MvelScriptManager.VAR_TO));
                                    String strO3 = cLObject6.O("prefix");
                                    String strO4 = cLObject6.O("postfix");
                                    HashMap map2 = layoutVariables2.f11435b;
                                    if (map2.containsKey(str7)) {
                                        map2.get(str7);
                                    }
                                    FiniteGenerator finiteGenerator = new FiniteGenerator();
                                    finiteGenerator.f11428b = false;
                                    finiteGenerator.f11430e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    finiteGenerator.f11427a = 1.0f;
                                    if (strO3 == null) {
                                        strO3 = "";
                                    }
                                    finiteGenerator.f11429c = strO3;
                                    if (strO4 == null) {
                                        strO4 = "";
                                    }
                                    finiteGenerator.d = strO4;
                                    finiteGenerator.f11431f = fA2;
                                    map2.put(str7, finiteGenerator);
                                    HashMap map3 = layoutVariables2.f11436c;
                                    ArrayList arrayList2 = new ArrayList();
                                    int i4 = (int) fA;
                                    int i5 = (int) fA2;
                                    int i6 = i4;
                                    while (i4 <= i5) {
                                        arrayList2.add(finiteGenerator.f11429c + i6 + finiteGenerator.d);
                                        i6 += (int) finiteGenerator.f11427a;
                                        i4++;
                                    }
                                    map3.put(str7, arrayList2);
                                } else if (cLObject6.P("from") && cLObject6.P("step")) {
                                    float fA3 = layoutVariables2.a(cLObject6.E("from"));
                                    float fA4 = layoutVariables2.a(cLObject6.E("step"));
                                    HashMap map4 = layoutVariables2.f11435b;
                                    if (map4.containsKey(str7)) {
                                        map4.get(str7);
                                    }
                                    Generator generator = new Generator();
                                    generator.f11432a = fA4;
                                    generator.f11433b = fA3;
                                    map4.put(str7, generator);
                                } else if (cLObject6.P("ids")) {
                                    CLElement cLElementE4 = cLObject6.E("ids");
                                    if (!(cLElementE4 instanceof CLArray)) {
                                        throw new CLParsingException("no array found for key <ids>, found [" + cLElementE4.v() + "] : " + cLElementE4, cLObject6);
                                    }
                                    CLArray cLArray4 = (CLArray) cLElementE4;
                                    ArrayList arrayList3 = new ArrayList();
                                    for (int i7 = 0; i7 < cLArray4.f11408f.size(); i7++) {
                                        arrayList3.add(cLArray4.M(i7));
                                    }
                                    layoutVariables2.f11436c.put(str7, arrayList3);
                                } else if (cLObject6.P("tag")) {
                                    String strN2 = cLObject6.N("tag");
                                    HashMap map5 = state.f11449e;
                                    layoutVariables2.f11436c.put(str7, map5.containsKey(strN2) ? (ArrayList) map5.get(strN2) : null);
                                }
                            }
                        }
                        break;
                    }
                    break;
                default:
                    if (!(cLElementE instanceof CLObject)) {
                        it = it5;
                        if (cLElementE instanceof CLNumber) {
                            layoutVariables2.f11434a.put(str5, Integer.valueOf(cLElementE.u()));
                        }
                        break;
                    } else {
                        CLObject cLObject7 = (CLObject) cLElementE;
                        Iterator it7 = cLObject7.Q().iterator();
                        while (true) {
                            str = "type";
                            if (!it7.hasNext()) {
                                strN = null;
                            } else if (((String) it7.next()).equals("type")) {
                                strN = cLObject7.N("type");
                            }
                        }
                        if (strN != null) {
                            String str8 = "hFlow";
                            switch (strN) {
                                case "vGuideline":
                                    b2 = 0;
                                    break;
                                case "column":
                                    b2 = 1;
                                    break;
                                case "hChain":
                                    b2 = 2;
                                    break;
                                case "vChain":
                                    b2 = 3;
                                    break;
                                case "barrier":
                                    b2 = 4;
                                    break;
                                case "row":
                                    b2 = 5;
                                    break;
                                case "grid":
                                    b2 = 6;
                                    break;
                                case "hFlow":
                                    b2 = 7;
                                    break;
                                case "vFlow":
                                    b2 = 8;
                                    break;
                                case "hGuideline":
                                    b2 = 9;
                                    break;
                                default:
                                    b2 = -1;
                                    break;
                            }
                            String str9 = "start";
                            it = it5;
                            switch (b2) {
                                case 0:
                                    f(1, state, str5, cLObject7);
                                    continue;
                                case 1:
                                case 5:
                                case 6:
                                    ConstraintReference constraintReferenceB = state.b(str5);
                                    Facade facade = constraintReferenceB.f11419c;
                                    if (facade == null || !(facade instanceof GridReference)) {
                                        State.Helper helper = State.Helper.GRID;
                                        if (strN.charAt(0) == 'r') {
                                            helper = State.Helper.ROW;
                                        } else if (strN.charAt(0) == 'c') {
                                            helper = State.Helper.COLUMN;
                                        }
                                        GridReference gridReference = new GridReference(state, helper);
                                        constraintReferenceB.f11419c = gridReference;
                                        constraintReferenceB.a(gridReference.b());
                                    }
                                    GridReference gridReference2 = (GridReference) constraintReferenceB.f11419c;
                                    for (String str10 : cLObject7.Q()) {
                                        str10.getClass();
                                        switch (str10) {
                                            case "orientation":
                                                gridReference2.s0 = cLObject7.E(str10).u();
                                                break;
                                            case "padding":
                                                CLElement cLElementE5 = cLObject7.E(str10);
                                                if (cLElementE5 instanceof CLArray) {
                                                    CLArray cLArray5 = (CLArray) cLElementE5;
                                                    if (cLArray5.f11408f.size() > 1) {
                                                        fU = cLArray5.J(0);
                                                        fJ3 = cLArray5.J(1);
                                                        if (cLArray5.f11408f.size() > 2) {
                                                            fJ2 = cLArray5.J(2);
                                                            try {
                                                                try {
                                                                    fJ = ((CLArray) cLElementE5).J(3);
                                                                } catch (ArrayIndexOutOfBoundsException unused) {
                                                                    fJ = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                                }
                                                            } catch (ArrayIndexOutOfBoundsException unused2) {
                                                            }
                                                        } else {
                                                            fJ2 = fU;
                                                            fJ = fJ3;
                                                        }
                                                    } else {
                                                        fU = cLElementE5.u();
                                                        fJ = fU;
                                                        fJ2 = fJ;
                                                        fJ3 = fJ2;
                                                    }
                                                } else {
                                                    fU = cLElementE5.u();
                                                    fJ = fU;
                                                    fJ2 = fJ;
                                                    fJ3 = fJ2;
                                                }
                                                gridReference2.o0 = Math.round(state.f11446a.e(fU));
                                                gridReference2.q0 = Math.round(state.f11446a.e(fJ3));
                                                gridReference2.p0 = Math.round(state.f11446a.e(fJ2));
                                                gridReference2.r0 = Math.round(state.f11446a.e(fJ));
                                                break;
                                            case "contains":
                                                CLElement cLElementL = cLObject7.L(str10);
                                                CLArray cLArray6 = cLElementL instanceof CLArray ? (CLArray) cLElementL : null;
                                                if (cLArray6 != null) {
                                                    for (int i8 = 0; i8 < cLArray6.f11408f.size(); i8++) {
                                                        gridReference2.q(state.b(cLArray6.D(i8).h()));
                                                    }
                                                }
                                                break;
                                            case "hGap":
                                                gridReference2.v0 = state.f11446a.e(cLObject7.E(str10).i());
                                                break;
                                            case "rows":
                                                int iU2 = cLObject7.E(str10).u();
                                                if (iU2 > 0 && gridReference2.l0 != State.Helper.COLUMN) {
                                                    gridReference2.t0 = iU2;
                                                }
                                                break;
                                            case "vGap":
                                                gridReference2.w0 = state.f11446a.e(cLObject7.E(str10).i());
                                                break;
                                            case "flags":
                                                try {
                                                    CLElement cLElementE6 = cLObject7.E(str10);
                                                    if (cLElementE6 instanceof CLNumber) {
                                                        iU = cLElementE6.u();
                                                        strH = "";
                                                    } else {
                                                        strH = cLElementE6.h();
                                                        iU = 0;
                                                    }
                                                } catch (Exception e2) {
                                                    System.err.println("Error parsing grid flags " + e2);
                                                    strH = "";
                                                }
                                                if (strH.isEmpty()) {
                                                    gridReference2.B0 = iU;
                                                } else {
                                                    gridReference2.getClass();
                                                    if (!strH.isEmpty()) {
                                                        String[] strArrSplit = strH.split("\\|");
                                                        gridReference2.B0 = 0;
                                                        for (String str11 : strArrSplit) {
                                                            String lowerCase = str11.toLowerCase();
                                                            lowerCase.getClass();
                                                            if (lowerCase.equals("subgridbycolrow")) {
                                                                gridReference2.B0 |= 1;
                                                            } else if (lowerCase.equals("spansrespectwidgetorder")) {
                                                                gridReference2.B0 |= 2;
                                                            }
                                                        }
                                                    }
                                                }
                                                break;
                                            case "skips":
                                                String strH5 = cLObject7.E(str10).h();
                                                if (strH5.contains(":")) {
                                                    gridReference2.A0 = strH5;
                                                }
                                                break;
                                            case "spans":
                                                String strH6 = cLObject7.E(str10).h();
                                                if (strH6.contains(":")) {
                                                    gridReference2.z0 = strH6;
                                                }
                                                break;
                                            case "rowWeights":
                                                String strH7 = cLObject7.E(str10).h();
                                                if (strH7.contains(",")) {
                                                    gridReference2.x0 = strH7;
                                                }
                                                break;
                                            case "columns":
                                                int iU3 = cLObject7.E(str10).u();
                                                if (iU3 > 0 && gridReference2.l0 != State.Helper.ROW) {
                                                    gridReference2.u0 = iU3;
                                                }
                                                break;
                                            case "columnWeights":
                                                String strH8 = cLObject7.E(str10).h();
                                                if (strH8.contains(",")) {
                                                    gridReference2.y0 = strH8;
                                                }
                                                break;
                                            default:
                                                a(cLObject7, state.b(str5), layoutVariables2, state, str10);
                                                break;
                                        }
                                    }
                                    continue;
                                case 2:
                                case 3:
                                    ChainReference chainReference = strN.charAt(0) == 'h' ? (HorizontalChainReference) state.e(State.Helper.HORIZONTAL_CHAIN) : (VerticalChainReference) state.e(State.Helper.VERTICAL_CHAIN);
                                    chainReference.f11417a = str5;
                                    Iterator it8 = cLObject7.Q().iterator();
                                    while (true) {
                                        if (!it8.hasNext()) {
                                            break;
                                        } else {
                                            String str12 = (String) it8.next();
                                            str12.getClass();
                                            switch (str12) {
                                                case "bottom":
                                                case "end":
                                                case "top":
                                                case "left":
                                                case "right":
                                                case "start":
                                                    it2 = it8;
                                                    c(cLObject7, chainReference, layoutVariables, state, str12);
                                                    it8 = it2;
                                                    break;
                                                case "contains":
                                                    CLElement cLElementE7 = cLObject7.E(str12);
                                                    if (cLElementE7 instanceof CLArray) {
                                                        CLArray cLArray7 = (CLArray) cLElementE7;
                                                        if (cLArray7.f11408f.size() >= 1) {
                                                            int i9 = 0;
                                                            while (i9 < cLArray7.f11408f.size()) {
                                                                CLElement cLElementD4 = cLArray7.D(i9);
                                                                if (cLElementD4 instanceof CLArray) {
                                                                    CLArray cLArray8 = (CLArray) cLElementD4;
                                                                    if (cLArray8.f11408f.size() > 0) {
                                                                        String strH9 = cLArray8.D(0).h();
                                                                        it3 = it8;
                                                                        int size = cLArray8.f11408f.size();
                                                                        i2 = i9;
                                                                        if (size != 2) {
                                                                            if (size == 3) {
                                                                                F2 = cLArray8.F(1);
                                                                                fE = state.f11446a.e(cLArray8.F(2));
                                                                                f3 = fE;
                                                                            } else if (size == 4) {
                                                                                F2 = cLArray8.F(1);
                                                                                float fE5 = state.f11446a.e(cLArray8.F(2));
                                                                                fE = state.f11446a.e(cLArray8.F(3));
                                                                                f3 = fE5;
                                                                            } else if (size != 6) {
                                                                                fE = Float.NaN;
                                                                                f2 = Float.NaN;
                                                                                fE2 = Float.NaN;
                                                                                F = Float.NaN;
                                                                                f3 = Float.NaN;
                                                                            } else {
                                                                                float F4 = cLArray8.F(1);
                                                                                float fE6 = state.f11446a.e(cLArray8.F(2));
                                                                                float fE7 = state.f11446a.e(cLArray8.F(3));
                                                                                float fE8 = state.f11446a.e(cLArray8.F(4));
                                                                                fE2 = state.f11446a.e(cLArray8.F(5));
                                                                                fE = fE7;
                                                                                f3 = fE6;
                                                                                F = F4;
                                                                                f2 = fE8;
                                                                            }
                                                                            F = F2;
                                                                            f2 = Float.NaN;
                                                                            fE2 = Float.NaN;
                                                                        } else {
                                                                            F = cLArray8.F(1);
                                                                            fE = Float.NaN;
                                                                            f2 = Float.NaN;
                                                                            fE2 = Float.NaN;
                                                                            f3 = Float.NaN;
                                                                        }
                                                                        chainReference.q(strH9);
                                                                        String string = strH9.toString();
                                                                        if (!Float.isNaN(F)) {
                                                                            chainReference.o0.put(string, Float.valueOf(F));
                                                                        }
                                                                        if (!Float.isNaN(f3)) {
                                                                            chainReference.p0.put(string, Float.valueOf(f3));
                                                                        }
                                                                        if (!Float.isNaN(fE)) {
                                                                            chainReference.q0.put(string, Float.valueOf(fE));
                                                                        }
                                                                        if (!Float.isNaN(f2)) {
                                                                            if (chainReference.r0 == null) {
                                                                                chainReference.r0 = new HashMap();
                                                                            }
                                                                            chainReference.r0.put(string, Float.valueOf(f2));
                                                                        }
                                                                        if (!Float.isNaN(fE2)) {
                                                                            if (chainReference.s0 == null) {
                                                                                chainReference.s0 = new HashMap();
                                                                            }
                                                                            chainReference.s0.put(string, Float.valueOf(fE2));
                                                                        }
                                                                    } else {
                                                                        it3 = it8;
                                                                        i2 = i9;
                                                                    }
                                                                } else {
                                                                    it3 = it8;
                                                                    i2 = i9;
                                                                    chainReference.q(cLElementD4.h());
                                                                }
                                                                i9 = i2 + 1;
                                                                it8 = it3;
                                                            }
                                                            it2 = it8;
                                                            it8 = it2;
                                                            break;
                                                        }
                                                    }
                                                    PrintStream printStream = System.err;
                                                    StringBuilder sbU = n00.u(str5, " contains should be an array \"");
                                                    sbU.append(cLElementE7.h());
                                                    sbU.append("\"");
                                                    printStream.println(sbU.toString());
                                                    break;
                                                case "style":
                                                    CLElement cLElementE8 = cLObject7.E(str12);
                                                    if (cLElementE8 instanceof CLArray) {
                                                        CLArray cLArray9 = (CLArray) cLElementE8;
                                                        if (cLArray9.f11408f.size() > 1) {
                                                            strH2 = cLArray9.M(0);
                                                            chainReference.n0 = cLArray9.F(1);
                                                        } else {
                                                            strH2 = cLElementE8.h();
                                                        }
                                                    } else {
                                                        strH2 = cLElementE8.h();
                                                    }
                                                    if (strH2.equals("packed")) {
                                                        chainReference.t0 = State.Chain.PACKED;
                                                    } else if (strH2.equals("spread_inside")) {
                                                        chainReference.t0 = State.Chain.SPREAD_INSIDE;
                                                    } else {
                                                        chainReference.t0 = State.Chain.SPREAD;
                                                    }
                                                    it2 = it8;
                                                    it8 = it2;
                                                    break;
                                                default:
                                                    it2 = it8;
                                                    it8 = it2;
                                                    break;
                                            }
                                        }
                                    }
                                    break;
                                case 4:
                                    boolean z = state.f11447b;
                                    State.Direction direction = State.Direction.END;
                                    ConstraintReference constraintReferenceB2 = state.b(str5);
                                    Facade facade2 = constraintReferenceB2.f11419c;
                                    if (facade2 == null || !(facade2 instanceof BarrierReference)) {
                                        BarrierReference barrierReference = new BarrierReference(state);
                                        barrierReference.n0 = direction;
                                        constraintReferenceB2.f11419c = barrierReference;
                                        constraintReferenceB2.a(barrierReference.b());
                                    }
                                    BarrierReference barrierReference2 = (BarrierReference) constraintReferenceB2.f11419c;
                                    for (String str13 : cLObject7.Q()) {
                                        str13.getClass();
                                        switch (str13) {
                                            case "margin":
                                                CLElement cLElementL2 = cLObject7.L(str13);
                                                float fI = cLElementL2 instanceof CLNumber ? cLElementL2.i() : Float.NaN;
                                                if (!Float.isNaN(fI)) {
                                                    barrierReference2.l(Float.valueOf(state.f11446a.e(fI)));
                                                    break;
                                                } else {
                                                    break;
                                                }
                                                break;
                                            case "direction":
                                                switch (cLObject7.N(str13)) {
                                                    case "bottom":
                                                        barrierReference2.n0 = State.Direction.BOTTOM;
                                                        break;
                                                    case "end":
                                                        if (!z) {
                                                            barrierReference2.n0 = State.Direction.LEFT;
                                                            break;
                                                        } else {
                                                            barrierReference2.n0 = State.Direction.RIGHT;
                                                            break;
                                                        }
                                                        break;
                                                    case "top":
                                                        barrierReference2.n0 = State.Direction.TOP;
                                                        break;
                                                    case "left":
                                                        barrierReference2.n0 = State.Direction.LEFT;
                                                        break;
                                                    case "right":
                                                        barrierReference2.n0 = State.Direction.RIGHT;
                                                        break;
                                                    case "start":
                                                        if (!z) {
                                                            barrierReference2.n0 = State.Direction.RIGHT;
                                                            break;
                                                        } else {
                                                            barrierReference2.n0 = State.Direction.LEFT;
                                                            break;
                                                        }
                                                        break;
                                                }
                                                break;
                                            case "contains":
                                                CLElement cLElementL3 = cLObject7.L(str13);
                                                CLArray cLArray10 = cLElementL3 instanceof CLArray ? (CLArray) cLElementL3 : null;
                                                if (cLArray10 == null) {
                                                    break;
                                                } else {
                                                    for (int i10 = 0; i10 < cLArray10.f11408f.size(); i10++) {
                                                        barrierReference2.q(state.b(cLArray10.D(i10).h()));
                                                    }
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                    break;
                                case 7:
                                case 8:
                                    Float fValueOf6 = Float.valueOf(0.5f);
                                    boolean z2 = strN.charAt(0) == 'v';
                                    ConstraintReference constraintReferenceB3 = state.b(str5);
                                    boolean z3 = z2;
                                    Facade facade3 = constraintReferenceB3.f11419c;
                                    if (facade3 == null || !(facade3 instanceof FlowReference)) {
                                        FlowReference flowReference = z3 ? new FlowReference(state, State.Helper.VERTICAL_FLOW) : new FlowReference(state, State.Helper.HORIZONTAL_FLOW);
                                        constraintReferenceB3.f11419c = flowReference;
                                        constraintReferenceB3.a(flowReference.b());
                                    } else {
                                        str9 = "start";
                                    }
                                    FlowReference flowReference2 = (FlowReference) constraintReferenceB3.f11419c;
                                    Iterator it9 = cLObject7.Q().iterator();
                                    while (it9.hasNext()) {
                                        String str14 = (String) it9.next();
                                        str14.getClass();
                                        switch (str14.hashCode()) {
                                            case -1254185091:
                                                it4 = it9;
                                                if (str14.equals("hAlign")) {
                                                    b3 = 0;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case -1237307863:
                                                it4 = it9;
                                                if (str14.equals("hStyle")) {
                                                    b3 = 1;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case -1198076529:
                                                it4 = it9;
                                                if (str14.equals("hFlowBias")) {
                                                    b3 = 2;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case -853376977:
                                                it4 = it9;
                                                if (str14.equals("vAlign")) {
                                                    b3 = 3;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case -836499749:
                                                it4 = it9;
                                                if (str14.equals("vStyle")) {
                                                    b3 = 4;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case -806339567:
                                                it4 = it9;
                                                if (str14.equals("padding")) {
                                                    b3 = 5;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case -732635235:
                                                it4 = it9;
                                                if (str14.equals("vFlowBias")) {
                                                    b3 = 6;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case -567445985:
                                                it4 = it9;
                                                if (str14.equals("contains")) {
                                                    b3 = 7;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case -488900360:
                                                it4 = it9;
                                                if (str14.equals("maxElement")) {
                                                    b3 = 8;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case 3169614:
                                                it4 = it9;
                                                if (str14.equals("hGap")) {
                                                    b3 = 9;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case 3575610:
                                                it4 = it9;
                                                if (str14.equals(str)) {
                                                    b3 = 10;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case 3586688:
                                                it4 = it9;
                                                if (str14.equals("vGap")) {
                                                    b3 = 11;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            case 3657802:
                                                it4 = it9;
                                                if (str14.equals("wrap")) {
                                                    b3 = 12;
                                                } else {
                                                    b3 = -1;
                                                }
                                                break;
                                            default:
                                                it4 = it9;
                                                b3 = -1;
                                                break;
                                        }
                                        switch (b3) {
                                            case 0:
                                                str8 = str8;
                                                str2 = str;
                                                String strH10 = cLObject7.E(str14).h();
                                                if (strH10.equals("end")) {
                                                    str3 = str9;
                                                    flowReference2.z0 = 1;
                                                } else {
                                                    str3 = str9;
                                                    if (strH10.equals(str3)) {
                                                        flowReference2.z0 = 0;
                                                    } else {
                                                        flowReference2.z0 = 2;
                                                    }
                                                }
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 1:
                                                str8 = str8;
                                                str2 = str;
                                                CLElement cLElementE9 = cLObject7.E(str14);
                                                if (cLElementE9 instanceof CLArray) {
                                                    CLArray cLArray11 = (CLArray) cLElementE9;
                                                    if (cLArray11.f11408f.size() > 1) {
                                                        strM = cLArray11.M(0);
                                                        strH3 = cLArray11.M(1);
                                                        strM2 = cLArray11.f11408f.size() > 2 ? cLArray11.M(2) : "";
                                                    } else {
                                                        strH3 = cLElementE9.h();
                                                        strM = "";
                                                        strM2 = strM;
                                                    }
                                                } else {
                                                    strH3 = cLElementE9.h();
                                                    strM = "";
                                                    strM2 = strM;
                                                }
                                                if (!strH3.equals("")) {
                                                    flowReference2.v0 = State.Chain.a(strH3);
                                                }
                                                if (!strM.equals("")) {
                                                    flowReference2.w0 = State.Chain.a(strM);
                                                }
                                                if (!strM2.equals("")) {
                                                    flowReference2.x0 = State.Chain.a(strM2);
                                                }
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 2:
                                                str8 = str8;
                                                str2 = str;
                                                CLElement cLElementE10 = cLObject7.E(str14);
                                                if (cLElementE10 instanceof CLArray) {
                                                    CLArray cLArray12 = (CLArray) cLElementE10;
                                                    if (cLArray12.f11408f.size() > 1) {
                                                        fValueOf2 = Float.valueOf(cLArray12.F(0));
                                                        fValueOf = Float.valueOf(cLArray12.F(1));
                                                        fValueOf3 = cLArray12.f11408f.size() > 2 ? Float.valueOf(cLArray12.F(2)) : fValueOf6;
                                                    } else {
                                                        fValueOf = Float.valueOf(cLElementE10.i());
                                                        fValueOf2 = fValueOf6;
                                                        fValueOf3 = fValueOf2;
                                                    }
                                                } else {
                                                    fValueOf = Float.valueOf(cLElementE10.i());
                                                    fValueOf2 = fValueOf6;
                                                    fValueOf3 = fValueOf2;
                                                }
                                                flowReference2.f11422h = fValueOf.floatValue();
                                                if (fValueOf2.floatValue() != 0.5f) {
                                                    flowReference2.K0 = fValueOf2.floatValue();
                                                }
                                                if (fValueOf3.floatValue() != 0.5f) {
                                                    flowReference2.L0 = fValueOf3.floatValue();
                                                }
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 3:
                                                str8 = str8;
                                                str2 = str;
                                                switch (cLObject7.E(str14).h()) {
                                                    case "baseline":
                                                        flowReference2.y0 = 3;
                                                        break;
                                                    case "bottom":
                                                        flowReference2.y0 = 1;
                                                        break;
                                                    case "top":
                                                        flowReference2.y0 = 0;
                                                        break;
                                                    default:
                                                        flowReference2.y0 = 2;
                                                        break;
                                                }
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 4:
                                                str8 = str8;
                                                str2 = str;
                                                CLElement cLElementE11 = cLObject7.E(str14);
                                                if (cLElementE11 instanceof CLArray) {
                                                    CLArray cLArray13 = (CLArray) cLElementE11;
                                                    if (cLArray13.f11408f.size() > 1) {
                                                        strM3 = cLArray13.M(0);
                                                        strH4 = cLArray13.M(1);
                                                        strM4 = cLArray13.f11408f.size() > 2 ? cLArray13.M(2) : "";
                                                    } else {
                                                        strH4 = cLElementE11.h();
                                                        strM3 = "";
                                                        strM4 = strM3;
                                                    }
                                                } else {
                                                    strH4 = cLElementE11.h();
                                                    strM3 = "";
                                                    strM4 = strM3;
                                                }
                                                if (!strH4.equals("")) {
                                                    flowReference2.s0 = State.Chain.a(strH4);
                                                }
                                                if (!strM3.equals("")) {
                                                    flowReference2.t0 = State.Chain.a(strM3);
                                                }
                                                if (!strM4.equals("")) {
                                                    flowReference2.u0 = State.Chain.a(strM4);
                                                }
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 5:
                                                str8 = str8;
                                                str2 = str;
                                                CLElement cLElementE12 = cLObject7.E(str14);
                                                if (cLElementE12 instanceof CLArray) {
                                                    CLArray cLArray14 = (CLArray) cLElementE12;
                                                    if (cLArray14.f11408f.size() > 1) {
                                                        float fJ6 = cLArray14.J(0);
                                                        fJ4 = cLArray14.J(1);
                                                        if (cLArray14.f11408f.size() > 2) {
                                                            float fJ7 = cLArray14.J(2);
                                                            try {
                                                                fJ5 = ((CLArray) cLElementE12).J(3);
                                                                f4 = fJ7;
                                                                fU2 = fJ6;
                                                            } catch (ArrayIndexOutOfBoundsException unused3) {
                                                                f4 = fJ7;
                                                                fU2 = fJ6;
                                                                fJ5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                            }
                                                        } else {
                                                            fJ5 = fJ4;
                                                            fU2 = fJ6;
                                                            f4 = fU2;
                                                        }
                                                    } else {
                                                        fU2 = cLElementE12.u();
                                                        f4 = fU2;
                                                        fJ4 = f4;
                                                        fJ5 = fJ4;
                                                    }
                                                } else {
                                                    fU2 = cLElementE12.u();
                                                    f4 = fU2;
                                                    fJ4 = f4;
                                                    fJ5 = fJ4;
                                                }
                                                flowReference2.C0 = Math.round(state.f11446a.e(fU2));
                                                flowReference2.E0 = Math.round(state.f11446a.e(fJ4));
                                                flowReference2.D0 = Math.round(state.f11446a.e(f4));
                                                flowReference2.F0 = Math.round(state.f11446a.e(fJ5));
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 6:
                                                str8 = str8;
                                                str2 = str;
                                                CLElement cLElementE13 = cLObject7.E(str14);
                                                if (cLElementE13 instanceof CLArray) {
                                                    CLArray cLArray15 = (CLArray) cLElementE13;
                                                    if (cLArray15.f11408f.size() > 1) {
                                                        Float fValueOf7 = Float.valueOf(cLArray15.F(0));
                                                        fValueOf4 = Float.valueOf(cLArray15.F(1));
                                                        fValueOf5 = cLArray15.f11408f.size() > 2 ? Float.valueOf(cLArray15.F(2)) : fValueOf6;
                                                        f5 = fValueOf7;
                                                    } else {
                                                        fValueOf4 = Float.valueOf(cLElementE13.i());
                                                        f5 = fValueOf6;
                                                        fValueOf5 = f5;
                                                    }
                                                } else {
                                                    fValueOf4 = Float.valueOf(cLElementE13.i());
                                                    f5 = fValueOf6;
                                                    fValueOf5 = f5;
                                                }
                                                try {
                                                    flowReference2.f11423i = fValueOf4.floatValue();
                                                    if (f5.floatValue() != 0.5f) {
                                                        flowReference2.I0 = f5.floatValue();
                                                    }
                                                    if (fValueOf5.floatValue() != 0.5f) {
                                                        flowReference2.J0 = fValueOf5.floatValue();
                                                    }
                                                } catch (NumberFormatException unused4) {
                                                }
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 7:
                                                CLElement cLElementE14 = cLObject7.E(str14);
                                                if (cLElementE14 instanceof CLArray) {
                                                    CLArray cLArray16 = (CLArray) cLElementE14;
                                                    if (cLArray16.f11408f.size() >= 1) {
                                                        int i11 = 0;
                                                        while (i11 < cLArray16.f11408f.size()) {
                                                            CLElement cLElementD5 = cLArray16.D(i11);
                                                            int i12 = i11;
                                                            if (cLElementD5 instanceof CLArray) {
                                                                CLArray cLArray17 = (CLArray) cLElementD5;
                                                                if (cLArray17.f11408f.size() > 0) {
                                                                    String strH11 = cLArray17.D(0).h();
                                                                    cLArray = cLArray16;
                                                                    int size2 = cLArray17.f11408f.size();
                                                                    str4 = str;
                                                                    if (size2 != 2) {
                                                                        if (size2 == 3) {
                                                                            F3 = cLArray17.F(1);
                                                                            fE3 = state.f11446a.e(cLArray17.F(2));
                                                                        } else if (size2 != 4) {
                                                                            fE3 = Float.NaN;
                                                                            F3 = Float.NaN;
                                                                            fE4 = Float.NaN;
                                                                        } else {
                                                                            float F5 = cLArray17.F(1);
                                                                            fE3 = state.f11446a.e(cLArray17.F(2));
                                                                            fE4 = state.f11446a.e(cLArray17.F(3));
                                                                            F3 = F5;
                                                                        }
                                                                        flowReference2.q(strH11);
                                                                        if (!Float.isNaN(F3)) {
                                                                            if (flowReference2.o0 == null) {
                                                                                flowReference2.o0 = new HashMap();
                                                                            }
                                                                            flowReference2.o0.put(strH11, Float.valueOf(F3));
                                                                        }
                                                                        if (!Float.isNaN(fE3)) {
                                                                            if (flowReference2.p0 == null) {
                                                                                flowReference2.p0 = new HashMap();
                                                                            }
                                                                            flowReference2.p0.put(strH11, Float.valueOf(fE3));
                                                                        }
                                                                        if (Float.isNaN(fE4)) {
                                                                            if (flowReference2.q0 == null) {
                                                                                flowReference2.q0 = new HashMap();
                                                                            }
                                                                            flowReference2.q0.put(strH11, Float.valueOf(fE4));
                                                                        }
                                                                    } else {
                                                                        F3 = cLArray17.F(1);
                                                                        fE3 = Float.NaN;
                                                                    }
                                                                    fE4 = fE3;
                                                                    flowReference2.q(strH11);
                                                                    if (!Float.isNaN(F3)) {
                                                                        if (flowReference2.o0 == null) {
                                                                            flowReference2.o0 = new HashMap();
                                                                        }
                                                                        flowReference2.o0.put(strH11, Float.valueOf(F3));
                                                                    }
                                                                    if (!Float.isNaN(fE3)) {
                                                                        if (flowReference2.p0 == null) {
                                                                            flowReference2.p0 = new HashMap();
                                                                        }
                                                                        flowReference2.p0.put(strH11, Float.valueOf(fE3));
                                                                    }
                                                                    if (Float.isNaN(fE4)) {
                                                                        if (flowReference2.q0 == null) {
                                                                            flowReference2.q0 = new HashMap();
                                                                        }
                                                                        flowReference2.q0.put(strH11, Float.valueOf(fE4));
                                                                    }
                                                                } else {
                                                                    cLArray = cLArray16;
                                                                    str4 = str;
                                                                }
                                                            } else {
                                                                cLArray = cLArray16;
                                                                str4 = str;
                                                                flowReference2.q(cLElementD5.h());
                                                            }
                                                            i11 = i12 + 1;
                                                            cLArray16 = cLArray;
                                                            str = str4;
                                                        }
                                                        str2 = str;
                                                        str3 = str9;
                                                        layoutVariables2 = layoutVariables;
                                                        str9 = str3;
                                                        it9 = it4;
                                                        str8 = str8;
                                                        str = str2;
                                                        break;
                                                    }
                                                }
                                                PrintStream printStream2 = System.err;
                                                StringBuilder sbU2 = n00.u(str5, " contains should be an array \"");
                                                sbU2.append(cLElementE14.h());
                                                sbU2.append("\"");
                                                printStream2.println(sbU2.toString());
                                                break;
                                            case 8:
                                                flowReference2.G0 = cLObject7.E(str14).u();
                                                str2 = str;
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 9:
                                                flowReference2.B0 = cLObject7.E(str14).u();
                                                str2 = str;
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 10:
                                                if (cLObject7.E(str14).h().equals(str8)) {
                                                    flowReference2.H0 = 0;
                                                } else {
                                                    flowReference2.H0 = 1;
                                                }
                                                str2 = str;
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 11:
                                                flowReference2.A0 = cLObject7.E(str14).u();
                                                str2 = str;
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            case 12:
                                                String strH12 = cLObject7.E(str14).h();
                                                flowReference2.r0 = State.Wrap.valueMap.containsKey(strH12) ? State.Wrap.valueMap.get(strH12).intValue() : -1;
                                                str2 = str;
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                            default:
                                                a(cLObject7, state.b(str5), layoutVariables2, state, str14);
                                                str2 = str;
                                                str3 = str9;
                                                layoutVariables2 = layoutVariables;
                                                str9 = str3;
                                                it9 = it4;
                                                str8 = str8;
                                                str = str2;
                                                break;
                                        }
                                    }
                                    break;
                                case 9:
                                    f(0, state, str5, cLObject7);
                                    continue;
                                default:
                                    continue;
                            }
                            layoutVariables2 = layoutVariables;
                        } else {
                            it = it5;
                            g(state, layoutVariables2, str5, cLObject7);
                        }
                        break;
                    }
                    break;
            }
            it5 = it;
        }
    }
}
