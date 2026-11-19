package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TwoDimensionalFocusSearchKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8798a;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f8798a = iArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
    
        if (r11 >= r2) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        if (r10 <= r7) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
    
        if (r9 >= r6) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
    
        if (r8 <= r5) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0053, code lost:
    
        r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r20 != r4) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
    
        r0.getClass();
        r15 = androidx.compose.ui.focus.FocusDirection.f8734f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005e, code lost:
    
        if (r20 != r15) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0060, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
    
        r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
    
        if (r20 != r4) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0066, code lost:
    
        r1 = r11 - r18.f8813c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006a, code lost:
    
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006d, code lost:
    
        if (r20 != r15) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006f, code lost:
    
        r1 = r18.f8811a - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0073, code lost:
    
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0077, code lost:
    
        if (r20 != androidx.compose.ui.focus.FocusDirection.g) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0079, code lost:
    
        r1 = r9 - r18.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0080, code lost:
    
        if (r20 != androidx.compose.ui.focus.FocusDirection.f8735h) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0082, code lost:
    
        r1 = r18.f8812b - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0088, code lost:
    
        if (r1 >= net.rtccloud.sdk.Call.Parameters.DEFAULT_CAMERA_ZOOM) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008a, code lost:
    
        r1 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008b, code lost:
    
        r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008e, code lost:
    
        if (r20 != r4) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0090, code lost:
    
        r11 = r11 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0092, code lost:
    
        if (r20 != r15) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0094, code lost:
    
        r11 = r2 - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0099, code lost:
    
        if (r20 != androidx.compose.ui.focus.FocusDirection.g) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009b, code lost:
    
        r11 = r9 - r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a0, code lost:
    
        if (r20 != androidx.compose.ui.focus.FocusDirection.f8735h) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a2, code lost:
    
        r11 = r6 - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00a8, code lost:
    
        if (r11 >= 1.0f) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00aa, code lost:
    
        r11 = 1.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ad, code lost:
    
        if (r1 >= r11) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00af, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b0, code lost:
    
        return r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b1, code lost:
    
        defpackage.md.k("This function should only be used for 2-D focus search");
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b4, code lost:
    
        return r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b5, code lost:
    
        defpackage.md.k("This function should only be used for 2-D focus search");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b8, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b9, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean a(androidx.compose.ui.geometry.Rect r17, androidx.compose.ui.geometry.Rect r18, androidx.compose.ui.geometry.Rect r19, int r20) {
        /*
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r20
            boolean r4 = b(r3, r2, r0)
            float r5 = r2.f8812b
            float r6 = r2.d
            float r7 = r2.f8811a
            float r2 = r2.f8813c
            float r8 = r0.d
            float r9 = r0.f8812b
            float r10 = r0.f8813c
            float r11 = r0.f8811a
            if (r4 != 0) goto L24
            boolean r0 = b(r3, r1, r0)
            if (r0 != 0) goto L28
        L24:
            r19 = 0
            goto Lbf
        L28:
            androidx.compose.ui.focus.FocusDirection$Companion r0 = androidx.compose.ui.focus.FocusDirection.f8731b
            r0.getClass()
            int r4 = androidx.compose.ui.focus.FocusDirection.f8733e
            r13 = 1
            java.lang.String r14 = "This function should only be used for 2-D focus search"
            if (r3 != r4) goto L39
            int r15 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r15 < 0) goto Lb9
            goto L53
        L39:
            int r15 = androidx.compose.ui.focus.FocusDirection.f8734f
            if (r3 != r15) goto L42
            int r15 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r15 > 0) goto Lb9
            goto L53
        L42:
            int r15 = androidx.compose.ui.focus.FocusDirection.g
            if (r3 != r15) goto L4b
            int r15 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r15 < 0) goto Lb9
            goto L53
        L4b:
            int r15 = androidx.compose.ui.focus.FocusDirection.f8735h
            if (r3 != r15) goto Lba
            int r15 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r15 > 0) goto Lb9
        L53:
            r0.getClass()
            if (r3 != r4) goto L59
            goto L60
        L59:
            r0.getClass()
            int r15 = androidx.compose.ui.focus.FocusDirection.f8734f
            if (r3 != r15) goto L61
        L60:
            return r13
        L61:
            r0.getClass()
            if (r3 != r4) goto L6d
            float r1 = r1.f8813c
            float r1 = r11 - r1
        L6a:
            r19 = 0
            goto L85
        L6d:
            if (r3 != r15) goto L73
            float r1 = r1.f8811a
            float r1 = r1 - r10
            goto L6a
        L73:
            r19 = 0
            int r12 = androidx.compose.ui.focus.FocusDirection.g
            if (r3 != r12) goto L7e
            float r1 = r1.d
            float r1 = r9 - r1
            goto L85
        L7e:
            int r12 = androidx.compose.ui.focus.FocusDirection.f8735h
            if (r3 != r12) goto Lb5
            float r1 = r1.f8812b
            float r1 = r1 - r8
        L85:
            r12 = 0
            int r16 = (r1 > r12 ? 1 : (r1 == r12 ? 0 : -1))
            if (r16 >= 0) goto L8b
            r1 = r12
        L8b:
            r0.getClass()
            if (r3 != r4) goto L92
            float r11 = r11 - r7
            goto La4
        L92:
            if (r3 != r15) goto L97
            float r11 = r2 - r10
            goto La4
        L97:
            int r0 = androidx.compose.ui.focus.FocusDirection.g
            if (r3 != r0) goto L9e
            float r11 = r9 - r5
            goto La4
        L9e:
            int r0 = androidx.compose.ui.focus.FocusDirection.f8735h
            if (r3 != r0) goto Lb1
            float r11 = r6 - r8
        La4:
            r0 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r2 >= 0) goto Lab
            r11 = r0
        Lab:
            int r0 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r0 >= 0) goto Lb0
            return r13
        Lb0:
            return r19
        Lb1:
            defpackage.md.k(r14)
            return r19
        Lb5:
            defpackage.md.k(r14)
            return r19
        Lb9:
            return r13
        Lba:
            r19 = 0
            defpackage.md.k(r14)
        Lbf:
            return r19
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.TwoDimensionalFocusSearchKt.a(androidx.compose.ui.geometry.Rect, androidx.compose.ui.geometry.Rect, androidx.compose.ui.geometry.Rect, int):boolean");
    }

    public static final boolean b(int i2, Rect rect, Rect rect2) {
        FocusDirection.Companion companion = FocusDirection.f8731b;
        companion.getClass();
        if (i2 != FocusDirection.f8733e) {
            companion.getClass();
            if (i2 != FocusDirection.f8734f) {
                companion.getClass();
                if (i2 != FocusDirection.g) {
                    companion.getClass();
                    if (i2 != FocusDirection.f8735h) {
                        md.k("This function should only be used for 2-D focus search");
                        return false;
                    }
                }
                return rect.f8813c > rect2.f8811a && rect.f8811a < rect2.f8813c;
            }
        }
        return rect.d > rect2.f8812b && rect.f8812b < rect2.d;
    }

    public static final void c(FocusTargetNode focusTargetNode, MutableVector mutableVector) {
        if (!focusTargetNode.f8608b.o) {
            InlineClassHelperKt.c("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node node = focusTargetNode.f8608b;
        Modifier.Node node2 = node.g;
        if (node2 == null) {
            DelegatableNodeKt.a(mutableVector2, node);
        } else {
            mutableVector2.b(node2);
        }
        while (true) {
            int i2 = mutableVector2.d;
            if (i2 == 0) {
                return;
            }
            Modifier.Node nodeB = (Modifier.Node) mutableVector2.o(i2 - 1);
            if ((nodeB.f8610e & 1024) == 0) {
                DelegatableNodeKt.a(mutableVector2, nodeB);
            } else {
                while (nodeB != null) {
                    if ((nodeB.d & 1024) != 0) {
                        MutableVector mutableVector3 = null;
                        while (nodeB != null) {
                            if (nodeB instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodeB;
                                if (focusTargetNode2.o && !DelegatableNodeKt.f(focusTargetNode2).S) {
                                    if (focusTargetNode2.j2().f8764b) {
                                        mutableVector.b(focusTargetNode2);
                                    } else {
                                        c(focusTargetNode2, mutableVector);
                                    }
                                }
                            } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                int i3 = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                    if ((node3.d & 1024) != 0) {
                                        i3++;
                                        if (i3 == 1) {
                                            nodeB = node3;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodeB != null) {
                                                mutableVector3.b(nodeB);
                                                nodeB = null;
                                            }
                                            mutableVector3.b(node3);
                                        }
                                    }
                                }
                                if (i3 == 1) {
                                }
                            }
                            nodeB = DelegatableNodeKt.b(mutableVector3);
                        }
                        break;
                    }
                    nodeB = nodeB.g;
                }
            }
        }
    }

    public static final FocusTargetNode d(MutableVector mutableVector, Rect rect, int i2) {
        Rect rectH;
        FocusDirection.f8731b.getClass();
        FocusTargetNode focusTargetNode = null;
        if (i2 == FocusDirection.f8733e) {
            rectH = rect.h((rect.f8813c - rect.f8811a) + 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        } else if (i2 == FocusDirection.f8734f) {
            rectH = rect.h(-((rect.f8813c - rect.f8811a) + 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        } else if (i2 == FocusDirection.g) {
            rectH = rect.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, (rect.d - rect.f8812b) + 1.0f);
        } else {
            if (i2 != FocusDirection.f8735h) {
                md.k("This function should only be used for 2-D focus search");
                return null;
            }
            rectH = rect.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, -((rect.d - rect.f8812b) + 1.0f));
        }
        Object[] objArr = mutableVector.f8165b;
        int i3 = mutableVector.d;
        for (int i4 = 0; i4 < i3; i4++) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i4];
            if (FocusTraversalKt.d(focusTargetNode2)) {
                Rect rectB = FocusTraversalKt.b(focusTargetNode2);
                if (g(rectB, rectH, rect, i2)) {
                    focusTargetNode = focusTargetNode2;
                    rectH = rectB;
                }
            }
        }
        return focusTargetNode;
    }

    public static final boolean e(FocusTargetNode focusTargetNode, int i2, Function1 function1) {
        Rect rect;
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        c(focusTargetNode, mutableVector);
        int i3 = mutableVector.d;
        if (i3 <= 1) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) (i3 == 0 ? null : mutableVector.f8165b[0]);
            if (focusTargetNode2 != null) {
                return ((Boolean) function1.invoke(focusTargetNode2)).booleanValue();
            }
        } else {
            FocusDirection.f8731b.getClass();
            if (i2 == FocusDirection.f8736i) {
                i2 = FocusDirection.f8734f;
            }
            if (i2 == FocusDirection.f8734f || i2 == FocusDirection.f8735h) {
                Rect rectB = FocusTraversalKt.b(focusTargetNode);
                float f2 = rectB.f8811a;
                float f3 = rectB.f8812b;
                rect = new Rect(f2, f3, f2, f3);
            } else {
                if (i2 != FocusDirection.f8733e && i2 != FocusDirection.g) {
                    md.k("This function should only be used for 2-D focus search");
                    return false;
                }
                Rect rectB2 = FocusTraversalKt.b(focusTargetNode);
                float f4 = rectB2.f8813c;
                float f5 = rectB2.d;
                rect = new Rect(f4, f5, f4, f5);
            }
            FocusTargetNode focusTargetNodeD = d(mutableVector, rect, i2);
            if (focusTargetNodeD != null) {
                return ((Boolean) function1.invoke(focusTargetNodeD)).booleanValue();
            }
        }
        return false;
    }

    public static final boolean f(final int i2, final FocusTargetNode focusTargetNode, final Rect rect, final Function1 function1) {
        if (j(i2, focusTargetNode, rect, function1)) {
            return true;
        }
        final FocusTargetNode focusTargetNodeG = DelegatableNodeKt.g(focusTargetNode).getFocusOwner().g();
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.a(focusTargetNode, i2, new Function1<BeyondBoundsLayout.BeyondBoundsScope, Boolean>() { // from class: androidx.compose.ui.focus.TwoDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                BeyondBoundsLayout.BeyondBoundsScope beyondBoundsScope = (BeyondBoundsLayout.BeyondBoundsScope) obj;
                FocusTargetNode focusTargetNode2 = focusTargetNode;
                if (focusTargetNodeG != DelegatableNodeKt.g(focusTargetNode2).getFocusOwner().g()) {
                    return Boolean.TRUE;
                }
                boolean zJ = TwoDimensionalFocusSearchKt.j(i2, focusTargetNode2, rect, function1);
                Boolean boolValueOf = Boolean.valueOf(zJ);
                if (zJ || !beyondBoundsScope.a()) {
                    return boolValueOf;
                }
                return null;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static final boolean g(Rect rect, Rect rect2, Rect rect3, int i2) {
        if (!h(i2, rect, rect3)) {
            return false;
        }
        if (h(i2, rect2, rect3) && !a(rect3, rect, rect2, i2)) {
            return !a(rect3, rect2, rect, i2) && i(i2, rect3, rect) < i(i2, rect3, rect2);
        }
        return true;
    }

    public static final boolean h(int i2, Rect rect, Rect rect2) {
        FocusDirection.Companion companion = FocusDirection.f8731b;
        companion.getClass();
        if (i2 == FocusDirection.f8733e) {
            float f2 = rect2.f8813c;
            float f3 = rect2.f8811a;
            float f4 = rect.f8813c;
            return (f2 > f4 || f3 >= f4) && f3 > rect.f8811a;
        }
        companion.getClass();
        if (i2 == FocusDirection.f8734f) {
            float f5 = rect2.f8811a;
            float f6 = rect2.f8813c;
            float f7 = rect.f8811a;
            return (f5 < f7 || f6 <= f7) && f6 < rect.f8813c;
        }
        companion.getClass();
        if (i2 == FocusDirection.g) {
            float f8 = rect2.d;
            float f9 = rect2.f8812b;
            float f10 = rect.d;
            return (f8 > f10 || f9 >= f10) && f9 > rect.f8812b;
        }
        companion.getClass();
        if (i2 != FocusDirection.f8735h) {
            md.k("This function should only be used for 2-D focus search");
            return false;
        }
        float f11 = rect2.f8812b;
        float f12 = rect2.d;
        float f13 = rect.f8812b;
        return (f11 < f13 || f12 <= f13) && f12 < rect.d;
    }

    public static final long i(int i2, Rect rect, Rect rect2) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        FocusDirection.Companion companion = FocusDirection.f8731b;
        companion.getClass();
        int i3 = FocusDirection.f8733e;
        if (i2 == i3) {
            f2 = rect.f8811a;
            f3 = rect2.f8813c;
        } else if (i2 == FocusDirection.f8734f) {
            f2 = rect2.f8811a;
            f3 = rect.f8813c;
        } else if (i2 == FocusDirection.g) {
            f2 = rect.f8812b;
            f3 = rect2.d;
        } else {
            if (i2 != FocusDirection.f8735h) {
                md.k("This function should only be used for 2-D focus search");
                return 0L;
            }
            f2 = rect2.f8812b;
            f3 = rect.d;
        }
        float f7 = f2 - f3;
        if (f7 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f7 = 0.0f;
        }
        long j2 = (long) f7;
        companion.getClass();
        if (i2 == i3 || i2 == FocusDirection.f8734f) {
            float f8 = rect.f8812b;
            f4 = ((rect.d - f8) / 2.0f) + f8;
            f5 = rect2.f8812b;
            f6 = rect2.d;
        } else {
            if (i2 != FocusDirection.g && i2 != FocusDirection.f8735h) {
                md.k("This function should only be used for 2-D focus search");
                return 0L;
            }
            float f9 = rect.f8811a;
            f4 = ((rect.f8813c - f9) / 2.0f) + f9;
            f5 = rect2.f8811a;
            f6 = rect2.f8813c;
        }
        long j3 = (long) (f4 - (((f6 - f5) / 2.0f) + f5));
        return (j3 * j3) + (13 * j2 * j2);
    }

    public static final boolean j(int i2, FocusTargetNode focusTargetNode, Rect rect, Function1 function1) {
        FocusTargetNode focusTargetNodeD;
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        if (!focusTargetNode.f8608b.o) {
            InlineClassHelperKt.c("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node node = focusTargetNode.f8608b;
        Modifier.Node node2 = node.g;
        if (node2 == null) {
            DelegatableNodeKt.a(mutableVector2, node);
        } else {
            mutableVector2.b(node2);
        }
        while (true) {
            int i3 = mutableVector2.d;
            if (i3 == 0) {
                break;
            }
            Modifier.Node nodeB = (Modifier.Node) mutableVector2.o(i3 - 1);
            if ((nodeB.f8610e & 1024) == 0) {
                DelegatableNodeKt.a(mutableVector2, nodeB);
            } else {
                while (nodeB != null) {
                    if ((nodeB.d & 1024) != 0) {
                        MutableVector mutableVector3 = null;
                        while (nodeB != null) {
                            if (nodeB instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodeB;
                                if (focusTargetNode2.o) {
                                    mutableVector.b(focusTargetNode2);
                                }
                            } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                    if ((node3.d & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            nodeB = node3;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodeB != null) {
                                                mutableVector3.b(nodeB);
                                                nodeB = null;
                                            }
                                            mutableVector3.b(node3);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            nodeB = DelegatableNodeKt.b(mutableVector3);
                        }
                        break;
                    }
                    nodeB = nodeB.g;
                }
            }
        }
        while (mutableVector.d != 0 && (focusTargetNodeD = d(mutableVector, rect, i2)) != null) {
            if (focusTargetNodeD.j2().f8764b) {
                return ((Boolean) ((FocusOwnerImpl$focusSearch$1) function1).invoke(focusTargetNodeD)).booleanValue();
            }
            if (f(i2, focusTargetNodeD, rect, function1)) {
                return true;
            }
            mutableVector.n(focusTargetNodeD);
        }
        return false;
    }

    public static final Boolean k(int i2, FocusTargetNode focusTargetNode, Rect rect, Function1 function1) {
        FocusStateImpl focusStateImplW = focusTargetNode.W();
        int[] iArr = WhenMappings.f8798a;
        int i3 = iArr[focusStateImplW.ordinal()];
        if (i3 != 1) {
            if (i3 == 2 || i3 == 3) {
                return Boolean.valueOf(e(focusTargetNode, i2, function1));
            }
            if (i3 != 4) {
                v40.g();
                return null;
            }
            if (focusTargetNode.j2().f8764b) {
                return (Boolean) ((FocusOwnerImpl$focusSearch$1) function1).invoke(focusTargetNode);
            }
            return rect == null ? Boolean.valueOf(e(focusTargetNode, i2, function1)) : Boolean.valueOf(j(i2, focusTargetNode, rect, function1));
        }
        FocusTargetNode focusTargetNodeC = FocusTraversalKt.c(focusTargetNode);
        if (focusTargetNodeC == null) {
            md.k("ActiveParent must have a focusedChild");
            return null;
        }
        int i4 = iArr[focusTargetNodeC.W().ordinal()];
        if (i4 != 1) {
            if (i4 == 2 || i4 == 3) {
                if (rect == null) {
                    rect = FocusTraversalKt.b(focusTargetNodeC);
                }
                return Boolean.valueOf(f(i2, focusTargetNode, rect, function1));
            }
            if (i4 != 4) {
                v40.g();
                return null;
            }
            md.k("ActiveParent must have a focusedChild");
            return null;
        }
        Boolean boolK = k(i2, focusTargetNodeC, rect, function1);
        if (!Intrinsics.c(boolK, Boolean.FALSE)) {
            return boolK;
        }
        if (rect == null) {
            if (focusTargetNodeC.W() != FocusStateImpl.ActiveParent) {
                md.k("Searching for active node in inactive hierarchy");
                return null;
            }
            FocusTargetNode focusTargetNodeA = FocusTraversalKt.a(focusTargetNodeC);
            if (focusTargetNodeA == null) {
                md.k("ActiveParent must have a focusedChild");
                return null;
            }
            rect = FocusTraversalKt.b(focusTargetNodeA);
        }
        return Boolean.valueOf(f(i2, focusTargetNode, rect, function1));
    }
}
